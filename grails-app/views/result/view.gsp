
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="main">
    <title>Webkiosk | Results | view</title>

    <link rel="stylesheet" href="../css/ColVis.css">
    <link rel="stylesheet" href="../css/TableTools.css">

    <script src="../js/plugins/datatables/jquery.dataTables.min.js"></script>
    <script src="../js/plugins/datatables/ColReorderWithResize.js"></script>
    <script src="../js/plugins/datatables/colvis/dataTables.ColVis.min.js"></script>
    <script src="../js/plugins/datatables/tabletools/ZeroClipboard.js"></script>
    <script src="../js/plugins/datatables/tabletools/dataTables.TableTools.min.js"></script>
    <script src="../js/plugins/datatables/dataTables.bootstrap.js"></script>
</head>

<body class="brownish-scheme">

<div id="main">
    <div class="row">


        <div class = "col-md-12">
        <!-- tile -->
        <section class="tile">


            <!-- tile header -->
            <div class="tile-header transparent">
                <h1><strong>Inline Editing</strong> Datatable </h1>
                <div class="controls">
                    <a href="#" class="refresh"><i class="fa fa-refresh"></i></a>
                    <a href="#" class="remove"><i class="fa fa-times"></i></a>
                </div>
            </div>
            <!-- /tile header -->

            <!-- tile body -->
            <div class="tile-body nopadding">

                <div class="table-responsive">
                    <table  class="table table-datatable table-bordered" id="inlineEditDataTable">
                        <thead>
                        <tr>
                            <th>S.No</th>
                            <th class="sort-alpha">Subject Name</th>
                            <th class="sort-alpha">Exam Type</th>
                            <th class="sort-alpha">Student</th>
                            <th class="sort-numeric">Max Marks</th>
                            <th class="sort-numeric">Marks Obtained</th>
                            <th> Actions </th>
                        </tr>
                        </thead>
                        <tbody>

                        <g:each in="${marksList}" var="marks" status="i">
                            <tr class="odd">
                                <td> ${i+1}</td>
                                <td> ${marks.exam.course.subject.name}</td>
                                <td> ${marks.exam.examType}</td>
                                <td> ${marks.student.user.firstName}</td>
                                <td> ${marks.exam.maxMarks}</td>
                                <td> ${marks.marksObtained}</td>
                                <td class="actions text-center"><a class="edit" href="#">Edit</a><a class="delete" href="#">Delete</a></td>

                            </tr>
                        </g:each>
                        </tbody>
                    </table>
                </div>

            </div>
            <!-- /tile body -->

</section>
        </div>
        </div>
</div>

<script>
/* Get the rows which are currently selected */
function fnGetSelected(oTable01Local){
return oTable01Local.$('tr.row_selected');
};

/*******************************************************/
/**************** INLINE EDIT DATATABLE ****************/
/*******************************************************/

function restoreRow (oTable02, nRow){
var aData = oTable02.fnGetData(nRow);
var jqTds = $('>td', nRow);

for ( var i=0, iLen=jqTds.length ; i<iLen ; i++ ) {
oTable02.fnUpdate( aData[i], nRow, i, false );
}

oTable02.fnDraw();
};

function editRow (oTable02, nRow){
var aData = oTable02.fnGetData(nRow);
var jqTds = $('>td', nRow);
jqTds[0].innerHTML = '<input type="text" value="'+aData[0]+'">';
jqTds[1].innerHTML = '<input type="text" value="'+aData[1]+'">';
jqTds[2].innerHTML = '<input type="text" value="'+aData[2]+'">';
jqTds[3].innerHTML = '<input type="text" value="'+aData[3]+'">';
jqTds[4].innerHTML = '<input type="text" value="'+aData[4]+'">';
jqTds[5].innerHTML = '<a class="edit save" href="#">Save</a><a class="delete" href="#">Delete</a>';
};

function saveRow (oTable02, nRow){
var jqInputs = $('input', nRow);
oTable02.fnUpdate( jqInputs[0].value, nRow, 0, false );
oTable02.fnUpdate( jqInputs[1].value, nRow, 1, false );
oTable02.fnUpdate( jqInputs[2].value, nRow, 2, false );
oTable02.fnUpdate( jqInputs[3].value, nRow, 3, false );
oTable02.fnUpdate( jqInputs[4].value, nRow, 4, false );
oTable02.fnUpdate( '<a class="edit" href="#">Edit</a><a class="delete" href="#">Delete</a>', nRow, 5, false );
oTable02.fnDraw();
};



var oTable02 = $('#inlineEditDataTable').dataTable({
"aoColumnDefs": [
{ 'bSortable': false, 'aTargets': [ "no-sort" ] }
]
});


var nEditing = null;

var aiNew = oTable02.fnAddData([ '', '', '', '', '', '<a class="edit" href="">Edit</a>', '<a class="delete" href="">Delete</a>' ]);
var nRow = oTable02.fnGetNodes(aiNew[0]);
editRow(oTable02, nRow);
nEditing = nRow;

$(nRow).find('td:last-child').addClass('actions text-center');
});

// Delete row initialize
$(document).on( "click", "#inlineEditDataTable a.delete", function(e) {
e.preventDefault();

var nRow = $(this).parents('tr')[0];
oTable02.fnDeleteRow( nRow );
});

// Edit row initialize
$(document).on( "click", "#inlineEditDataTable a.edit", function(e) {
e.preventDefault();

/* Get the row as a parent of the link that was clicked on */
var nRow = $(this).parents('tr')[0];

if (nEditing !== null && nEditing != nRow){
/* A different row is being edited - the edit should be cancelled and this row edited */
restoreRow(oTable02, nEditing);
editRow(oTable02, nRow);
nEditing = nRow;
}
else if (nEditing == nRow && this.innerHTML == "Save") {
/* This row is being edited and should be saved */
saveRow(oTable02, nEditing);
nEditing = null;
}
else {
/* No row currently being edited */
editRow(oTable02, nRow);
nEditing = nRow;
}
});
</script>

</body>
</html>