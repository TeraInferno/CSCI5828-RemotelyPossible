<%@ taglib prefix="s"
	uri="http://stripes.sourceforge.net/stripes-dynattr.tld"%>
<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Discovery Learning Apprenticeship Program</title>
<meta name="description"
	content="Discovery Learning Apprenticeship Program">
<meta name="author" content="RemotelyPossible">

<!--[if lt IE 9]>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/html5shiv/3.7.3/html5shiv.js"></script>
  <![endif]-->

<link rel="stylesheet"
	href="//code.jquery.com/ui/1.12.1/themes/dark-hive/jquery-ui.css">
</head>




<s:form id="application" method="post" beanclass="edu.colorado.csci5828.remotelypossible.dlap.stripes.action.ApplicantFormAction">

	<div id="tabs">
		<ul>
			<li><a href="#Overview">Overview</a></li>
			<li><a href="#Demographics">Demographics</a></li>
			<li><a href="#Contact">Contact</a></li>
			<li><a href="#Academic">Academic</a></li>
			<li><a href="#Apprenticeship">Apprenticeship</a></li>
			<li><a href="#Qualifications">Qualifications</a></li>

		</ul>
		<div id="Overview">

			<table>
				<tbody>
					<tr>
						<td>
							<h3>
								<span>Discovery
									Learning Apprenticeship Application</span>
							</h3></td>
					</tr>
					<tr>
						<td>

							<p>
								<br> &nbsp;&nbsp;&nbsp;&nbsp; The College of Engineering
								and Applied Science is pleased to offer research opportunities
								(Discovery Learning Apprenticeships) in fall 2016 and spring
								2017 for <strong>undergraduate engineering</strong> students.
								You could be one of approximately 75 apprentices who will be
								funded at $12/hour up to $3,600 annually. Earn money and gain
								valuable, resume-worthy experience while working with graduate
								students and faculty on fascinating projects!
							</p>
							<p>
								<br> &nbsp;&nbsp;&nbsp;&nbsp; Prior to submitting an
								application, you are encouraged to contact the supervisors of
								the projects in which you are interested in order to obtain more
								information. Please be aware, however, that these supervisors do
								not make the final hiring decision. You can find detailed
								project descriptions online by viewing the 2016-2017 <a
									href="http://engineering.colorado.edu/activelearning/discovery.htm"
									target="_blank"> advertised apprenticeships</a> (these will be
								posted by April 1st, 2016).
							</p>
							<p>
								<br> &nbsp;&nbsp;&nbsp;&nbsp; By April 30th, 2016, complete
								the application below and upload <b>a resume and a cover
									letter</b> in two separate documents. Applications will not be
								accepted after the April 30th deadline. Applicants will be
								notified in early June 2016 as to whether they were selected for
								the program.
							</p>
							<p>
								<br> &nbsp;&nbsp;&nbsp;&nbsp; If you have any questions or
								concerns about Discovery Learning Apprenticeships or your
								application, please contact Sharon Anderson at <a
									target="_blank"
									style="color: rgb(17, 85, 204); font-family: Calibri, sans-serif; font-size: 14.4444446563721px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);"
									href="mailto:sharon.e.anderson@colorado.edu">
									sharon.e.anderson@colorado.edu</a>.
							</p> <br>
						<strong>&nbsp;&nbsp;&nbsp;&nbsp; Please ensure that all
								information is correct before submitting your application. You
								will not be able to return to this page to make changes or
								corrections.</strong>
							<p>
								<span><span>Note that a
										<strong><span><span
												style="font-size: 14pt">*</span> </span></strong>denotes a required field.
								</span></span>
							</p> <span id="labelMessage1"></span><br>
							<span id="labelMessage2"></span>
						</td>
					</tr>
					<tr>
						<td>&nbsp;</td>
					</tr>
				</tbody>
			</table>
		</div>
		<div id="Demographics">

			<table>
				<colgroup span="2"></colgroup>
				<colgroup width="20" span="1"></colgroup>
				<colgroup span="2"></colgroup>
				<tbody>
					<tr>
						<td colspan="2"><span
							style="color: White; margin-left: 0"><strong>Demographic
									Information</strong></span></td>
					</tr>
					<tr>
						<td><strong><span
								style="color: #ff0000"><span>*</span></span></strong>Your
							Name:</td>
						<td><input
							style="background-image: url(&quot;data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAASCAYAAABSO15qAAAAAXNSR0IArs4c6QAAALZJREFUOBFjYKAANDQ0rGWiQD9IqzgL0BQ3IKMXiB8AcSKQ/waIrYDsKUD8Fir2pKmpSf/fv3+zgPxfzMzMSbW1tbeBbAaQC+b+//9fB4h9gOwikCAQTAPyDYHYBciuBQkANfcB+WZAbPP37992kBgIUOoFBiZGRsYkIL4ExJvZ2NhAXmFgYmLKBPLPAfFuFhaWJpAYEBQC+SeA+BDQC5UQIQpJYFgdodQLLyh0w6j20RCgUggAAEREPpKMfaEsAAAAAElFTkSuQmCC&quot;); background-repeat: no-repeat; background-attachment: scroll; background-size: 16px 18px; background-position: 98% 50%;"
							name="textName" maxlength="50" id="textName"
							onkeypress="return disableEnterKey(event)" type="text"><br>
							<span id="RequiredFieldValidator5"
							style="color: Red; display: none;">You must enter your
								name.</span></td>
						<td colspan="3">
							&nbsp;</td>
					</tr>
					<tr>
						<td>
							<strong><span><span
									style="font-size: 14pt">* </span></span></strong>Gender:
						</td>
						<td>
							<table id="radioGender">
								<tbody>
									<tr>
										<td><input id="radioGender_0" name="radioGender"
											value="M" type="radio"><label for="radioGender_0">Male</label></td>
										<td><input id="radioGender_1" name="radioGender"
											value="F" type="radio"><label for="radioGender_1">Female</label></td>
									</tr>
								</tbody>
							</table> <span id="RequiredFieldValidator27"
							style="color: Red; visibility: hidden;"><strong>You
									must indicate your gender.</strong></span>
						</td>
						<td colspan="3"
							width="20"></td>
					</tr>
					<tr>
						<td colspan="2">Are you
							Hispanic, Chicano, Mexican, Latino, Cuban, Puerto Rican, South or
							Central American, or Spanish Origin?</td>
						<td colspan="3">&nbsp;</td>
					</tr>
					<tr>
						<td>&nbsp;</td>
						<td>
							<table id="radioHispanic">
								<tbody>
									<tr>
										<td><input id="radioHispanic_0" name="radioHispanic"
											value="1" type="radio"><label for="radioHispanic_0">Yes</label></td>
									</tr>
									<tr>
										<td><input id="radioHispanic_1" name="radioHispanic"
											value="3" type="radio"><label for="radioHispanic_1">No</label></td>
									</tr>
									<tr>
										<td><input id="radioHispanic_2" name="radioHispanic"
											value="0" type="radio"><label for="radioHispanic_2">I
												do not wish to provide this information</label></td>
									</tr>
								</tbody>
							</table>
						</td>
						<td colspan="3">&nbsp;</td>
					</tr>
					<tr>
						<td colspan="2">Please check
							your race (select all that apply):</td>
						<td colspan="3">&nbsp;</td>
					</tr>
					<tr>
						<td>&nbsp;</td>
						<td>
							<table id="checkEth">
								<tbody>
									<tr>
										<td><input id="checkEth_0" name="checkEth$0"
											type="checkbox"><label for="checkEth_0">American
												Indian or Alaskan Native</label></td>
									</tr>
									<tr>
										<td><input id="checkEth_1" name="checkEth$1"
											type="checkbox"><label for="checkEth_1">Black
												or African-American</label></td>
									</tr>
									<tr>
										<td><input id="checkEth_2" name="checkEth$2"
											type="checkbox"><label for="checkEth_2">Native
												Hawaiian or other Pacific Islander</label></td>
									</tr>
									<tr>
										<td><input id="checkEth_3" name="checkEth$3"
											type="checkbox"><label for="checkEth_3">Asian</label></td>
									</tr>
									<tr>
										<td><input id="checkEth_4" name="checkEth$4"
											type="checkbox"><label for="checkEth_4">White</label></td>
									</tr>
									<tr>
										<td><input id="checkEth_5" name="checkEth$5"
											type="checkbox"><label for="checkEth_5">Other</label></td>
									</tr>
									<tr>
										<td><input id="checkEth_6" name="checkEth$6"
											type="checkbox"><label for="checkEth_6">Do
												Not Wish to Provide</label></td>
									</tr>
								</tbody>
							</table>
					<tr>
						<td colspan="5">&nbsp;&nbsp;</td>
					</tr>
				</tbody>
			</table>
		</div>
		<div id="Contact">
			<table>
				<colgroup span="2"></colgroup>
				<colgroup width="20" span="1"></colgroup>
				<colgroup span="2"></colgroup>
				<tbody>
					<tr>
						<td colspan="2"><strong>Boulder Contact Information</strong></td>
						<td></td>
						<td colspan="2"><strong>Summer Contact Information</strong> (if different)</td>
					</tr>
					<tr>
						<td><strong><span
								style="color: #ff0000"><span>*</span></span></strong>Boulder
							Address: (street, city, state, zip)</td>
						<td><textarea
								name="textBoulderAddy" rows="3" cols="20" id="textBoulderAddy"></textarea>
							<span id="RequiredFieldValidator9"
							style="color: Red; display: none;"><br>You must enter
								a Boulder area address.</span></td>
						<td valign="top" width="20"></td>
						<td>Summer Address:<br>(street,
							city, state, zip)
						</td>
						<td><textarea
								name="textSummerAddy" rows="3" cols="20" id="textSummerAddy"></textarea></td>
					</tr>
					<tr>
						<td><strong><span
								style="color: #ff0000"><span>*</span></span></strong>Boulder
							Phone:</td>
						<td>( <input
							name="textbldrphone1" maxlength="3" size="2" id="textbldrphone1"
							onkeypress="return disableEnterKey(event)"
							onkeyup="autotab(textbldrphone1, textbldrphone2)"
							style="width: 26px;" type="text"> ) <input
							name="textbldrphone2" maxlength="3" size="2" id="textbldrphone2"
							onkeypress="return disableEnterKey(event)"
							onkeyup="autotab(textbldrphone2,textbldrphone3)"
							style="width: 26px;" type="text"> - <input
							name="textbldrphone3" maxlength="4" size="4" id="textbldrphone3"
							onkeypress="return disableEnterKey(event)"
							type="text"> <span id="RegularExpressionValidator1"
							style="color: Red; visibility: hidden;"><strong>You
									must enter a valid area code.</strong></span> <span
							id="RegularExpressionValidator7"
							style="color: Red; visibility: hidden;"><strong>You
									must enter a valid phone prefix.</strong></span> <span
							id="RegularExpressionValidator9"
							style="color: Red; visibility: hidden;"><strong>You
									must enter a valid phone number.</strong></span> <span
							id="RequiredFieldValidator11"><br>You
								must enter a number you can be reached at while in the Boulder
								area.</span></td>
						<td valign="top" width="20"></td>
						<td>Summer Phone:</td>
						<td>( <input
							name="textsmmrphone1" maxlength="3" size="2" id="textsmmrphone1"
							onkeypress="return disableEnterKey(event)"
							onkeyup="autotab(textsmmrphone1, textsmmrphone2)"
							style="width: 26px;" type="text"> ) <input
							name="textsmmrphone2" maxlength="3" size="2" id="textsmmrphone2"
							onkeypress="return disableEnterKey(event)"
							onkeyup="autotab(textsmmrphone2,textsmmrphone3)"
							style="width: 26px;" type="text"> - <input
							name="textsmmrphone3" maxlength="4" size="4" id="textsmmrphone3"
							onkeypress="return disableEnterKey(event)"
							type="text"> <span id="RegularExpressionValidator13"
							style="color: Red; visibility: hidden;"><strong>You
									must enter a valid summer area code.</strong></span> <span
							id="RegularExpressionValidator14"
							style="color: Red; visibility: hidden;"><strong>You
									must enter a valid summer phone prefix.</strong></span> <span
							id="RegularExpressionValidator15"
							style="color: Red; visibility: hidden;"><strong>You
									must enter a valid summer phone number.</strong></span>
						</td>
					</tr>
					<tr>
						<td><strong><span
								style="color: #ff0000"><span>*</span></span></strong>Boulder
							Email:</td>
						<td><input
							name="textBoulderEmail" maxlength="50" size="30"
							id="textBoulderEmail" onkeypress="return disableEnterKey(event)"
							type="text"> <span id="RequiredFieldValidator13"
							style="color: Red; display: none;"><br>You must enter
								an e-mail address you can be reached at while in the Boulder
								area.</span> <span id="RegularExpressionValidator6"
							style="color: Red; display: none;"><br>That is not a
								valid e-mail address. Please try again.</span></td>
						<td valign="top" width="20"></td>
						<td>Summer Email:</td>
						<td><input
							name="textSummerEmail" maxlength="50" size="30"
							id="textSummerEmail" onkeypress="return disableEnterKey(event)"
							type="text"> <span id="RegularExpressionValidator20"
							style="color: Red; display: none;"><br>That is not a
								valid e-mail address. Please try again.</span></td>
					</tr>
				</tbody>
			</table>
		</div>
		<div id="Academic">
			<table>
				<colgroup span="2"></colgroup>
				<colgroup width="20" span="1"></colgroup>
				<colgroup span="2"></colgroup>
				<tbody>
				
					<tr>
						<td colspan="5">&nbsp;&nbsp;</td>
					</tr>
					<tr>
						<td colspan="5"><strong>Academic Information</strong></td>
					</tr>
					<tr>
						<td colspan="2" valign="top">Please carefully enter your
							academic information. If you are still open option, indicate
							which major you plan to enter.</td>
						<td valign="top">&nbsp;</td>
						<td valign="top">&nbsp;</td>
						<td valign="top">&nbsp;</td>
					</tr>
					<tr>
						<td valign="top"><strong><span
								style="color: #ff0000"><span>*</span></span></strong>Primary
							Major:</td>
						<td valign="top"><select name="listMajor"
							onchange="javascript:setTimeout('__doPostBack(\'listMajor\',\'\')', 0)"
							id="listMajor">
								<option selected="selected" value="0">Please Select</option>
								<option value="ASEN">Aerospace Engineering</option>
								<option value="AMEN">Applied Mathematics</option>
								<option value="AREN">Architectural Engineering</option>
								<option value="CHEN">Chemical Engineering</option>
								<option value="CBEN">Chemical and Biological
									Engineering</option>
								<option value="CVEN">Civil Engineering</option>
								<option value="CSEN">Computer Science</option>
								<option value="EEEN">Electrical Engineering</option>
								<option value="ECEN">Electrical and Computer
									Engineering</option>
								<option value="EPEN">Engineering Physics</option>
								<option value="EVEN">Environmental Engineering</option>
								<option value="GEEN">Engineering Plus</option>
								<option value="MCEN">Mechanical Engineering</option>
								<option value="TMEN">Technology, Arts, and Media</option>

						</select> <span id="RequiredFieldValidator3"
							style="color: Red; display: none;"><br>You must
								select a major.</span></td>
						<td valign="top"></td>
						<td valign="top"><strong><span
								style="color: #ff0000"><span>*
								</span></span></strong>GPA: (X.XXX)</td>
						<td valign="top"><span id="RegularExpressionValidator3"
							style="color: Red; visibility: hidden;"><br>
							<strong>That is not a valid GPA.</strong></span><input name="textGPA"
							maxlength="5" size="10" id="textGPA"
							onkeypress="return disableEnterKey(event)"
							type="text"> <span id="RequiredFieldValidator15"
							style="color: Red; display: none;"><br>You must enter
								your current GPA.</span></td>
					</tr>
					<tr>
						<td rowspan="3" valign="top">Secondary Major:</td>
						<td rowspan="3" valign="top"><select name="listMajor2"
							onchange="javascript:setTimeout('__doPostBack(\'listMajor2\',\'\')', 0)"
							id="listMajor2">
								<option selected="selected" value="None">I did not have
									a second major</option>
								<option value="ASEN">Aerospace Engineering</option>
								<option value="AMEN">Applied Mathematics</option>
								<option value="AREN">Architectural Engineering</option>
								<option value="CHEN">Chemical Engineering</option>
								<option value="CBEN">Chemical and Biological
									Engineering</option>
								<option value="CVEN">Civil Engineering</option>
								<option value="CSEN">Computer Science</option>
								<option value="EEEN">Electrical Engineering</option>
								<option value="ECEN">Electrical and Computer
									Engineering</option>
								<option value="EPEN">Engineering Physics</option>
								<option value="EVEN">Environmental Engineering</option>
								<option value="GEEN">Engineering Plus</option>
								<option value="MCEN">Mechanical Engineering</option>
								<option value="TMEN">Technology, Arts, and Media</option>
								<option value="NEng">Non-Engineering Major</option>

						</select> <span id="CompareValidator1">You
								cannot have the same major and secondary major.</span> <br> <span
							style="font-size: 10pt">(If you have a <strong>double
									major</strong>. Do not select a minor here.)
						</span></td>
						<td rowspan="3"></td>
						<td valign="top"><strong><span
								style="color: #ff0000"><span>*
								</span></span></strong>Level in school as of next fall:</td>
						<td valign="top"><select name="listLevel" id="listLevel">
								<option selected="selected" value="0">Please Select</option>
								<option value="Freshman">Freshman</option>
								<option value="Sophomore">Sophomore</option>
								<option value="Junior">Junior</option>
								<option value="Senior">Senior</option>
								<option value="5th year Senior">5th Year Senior</option>

						</select> <span id="RequiredFieldValidator31"
							style="color: Red; visibility: hidden;">You must indicate
								your level in school.</span></td>
					</tr>
					<tr>
						<td colspan="2">&nbsp;</td>
					</tr>
					<tr>
						<td valign="top"><strong><span
								style="color: #ff0000"><span>*</span></span></strong>Anticipated
							Graduation Date:</td>
						<td valign="top"><select name="listGradMonth"
							id="listGradMonth">
								<option selected="selected" value="select">Month</option>
								<option value="05">May</option>
								<option value="08">August</option>
								<option value="12">December</option>

						</select>&nbsp;<select name="listGradYear" id="listGradYear">
								<option selected="selected" value="select">Year</option>
								<option value="2015">2015</option>
								<option value="2016">2016</option>
								<option value="2017">2017</option>
								<option value="2018">2018</option>
								<option value="2019">2019</option>
								<option value="2020">2020</option>
								<option value="2021">2021</option>

						</select> <span id="RequiredFieldValidator2"
							style="color: Red; display: none;"><br>Please select
								a graduation month.</span> <span id="RequiredFieldValidator19"
							style="color: Red; display: none;"><br>Please select
								a graduation year.</span></td>
					</tr>
					<tr>
						<td valign="top"><strong><span
								style="color: #ff0000"><span>*</span></span></strong>Student
							Number:</td>
						<td valign="top"><input name="textSID1" maxlength="9"
							size="2" id="textSID1">&nbsp;(#########)

							<span id="RegularExpressionValidator19"
							style="color: Red; visibility: hidden;"><br>
							<strong>Please enter a valid student number.</strong></span> <br> <span
							id="RequiredFieldValidator33"
							style="color: Red; visibility: hidden;">You must enter
								your student number.</span></td>
						<td></td>
						<td valign="top">Do you have previous research experience??</td>
						<td valign="top"><table id="radioResearch">
								<tbody>
									<tr>
										<td><input id="radioResearch_0" name="radioResearch"
											value="1" type="radio"><label for="radioResearch_0">Yes</label></td>
									</tr>
									<tr>
										<td><input id="radioResearch_1" name="radioResearch"
											value="3" type="radio"><label for="radioResearch_1">No
												(This will not affect your eligibility!)</label></td>
									</tr>
								</tbody>
							</table></td>
					</tr>
					<tr>
						<td colspan="5">&nbsp;&nbsp;</td>
					</tr>
				</tbody>
			</table>
		</div>
		
		<div id="Apprenticeship">

			<table>
				<colgroup span="1"></colgroup>
				<colgroup span="1"></colgroup>
				<colgroup span="1"></colgroup>
				<tbody>
					<tr>
						<td colspan="2"><strong>Apprenticeship Information</strong></td>
					</tr>
					<tr>
						<td valign="top" width="150">Have you applied for a Discovery
							Learning Apprenticeship before?</td>
						<td>
							<table id="radioPrevApply">
								<tbody>
									<tr>
										<td><input id="radioPrevApply_0" name="radioPrevApply"
											value="1"
											type="radio"><label for="radioPrevApply_0">Yes</label></td>
										<td><input id="radioPrevApply_1" name="radioPrevApply"
											value="2"
											type="radio"><label for="radioPrevApply_1">Not
												sure</label></td>
										<td><input id="radioPrevApply_2" name="radioPrevApply"
											value="3"
											type="radio"><label for="radioPrevApply_2">No</label></td>
									</tr>
								</tbody>
							</table>
						</td>
					</tr>

					<tr>
						<td valign="top" width="150">Other fall employment planned:</td>
						<td><textarea name="textEmployment" rows="6" cols="50"
								id="textEmployment"></textarea></td>
					</tr>

					<tr>
						<td>&nbsp;</td>
						<td></td>
					</tr>
					<tr>
						<td colspan="2"><span>Please make sure
								you selected a major before proceeding!</span><br> Indicate up to
							five research projects in order of interest:<br> <span>Please note that some projects have special
								requirements that you must meet.<br>
						</span>To see requirements and longer descriptions of the project, look
							at the projects available for your major <span id="Label1">here.</span>
							<br> <span id="Label2"></span></td>
					</tr>
					<tr>
						<td rowspan="5" valign="top" width="150"><span
							style="font-size: 10pt">(1 is most interested,<br> 5
								is moderately interested)<br> <br> For a full listing
								of projects, look <a
								href="http://engineering.colorado.edu/surveys/dla/dlafaclisting.aspx"
								target="_blank">here</a>.
						</span></td>
						<td valign="top">1.<strong><span><span>*</span>&nbsp;&nbsp;</span></strong>
						<select
							name="listProject1"
							id="listProject1">
								<option selected="selected" value="select">Please Select</option>

							</select> 
						</td>
					</tr>
					<tr>
						<td valign="top">2. &nbsp; &nbsp;<select name="listProject2"
							id="listProject2">
								<option selected="selected" value="select">Please Select</option>
						</select> <br> &nbsp;
						</td>
					</tr>
					<tr>
						<td valign="top">3. &nbsp;&nbsp;&nbsp;<select
							name="listProject3"
							id="listProject3">
								<option selected="selected" value="select">Please Select</option>

						</select> <br> &nbsp;
						</td>
					</tr>
					<tr>
						<td valign="top">4. &nbsp;&nbsp;&nbsp;<select
							name="listProject4"
							id="listProject4">
								<option selected="selected" value="select">Please Select</option>

						</select> <br> &nbsp;
						</td>
					</tr>
					<tr>
						<td valign="top">5. &nbsp;&nbsp;&nbsp;<select
							name="listProject5"
							onchange="javascript:setTimeout('__doPostBack(\'listProject5\',\'\')', 0)"
							id="listProject5">
								<option selected="selected" value="select">Please Select</option>
						</select> <br> &nbsp;
						</td>
					</tr>
					<tr>
						<td valign="top" width="150">Have you had a background check
							yet (at CU)? If yes when? (Take your best guess if you aren�t
							sure.)</td>
						<td valign="top">
							<table id="radioHadBGC">
								<tbody>
									<tr>
										<td><input id="radioHadBGC_0" name="radioHadBGC"
											value="1"
											type="radio"><label for="radioHadBGC_0">Yes</label></td>
										<td><input id="radioHadBGC_1" name="radioHadBGC"
											value="2"
											type="radio"><label for="radioHadBGC_1">Not
												sure</label></td>
										<td><input id="radioHadBGC_2" name="radioHadBGC"
											value="3"
											type="radio"><label for="radioHadBGC_2">No</label></td>
									</tr>
								</tbody>
							</table>
							<br> &nbsp;
						</td>
					</tr>
					<tr>
						<td valign="top" width="150">Have you had Discrimination and
							Harassment Awareness training yet (at CU)? If yes when? (Take
							your best guess if you aren�t sure.)</td>
						<td valign="top">
							<table id="radioDiscrim">
								<tbody>
									<tr>
										<td><input id="radioDiscrim_0" name="radioDiscrim"
											value="1"
											type="radio"><label for="radioDiscrim_0">Yes</label></td>
										<td><input id="radioDiscrim_1" name="radioDiscrim"
											value="2"
											type="radio"><label for="radioDiscrim_1">Not
												sure</label></td>
										<td><input id="radioDiscrim_2" name="radioDiscrim"
											value="3"
											type="radio"><label for="radioDiscrim_2">No</label></td>
									</tr>
								</tbody>
							</table> <br> &nbsp;
						</td>
					</tr>
					<tr>
						<td valign="top" width="150">Last four digits of your Social
							Security Number:<br> (this will only be used to acess your
							background check information)
						</td>
						<td valign="top"><input name="textSSN" maxlength="4" size="8"
							id="textSSN" type="text">
					</tr>
					<tr>
						<td valign="top">&nbsp;</td>
						<td width="300"></td>
					</tr>
				</tbody>
			</table>
		</div>
		<div id="Qualifications">
			<table>
				<colgroup span="1"></colgroup>
				<colgroup span="1">
				</colgroup>
				<colgroup span="1"></colgroup>
				<tbody>
					<tr>
						<td colspan="2"><strong><span>Skills, Resume, and Cover Letter</span></strong></td>
					</tr>
					<tr>
						<td colspan="2" valign="top">Please list the three skills or
							qualifications that you feel make you a great candidate for the
							positions you selected:<br> (Could be knowledge of a
							programming language, knowledge of a field, courses taken,
							personal characteristics, etc. If appropriate, note your match to
							requirements in job description. Please note responses are
							limited to 75 characters.)
						</td>
					</tr>
					<tr>
						<td colspan="2" valign="top">1.&nbsp; <input
							name="textSkill1" size="100" id="textSkill1"
							onkeypress="textCounter(textSkill1,remLen1,75);"
							onkeyup="textCounter(textSkill1,remLen1,75);"
							onkeydown="textCounter(textSkill1,remLen1,75);" type="text">
							<input name="remLen1" id="remLen1" size="4" maxlength="3"
							value="75" disabled="disabled" type="text"></td>
					</tr>
					<tr>
						<td colspan="2" valign="top">2.&nbsp; <input
							name="textSkill2" size="100" id="textSkill2"
							onkeypress="textCounter(textSkill2,remLen2,75);"
							onkeyup="textCounter(textSkill2,remLen2,75);"
							onkeydown="textCounter(textSkill2,remLen2,75);" type="text">
							<input name="remLen2" id="remLen2" size="4" maxlength="3"
							value="75" disabled="disabled" type="text"></td>
					</tr>
					<tr>
						<td colspan="2" valign="top">3.&nbsp; <input
							name="textSkill3" size="100" id="textSkill3"
							onkeypress="textCounter(textSkill3,remLen3,75);"
							onkeyup="textCounter(textSkill3,remLen3,75);"
							onkeydown="textCounter(textSkill3,remLen3,75);" type="text">
							<input name="remLen3" id="remLen3" size="4" maxlength="3"
							value="75" disabled="disabled" type="text"></td>
					</tr>
					<tr>
						<td colspan="2" valign="top">&nbsp;</td>
					</tr>
					<tr>
						<td colspan="2" valign="top">To complete the application, you
							<strong>must</strong> submit a resume and a cover letter. You can
							submit both using the form below. Please use either the pdf
							format or a text document. To improve your chances of being
							selected for an apprenticeship, please take the time to construct
							a well-written cover letter and resume.<br> <br> <a
							href="http://engineering.colorado.edu/surveys/dla/Writing%20Tips%20for%20Cover%20Letters%20and%20Resumes.doc"
							target="_blank"> <strong>Click here</strong></a><strong>
								for some tips, which we highly recommend you review before
								submitting your cover letter and resume.</strong> <br> <br>
						</td>
					</tr>
					<tr>
						<td valign="top">Resume:</td>
						<td valign="top"><input name="resumeupload" id="resumeupload"
							onclick="Submit_Click" type="file"> </td>
					</tr>
					<tr>
						<td valign="top">Cover letter:</td>
						<td valign="top"><input name="coverupload" id="coverupload"
							onclick="Submit_Click" type="file"></td>
					</tr>
					<tr>
						<td valign="top">&nbsp;</td>
						<td valign="top">&nbsp;</td>
					</tr>
					<tr>
						<td colspan="2" valign="top">
							<hr> <br> <span id="lblSaveResults"
							></span>
						</td>
					</tr>
					<tr>
						<td colspan="2" valign="top"><span>Please ensure that
								<strong>all</strong> information is correct before submitting
								your application. You will <strong>not be able to
									return</strong> to this page to make changes or corrections. Once you
								are sure everything is correct, you may proceed.<br> &nbsp;
						</span></td>
					</tr>
				</tbody>
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
  $("#application").form();
});
</script>

</body>
</html>