<%@ taglib prefix="s"
  uri="http://stripes.sourceforge.net/stripes-dynattr.tld"%>
<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Discovery Learning Apprenticeship Program</title>
<meta name="description"
  content="Discovery Learning Apprenticeship Program - Application">
<meta name="author" content="RemotelyPossible">

<!--[if lt IE 9]>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/html5shiv/3.7.3/html5shiv.js"></script>
<![endif]-->

<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/sunny/jquery-ui.css">
<style>
tr > td
{
  padding: 5px 5px 5px 5px;
}
</style>
</head>




<s:form id="application" method="post"
  beanclass="edu.colorado.csci5828.remotelypossible.dlap.stripes.action.ApplicantFormAction">

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
                <span>Discovery Learning Apprenticeship Application</span>
              </h3>
            </td>
          </tr>
          <tr>
            <td>

              <p>
                <br/> &nbsp;&nbsp;&nbsp;&nbsp; The College of
                Engineering and Applied Science is pleased to offer
                research opportunities (Discovery Learning
                Apprenticeships) in fall 2016 and spring 2017 for <strong>undergraduate
                  engineering</strong> students. You could be one of
                approximately 75 apprentices who will be funded at
                $12/hour up to $3,600 annually. Earn money and gain
                valuable, resume-worthy experience while working with
                graduate students and faculty on fascinating projects!
              </p>
              <p>
                <br/> &nbsp;&nbsp;&nbsp;&nbsp; Prior to submitting
                an application, you are encouraged to contact the
                supervisors of the projects in which you are interested
                in order to obtain more information. Please be aware,
                however, that these supervisors do not make the final
                hiring decision. You can find detailed project
                descriptions online by viewing the 2016-2017 <a
                  href="http://engineering.colorado.edu/activelearning/discovery.htm"
                  target="_blank"> advertised apprenticeships</a> (these
                will be posted by April 1st, 2016).
              </p>
              <p>
                <br/> &nbsp;&nbsp;&nbsp;&nbsp; By April 30th, 2016,
                complete the application below and upload <b>a
                  resume and a cover letter</b> in two separate documents.
                Applications will not be accepted after the April 30th
                deadline. Applicants will be notified in early June 2016
                as to whether they were selected for the program.
              </p>
              <p>
                <br/> &nbsp;&nbsp;&nbsp;&nbsp; If you have any
                questions or concerns about Discovery Learning
                Apprenticeships or your application, please contact
                Sharon Anderson at <a target="_blank"
                  style="color: rgb(17, 85, 204); font-family: Calibri, sans-serif; font-size: 14.4444446563721px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);"
                  href="mailto:sharon.e.anderson@colorado.edu">
                  sharon.e.anderson@colorado.edu</a>.
              </p> <br/> <strong>&nbsp;&nbsp;&nbsp;&nbsp;
                Please ensure that all information is correct before
                submitting your application. You will not be able to
                return to this page to make changes or corrections.</strong>
              <p>
                <span>Note that a <strong><span style="color: #ff0000">*</span></strong>
                denotes a required field.
                </span>
              </p> <span id="labelMessage1"></span><br/> <span
              id="labelMessage2"></span>
            </td>
          </tr>
          <tr>
            <td>&nbsp;</td>
          </tr>
        </tbody>
      </table>
    </div>
    <div id="Demographics">
      <fieldset>
      <legend>Demographic Information</legend>
      <br/>
      <table>
        <colgroup span="2"></colgroup>
        <colgroup width="20" span="1"></colgroup>
        <colgroup span="2"></colgroup>
        <tbody>
          <tr>
            <td>
              <strong><span style="color: #ff0000">*</span></strong>
              Your Name:
            </td>
            <td>
              <s:text style="background-image: url(&quot;data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAASCAYAAABSO15qAAAAAXNSR0IArs4c6QAAALZJREFUOBFjYKAANDQ0rGWiQD9IqzgL0BQ3IKMXiB8AcSKQ/waIrYDsKUD8Fir2pKmpSf/fv3+zgPxfzMzMSbW1tbeBbAaQC+b+//9fB4h9gOwikCAQTAPyDYHYBciuBQkANfcB+WZAbPP37992kBgIUOoFBiZGRsYkIL4ExJvZ2NhAXmFgYmLKBPLPAfFuFhaWJpAYEBQC+SeA+BDQC5UQIQpJYFgdodQLLyh0w6j20RCgUggAAEREPpKMfaEsAAAAAElFTkSuQmCC&quot;); background-repeat: no-repeat; background-attachment: scroll; background-size: 16px 18px; background-position: 98% 50%;"
                name="application.student.name" maxlength="50" id="textName"
                onkeypress="return disableEnterKey(event)" type="text" /><br/>
            </td>
          </tr>
          <tr>
            <td>
              <strong><span style="color: #ff0000">*</span></strong>
              Gender:
            </td>
            <td>
              <s:radio id="radioGender_0" name="application.student.gender" value="M" type="radio" />
              <label for="radioGender_0">Male</label>
              <s:radio id="radioGender_1" name="application.student.gender" value="F" type="radio" />
              <label for="radioGender_1">Female</label>
            </td>
          </tr>
          <tr>
            <td colspan="2">
              Are you Hispanic, Chicano, Mexican,
              Latino, Cuban, Puerto Rican, South or Central American, or
              Spanish Origin?
            </td>
            <td colspan="3">&nbsp;</td>
          </tr>
          <tr>
            <td colspan="2">
              <s:radio id="radioHispanic_0" name="application.student.hispanic" value="Yes" type="radio" />
              <label for="radioHispanic_0">Yes</label>
              <s:radio id="radioHispanic_1" name="application.student.hispanic" value="No" type="radio" />
              <label for="radioHispanic_1">No</label>
              <s:radio id="radioHispanic_2" name="application.student.hispanic" value="-" type="radio" />
              <label for="radioHispanic_2">I do not wish to provide this information</label>
            </td>
            <td colspan="3">&nbsp;</td>
          </tr>
          <tr>
            <td colspan="2">&nbsp;</td>
          </tr>
          <tr>
            <td colspan="2">
              Please check your race (select all that apply):
            </td>
            <td colspan="3">&nbsp;</td>
          </tr>
          <tr>
            <td colspan="2">
              <table id="checkEth">
                <tbody>
                  <tr>
                    <td>
                      <s:checkbox id="checkEth_0" name="application.student.race[0]" type="checkbox" />
                      <label for="checkEth_0">American Indian or Alaskan Native</label>
                    </td>
                    <td>
                      <s:checkbox id="checkEth_3" name="application.student.race[3]" type="checkbox" />
                      <label for="checkEth_3">Asian</label>
                    </td>
                  </tr>
                  <tr>
                    <td>
                      <s:checkbox id="checkEth_1" name="application.student.race[1]" type="checkbox" />
                      <label for="checkEth_1">Black or African-American</label>
                    </td>
                    <td>
                      <s:checkbox id="checkEth_4" name="application.student.race[4]" type="checkbox" />
                      <label for="checkEth_4">White</label>
                    </td>
                  </tr>
                  <tr>
                    <td>
                      <s:checkbox id="checkEth_2" name="application.student.race[2]" type="checkbox" />
                      <label for="checkEth_2">Native Hawaiian or other Pacific Islander</label>
                    </td>
                    <td>
                      <s:checkbox id="checkEth_5" name="application.student.race[5]" type="checkbox" />
                      <label for="checkEth_5">Other</label>
                    </td>
                  </tr>
                  <tr>
                    <td colspan="2">
                      <s:checkbox id="checkEth_6" name="application.student.race[6]" type="checkbox" />
                      <label for="checkEth_6">Do Not Wish to Provide</label>
                    </td>
                  </tr>
                </tbody>
              </table>
          <tr>
            <td colspan="5">&nbsp;&nbsp;</td>
          </tr>
        </tbody>
      </table>
      </fieldset>
    </div>
    <div id="Contact">
      <fieldset>
      <legend>Contact Information</legend>
      <br/>
      <table>
        <tbody>
          <tr>
            <td colspan="2">
              <strong>Boulder Contact Information</strong>
            </td>
          </tr>
          <tr>
            <td><strong><span style="color: #ff0000">*</span></strong>
            Boulder Address: (street, city, state, zip)</td>
            <td>
              <s:textarea name="application.student.boulderAddress" rows="3"
                cols="20" id="textBoulderAddy"></s:textarea>
          </tr>
          <tr>
            <td><strong><span style="color: #ff0000">*</span></strong>
              Boulder Phone:
            </td>
            <td>( <s:text name="application.student.boulderPhone.areacode" maxlength="3"
                size="2" id="textbldrphone1"
                onkeypress="return disableEnterKey(event)"
                onkeyup="autotab(textbldrphone1, textbldrphone2)"
                style="width: 26px;" type="text" /> ) <s:text
                name="application.student.boulderPhone.prefix" maxlength="3" size="2"
                id="textbldrphone2"
                onkeypress="return disableEnterKey(event)"
                onkeyup="autotab(textbldrphone2,textbldrphone3)"
                style="width: 26px;" type="text" /> - <s:text
                name="application.student.boulderPhone.number" maxlength="4" size="4"
                id="textbldrphone3"
                onkeypress="return disableEnterKey(event)" type="text" />
            </td>
          </tr>
          <tr>
            <td><strong><span style="color: #ff0000">*</span></strong>
              Boulder Email:
            </td>
            <td><s:text name="application.student.boulderEmail" maxlength="50"
                size="30" id="textBoulderEmail"
                onkeypress="return disableEnterKey(event)" type="text" />
            </td>
          </tr>
          <tr>
            <td colspan="2">
              <strong>Summer Contact Information</strong> (if different)
            </td>
          </tr>
          <tr>
            <td>Summer Address:<br/>(street, city, state, zip)
            </td>
            <td><s:textarea name="application.student.summerAddress" rows="3"
                cols="20" id="textSummerAddy" /></td>
          </tr>
          <tr>
            <td>Summer Phone:</td>
            <td>( <s:text name="application.student.summerPhone.areacode" maxlength="3"
                size="2" id="textsmmrphone1"
                onkeypress="return disableEnterKey(event)"
                onkeyup="autotab(textsmmrphone1, textsmmrphone2)"
                style="width: 26px;" type="text" /> ) <s:text
                name="application.student.summerPhone.prefix" maxlength="3" size="2"
                id="textsmmrphone2"
                onkeypress="return disableEnterKey(event)"
                onkeyup="autotab(textsmmrphone2,textsmmrphone3)"
                style="width: 26px;" type="text" /> - <s:text
                name="application.student.summerPhone.number" maxlength="4" size="4"
                id="textsmmrphone3"
                onkeypress="return disableEnterKey(event)" type="text" />
            </td>
          </tr>
          <tr>
            <td>Summer Email:</td>
            <td><s:text name="application.student.summerEmail" maxlength="50"
                size="30" id="textSummerEmail"
                onkeypress="return disableEnterKey(event)" type="text" />
          </tr>
        </tbody>
      </table>
      </fieldset>
    </div>
    <div id="Academic">
      <fieldset>
      <legend>Acdemic Information</legend>
      <br/>
      <table>
        <colgroup span="2"></colgroup>
        <colgroup width="20" span="1"></colgroup>
        <colgroup span="2"></colgroup>
        <tbody>
          <tr>
            <td colspan="2">Please carefully enter
              your academic information. If you are still open option,
              indicate which major you plan to enter.</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
          </tr>
          <tr>
            <td>
              <strong><span style="color: #ff0000">*</span></strong>
              Primary Major:
            </td>
            <td>
              <s:select name="application.student.primaryMajor" id="listMajor">
                <s:option selected="selected" value="">Please Select</s:option>
                <s:option value="ASEN">Aerospace Engineering</s:option>
                <s:option value="AMEN">Applied Mathematics</s:option>
                <s:option value="AREN">Architectural Engineering</s:option>
                <s:option value="CHEN">Chemical Engineering</s:option>
                <s:option value="CBEN">Chemical and Biological Engineering</s:option>
                <s:option value="CVEN">Civil Engineering</s:option>
                <s:option value="CSEN">Computer Science</s:option>
                <s:option value="EEEN">Electrical Engineering</s:option>
                <s:option value="ECEN">Electrical and Computer Engineering</s:option>
                <s:option value="EPEN">Engineering Physics</s:option>
                <s:option value="EVEN">Environmental Engineering</s:option>
                <s:option value="GEEN">Engineering Plus</s:option>
                <s:option value="MCEN">Mechanical Engineering</s:option>
                <s:option value="TMEN">Technology, Arts, and Media</s:option>

              </s:select> 
            </td>
          </tr>
          <tr>
            <td>Secondary Major:</td>
            <td ><s:select
                name="application.student.secondaryMajor" id="listMajor2">
                <s:option selected="selected" value="">I did not have a second major</s:option>
                <s:option value="ASEN">Aerospace Engineering</s:option>
                <s:option value="AMEN">Applied Mathematics</s:option>
                <s:option value="AREN">Architectural Engineering</s:option>
                <s:option value="CHEN">Chemical Engineering</s:option>
                <s:option value="CBEN">Chemical and Biological Engineering</s:option>
                <s:option value="CVEN">Civil Engineering</s:option>
                <s:option value="CSEN">Computer Science</s:option>
                <s:option value="EEEN">Electrical Engineering</s:option>
                <s:option value="ECEN">Electrical and Computer Engineering</s:option>
                <s:option value="EPEN">Engineering Physics</s:option>
                <s:option value="EVEN">Environmental Engineering</s:option>
                <s:option value="GEEN">Engineering Plus</s:option>
                <s:option value="MCEN">Mechanical Engineering</s:option>
                <s:option value="TMEN">Technology, Arts, and Media</s:option>
                <s:option value="NEng">Non-Engineering Major</s:option>
              </s:select> 
              <br/>
              <span style="font-size: 10pt">(If you have a <strong>double
                  major</strong>. Do not select a minor here.)
              </span>
            </td>
          </tr>
          <tr>
            <td>
              <strong><span style="color: #ff0000">*</span></strong>
              Student Number:
            </td>
            <td>
              <s:text name="application.student.studentId" maxlength="9" size="2" id="textSID1" />&nbsp;(#########) 
            </td>
          </tr>
          <tr>
            <td>
              <strong><span style="color: #ff0000">*</span></strong>
              GPA: (X.XXX)
            </td>
            <td>
                  <s:text name="application.student.gpa" maxlength="5" size="10" id="textGPA" onkeypress="return disableEnterKey(event)" type="text" />
            </td>
          </tr>
          <tr>
            <td>
              <strong><span style="color: #ff0000">*</span></strong>
              Level in school as of next fall:
            </td>
            <td>
              <s:select name="application.student.schoolLevel" id="listLevel">
                <s:option selected="selected" value="">Please Select</s:option>
                <s:option value="Freshman">Freshman</s:option>
                <s:option value="Sophomore">Sophomore</s:option>
                <s:option value="Junior">Junior</s:option>
                <s:option value="Senior">Senior</s:option>
                <s:option value="5th year Senior">5th Year Senior</s:option>

              </s:select> <span id="RequiredFieldValidator31"
              style="color: Red; visibility: hidden;">You must
                indicate your level in school.</span></td>
          </tr>
          <tr>
            <td>
              <strong><span style="color: #ff0000">*</span></strong>
              Anticipated Graduation Date:
            </td>
            <td>
              <s:select name="application.student.graduationMonth" id="listGradMonth">
                <s:option selected="selected" value="">Month</s:option>
                <s:option value="05">May</s:option>
                <s:option value="08">August</s:option>
                <s:option value="12">December</s:option>

              </s:select>
              <s:select name="application.student.graduationYear" id="listGradYear">
                <s:option selected="selected" value="">Year</s:option>
                <s:option value="2016">2016</s:option>
                <s:option value="2017">2017</s:option>
                <s:option value="2018">2018</s:option>
                <s:option value="2019">2019</s:option>
                <s:option value="2020">2020</s:option>
                <s:option value="2021">2021</s:option>
                <s:option value="2022">2022</s:option>
              </s:select>
            </td>
          </tr>
          <tr>
            <td>Do you have previous research
              experience?<br/>(This will not affect your eligibility!)</td>
            <td>
	         <s:radio id="radioResearch_0" name="application.student.previousWorkExperienceExists" value="true" type="radio" />
             <label for="radioResearch_0">Yes</label>
             <s:radio id="radioResearch_1" name="application.student.previousWorkExperienceExists" value="false" type="radio" />
             <label for="radioResearch_1">No</label>
           </td>
          </tr>
          <tr>
            <td colspan="5">&nbsp;&nbsp;</td>
          </tr>
          
        </tbody>
      </table>
      </fieldset>
    </div>

    <div id="Apprenticeship">
      <fieldset>
      <legend>Apprenticeship Information</legend>
      <br/>
      <table>
        <colgroup span="1"></colgroup>
        <colgroup span="1"></colgroup>
        <colgroup span="1"></colgroup>
        <tbody>
          <tr>
            <td >
              Have you applied for a Discovery Learning Apprenticeship before?
            </td>
            <td>
              <table id="radioPrevApply">
                <tbody>
                  <tr>
                    <td>
                      <s:radio id="radioPrevApply_0" name="application.apprenticeshipInfo.appliedPreviously" value="Yes" type="radio" />
                      <label for="radioPrevApply_0">Yes</label>
                    </td>
                    <td>
                      <s:radio id="radioPrevApply_1" name="application.apprenticeshipInfo.appliedPreviously" value="Not Sure" type="radio" />
                      <label for="radioPrevApply_1">Not sure</label>
                    </td>
                    <td>
                      <s:radio id="radioPrevApply_2" name="application.apprenticeshipInfo.appliedPreviously" value="No" type="radio" />
                      <label for="radioPrevApply_2">No</label>
                    </td>
                  </tr>
                </tbody>
              </table>
            </td>
          </tr>

          <tr>
            <td>
              Other fall employment planned:
            </td>
            <td>
              <s:textarea name="application.apprenticeshipInfo.otherPlannedEmployment" rows="6" cols="50" id="textEmployment"></s:textarea>
            </td>
          </tr>

          <tr>
            <td>&nbsp;</td>
            <td></td>
          </tr>
          <tr>
            <td colspan="2">
              <span>Please make sure you selected a major before proceeding!</span><br/> 
              Indicate up to five research projects in order of interest:<br/> 
              <span>Please note that some projects have special requirements that you must meet.<br/> </span>
              To see requirements and longer descriptions of the project,
              look at the projects available for your major 
              <span id="Label1">here.</span> <br/> <span id="Label2"></span>
            </td>
          </tr>
          <tr>
            <td>
              <strong><span style="color: #ff0000">* </span></strong> &nbsp;
              First Choice
            </td>
            <td>
              <s:select name="application.apprenticeshipInfo.firstChoice" id="listProject1">
                <s:option selected="selected" value="">Please Select</s:option>            
              </s:select>
            </td>
          </tr>
          <tr>
            <td>
              Second Choice
            </td>
            <td> 
              <s:select name="application.apprenticeshipInfo.secondChoice" id="listProject2">
                <s:option selected="selected" value="">Please Select</s:option>
              </s:select>
            </td>
          </tr>
          <tr>
            <td>
              Third Choice
            </td>
            <td>
              <s:select name="application.apprenticeshipInfo.thirdChoice" id="listProject3">
                <s:option selected="selected" value="">Please Select</s:option>

              </s:select>
            </td>
          </tr>
          <tr>
            <td>
              Fourth Choice
            </td>
            <td>
              <s:select name="application.apprenticeshipInfo.fourthChoice" id="listProject4">
                <s:option selected="selected" value="">Please Select</s:option>

              </s:select>
            </td>
          </tr>
          <tr>
            <td>
              Fifth Choice
            </td>
            <td>
              <s:select name="application.apprenticeshipInfo.fifthChoice" id="listProject5">
                <s:option selected="selected" value="">Please Select</s:option>
              </s:select>
            </td>
          </tr>
          <tr>
            <td >
              Have you had a background check yet (at CU)? <br/> 
              If yes when? (Take your best guess if you aren't sure.)
            </td>
            <td>
              <table id="radioHadBGC">
                <tbody>
                  <tr>
                    <td>
                      <s:radio id="radioHadBGC_0" name="application.apprenticeshipInfo.backgroundCheckComplete" value="Yes" type="radio" />
                      <label for="radioHadBGC_0">Yes</label>
                    </td>
                    <td>
                      <s:radio id="radioHadBGC_1" name="application.apprenticeshipInfo.backgroundCheckComplete" value="Not Sure" type="radio" />
                      <label for="radioHadBGC_1">Not sure</label>
                    </td>
                    <td>
                      <s:radio id="radioHadBGC_2" name="application.apprenticeshipInfo.backgroundCheckComplete" value="No" type="radio" />
                      <label for="radioHadBGC_2">No</label>
                    </td>
                  </tr>
                </tbody>
              </table> <br/> &nbsp;
            </td>
          </tr>
          <tr>
            <td>
              Have you had Discrimination and Harassment Awareness training yet (at CU)? <br/>
              If yes when? (Take your best guess if you aren't sure.)
            </td>
            <td>
              <table id="radioDiscrim">
                <tbody>
                  <tr>
                    <td>
                      <s:radio id="radioDiscrim_0" name="application.apprenticeshipInfo.discriminationTrainingComplete" value="Yes" type="radio" />
                      <label for="radioDiscrim_0">Yes</label>
                    </td>
                    <td>
                      <s:radio id="radioDiscrim_1" name="application.apprenticeshipInfo.discriminationTrainingComplete" value="Not Sure" type="radio" />
                      <label for="radioDiscrim_1">Not sure</label>
                    </td>
                    <td>
                      <s:radio id="radioDiscrim_2" name="application.apprenticeshipInfo.discriminationTrainingComplete" value="No" type="radio" />
                      <label for="radioDiscrim_2">No</label>
                    </td>
                  </tr>
                </tbody>
              </table> <br/> &nbsp;
            </td>
          </tr>
          <tr>
            <td >
              Last four digits of your Social Security Number:<br/> (this will only be used to access your background check information)
            </td>
            <td>
             <s:text name="application.apprenticeshipInfo.socialSecurityNumber" maxlength="4" size="8" id="textSSN" type="text" /></td>
          </tr>
        </tbody>
      </table>
      </fieldset>
    </div>
    <div id="Qualifications">
      <fieldset>
      <legend>Qualifications</legend>
      <br/>
      <table>
        <colgroup span="1"></colgroup>
        <colgroup span="1">
        </colgroup>
        <colgroup span="1"></colgroup>
        <tbody>
          <tr>
            <td colspan="2">
              <strong><span>Skills, Resume, and Cover Letter</span></strong>
            </td>
          </tr>
          <tr>
            <td colspan="2">Please list the three
              skills or qualifications that you feel make you a great
              candidate for the positions you selected:<br/> (Could
              be knowledge of a programming language, knowledge of a
              field, courses taken, personal characteristics, etc. If
              appropriate, note your match to requirements in job
              description. Please note responses are limited to 75
              characters.)
            </td>
          </tr>
          <tr>
            <td colspan="2">1.&nbsp; <s:text
                name="application.student.firstSkill" size="100" id="textSkill1"
                onkeypress="textCounter(textSkill1,remLen1,75);"
                onkeyup="textCounter(textSkill1,remLen1,75);"
                onkeydown="textCounter(textSkill1,remLen1,75);"
                type="text" /> <input name="remLen1" id="remLen1"
              size="4" maxlength="3" value="75" disabled="disabled"
              type="text"></td>
          </tr>
          <tr>
            <td colspan="2">2.&nbsp; <s:text
                name="application.student.secondSkill" size="100" id="textSkill2"
                onkeypress="textCounter(textSkill2,remLen2,75);"
                onkeyup="textCounter(textSkill2,remLen2,75);"
                onkeydown="textCounter(textSkill2,remLen2,75);"
                type="text" /> <input name="remLen2" id="remLen2"
              size="4" maxlength="3" value="75" disabled="disabled"
              type="text"></td>
          </tr>
          <tr>
            <td colspan="2">3.&nbsp; <s:text
                name="application.student.thirdSkill" size="100" id="textSkill3"
                onkeypress="textCounter(textSkill3,remLen3,75);"
                onkeyup="textCounter(textSkill3,remLen3,75);"
                onkeydown="textCounter(textSkill3,remLen3,75);"
                type="text" /> <input name="remLen3" id="remLen3"
              size="4" maxlength="3" value="75" disabled="disabled"
              type="text"></td>
          </tr>
          <tr>
            <td colspan="2">&nbsp;</td>
          </tr>
          <tr>
            <td colspan="2">To complete the
              application, you <strong>must</strong> submit a resume and
              a cover letter. You can submit both using the form below.
              Please use either the pdf format or a text document. To
              improve your chances of being selected for an
              apprenticeship, please take the time to construct a
              well-written cover letter and resume.<br/> <br/> <a
              href="http://engineering.colorado.edu/surveys/dla/Writing%20Tips%20for%20Cover%20Letters%20and%20Resumes.doc"
              target="_blank"> <strong>Click here</strong></a><strong>
                for some tips, which we highly recommend you review
                before submitting your cover letter and resume.</strong> <br/>
              <br/>
            </td>
          </tr>
          <tr>
            <td>Resume:</td>
            <td>
              <s:file name="resumeupload" id="resumeupload" type="file" />
            </td>
          </tr>
          <tr>
            <td>Cover letter:</td>
            <td>
              <s:file name="coverupload" id="coverupload" type="file" />
            </td>
          </tr>
        </tbody>
      </table>
      </fieldset>
    </div>
  </div>
</s:form>

<script type="text/javascript"
  src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script type="text/javascript"
  src="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"></script>
<script type="text/javascript" src="/js/formTools.js"></script>
<script>
var updateRequiredHighlights = function() {
	validateForm('application',highlightErrors);
}
var submitForm = function() {
	$( "[name='save']" ).click();
}

$(document).ready(function() {
  <!-- Setup the Tabs -->
  $("#tabs").tabs();
  
  <!-- Pretty form elements -->
  $("input:text, input:password, textarea, select").addClass("ui-widget ui-state-default ui-corner-all");
  $("input:radio, input:checkbox" ).checkboxradio();
  $("#save").button();
    
  <!-- Highlight required fields -->
  updateRequiredHighlights();
});
</script>

</body>
</html>