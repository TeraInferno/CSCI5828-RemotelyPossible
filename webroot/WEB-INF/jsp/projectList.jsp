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

 <div style="text-align: center;">
  <h1>
    Complete Listing of Discovery Learning Apprenticeships<br />
    by Faculty Affiliation with a Department or Program</h1>
      Please note that this list is sorted by the department or program of the faculty member 
      offering the apprenticeship.<br />
      Students from other majors may still be able to 
      apply for the project.<br />
      Please see the list <a href="dlalisting.aspx">here</a> to 
      view the projects sorted by the majors to which the project is available.
	 <br />
      <br />
      <a href="#tableTop" onclick="javascript:autoFilter('AES');">[Aerospace Engineering Sciences]</a>&nbsp;
      <a href="#tableTop" onclick="javascript:autoFilter('APPM');">[Applied Mathematics]</a>&nbsp;
      <a href="#tableTop" onclick="javascript:autoFilter('ChBE');">[Chemical and Biological Engineering]</a><br />
      <a href="#tableTop" onclick="javascript:autoFilter('CEAE');">[Civil, Architectural and Environmental Engineering]</a>&nbsp;
      <a href="#tableTop" onclick="javascript:autoFilter('CS');">[Computer Science]</a><br />
      <a href="#tableTop" onclick="javascript:autoFilter('ECEE');">[Electrical, Computer, and Energy Engineering]</a>
      <a href="#tableTop" onclick="javascript:autoFilter('PHYS');">[Physics]</a>&nbsp;
      <a href="#tableTop" onclick="javascript:autoFilter('EVEN');">[Environmental Engineering]</a><br />
      <a href="#tableTop" onclick="javascript:autoFilter('ME');">[Mechanical Engineering]</a>&nbsp;
      <a href="#tableTop" onclick="javascript:autoFilter('CSGC');">[Colorado Space Grant]</a>&nbsp;
      <a href="#tableTop" onclick="javascript:autoFilter('EnEd');">[Engineering Education]</a>
      <a href="#tableTop" onclick="javascript:autoFilter('ATLS');">[ATLAS]</a>
      <br />
</div>         

<br/><br/><br/>
<a id="tableTop"></a>
<table id="projects" class="display" width="100%">
        <thead>
            <tr>
                <th>Project</th>
                <th>Contact</th>
                <th>Description</th>
                <th>Requirements</th>
            </tr>
        </thead>
        <tfoot>
            <tr>
                <th>Project</th>
                <th>Contact</th>
                <th>Description</th>
                <th>Requirements</th>
            </tr>
        </tfoot>
        <tbody>
        <c:forEach items="${actionBean.projectList}" var="project" varStatus="loop">
			<tr>
			  <td>${project.faculty1.program} - ${project.description}</td>
			  <td>${project.faculty1.name}<br/><c:if test="${project.faculty1.phone.areacode != null}">${project.faculty1.phone}</c:if><br/>${project.faculty1.email}</td>
			  <td>${project.longDescription}</td>
			  <td><ul><li>Requirements: ${project.requirement}<li>Supervision: ${project.supervisionLevel}<li>Supervisor: ${project.supervisor}<li>Prior work: ${project.priorWork}</ul></td>
			</tr>
		</c:forEach>
        </tbody>
</table>
 

<script type="text/javascript" src="//cdnjs.cloudflare.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"></script>
<script type="text/javascript" src="https://cdn.datatables.net/1.10.12/js/jquery.dataTables.min.js"></script>
<script type="text/javascript" src="https://cdn.datatables.net/1.10.12/js/dataTables.jqueryui.min.js"></script>

<script type="text/javascript">
var autoFilter = function(dept) {
	$("#projects_filter :input").val(dept+" - ").keyup();
}
  $(document).ready(function() {
    $('#projects').DataTable({
   	  "search": {
    	"smart": false
  	  },
  	  "stateSave": true,
  	  "stateDuration": -1
    });
    $("#projects_filter :input").addClass("ui-widget ui-state-default ui-corner-all");
} );
1</script>
</body>
</html>

