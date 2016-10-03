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

</head>

<body>

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
                <p>
                    </strong>Thanks for your interest in submitting one or more projects for the
                    Discovery Learning Apprenticeship program. Please complete all required fields,
                    which are marked with a red asterisk (<span class="style2">*</span>). You will
                    receive a confirmation after you enter your project indicating that your project
                    has been received. You may re-enter the application if you have more than one
                    project to advertise. If you have a correction or change to your project, if you
                    have trouble with this application or if you have questions, please contact
                    Sharon Anderson at
					<a target="_blank" style="color: rgb(17, 85, 204); font-family: Calibri, sans-serif; font-size: 14.4444446563721px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);" href="mailto:sharon.e.anderson@colorado.edu">
					sharon.e.anderson@colorado.edu</a>.</p>
                <br />
    <span id="labelMessage1"><b><font color="Red"></font></b></span>
                <br />
        <span id="labelMessage2"><b><font color="Red"></font></b></span>
                <br />
            </td>
        </tr>
</table>

<s:form method="post" beanclass="edu.colorado.csci5828.remotelypossible.dlap.stripes.action.ProjectFormAction"> 
<s:hidden name="project.id"/>
<table>
       <tr class="d1">
           <td valign="top">
               <span class="style2">* </span>A title/description for the apprenticeship:<br />
               (This is what students will see in the application, may not exceed 80
               characters)</td>
           <td>
               <s:textarea name="project.description" rows="2" cols="60" id="textDescription" onKeyUp="textCounter(project.description,remLen1,80);" onKeyDown="textCounter(textDescription,remLen1,80);" onKeyPress="textCounter(textDescription,remLen1,80);">${project.description}</s:textarea>
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
            <td bgcolor="#000099" class="style1">
                Apprenticeship Information</td>
            <td valign="top">
                &nbsp;</td>
        </tr>
        <tr class="d0">
            <td valign="top">
                A website link related to your apprenticeship that would provide more
                information to interested students?</td>
            <td valign="top">
                <s:text name="project.url" size="79" id="textWeb" onKeyPress="return disableEnterKey(event)" />
            </td>
        </tr>
        <tr class="d1">
            <td valign="top">
                Special Requirements that applicants must meet?<br />
                (eg: Must have had certain course, certain class standing, available to work
                in 2 5-hour blocks, etc.)<br />
                (may not exceed 1000 characters)</td>
            <td valign="top">
                <s:textarea name="project.requirement" rows="5" cols="60" id="textSpecialRequirements" onKeyUp="textCounter(textSpecialRequirements,remLen3,1000);" onKeyDown="textCounter(textSpecialRequirements,remLen3,1000);" onKeyPress="textCounter(textSpecialRequirements,remLen3,1000);">${project.requirement}</s:textarea>
                <br />
<input type="text" name="remLen3" id="remLen3" size="6" maxlength="3" value="1000" /></td>
        </tr>
        <tr class="d0">
            <td valign="top">
                <span class="style2">*</span>
                A longer description of the apprenticeship:<br />
                (may not exceed 1200 characters)</td>
            <td valign="top">
                <S:textarea name="project.longDescription" rows="5" cols="60" id="textLongDescription" onKeyUp="textCounter(textLongDescription,remLen2,1200);" onKeyDown="textCounter(textLongDescription,remLen2,1200);" onKeyPress="textCounter(textLongDescription,remLen2,1200);">${project.longDescription}</textarea>
                <br />
<input type="text" name="remLen2" id="remLen2" size="6" maxlength="3" value="1200" />&nbsp;
            </td>
        </tr>
                <tr class="d1">
            <td valign="top">
                <span class="style2">* </span>From what areas do you wish to recruit students?<br />
                <br />
                (check all that apply)<br />
                <span class="style3"><strong>
                <br/><br/>
                PLEASE NOTE: Only students from majors you select will be allowed to apply for this project.
                </strong></span></td>
            <td valign="top">
                <span id="listStudMajor"><input id="listStudMajor_0" type="checkbox" name="listStudMajor$0" /><label for="listStudMajor_0">Aerospace Engineering</label><input id="listStudMajor_7" type="checkbox" name="listStudMajor$7" /><label for="listStudMajor_7">Electrical Engineering</label><br /><input id="listStudMajor_1" type="checkbox" name="listStudMajor$1" /><label for="listStudMajor_1">Applied Mathematics</label><input id="listStudMajor_8" type="checkbox" name="listStudMajor$8" /><label for="listStudMajor_8">Electrical and Computer Engineering</label><br /><input id="listStudMajor_2" type="checkbox" name="listStudMajor$2" /><label for="listStudMajor_2">Architectural Engineering</label><input id="listStudMajor_9" type="checkbox" name="listStudMajor$9" /><label for="listStudMajor_9">Engineering Physics</label><br /><input id="listStudMajor_3" type="checkbox" name="listStudMajor$3" /><label for="listStudMajor_3">Chemical Engineering</label><input id="listStudMajor_10" type="checkbox" name="listStudMajor$10" /><label for="listStudMajor_10">Environmental Engineering</label><br /><input id="listStudMajor_4" type="checkbox" name="listStudMajor$4" /><label for="listStudMajor_4">Chemical & Biological Engineering</label><input id="listStudMajor_11" type="checkbox" name="listStudMajor$11" /><label for="listStudMajor_11">Engineering Plus</label><br /><input id="listStudMajor_5" type="checkbox" name="listStudMajor$5" /><label for="listStudMajor_5">Civil Engineering</label><input id="listStudMajor_12" type="checkbox" name="listStudMajor$12" /><label for="listStudMajor_12">Mechanical Engineering</label><br /><input id="listStudMajor_6" type="checkbox" name="listStudMajor$6" /><label for="listStudMajor_6">Computer Science</label><input id="listStudMajor_13" type="checkbox" name="listStudMajor$13" /><label for="listStudMajor_13">Technology, Arts and Media</label></span>
                </td>
        </tr>

         <tr class="d0">
            <td valign="top">
                <span class="style2">* </span>Amount of supervision required/interaction available:</td>
            <td valign="top">
                <span id="radioAmountSup"><input id="radioAmountSup_0" type="radio" name="radioAmountSup" value="Very little supervision; student will need to work largely independently" /><label for="radioAmountSup_0">Very little supervision; student will need to work largely independently</label><br /><input id="radioAmountSup_1" type="radio" name="radioAmountSup" value="Moderate amount of supervision and interaction with others" /><label for="radioAmountSup_1">Moderate amount of supervision and interaction with others</label><br /><input id="radioAmountSup_2" type="radio" name="radioAmountSup" value="Good deal of supervision; student will work as an integral part of a research team" /><label for="radioAmountSup_2">Good deal of supervision; student will work as an integral part of a research team</label></span>
                    </td>
        </tr>
                <tr class="d1">
            <td valign="top">
                <span class="style2">* </span>Supervision provided by:</td>
            <td valign="top">
                <span id="radioSupProv"><input id="radioSupProv_0" type="radio" name="radioSupProv" value="Supervision primarily by faculty supervisor" /><label for="radioSupProv_0">Supervision primarily by faculty supervisor</label><br /><input id="radioSupProv_1" type="radio" name="radioSupProv" value="Supervision primarily by graduate students" /><label for="radioSupProv_1">Supervision primarily by graduate students</label><br /><input id="radioSupProv_2" type="radio" name="radioSupProv" value="Supervision primarily a combination of faculty and graduate students" /><label for="radioSupProv_2">Supervision primarily a combination of faculty and graduate students</label></span>
                    </td>
        </tr>
                <tr class="d0">
            <td valign="top">
                <span class="style2">* </span>Nature of work:</td>
            <td valign="top">
                <span id="radioNattyWo"><input id="radioNattyWo_0" type="radio" name="radioNattyWo" value="Nature of work is primarily theoretical, most work on paper/electronic medium" /><label for="radioNattyWo_0">Nature of work is primarily theoretical, most work on paper/electronic medium</label><br /><input id="radioNattyWo_1" type="radio" name="radioNattyWo" value="Nature of work is primarily experimental, requiring hands-on work in a lab" /><label for="radioNattyWo_1">Nature of work is primarily experimental, requiring hands-on work in a lab</label><br /><input id="radioNattyWo_2" type="radio" name="radioNattyWo" value="Nature of work is primarily field based, requiring hands-on work in the field" /><label for="radioNattyWo_2">Nature of work is primarily field based, requiring hands-on work in the field</label><br /><input id="radioNattyWo_3" type="radio" name="radioNattyWo" value="Nature of work is primarily computer-related, involving coding/analysis" /><label for="radioNattyWo_3">Nature of work is primarily computer-related, involving coding/analysis</label><br /><input id="radioNattyWo_4" type="radio" name="radioNattyWo" value="Nature of work is a combination of several types of work." /><label for="radioNattyWo_4">Nature of work is a combination of several types of work.</label><br /><input id="radioNattyWo_5" type="radio" name="radioNattyWo" value="Other" /><label for="radioNattyWo_5">other, specify:</label></span>
                <input name="textNattyWo" type="text" id="textNattyWo" onKeyPress="return disableEnterKey(event)" />
                    </td>
        </tr>
                <tr class="d1">
            <td valign="top">
                <span class="style2">* </span>Amount of prior work conducted in association with this project:</td>
            <td valign="top">
                <span id="radioAmountPri"><input id="radioAmountPri_0" type="radio" name="radioAmountPri" value="No prior work; student will be starting from basic idea" /><label for="radioAmountPri_0">No prior work; student will be starting from basic idea</label><br /><input id="radioAmountPri_1" type="radio" name="radioAmountPri" value="Some prior work; student will build on work of others" /><label for="radioAmountPri_1">Some prior work; student will build on work of others</label><br /><input id="radioAmountPri_2" type="radio" name="radioAmountPri" value="Well-established body of work; student will refine/improved upon efforts of others" /><label for="radioAmountPri_2">Well-established body of work; student will refine/improved upon efforts of others</label><br /><input id="radioAmountPri_3" type="radio" name="radioAmountPri" value="Other" /><label for="radioAmountPri_3">other, specify:</label></span>
                <input name="textAmountPro" type="text" id="textAmountPro" onKeyPress="return disableEnterKey(event)" />
                    </td>
        </tr>

        <tr class="d0">
            <td valign="top">
                Name of specific student desired: (if any) – be sure to ask them to apply!</td>
            <td valign="top">
                <input name="textStudName" type="text" id="textStudName" onKeyPress="return disableEnterKey(event)" />
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
            <td width="200" bgcolor="#000099" class="style1">
                Faculty Member Info</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr class="d0">
            <td width="200" valign="top">
                <span class="style2">*</span>
                Faculty name:</td>
            <td valign="top">
                <s:text name="project.faculty1.name"/>
                &nbsp;
            </td>
        </tr>
        <tr class="d1">
            <td width="200" valign="top">
                Faculty phone number:</td>
            <td>
               ( <s:text name="project.faculty1.phone.areacode"  maxlength="3" size="2" id="textbldrphone1" onkeyup="autotab(textbldrphone1, textbldrphone2)" />
                ) <s:text name="project.faculty1.phone.prefix" type="text" maxlength="3" size="2" id="textbldrphone2" onkeyup="autotab(textbldrphone2,textbldrphone3)" />
                - <s:text name="project.faculty1.phone.number" type="text" maxlength="4" size="4" id="textbldrphone3" onKeyPress="return disableEnterKey(event)" />
                        &nbsp;
                        &nbsp;
                        &nbsp;
                        </td>
        </tr>
        <tr class="d0">
            <td width="200" valign="top">
                <span class="style2">*</span> Faculty email address:</td>
            <td>
                <s:text name="project.faculty1.email" maxlength="50" size="30" id="textEmail" onKeyPress="return disableEnterKey(event)" />
                &nbsp;

                </td>
        </tr>
        <tr class="d1">
            <td valign="top">
                <span class="style2">* </span>Faculty department/program:</td>
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
        <tr class="d1">
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
            <td bgcolor="#000099" class="style1">
                Second Faculty Member (Optional)</td>
            <td valign="top">
                &nbsp;</td>
        </tr>
        <tr class="d0">
            <td valign="top">
                Faculty name:</td>
            <td valign="top">
                <s:text name="project.faculty2.name" id="textNameAlt" onKeyPress="return disableEnterKey(event)" />
                </td>
        </tr>
        <tr class="d1" valign="top">
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
        <tr class="d0">
            <td valign="top">
                Faculty email address:</td>
            <td valign="top">
                <s:text name="project.faculty2.email" maxlength="50" size="30" id="textEmailalt" onKeyPress="return disableEnterKey(event)" />

                </td>
        </tr>
        <tr class="d1">
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
            <td width="200" bgcolor="#000099" class="style1">
                Grad Student/Post Doc Info (Optional)</td>
            <td valign="top">
                &nbsp;</td>
        </tr>
        <tr class="d0">
            <td valign="top">
                Grad Student/Post Doc name:</td>
            <td valign="top">
                <s:text name="project.graduate.name" id="textGradName" onKeyPress="return disableEnterKey(event)" />
                </td>
        </tr>
        <tr class="d1">
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
        <tr class="d0">
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
  
  </s:form>
  
  <form>
  
  
  <div id="Other">
	  <table>
	  <tr>
            <td bgcolor="#000099" class="style1">
                Finances</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr class="d0">
            <td valign="top">
                <span class="style2">* </span>What speed type will you use for your 50% match of the funding?
                (should be in the form XXXXXXXX, all numbers)</td>
            <td valign="top">
                <input name="textSpeedType" type="text" maxlength="8" id="textSpeedType" onKeyPress="return disableEnterKey(event)" />
&nbsp;or
                <input id="checkSpeedType" type="checkbox" name="checkSpeedType" /><label for="checkSpeedType"> Not Sure</label>
                <br />
                &nbsp;
            </td>
        </tr>
        <tr class="d1">
            <td>
                <span class="style2">* </span>Accounting contact for your project:</td>
            <td>
                <input name="textAccounting" type="text" id="textAccounting" onKeyPress="return disableEnterKey(event)" />
                &nbsp;
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td valign="top">
                &nbsp;</td>
        </tr>
        <tr>
            <td bgcolor="#000099" class="style1">
                Other</td>
            <td valign="top">
                &nbsp;</td>
        </tr>
        <tr class="d0">
            <td>
                Have you supervised a Discovery Learning Apprentice in the past?<br />
                (<i>this question intended for the faculty supervisor, not the graduate student
                or post-doc)</i></td>
            <td valign="top">
                <span id="radioDLsupervisor"><input id="radioDLsupervisor_0" type="radio" name="radioDLsupervisor" value="1" onclick="javascript:setTimeout('__doPostBack(\'radioDLsupervisor$0\',\'\')', 0)" /><label for="radioDLsupervisor_0">Yes</label><input id="radioDLsupervisor_1" type="radio" name="radioDLsupervisor" value="3" onclick="javascript:setTimeout('__doPostBack(\'radioDLsupervisor$1\',\'\')', 0)" /><label for="radioDLsupervisor_1">No</label></span>
            </td>
        </tr>
        <tr class="d0">
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
                <input type="submit" name="Submit" value="Submit Request" onclick="javascript:WebForm_DoPostBackWithOptions(new WebForm_PostBackOptions(&quot;Submit&quot;, &quot;&quot;, true, &quot;&quot;, &quot;&quot;, false, false))" id="Submit" />
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

    </form>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"></script>
<script src="//use.typekit.net/wde1aof.js"></script>
<script>try{Typekit.load();}catch(e){}</script>

  <script>
  $( function() {
    $( "#tabs" ).tabs();
  } );
  </script>
</body>
</html>
