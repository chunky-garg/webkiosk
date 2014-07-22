class UrlMappings {

	static mappings = {
        "/$controller/$action?/$id?(.${format})?"{

            constraints {
                // apply constraints here
            }
        }

        "/"(controller: 'dashboard') {
            action=[GET:"index"]
        }

        "500"(view:'/error')

	}
}
