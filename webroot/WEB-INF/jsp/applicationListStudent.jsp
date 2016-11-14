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
  <link rel="stylesheet" type="text/css" href="/css/navbar.css"/>
  <script type="text/javascript" src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>  
</head>

<body>
<jsp:include page="navbar.jsp" />
<br/>

<br/><br/><br/>
<a id="tableTop"></a>
<table id="application" class="display">
        <thead>
            <tr>
                <th>Project(s)</th>
                <th>Contact</th>
                <th>Status</th>
            </tr>
        </thead>
        <tfoot>
            <tr>
                <th>Project(s)</th>
                <th>Contact</th>
                <th>Status</th>
            </tr>
        </tfoot>
        <tbody>
        <c:forEach items="${applicationList}" var="app" varStatus="loop">
			<tr>
			  <td>
			    <ol>
			  	  <li>${app.apprenticeshipInfo.firstChoice.description}
			  	  <li>${app.apprenticeshipInfo.secondChoice.description}
			  	  <li>${app.apprenticeshipInfo.thirdChoice.description}
			  	  <li>${app.apprenticeshipInfo.fourthChoice.description}
			  	  <li>${app.apprenticeshipInfo.fifthChoice.description}
			  	</ol>
			  </td>
			  <td>
			  	<ul>
			  		<li>${app.student.boulderEmail}
			  		<li>${app.student.summerEmail}
			  	<ul>
			  </td>
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

$(document).ready(function() {
  <!-- Enable data table from project list -->
  $('#application').DataTable({
      "search": {
	  "smart": false
    },
    "stateSave": true,
    "stateDuration": -1
});

<!-- Style the DataTable filter with JQueryUI -->
$("#application_filter :input").addClass("ui-widget ui-state-default ui-corner-all");
} );

<!-- Setup the navigation -->
$( "#nav" ).menu({position: {at: "left bottom"}});


</script>
</body>
</html>

