<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="s" uri="http://stripes.sourceforge.net/stripes.tld" %>
<!doctype html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Discovery Learning Apprenticeship Program - Fake Me</title>
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
<div id="tabs">
  <ul>
  	<li><a href="#facultyTab">Faculty</a></li>
    <li><a href="#studentTab">Students</a></li>
  </ul>
<div id="facultyTab">
<table id="faculty" class="display">
        <thead>
            <tr>
            	<th>Name</th>
            	<th>E-mail</th>
            	<th>Phone Number</th>
                <th>Username</th>
            </tr>
        </thead>
        <tfoot>
            <tr>
            	<th>Name</th>
            	<th>E-mail</th>
            	<th>Phone Number</th>
                <th>Username</th>
            </tr>
        </tfoot>
        <tbody>
        <c:forEach items="${faculty}" var="member" varStatus="loop">
			<tr>
			  <td>${member.name}</td>
			  <td>${member.email}</td>
			  <td>${member.phone}</td>
			  <td>${member.username}</td>
			</tr>
		</c:forEach>
        </tbody>
</table>
</div>


<div id="studentTab">
<table id="student" class="display">
        <thead>
            <tr>
            	<th>Name</th>
            	<th>E-mail</th>
            	<th>Phone Number</th>
                <th>Username</th>
            </tr>
        </thead>
        <tfoot>
            <tr>
            	<th>Name</th>
            	<th>E-mail</th>
            	<th>Phone Number</th>
                <th>Username</th>
            </tr>
        </tfoot>
        <tbody>
        <c:forEach items="${student}" var="member" varStatus="loop">
			<tr>
			  <td>${member.name}</td>
			  <td>${member.email}</td>
			  <td>${member.phone}</td>
			  <td>${member.username}</td>
			</tr>
		</c:forEach>
        </tbody>
</table>
</div>

</div>
<s:form id="fakeme" method="post" beanclass="edu.colorado.csci5828.remotelypossible.dlap.stripes.action.FakeMeAction">
 <s:hidden id="username" name="username"/>
 <s:hidden id="role" name="role"/>
</s:form>

<script type="text/javascript" src="//cdnjs.cloudflare.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"></script>
<script type="text/javascript" src="https://cdn.datatables.net/1.10.12/js/jquery.dataTables.min.js"></script>
<script type="text/javascript" src="https://cdn.datatables.net/1.10.12/js/dataTables.jqueryui.min.js"></script>

<script type="text/javascript">

$(document).ready(function() {

  <!-- Setup the Tabs -->
  $("#tabs").tabs();

  <!-- Enable data table from project list -->
  $('#faculty').DataTable({
      "search": {
	  "smart": false
    }
   
  });
  $('#student').DataTable({
      "search": {
	  "smart": false
    }
   
  });

  <!-- Click handler for faculty Fake Me table -->
 $('#faculty tbody').on( 'click', 'tr', function () {
 	var fakeUsr = $(this).find('td:last').text();
    if( confirm('Are you sure you want to switch to '+$(this).find('td:first').text()) ) {
    	$('#username').val(fakeUsr);
    	$('#role').val('FACULTY');
    	$('#fakeme').submit();
    }
  });
  $('#student tbody').on( 'click', 'tr', function () {
 	var fakeUsr = $(this).find('td:last').text();
    if( confirm('Are you sure you want to switch to '+$(this).find('td:first').text()) ) {
    	$('#username').val(fakeUsr);
    	$('#role').val('STUDENT');
    	$('#fakeme').submit();
    }
  });

  <!-- Style the DataTable filter with JQueryUI -->
  $("#faculity_filter :input").addClass("ui-widget ui-state-default ui-corner-all");
  $("#student_filter :input").addClass("ui-widget ui-state-default ui-corner-all");
});
</script>
</body>
</html>

