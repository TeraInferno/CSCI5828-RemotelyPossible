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
    <script src="https://cdnjs.cloudflare.com/ajax/libs/html5shiv/3.7.3/html5shiv.js"></script>
  <![endif]-->

  <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/dark-hive/jquery-ui.css">
  <link rel="stylesheet" href="//cdn.datatables.net/1.10.12/css/jquery.dataTables.min.css">

</head>

<body class="ui-widget-content">
<s:useActionBean var="actionBean" beanclass="edu.colorado.csci5828.remotelypossible.dlap.stripes.action.ProjectListAction"  />
<a href="/do/project/form">Add a new project</a>
<br/><br/><br/>
Existing Projects:<br/>
<table id="projects" class="display" cellspacing="0" width="100%">
        <thead>
            <tr>
                <th>Description</th>
            </tr>
        </thead>
        <tfoot>
            <tr>
                <th>Description</th>
            </tr>
        </tfoot>
        <tbody>
        <c:forEach items="${actionBean.projectList}" var="project" varStatus="loop"> 
			<tr><td><a href="/do/project/form/${project.id}">${project.description}</a></td></tr>
		</c:forEach>
        </tbody>
</table>
 

<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.12.3/jquery-ui.min.js"></script>
<script type="text/javascript" src="//cdn.datatables.net/1.10.12/js/jquery.dataTables.min.js"></script>
<script type="text/javascript" src="//cdn.datatables.net/1.10.12/js/dataTables.jqueryui.min.js"></script>
<script type="text/javascript">
$(document).ready(function() {
    $('#projects').DataTable();
} );
</script>
</body>
</html>

