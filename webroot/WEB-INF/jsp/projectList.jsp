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

</head>

<body>
<s:useActionBean var="actionBean" beanclass="edu.colorado.csci5828.remotelypossible.dlap.stripes.action.ProjectListAction"  />
<a href="/do/project/form">Add a new project</a>
<br/><br/><br/>
<c:choose>
<c:when test="${not empty actionBean.projectList}">
Existing Projects:<br/> 
<c:forEach items="${actionBean.projectList}" var="project" varStatus="loop"> 
<a href="/do/project/form/${project.id}">${project.description}</a></br>
</c:forEach>
</c:when>
<c:otherwise>
No projects have been created.
</c:otherwise>
</c:choose>

<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"></script>
<script src="//use.typekit.net/wde1aof.js"></script>
<script>try{Typekit.load();}catch(e){}</script>

</body>
</html>
