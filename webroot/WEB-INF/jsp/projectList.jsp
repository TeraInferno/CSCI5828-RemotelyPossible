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
<s:useActionBean var="actionBean" beanclass="edu.colorado.csci5828.remotelypossible.dlap.stripes.action.ProjectListAction"  />
<br/>
<a id="addProject" href="/do/project/form">Add a new project</a>
<br/><br/><br/>
<table id="projects" class="display" width="100%">
        <thead>
            <tr>
                <th>Project Description</th>
                <th>Department</th>
                <th>Major</th>
            </tr>
        </thead>
        <tfoot>
            <tr>
                <th>Project Description</th>
                <th>Department</th>
                <th>Major</th>
            </tr>
        </tfoot>
        <tbody>
        <c:forEach items="${actionBean.projectList}" var="project" varStatus="loop">
          <c:forEach items="${project.acceptedMajors}" var="major"> 
			<tr>
			  <td><a href="/do/project/form/${project.id}">${project.description}</a></td>
			  <td>${project.faculity1.program}</td>
			  <td>${major}</td>
			</tr>
		  </c:forEach>
		</c:forEach>
        </tbody>
</table>
 

<script type="text/javascript" src="//cdnjs.cloudflare.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"></script>
<script type="text/javascript" src="https://cdn.datatables.net/1.10.12/js/jquery.dataTables.min.js"></script>
<script type="text/javascript" src="https://cdn.datatables.net/1.10.12/js/dataTables.jqueryui.min.js"></script>

<script type="text/javascript">
  $(document).ready(function() {
    $("#addProject").button();
    $('#projects').DataTable();
} );
1</script>
</body>
</html>

