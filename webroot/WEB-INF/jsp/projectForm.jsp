<%@ taglib prefix="s" uri="http://stripes.sourceforge.net/stripes-dynattr.tld" %>
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

  <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/sunny/jquery-ui.css">
  
<style>
tr > td
{
  padding: 5px 5px 5px 5px;
}
</style>
</head>

<body class="ui-widget">

    <table>
        <tr>
			<td bgcolor="#000099" colspan="2">
				<span style="font-family: Arial"></span>
				<h3 style="text-align: center">
				<span style="color: white; font-family: Arial">Discovery Learning Apprenticeship Submission</span></h3>
			</td>
        </tr>
        <tr>
            <td colspan="2">
                <strong>
                <br />
                    </strong>Thanks for your interest in submitting one or more projects for the
                    Discovery Learning Apprenticeship program. Please complete all required fields,
                    which are marked with an asterisk (<span>*</span>). You will
                    receive a confirmation after you enter your project indicating that your project
                    has been received. You may re-enter the application if you have more than one
                    project to advertise. If you have a correction or change to your project, if you
                    have trouble with this application or if you have questions, please contact
                    Sharon Anderson at
					<a target="_blank" style="color: rgb(17, 85, 204); font-family: Calibri, sans-serif; font-size: 14.4444446563721px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);" href="mailto:sharon.e.anderson@colorado.edu">
					sharon.e.anderson@colorado.edu</a>.
                <br />
    <span id="labelMessage1"><b><font color="Red"></font></b></span>
                <br />
        <span id="labelMessage2"><b><font color="Red"></font></b></span>
                <br />
            </td>
        </tr>
</table>

<s:form id="project" method="post" beanclass="edu.colorado.csci5828.remotelypossible.dlap.stripes.action.ProjectFormAction"> 
<s:hidden name="project.id"/>
<s:hidden name="project.published"/>
<fieldset>
	<table>
       <tr>
           <td>
               <label for="project.description">A title/description for the apprenticeship:</label><br/>
               <s:text name="project.description" size="80" maxlength="80" id="textDescription" placeholder="Project Title (Required)" onKeyUp="textCounter(this,remLen1,80);" required="true"  onblur="updateRequiredHighlights();"></s:text>
           </td>
            <td>
            	<s:submit id="save" name="save" value="Save"/>
            </td>
       </tr>
       <tr>
           <td>
             (This is what students will see in the application, may not exceed 80
               characters)

            </td>
            <td>
				<input type="text" name="remLen1" id="remLen1" size="3" maxlength="3" value="80" tabindex="-1"/>            
            </td>
           
        </tr>
</table>
</fieldset>
<div id="tabs">
  <ul>
  	<li><a href="#Apprenticeship">Apprenticeship</a></li>
    <li><a href="#Members">Member(s)</a></li>
    <li><a href="#Other">Other</a></li>
  </ul>
  <div id="Apprenticeship">
  	  <fieldset>
	  <table>
        <tr>
            <td>
                <label for="project.url">A website link related to your apprenticeship that would provide more
                information to interested students?</label>
            </td>
            <td>
                <s:text name="project.url" size="79" id="textWeb"  />
            </td>
        </tr>
        <tr>
            <td>
                Special Requirements that applicants must meet?<br />
                (eg: Must have had certain course, certain class standing, available to work
                in 2 5-hour blocks, etc.)<br />
                (may not exceed 1000 characters)</td>
            <td>
                <s:textarea name="project.requirement" rows="5" cols="60" id="textSpecialRequirements" onKeyUp="textCounter(this,remLen3,1000);"></s:textarea>
                <br />
<input type="text" name="remLen3" id="remLen3" size="6" maxlength="3" value="1000" tabindex="-1" /></td>
        </tr>
        <tr>
            <td>
                <span>*</span>
                A longer description of the apprenticeship:<br />
                (may not exceed 1200 characters)</td>
            <td>
                <s:textarea name="project.longDescription" rows="5" cols="60" id="textLongDescription" onKeyUp="textCounter(this,remLen2,1200);" onblur="updateRequiredHighlights();" onfocus="updateRequiredHighlights();"></s:textarea>
                <br />
<input type="text" name="remLen2" id="remLen2" size="6" maxlength="3" value="1200" tabindex="-1" />&nbsp;
            </td>
        </tr>
        <tr>
            <td>
                <span>* </span>From what areas do you wish to recruit students?<br />
                <br />
                (check all that apply)<br />
                <span class="style3"><strong>
                <br/><br/>
                PLEASE NOTE: Only students from majors you select will be allowed to apply for this project.
                </strong></span></td>
            <td>
            	<input id="allMajors" type="button" name="allMajors" value="Select All"/>
            	<br/><br/>
                <span id="listStudyMajor">
                	<s:checkbox id="listStudMajor_0" name="project.acceptedMajors[0]" value="ASEN"/><label for="listStudMajor_0">Aerospace Engineering</label>
                	<s:checkbox id="listStudMajor_1" name="project.acceptedMajors[1]" value="AMEN" /><label for="listStudMajor_1">Applied Mathematics</label>
                	<br />
                	<s:checkbox id="listStudMajor_2" name="project.acceptedMajors[2]" value="AREN" /><label for="listStudMajor_2">Architectural Engineering</label>
                	<s:checkbox id="listStudMajor_3" name="project.acceptedMajors[3]" value="CHEN" /><label for="listStudMajor_3">Chemical Engineering</label>
                	<br />
                	<s:checkbox id="listStudMajor_4" name="project.acceptedMajors[4]" value="CBEN"/><label for="listStudMajor_4">Chemical &amp; Biological Engineering</label>
                	<s:checkbox id="listStudMajor_5" name="project.acceptedMajors[5]" value="CVEN"/><label for="listStudMajor_5">Civil Engineering</label>
                  	<br />
                  	<s:checkbox id="listStudMajor_6" name="project.acceptedMajors[6]" value="CSEN"/><label for="listStudMajor_6">Computer Science</label>
                	<s:checkbox id="listStudMajor_7" name="project.acceptedMajors[7]" value="EEEN" /><label for="listStudMajor_7">Electrical Engineering</label>
                	<br />
                	<s:checkbox id="listStudMajor_8" name="project.acceptedMajors[8]" value="ECEN" /><label for="listStudMajor_8">Electrical and Computer Engineering</label>
                	<s:checkbox id="listStudMajor_9" name="project.acceptedMajors[9]" value="EPEN" /><label for="listStudMajor_9">Engineering Physics</label>
                	<br />
					<s:checkbox id="listStudMajor_10" name="project.acceptedMajors[10]" value="EVEN" /><label for="listStudMajor_10">Environmental Engineering</label>
                	<s:checkbox id="listStudMajor_11" name="project.acceptedMajors[11]" value="GEEN"/><label for="listStudMajor_11">Engineering Plus</label>
                	<br />
                	<s:checkbox id="listStudMajor_12" name="project.acceptedMajors[12]" value="MCEN"/><label for="listStudMajor_12">Mechanical Engineering</label>
                	<s:checkbox id="listStudMajor_13" name="project.acceptedMajors[13]" value="TMEN"/><label for="listStudMajor_13">Technology, Arts and Media</label>
                </span>
                </td>
        </tr>
         <tr>
            <td>
                <span>* </span>Amount of supervision required/interaction available:</td>
            <td>
            	<s:select name="project.supervisionLevel" onblur="updateRequiredHighlights();"  onfocus="updateRequiredHighlights();">
            		<s:option value="">Please Select</s:option>
					<s:option value="Very little supervision; student will need to work largely independently">Very little supervision; student will need to work largely independently</s:option>
					<s:option value="Moderate amount of supervision and interaction with others">Moderate amount of supervision and interaction with others</s:option>
					<s:option value="Good deal of supervision; student will work as an integral part of a research team">Good deal of supervision; student will work as an integral part of a research team</s:option>
				</s:select>
           </td>
        </tr>
        <tr>
            <td>
                <span>* </span>Supervision provided by:</td>
            <td>
            	<s:select name="project.supervisor" onblur="updateRequiredHighlights();">
            		<s:option value="">Please Select</s:option>
            		<s:option value="Supervision primarily by faculty supervisor">Supervision primarily by faculty supervisor</s:option>
            		<s:option value="Supervision primarily by graduate students">Supervision primarily by graduate students</s:option>
            		<s:option value="Supervision primarily a combination of faculty and graduate students">Supervision primarily a combination of faculty and graduate students</s:option>
            	</s:select>
           </td>
        </tr>
        <tr>
            <td>
                <span>* </span>Nature of work:</td>
            <td>
            	<s:select name="project.natureOfWork" onchange="checkOtherEnabled(this,'project.natureOfWorkOther')" onblur="updateRequiredHighlights();">
            		<s:option value="">Please Select</s:option>
            		<s:option value="Nature of work is primarily theoretical, most work on paper/electronic medium">Nature of work is primarily theoretical, most work on paper/electronic medium</s:option>
            		<s:option value="Nature of work is primarily experimental, requiring hands-on work in a lab">Nature of work is primarily experimental, requiring hands-on work in a lab</s:option>
            		<s:option value="Nature of work is primarily field based, requiring hands-on work in the field">Nature of work is primarily field based, requiring hands-on work in the field</s:option>
            		<s:option value="Nature of work is primarily computer-related, involving coding/analysis">Nature of work is primarily computer-related, involving coding/analysis</s:option>
            		<s:option value="Nature of work is a combination of several types of work">Nature of work is a combination of several types of work</s:option>
            		<s:option value="Other">Other, specify:</s:option>
            	</s:select>
            	<br/>
                <s:text name="project.natureOfWorkOther" id="textNattyWo"   onblur="updateRequiredHighlights();" />
			</td>
        </tr>
        <tr>
            <td>
                <span>* </span>Amount of prior work conducted in association with this project:
            </td>
            <td>
            	<s:select name="project.priorWork" onchange="checkOtherEnabled(this,'project.priorWorkOther')" onblur="updateRequiredHighlights();">
            		<s:option value="">Please Select</s:option>
            		<s:option value="No prior work; student will be starting from basic idea">No prior work; student will be starting from basic idea</s:option>
            		<s:option value="Some prior work; student will build on work of others">Some prior work; student will build on work of others</s:option>
            		<s:option value="Well-established body of work; student will refine/improved upon efforts of others">Well-established body of work; student will refine/improved upon efforts of others</s:option>
            		<s:option value="Other">Other, specify:</s:option>
            	</s:select>
				<br/>
                <s:text name="project.priorWorkOther" id="textAmountPro"   onblur="updateRequiredHighlights();" />
            </td>
        </tr>

        <tr>
            <td>
                Name of specific student desired: (if any) and be sure to ask them to apply!</td>
            <td>
                <s:text name="project.desiredStudent" id="textStudName"  />
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>

	  </table>
	  </fieldset>
  </div>
  <div id="Members">
  	  <fieldset>
	  <table>
        <tr>
            <td bgcolor="#000099" colspan="2">Faculty Member Info</td>
           
        </tr>
        <tr>
            <td width="300">
                <span>*</span>
                Faculty name:</td>
            <td>
                <s:text name="project.faculty1.name" onblur="updateRequiredHighlights();"/>
                &nbsp;
            </td>
        </tr>
        <tr>
            <td width="300">
            	<span>&nbsp;&nbsp;</span>
                Faculty phone number:
             </td>
            <td>
               ( <s:text name="project.faculty1.phone.areacode"  maxlength="3" size="2" id="textbldrphone1" onkeyup="autotab('textbldrphone1', 'textbldrphone2')" />
                ) <s:text name="project.faculty1.phone.prefix" maxlength="3" size="2" id="textbldrphone2" onkeyup="autotab('textbldrphone2','textbldrphone3')" />
                - <s:text name="project.faculty1.phone.number" maxlength="4" size="4" id="textbldrphone3"  />
                        &nbsp;
                        &nbsp;
                        &nbsp;
                        </td>
        </tr>
        <tr>
            <td width="300">
                <span>*</span> Faculty email address:</td>
            <td>
                <s:text name="project.faculty1.email" maxlength="50" size="30" id="textEmail"   onblur="updateRequiredHighlights();"/>
                &nbsp;

                </td>
        </tr>
        <tr>
            <td>
                <span>* </span>Faculty department/program:</td>
            <td>
                <s:select name="project.faculty1.program" id="listMajor" onblur="updateRequiredHighlights();">
                	<s:option value="">Please Select</s:option>
					<s:option value="AES">Aerospace Engineering Sciences</s:option>
					<s:option value="APPM">Applied Math</s:option>
					<s:option value="CHBE">Chemical &amp; Biological Engineering</s:option>
					<s:option value="CEAE">Civil, Environmental and Architectural Engineering</s:option>
					<s:option value="CS">Computer Science</s:option>
					<s:option value="ECEE">Electrical, Computer and Energy Engineering</s:option>
					<s:option value="PHYS">Physics</s:option>
					<s:option value="EVEN">Environmental Engineering</s:option>
					<s:option value="ME">Mechanical Engineering</s:option>
					<s:option value="CSGC">Colorado Space Grant</s:option>
					<s:option value="EnEd">Engineering Education</s:option>
					<s:option value="ATLS">ATLAS</s:option>
					</s:select>
                &nbsp;
                </td>
        </tr>
        <tr>
            <td>
                Does this project have a focus on Engineering for Developing Communities?
            </td>
            <td>
                <span id="radioFocusDevCom"><s:radio id="radioFocusDevCom_0" name="project.communityDevelopmentFocus" value="1" /><label for="radioFocusDevCom_0">Yes</label><s:radio id="radioFocusDevCom_1" name="project.communityDevelopmentFocus" value="3" checked="checked" /><label for="radioFocusDevCom_1">No</label></span>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td bgcolor="#000099" colspan="2">Second Faculty Member (Optional)</td>
        </tr>
        <tr>
            <td>
                Faculty name:</td>
            <td>
                <s:text name="project.faculty2.name" id="textNameAlt"  />
                </td>
        </tr>
        <tr>
            <td>
                Faculty phone number:</td>
            <td>
                &nbsp;(<s:text name="project.faculty2.phone.areacode" maxlength="3" size="2" id="textbldrphone1alt" onkeyup="autotab('textbldrphone1alt', 'textbldrphone2alt')" />
                )
                <s:text name="project.faculty2.phone.prefix" maxlength="3" size="2" id="textbldrphone2alt" onkeyup="autotab('textbldrphone2alt','textbldrphone3alt')" />
                -
                <s:text name="project.faculty2.phone.number" maxlength="4" size="4" id="textbldrphone3alt"  />
                        &nbsp;
                        &nbsp;
                        &nbsp;
                        </td>
        </tr>
        <tr>
            <td>
                Faculty email address:</td>
            <td>
                <s:text name="project.faculty2.email" maxlength="50" size="30" id="textEmailalt"  />

                </td>
        </tr>
        <tr>
            <td>
            Faculty department/program:</td>
            <td>
                <s:select name="project.faculty2.program" id="listMajoralt">
                	<s:option value="">Please Select</s:option>
					<s:option value="AES">Aerospace Engineering Sciences</s:option>
					<s:option value="APPM">Applied Math</s:option>
					<s:option value="CHBE">Chemical &amp; Biological Engineering</s:option>
					<s:option value="CEAE">Civil, Environmental and Architectural Engineering</s:option>
					<s:option value="CS">Computer Science</s:option>
					<s:option value="ECEE">Electrical, Computer and Energy Engineering</s:option>
					<s:option value="PHYS">Physics</s:option>
					<s:option value="EVEN">Environmental Engineering</s:option>
					<s:option value="ME">Mechanical Engineering</s:option>
					<s:option value="CSGC">Colorado Space Grant</s:option>
					<s:option value="EnEd">Engineering Education</s:option>
					<s:option value="ATLS">ATLAS</s:option>
				</s:select>
			</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td width="400" bgcolor="#000099" colspan="2">
                Grad Student/Post Doc Info (Optional)</td>
        </tr>
        <tr>
            <td>
                Grad Student/Post Doc name:</td>
            <td>
                <s:text name="project.graduate.name" id="textGradName"  />
                </td>
        </tr>
        <tr>
            <td>
                Grad Student/Post Doc phone number:</td>
            <td>
               (
                <s:text name="project.graduate.phone.areacode" maxlength="3" size="2" id="textGradphone1" onkeyup="autotab('textGradphone1', 'textGradphone2')" />
                )
                <s:text name="project.graduate.phone.prefix" maxlength="3" size="2" id="textGradphone2" onkeyup="autotab('textGradphone2','textGradphone3')" />
                -
                <s:text name="project.graduate.phone.number" maxlength="4" size="4" id="textGradphone3" />
                        &nbsp;
                        &nbsp;
                        &nbsp;
                        </td>
        </tr>
        <tr>
            <td>
                Grad Student/Post Doc email address:</td>
            <td>
                <s:text name="project.graduate.name" maxlength="50" size="30" id="textGradEmail"  />

                </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
	  </table>
	  </fieldset>
  </div>
  
  
  <div id="Other">
  	  <fieldset>
	  <table>
	  <tr>
            <td bgcolor="#000099" colspan="2">Finances</td>
        </tr>
        <tr>
            <td>
                <span>* </span>What speed type will you use for your 50% match of the funding?
                (should be in the form XXXXXXXX, all numbers)</td>
            <td>
                <s:text name="project.speedType" maxlength="8" id="textSpeedType"  />
&nbsp;or
                <s:checkbox id="speedTypeNotSure" name="project.speedTypeNotSure" /><label for="speedTypeNotSure"> Not Sure</label>
                <br />
                &nbsp;
            </td>
        </tr>
        <tr>
            <td>
                <span>*</span>Accounting contact for your project:</td>
            <td>
                <s:text name="project.accountingContact" id="textAccounting" onblur="updateRequiredHighlights();"/>
                &nbsp;
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td bgcolor="#000099" colspan="2">
               Other
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                Have you supervised a Discovery Learning Apprentice in the past?<br />
                (<i>this question intended for the faculty supervisor, not the graduate student
                or post-doc)</i></td>
            <td>
                <span id="radioDLsupervisor"><s:radio id="radioDLsupervisor_0" name="project.dlSupervisor" value="Yes" /><label for="radioDLsupervisor_0">Yes</label><s:radio id="radioDLsupervisor_1" name="project.dlSupervisor" value="No" /><label for="radioDLsupervisor_1">No</label></span>
            </td>
        </tr>
        <tr>
            <td>

            </td>
            <td>

            </td>
        </tr>
        <tr>
            <td>
                &nbsp;&nbsp;</td>
            <td>
        &nbsp;</td>
        </tr>
        <tr>
            <td colspan="2">
                &nbsp;</td>
        </tr>
	  </table>
	  </fieldset>
  </div>


</div>

</s:form>

<div id="dialog-description-required" title="Title/Description Required">
  <p>
    <span class="ui-icon ui-icon-pin-w" style="float:left; margin:0 7px 50px 0;"></span>
    You must provide a Title/Description before a draft project can be saved.
  </p>
</div>

<div id="dialog-publish-ready" title="Ready to Publish?">
  <p>
    <span class="ui-icon ui-icon-star" style="float:left; margin:0 7px 50px 0;"></span>
    Are you ready to publish this Project so that students can apply?
  </p>
</div>


<script type="text/javascript" src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script type="text/javascript" src="//cdnjs.cloudflare.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"></script>
<script type="text/javascript" src="/js/formTools.js"></script>
<script>
var toggleAllMajors = function() {
	if($('#allMajors').val() == 'Select All') {
		$('#allMajors').val('Select None');
		$('#listStudyMajor :checkbox').each(function () {
			if(! $(this).is(':checked')) {
				$(this).click();
			}
         });
	} else {
		$('#listStudyMajor :checkbox').each(function () {
		$('#allMajors').val('Select All');
			if( $(this).is(':checked')) {
				$(this).click();
			}
         });
	}
};
var updateRequiredHighlights = function() {
	validateForm('project',highlightErrors);
}
var submitForm = function() {
	$( "[name='validate']" ).val("false");
	$( "[name='save']" ).click();
}
 $(document).ready(function() {

  <!-- Init the Title/Description required dialog -->
  $( "#dialog-description-required" ).dialog({
    autoOpen: false,
    modal: true,
    close: function() {
      $("[name='project.description']").focus();
    },
    buttons: {
      Ok: function() {
        $( this ).dialog( "close" );
        $("[name='project.description']").focus();
      }
    }
  });
  
  <!-- Init the Ready to Publish dialog -->
  $( "#dialog-publish-ready" ).dialog({
    autoOpen: false,
    modal: true,
    close: function() {
      //Save Only
      dlapFormComplete=false;
      submitForm();
    },
    buttons: {
      Yes: function() {
        //Publish
        dlapFormComplete=false;
      	$( "[name='project.published']" ).val('true');
        submitForm();
      },
      No: function() {
        //Save Only
        dlapFormComplete=false;
        submitForm();
        
      }
    }
  });

  <!-- Attach submit event handler to prompt for Publishing when qualified -->
  $("#project").submit(function( event ) {
 
  	console.log( $("[name='project.description']").val().length);
  	if( $("[name='project.description']").val().length < 1) {
  	  // Do not save if there is no title/description
  	  $( "#dialog-description-required" ).dialog("open");
  	  event.preventDefault();
  	  
  	} else if(dlapFormComplete) {
  	  //Ask if they are ready to publish the Project
 	  $( "#dialog-publish-ready" ).dialog("open");
 	  event.preventDefault();   	
    }
    
  });



  <!-- Setup the Tabs -->
  $("#tabs").tabs();
  
  <!-- Pretty form elements -->
  $("input:text, input:password, textarea, select").addClass("ui-widget ui-state-default ui-corner-all");
  $("input:radio, input:checkbox" ).checkboxradio();
  $("#save").button();

  
  $('#allMajors').button().click(toggleAllMajors);
  
  $('[name="project.natureOfWorkOther"]').hide();
  $('[name="project.priorWorkOther"]').hide();
    
  <!-- Highlight required fields -->
  updateRequiredHighlights();  
});

</script>
</body>
</html>
