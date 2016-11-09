<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="s" uri="http://stripes.sourceforge.net/stripes.tld" %>
<!doctype html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Discovery Learning Apprenticeship Program</title>
  <meta name="description" content="Discovery Learning Apprenticeship Program">
  <meta name="author" content="RemotelyPossible">

  <!--[if lt IE 9]>
    <script src="//cdnjs.cloudflare.com/ajax/libs/html5shiv/3.7.3/html5shiv.js"></script>
  <![endif]-->

  <link rel="stylesheet" type="text/css" href="//code.jquery.com/ui/1.12.1/themes/sunny/jquery-ui.css">
  <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.12/css/dataTables.jqueryui.min.css"/>
  <script type="text/javascript" src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>  
</head>

<body class="ui-widget-content">
<br/>

<br/><br/><br/>
<a id="tableTop"></a>
<table id="projects" class="display">
        <thead>
            <tr>
                <th>Project</th>
                <th>Description</th>
                <th>Status</th>
            </tr>
        </thead>
        <tfoot>
            <tr>
                <th>Project</th>
                <th>Description</th>
                <th>Status</th>
            </tr>
        </tfoot>
        <tbody>
        <c:forEach items="${projectList}" var="project" varStatus="loop">
			<tr>
			  <td>${project.faculty1.program} - ${project.description}</td>
			  <td>${project.longDescription}</td>
			  <td></td>
			</tr>
		</c:forEach>
        </tbody>
</table>
 

<script type="text/javascript" src="//cdnjs.cloudflare.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"></script>
<script type="text/javascript" src="https://cdn.datatables.net/1.10.12/js/jquery.dataTables.min.js"></script>
<script type="text/javascript" src="https://cdn.datatables.net/1.10.12/js/dataTables.jqueryui.min.js"></script>

<script type="text/javascript">
<!-- Hyperlinks to filtered table list -->
var autoFilter = function(dept) {
  $("#projects_filter :input").val(dept+" - ").keyup();
}

$(document).ready(function() {
  <!-- Enable data table from project list -->
  $('#projects').DataTable({
      "search": {
	  "smart": false
    },
    "stateSave": true,
    "stateDuration": -1
});

<!-- Style the DataTable filter with JQueryUI -->
$("#projects_filter :input").addClass("ui-widget ui-state-default ui-corner-all");
} );
1</script>
</body>
</html>

