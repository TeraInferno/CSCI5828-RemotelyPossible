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
    <script src="https://cdnjs.cloudflare.com/ajax/libs/html5shiv/3.7.3/html5shiv.js"></script>
  <![endif]-->

  <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/dark-hive/jquery-ui.css">
<style>
tr > td
{
  padding-bottom: 1em;
}
</style>
</head>

<body class="ui-widget-content">

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
                    which are marked with a red asterisk (<span>*</span>). You will
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
<table>
       <tr>
           <td valign="top">
               <span>* </span>A title/description for the apprenticeship:<br />
               (This is what students will see in the application, may not exceed 80
               characters)</td>
           <td>
               <s:textarea name="project.description" rows="2" cols="60" id="textDescription" onKeyUp="textCounter(this,remLen1,80);" onKeyDown="textCounter(this,remLen1,80);" onKeyPress="textCounter(this,remLen1,80);">${project.description}</s:textarea>
               <br />
<input type="text" name="remLen1" id="remLen1" size="3" maxlength="3" value="80" />
&nbsp;
            </td>
            <td>
            	<s:submit name="save" value="Save"/>
            </td>
        </tr>
</table>

<div id="tabs">
  <ul>
  	<li><a href="#Apprenticeship">Apprenticeship</a></li>
    <li><a href="#Members">Member(s)</a></li>
    <li><a href="#Other">Other</a></li>
  </ul>
  <div id="Apprenticeship">
	  <table>
        <tr>
            <td valign="top">
                A website link related to your apprenticeship that would provide more
                information to interested students?</td>
            <td valign="top">
                <s:text name="project.url" size="79" id="textWeb" onKeyPress="return disableEnterKey(event)" />
            </td>
        </tr>
        <tr>
            <td valign="top">
                Special Requirements that applicants must meet?<br />
                (eg: Must have had certain course, certain class standing, available to work
                in 2 5-hour blocks, etc.)<br />
                (may not exceed 1000 characters)</td>
            <td valign="top">
                <s:textarea name="project.requirement" rows="5" cols="60" id="textSpecialRequirements" onKeyUp="textCounter(this,remLen3,1000);" onKeyDown="textCounter(this,remLen3,1000);" onKeyPress="textCounter(this,remLen3,1000);">${project.requirement}</s:textarea>
                <br />
<input type="text" name="remLen3" id="remLen3" size="6" maxlength="3" value="1000" /></td>
        </tr>
        <tr>
            <td valign="top">
                <span>*</span>
                A longer description of the apprenticeship:<br />
                (may not exceed 1200 characters)</td>
            <td valign="top">
                <s:textarea name="project.longDescription" rows="5" cols="60" id="textLongDescription" onKeyUp="textCounter(this,remLen2,1200);" onKeyDown="textCounter(this,remLen2,1200);" onKeyPress="textCounter(this,remLen2,1200);">${project.longDescription}</s:textarea>
                <br />
<input type="text" name="remLen2" id="remLen2" size="6" maxlength="3" value="1200" />&nbsp;
            </td>
        </tr>
                <tr>
            <td valign="top">
                <span>* </span>From what areas do you wish to recruit students?<br />
                <br />
                (check all that apply)<br />
                <span class="style3"><strong>
                <br/><br/>
                PLEASE NOTE: Only students from majors you select will be allowed to apply for this project.
                </strong></span></td>
            <td valign="top">
                <span id="listStudMajor">
                	<s:checkbox id="listStudMajor_0" name="project.acceptedMajors[0]" value="Aerospace Engineering"/><label for="listStudMajor_0">Aerospace Engineering</label>
                	<s:checkbox id="listStudMajor_7" name="project.acceptedMajors[7]" value="Electrical Engineering" /><label for="listStudMajor_7">Electrical Engineering</label>
                	<br />
                	<s:checkbox id="listStudMajor_1" name="project.acceptedMajors[1]" value="Applied Mathematics" /><label for="listStudMajor_1">Applied Mathematics</label>
                	<s:checkbox id="listStudMajor_8" name="project.acceptedMajors[8]" value="Electrical and Computer Engineering" /><label for="listStudMajor_8">Electrical and Computer Engineering</label>
                	<br />
                	<s:checkbox id="listStudMajor_2" name="project.acceptedMajors[2]" value="Architectural Engineering" /><label for="listStudMajor_2">Architectural Engineering</label>
                	<s:checkbox id="listStudMajor_9" name="project.acceptedMajors[9]" value="Engineering Physics" /><label for="listStudMajor_9">Engineering Physics</label>
                	<br />
                	<s:checkbox id="listStudMajor_3" name="project.acceptedMajors[3]" value="Chemical Engineering" /><label for="listStudMajor_3">Chemical Engineering</label>
                	<s:checkbox id="listStudMajor_10" name="project.acceptedMajors[10]" value="Environmental Engineering" /><label for="listStudMajor_10">Environmental Engineering</label>
                	<br />
                	<s:checkbox id="listStudMajor_4" name="project.acceptedMajors[4]" value="Chemical & Biological Engineering"/><label for="listStudMajor_4">Chemical &amp; Biological Engineering</label>
                	<s:checkbox id="listStudMajor_11" name="project.acceptedMajors[11]" value="Engineering Plus"/><label for="listStudMajor_11">Engineering Plus</label>
                	<br />
                	<s:checkbox id="listStudMajor_5" name="project.acceptedMajors[5]" value="Civil Engineering"/><label for="listStudMajor_5">Civil Engineering</label>
                	<s:checkbox id="listStudMajor_12" name="project.acceptedMajors[12]" value="Mechanical Engineering"/><label for="listStudMajor_12">Mechanical Engineering</label>
                	<br />
                	<s:checkbox id="listStudMajor_6" name="project.acceptedMajors[6]" value="Computer Science"/><label for="listStudMajor_6">Computer Science</label>
                	<s:checkbox id="listStudMajor_13" name="project.acceptedMajors[13]" value="Technology, Arts and Media"/><label for="listStudMajor_13">Technology, Arts and Media</label>
                </span>
                </td>
        </tr>
         <tr>
            <td valign="top">
                <span>* </span>Amount of supervision required/interaction available:</td>
            <td valign="top">
            	<s:select name="project.supervisionLevel">
					<s:option value="Very little supervision; student will need to work largely independently">Very little supervision; student will need to work largely independently</s:option>
					<s:option value="Moderate amount of supervision and interaction with others">Moderate amount of supervision and interaction with others</s:option>
					<s:option value="Good deal of supervision; student will work as an integral part of a research team">Good deal of supervision; student will work as an integral part of a research team</s:option>
				</s:select>
           </td>
        </tr>
                <tr>
            <td valign="top">
                <span>* </span>Supervision provided by:</td>
            <td valign="top">
            	<s:select name="project.supervisor">
            		<s:option value="Supervision primarily by faculty supervisor">Supervision primarily by faculty supervisor</s:option>
            		<s:option value="Supervision primarily by graduate students">Supervision primarily by graduate students</s:option>
            		<s:option value="Supervision primarily a combination of faculty and graduate students">Supervision primarily a combination of faculty and graduate students</s:option>
            	</s:select>
           </td>
        </tr>
                <tr>
            <td valign="top">
                <span>* </span>Nature of work:</td>
            <td valign="top">
            	<s:select name="project.natureOfWork">
            		<s:option value="Nature of work is primarily theoretical, most work on paper/electronic medium">Nature of work is primarily theoretical, most work on paper/electronic medium</s:option>
            		<s:option value="Nature of work is primarily experimental, requiring hands-on work in a lab">Nature of work is primarily experimental, requiring hands-on work in a lab</s:option>
            		<s:option value="Nature of work is primarily field based, requiring hands-on work in the field">Nature of work is primarily field based, requiring hands-on work in the field</s:option>
            		<s:option value="Nature of work is primarily computer-related, involving coding/analysis">Nature of work is primarily computer-related, involving coding/analysis</s:option>
            		<s:option value="Nature of work is a combination of several types of work">Nature of work is a combination of several types of work</s:option>
            		<s:option value="Other">Other, specify:</s:option>
            	</s:select>
            	<br/>
                <s:text name="project.natureOfWorkOther" id="textNattyWo" onKeyPress="return disableEnterKey(event)" />
			</td>
        </tr>
        <tr>
            <td valign="top">
                <span>* </span>Amount of prior work conducted in association with this project:
            </td>
            <td valign="top">
            	<s:select name="project.priorWork">
            		<s:option value="No prior work; student will be starting from basic idea">No prior work; student will be starting from basic idea</s:option>
            		<s:option value="Some prior work; student will build on work of others">Some prior work; student will build on work of others</s:option>
            		<s:option value="Well-established body of work; student will refine/improved upon efforts of others">Well-established body of work; student will refine/improved upon efforts of others</s:option>
            		<s:option value="Other">Other, specify:</s:option>
            	</s:select>
				<br/>
                <s:text name="project.priorWorkOther" type="text" id="textAmountPro" onKeyPress="return disableEnterKey(event)" />
            </td>
        </tr>

        <tr>
            <td valign="top">
                Name of specific student desired: (if any) and be sure to ask them to apply!</td>
            <td valign="top">
                <s:text name="project.desiredStudent" id="textStudName" onKeyPress="return disableEnterKey(event)" />
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>

	  </table>
  </div>
  <div id="Members">
	  <table>
        <tr>
            <td bgcolor="#000099" colspan="2">Faculty Member Info</td>
           
        </tr>
        <tr>
            <td width="300" valign="top">
                <span>*</span>
                Faculty name:</td>
            <td valign="top">
                <s:text name="project.faculty1.name"/>
                &nbsp;
            </td>
        </tr>
        <tr>
            <td width="300" valign="top">
            	<span>&nbsp;&nbsp;</span>
                Faculty phone number:
             </td>
            <td>
               ( <s:text name="project.faculty1.phone.areacode"  maxlength="3" size="2" id="textbldrphone1" onkeyup="autotab(textbldrphone1, textbldrphone2)" />
                ) <s:text name="project.faculty1.phone.prefix" type="text" maxlength="3" size="2" id="textbldrphone2" onkeyup="autotab(textbldrphone2,textbldrphone3)" />
                - <s:text name="project.faculty1.phone.number" type="text" maxlength="4" size="4" id="textbldrphone3" onKeyPress="return disableEnterKey(event)" />
                        &nbsp;
                        &nbsp;
                        &nbsp;
                        </td>
        </tr>
        <tr>
            <td width="300" valign="top">
                <span>*</span> Faculty email address:</td>
            <td>
                <s:text name="project.faculty1.email" maxlength="50" size="30" id="textEmail" onKeyPress="return disableEnterKey(event)" />
                &nbsp;

                </td>
        </tr>
        <tr>
            <td valign="top">
                <span>* </span>Faculty department/program:</td>
            <td valign="top">
                <s:select name="project.faculty1.program" id="listMajor">
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
            <td valign="top">
                Does this project have a focus on Engineering for Developing Communities?</td>
            <td valign="top">
                <span id="radioFocusDevCom"><s:radio id="radioFocusDevCom_0" name="project.communityDevelopmentFocus" value="1" /><label for="radioFocusDevCom_0">Yes</label><s:radio id="radioFocusDevCom_1" name="project.communityDevelopmentFocus" value="3" checked="checked" /><label for="radioFocusDevCom_1">No</label></span>
                </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td valign="top">
                &nbsp;</td>
        </tr>
        <tr>
            <td bgcolor="#000099" colspan="2">Second Faculty Member (Optional)</td>
        </tr>
        <tr>
            <td valign="top">
                Faculty name:</td>
            <td valign="top">
                <s:text name="project.faculty2.name" id="textNameAlt" onKeyPress="return disableEnterKey(event)" />
                </td>
        </tr>
        <tr valign="top">
            <td valign="top">
                Faculty phone number:</td>
            <td valign="top">
                &nbsp;(<s:text name="project.faculty2.phone.areacode" maxlength="3" size="2" id="textbldrphone1alt" onkeyup="autotab(textbldrphone1alt, textbldrphone2alt)" />
                )
                <s:text name="project.faculty2.phone.prefix" maxlength="3" size="2" id="textbldrphone2alt" onkeyup="autotab(textbldrphone2alt,textbldrphone3alt)" />
                -
                <s:text name="project.faculty2.phone.number" type="text" maxlength="4" size="4" id="textbldrphone3alt" onKeyPress="return disableEnterKey(event)" />
                        &nbsp;
                        &nbsp;
                        &nbsp;
                        </td>
        </tr>
        <tr>
            <td valign="top">
                Faculty email address:</td>
            <td valign="top">
                <s:text name="project.faculty2.email" maxlength="50" size="30" id="textEmailalt" onKeyPress="return disableEnterKey(event)" />

                </td>
        </tr>
        <tr>
            <td valign="top">
            Faculty department/program:</td>
            <td valign="top">
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
            <td valign="top">
                &nbsp;</td>
        </tr>
        <tr>
            <td width="400" bgcolor="#000099" colspan="2">
                Grad Student/Post Doc Info (Optional)</td>
        </tr>
        <tr>
            <td valign="top">
                Grad Student/Post Doc name:</td>
            <td valign="top">
                <s:text name="project.graduate.name" id="textGradName" onKeyPress="return disableEnterKey(event)" />
                </td>
        </tr>
        <tr>
            <td valign="top">
                Grad Student/Post Doc phone number:</td>
            <td valign="top">
               (
                <s:text name="project.graduate.phone.areacode" maxlength="3" size="2" id="textGradphone1" onkeyup="autotab(textGradphone1, textGradphone2)" />
                )
                <s:text name="project.graduate.phone.prefix" maxlength="3" size="2" id="textGradphone2" onkeyup="autotab(textGradphone2,textGradphone3)" />
                -
                <s:text name="project.graduate.phone.number" maxlength="4" size="4" id="textGradphone3" />
                        &nbsp;
                        &nbsp;
                        &nbsp;
                        </td>
        </tr>
        <tr>
            <td valign="top">
                Grad Student/Post Doc email address:</td>
            <td valign="top">
                <s:text name="project.graduate.name" maxlength="50" size="30" id="textGradEmail" onKeyPress="return disableEnterKey(event)" />

                </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td valign="top">
                &nbsp;</td>
        </tr>
	  </table>
	  
  </div>
  
  
  <div id="Other">
	  <table>
	  <tr>
            <td bgcolor="#000099" colspan="2">Finances</td>
        </tr>
        <tr>
            <td valign="top">
                <span>* </span>What speed type will you use for your 50% match of the funding?
                (should be in the form XXXXXXXX, all numbers)</td>
            <td valign="top">
                <s:text name="project.speedType" maxlength="8" id="textSpeedType" onKeyPress="return disableEnterKey(event)" />
&nbsp;or
                <s:checkbox id="speedTypeNotSure" name="project.checkSpeedTypeNotSure" /><label for="checkSpeedType"> Not Sure</label>
                <br />
                &nbsp;
            </td>
        </tr>
        <tr>
            <td>
                <span>*</span>Accounting contact for your project:</td>
            <td>
                <input name="project.accountingContact" type="text" id="textAccounting" onKeyPress="return disableEnterKey(event)" />
                &nbsp;
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td valign="top">&nbsp;</td>
        </tr>
        <tr>
            <td bgcolor="#000099" colspan="2">
               Other
            </td>
            <td valign="top">
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                Have you supervised a Discovery Learning Apprentice in the past?<br />
                (<i>this question intended for the faculty supervisor, not the graduate student
                or post-doc)</i></td>
            <td valign="top">
                <span id="radioDLsupervisor"><s:radio id="radioDLsupervisor_0" name="project.dlSupervisor" value="Yes" /><label for="radioDLsupervisor_0">Yes</label><s:radio id="radioDLsupervisor_1" name="pe
                project.dlSupervisor" value="No" /><label for="radioDLsupervisor_1">No</label></span>
            </td>
        </tr>
        <tr>
            <td>

            </td>
            <td valign="top">

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
        <span>Please ensure that <strong>all</strong>
            information is correct before submitting your project. You will <strong>not be able
                to return</strong> to this page to make changes or corrections. Once you are
            sure everything is correct, you may proceed.</span></td>
        </tr>
        <tr>
            <td colspan="2">
                <br />
    <span id="labelMessage3"><b><font color="Red"></font></b></span>
                <br />
    <span id="labelMessage4"><b><font color="Red"></font></b></span>

                <br />
                &nbsp;
                <br />
                &nbsp;
                <br />

                <br />
                &nbsp;
                <br />
                &nbsp;
                <br />
                &nbsp;
                <br />
                &nbsp;
                <br />
                &nbsp;
            </td>
        </tr>
        <tr>
            <td colspan="2">
                &nbsp;</td>
        </tr>
	  </table>
  </div>


</div>

</s:form>

<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"></script>
<script type="text/javascript" src="/js/formTools.js"></script>
<script>
$( function() {
  $("#tabs").tabs();
  $("#project").form();
});
</script>
</body>
</html>
