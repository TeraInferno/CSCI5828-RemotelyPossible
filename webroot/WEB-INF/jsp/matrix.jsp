<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="s" uri="http://stripes.sourceforge.net/stripes.tld" %>
<!doctype html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Discovery Learning Apprenticeship Program - Matrix</title>
  <meta name="description" content="Discovery Learning Apprenticeship Program Matrix">
  <meta name="author" content="RemotelyPossible">

  <!--[if lt IE 9]>
    <script src="//cdnjs.cloudflare.com/ajax/libs/html5shiv/3.7.3/html5shiv.js"></script>
  <![endif]-->

  <link rel="stylesheet" type="text/css" href="//code.jquery.com/ui/1.12.1/themes/sunny/jquery-ui.css">
  <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.12/css/dataTables.jqueryui.min.css"/>
  <link rel="stylesheet" type="text/css" href="/css/navbar.css"/>
  <script type="text/javascript" src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>  
</head>

<body>
<jsp:include page="navbar.jsp" />
<br/>
<br/><br/><br/>
<a id="tableTop"></a>
<table id="matrix" class="display">
  <thead>
  <tr>
    <th title="1-recommend
2-possibility
3-don't recommend-GPA
4-Dec grad
5-Disqualified
6-All choices not open
7-withdrew">
      Code
    </th>
    <th>Name</th>
    <th>Primary Major</th>
    <th>Secondary Major</th>
    <th>
      Major on System
      (if different)
    </th>
    <th>Level In School</th>
    <th>Grad Date</th>
    <th>Self-Reported GPA</th>
    <th>GPA after spring semester</th>
    <th>Gender</th>
    <th>Ethnicity</th>
    <th>Previous Experience</th>
    <th>Other employ?</th>
    <th>Applied Before?</th>
    <th>Gold Shirt</th>
    <th>ProjectName/ Choice given</th>
  </tr>
  </thead>
  <tbody>
<c:forEach items="${applicationList}" var="app" varStatus="loop">
	<tr>
	<td>X</td>
	<td>${app.student.name}</td>
    <td>${app.student.primaryMajor}</td>
    <td>${app.student.secondaryMajor}</td>
    <td>-</td>
    <td>${app.student.schoolLevel}</td>
    <td>${app.student.graduationMonth}/${app.student.graduationYear}</td>
    <td>${app.student.gpa}</td>
    <td>-</td>
    <td>${app.student.gender}</td>
    <td>${app.student.hispanic} ${app.student.race}</td>
    <td>${app.student.previousWorkExperienceExists}</td>
    <td>Other employ?</td>
    <td>Applied Before?</td>
    <td>Gold Shirt</td>
    <td>ProjectName/ Choice given</td>
    </tr>
</c:forEach>
  </tbody>
</table>
 

<script type="text/javascript" src="//cdnjs.cloudflare.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"></script>
<script type="text/javascript" src="https://cdn.datatables.net/1.10.12/js/jquery.dataTables.min.js"></script>
<script type="text/javascript" src="https://cdn.datatables.net/1.10.12/js/dataTables.jqueryui.min.js"></script>

<script type="text/javascript">


$(document).ready(function() {
  <!-- Enable data table from project list -->
  $('#matrix').DataTable({
    "stateSave": true,
    "stateDuration": -1
  });

  <!-- Style the DataTable filter with JQueryUI -->
  $("#matrix_filter :input").addClass("ui-widget ui-state-default ui-corner-all");

  <!-- Setup the navigation -->
  $( "#nav" ).menu({position: {at: "left bottom"}});
  


} );


</script>
</body>
</html>

