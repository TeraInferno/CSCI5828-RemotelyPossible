<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="s" uri="http://stripes.sourceforge.net/stripes.tld" %>
<!doctype html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Discovery Learning Apprenticeship Program</title>
  <meta name="description" content="Discovery Learning Apprenticeship Program - Login">
  <meta name="author" content="RemotelyPossible">

  <!--[if lt IE 9]>
    <script src="//cdnjs.cloudflare.com/ajax/libs/html5shiv/3.7.3/html5shiv.js"></script>
  <![endif]-->

  <link rel="stylesheet" type="text/css" href="//code.jquery.com/ui/1.12.1/themes/sunny/jquery-ui.css">
  <script type="text/javascript" src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>  
</head>

<body class="ui-widget-content">

<div id="loginDialog">
<s:form id="loginForm" method="post" beanclass="edu.colorado.csci5828.remotelypossible.dlap.stripes.action.LoginAction">
<br/><br/>
Welcome to the Discovery Learning Apprenticeship Program.
<br/><br/>
<fieldset>
<table>
  <tr>
    <td>Username</td>
    <td><s:text name="username" maxlength="64"></s:text></td>
   </tr>
   <tr>
    <td>Password</td>
    <td><s:password name="username" maxlength="64"></s:password></td>
   </tr>
</table>

</fieldset>
</s:form>
</div>
<script type="text/javascript"
  src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script type="text/javascript"
  src="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"></script>
<script type="text/javascript" src="/js/formTools.js"></script>

<script>
var login = function() {
	$("#loginForm").submit();
};
$(document).ready(function() {

  var dialog = $( "#loginDialog" ).dialog({
	title: "Discovery Learning Apprenticeship Program - Login",
    autoOpen: true,
    height: 400,
    width: 600,
    buttons: {
      "Login": login,
    },
    closeOnEscape: false,
    open: function(event, ui) {
        $(".ui-dialog-titlebar-close", ui.dialog | ui).hide();
    }
  });
  
  <!-- Pretty form elements -->
  $("input:text, input:password").addClass("ui-widget ui-state-default ui-corner-all");

  
});
</script>
</body>
</html>

