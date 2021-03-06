package webkiosk

import org.springframework.web.servlet.support.RequestContextUtils

class CustomTagLib {
//    static defaultEncodeAs = 'html'
    //static encodeAsForTags = [tagName: 'raw']

    def paginate = { attrs, body ->

        def writer = out
        if (attrs.total == null) {
            throwTagError("Tag [paginate] is missing required attribute [total]")
        }

        def messageSource = grailsAttributes.messageSource
        def locale = RequestContextUtils.getLocale(request)

        def total = attrs.int('total') ?: 0
        def offset = params.int('offset') ?: 0
        def max = params.int('max')
        def maxsteps = (attrs.int('maxsteps') ?: 10)

        if (!offset) offset = (attrs.int('offset') ?: 0)
        if (!max) max = (attrs.int('max') ?: 10)

        def linkParams = [:]
        if (attrs.params) linkParams.putAll(attrs.params)
        linkParams.offset = offset - max
        linkParams.max = max
        if (params.sort) linkParams.sort = params.sort
        if (params.order) linkParams.order = params.order

        def linkTagAttrs = [:]
        def action
        if (attrs.containsKey('mapping')) {
            linkTagAttrs.mapping = attrs.mapping
            action = attrs.action
        } else {
            action = attrs.action ?: params.action
        }
        if (action) {
            linkTagAttrs.action = action
        }
        if (attrs.controller) {
            linkTagAttrs.controller = attrs.controller
        }
        if (attrs.id != null) {
            linkTagAttrs.id = attrs.id
        }
        if (attrs.fragment != null) {
            linkTagAttrs.fragment = attrs.fragment
        }
        linkTagAttrs.params = linkParams

        // determine paging variables
        def steps = maxsteps > 0
        int currentstep = (offset / max) + 1
        int firststep = 1
        int laststep = Math.round(Math.ceil(total / max))
        writer<<'<div class=\' row \'>'
        writer<<'<div class=\"col-md-4\">'
        writer<<'<div id=\"drillDownDataTable_info\" class=\"dataTables_info\">'


        writer<<'showing '+ (total?(offset +1) : 0 )+" to " + (((offset+max) > total)?total: (offset +max )) +' of ' + total + ' entries'
        writer<<'</div> </div>'

        writer<<'<div class=\"col-md-4\">'
        writer<<'<div class=\"dataTables_paginate paging_bootstrap paging_custombootstrap\">'
        writer<<'<ul class=\'pagination \'>'
        // display previous link when not on firststep unless omitPrev is true
        if (currentstep > firststep && !attrs.boolean('omitPrev')) {
            linkParams.offset = offset - max

            writer << '<li class=\'prev\'>'
            writer << link(linkTagAttrs.clone()) {
                (attrs.prev ?: messageSource.getMessage('paginate.prev', null, messageSource.getMessage('default.paginate.prev', null, 'Previous', locale), locale))
            }
            writer<<'</li>'

        }

        // display steps when steps are enabled and laststep is not firststep
        if (steps && laststep > firststep) {

            // determine begin and endstep paging variables
            int beginstep = currentstep - Math.round(maxsteps / 2) + (maxsteps % 2)
            int endstep = currentstep + Math.round(maxsteps / 2) - 1

            if (beginstep < firststep) {
                beginstep = firststep
                endstep = maxsteps
            }
            if (endstep > laststep) {
                beginstep = laststep - maxsteps + 1
                if (beginstep < firststep) {
                    beginstep = firststep
                }
                endstep = laststep
            }

            // display firststep link when beginstep is not firststep
            if (beginstep > firststep && !attrs.boolean('omitFirst')) {
                linkParams.offset = 0
                writer << "<li>"
                writer << link(linkTagAttrs.clone()) {firststep.toString()}
                writer<<"</li>"
            }
            //show a gap if beginstep isn't immediately after firststep, and if were not omitting first or rev
            if (beginstep > firststep+1 && (!attrs.boolean('omitFirst') || !attrs.boolean('omitPrev')) ) {
                writer << '<span class="step gap">..</span>'
            }

            // display paginate steps
            (beginstep..endstep).each { i ->
                if (currentstep == i) {
                    linkParams.offset = offset
                    writer << "<li class=\'active\'>"
                    writer<<link(linkTagAttrs.clone()){i.toString()}
                    writer<<"</li>"
                }
                else {
                    writer << "<li>"
                    linkParams.offset = (i - 1) * max
                    writer << link(linkTagAttrs.clone()) {i.toString()}
                    writer<<"</li>"
                }
            }

            //show a gap if beginstep isn't immediately before firststep, and if were not omitting first or rev
            if (endstep+1 < laststep && (!attrs.boolean('omitLast') || !attrs.boolean('omitNext'))) {
                writer << '<span class="step gap">..</span>'
            }
            // display laststep link when endstep is not laststep
            if (endstep < laststep && !attrs.boolean('omitLast')) {
                writer<<"<li>"
                linkParams.offset = (laststep - 1) * max
                writer << link(linkTagAttrs.clone()) { laststep.toString() }
                writer<<"</li>"
            }
        }

        // display next link when not on laststep unless omitNext is true
        if (currentstep < laststep && !attrs.boolean('omitNext')) {
            linkParams.offset = offset + max
            writer<<"<li class=\'next\'>"
            writer << link(linkTagAttrs.clone()) {
                (attrs.next ? attrs.next : messageSource.getMessage('paginate.next', null, messageSource.getMessage('default.paginate.next', null, 'Next', locale), locale))
            }
            writer<<"</li>"
        }
        writer <<'</ul>'
        writer <<'</div>'
        writer <<'</div>'
        writer<<'<div class=\"col-md-4\">'
        writer<<'</div>'

    }
}
