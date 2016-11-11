package edu.colorado.csci5828.remotelypossible.dlap.stripes.action;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ThreadLocalRandom;

import org.apache.commons.lang3.StringUtils;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.poifs.filesystem.NPOIFSFileSystem;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;

import edu.colorado.csci5828.remotelypossible.dlap.common.Constants;
import edu.colorado.csci5828.remotelypossible.dlap.model.Application;
import edu.colorado.csci5828.remotelypossible.dlap.model.ApprenticeshipInfo;
import edu.colorado.csci5828.remotelypossible.dlap.model.Faculty;
import edu.colorado.csci5828.remotelypossible.dlap.model.PhoneNumber;
import edu.colorado.csci5828.remotelypossible.dlap.model.Project;
import edu.colorado.csci5828.remotelypossible.dlap.model.Student;
import edu.colorado.csci5828.remotelypossible.dlap.service.ApplicationService;
import edu.colorado.csci5828.remotelypossible.dlap.service.ProjectService;
import net.sourceforge.stripes.action.DefaultHandler;
import net.sourceforge.stripes.action.HttpCache;
import net.sourceforge.stripes.action.UrlBinding;


@UrlBinding("/do/testLoad")
@HttpCache(allow=false)
public class TestLoadAction extends BaseAction {

  private List<String> MAJORS = Arrays.asList(new String[] { "ASEN","AMEN","AREN","CHEN","CBEN","CVEN","CSEN","EEEN","ECEN","EPEN","EVEN","GEEN","MCEN","TMEN" });
  String[] RACES = new String[] {"I","A","B","W","P","O","N"};
  
  private ApplicationService as = new ApplicationService();
  private ProjectService ps = new ProjectService();
  
  @DefaultHandler
  public void load() {
    
    loadProjects();
    loadApplications();
    
    
  }
  
  private void loadApplications() {
    
       
    
    NPOIFSFileSystem fs;
    try {
      fs = new NPOIFSFileSystem(getClass().getClassLoader().getResourceAsStream("testData/students.xls"));
      HSSFWorkbook wb = new HSSFWorkbook(fs.getRoot(), true);
      Sheet sheet = wb.getSheetAt(0);

      List<Project> pl = ps.findAll();
      Map<String,Project> projectIdByTitle = new HashMap<String,Project>(pl.size());
      for(Project p: pl) {
        projectIdByTitle.put(p.getDescription(), p);
      }
      
      
      int skillPos = 0;
      
      //Find skill position
      Row r = sheet.getRow(11);
      for(int x = 16; x < r.getLastCellNum(); x++) {
        String project = r.getCell(x).getStringCellValue();
        if("Comment".equals(project)) {
          skillPos=x+1;
          break;
        }
      }
      
      
      String val;
      String[] split;
      Project p;
      for(int y = 12; y < sheet.getLastRowNum(); y++) {
        
        r = sheet.getRow(y);

        if(!"Name".equals(r.getCell(1).toString())) {
          continue;
        }

//System.out.println("Row# "+y+ " "+r.getCell(2).toString()+" "+r.getCell(5).toString());


        Application a = new Application();
        Student s = new Student();
        ApprenticeshipInfo i = new ApprenticeshipInfo();
        PhoneNumber phone = new PhoneNumber();

        s.setBoulderAddress(y+" Way, Boulder, Colorado");
        phone.setAreacode("303");
        phone.setPrefix("123");
        phone.setNumber(StringUtils.leftPad(String.valueOf(y), 4, '0'));
        s.setBoulderPhone(phone);
       
        
        s.setName("Student"+y+" Name");
        s.setPrimaryMajor(r.getCell(2).getStringCellValue());        
        a.setUsername("Student"+y);
        
        val = r.getCell(3).getStringCellValue();
        if(!"None".equals(val)) {
          s.setSecondaryMajor(val);
        }
        
        //Level in School
        s.setSchoolLevel(r.getCell(5).getStringCellValue());
        
        //Grad Date
        split = r.getCell(6).getStringCellValue().split("/");
        s.setGraduationMonth(split[0]);
        s.setGraduationYear(split[1]);
        
        //GPA
        s.setGpa(r.getCell(7).toString());

        
        //Gender
        s.setGender(r.getCell(9).getStringCellValue());
        
        //Ethnicity
        List<String> race = new ArrayList<String>(7);
        val = r.getCell(10).getStringCellValue().replaceAll("[^a-zA-Z]","");
        for(String tRace: RACES) {
          if(val.indexOf(tRace) > -1) {
            race.add(tRace);
          } else {
            race.add(Constants.EMPTY_STRING);
          }
        }
        
        //Hispanic Descent
        if(val.indexOf("H") > -1) {
          s.setHispanic("Yes");
        } else {
          s.setHispanic("No");
        }
        
        
        //Prev Experience
        
        if(r.getCell(11).toString().equals("3.0")) {
          s.setPreviousWorkExperienceExists(false);
        } else {
          s.setPreviousWorkExperienceExists(true);
        }
        
        
        //Other employ
        if(r.getCell(12).toString().equals("3.0")) {
          i.setOtherPlannedEmployment("None");
        } 
        
        //Applied Before
        if(r.getCell(13).toString().equals("3.0")) {
          i.setAppliedPreviously("No");
        } else {
          i.setAppliedPreviously("Yes");
        }

        
        //Skill1
        s.setFirstSkill(r.getCell(skillPos).getStringCellValue());
        
        //Skill2
        s.setSecondSkill(r.getCell(skillPos+1).getStringCellValue());
        
        //Skill3
        s.setThirdSkill(r.getCell(skillPos+2).getStringCellValue());
        
        //Project1
        p = projectIdByTitle.get(r.getCell(skillPos+3).getStringCellValue());
        if(p != null) {
          i.setFirstChoice(p);
        }
        
        //Project2
        p = projectIdByTitle.get(r.getCell(skillPos+4).getStringCellValue());
        if(p != null) {
          i.setSecondChoice(p);
        }
        
        //Project3
        p = projectIdByTitle.get(r.getCell(skillPos+5).getStringCellValue());
        if(p != null) {
          i.setThirdChoice(p);
        }
        
        //Project4
        p = projectIdByTitle.get(r.getCell(skillPos+6).getStringCellValue());
        if(p != null) {
          i.setFourthChoice(p);
        }
        
        //Project5
        p = projectIdByTitle.get(r.getCell(skillPos+7).getStringCellValue());
        if(p != null) {
          i.setFifthChoice(p);
        }
        
        //Student ID
        s.setStudentId(new Long(StringUtils.rightPad(String.valueOf(y), 9, '0')));
        
        //BldrEmail 
        s.setBoulderEmail("Student"+y+"@email.com");
        
        //SummerEmail 
        s.setSummerEmail("Student"+y+"@summeremail.com");
        
        //Other Employment
        if(!"None".equals(i.getOtherPlannedEmployment())) {
          i.setOtherPlannedEmployment(r.getCell(skillPos+11).getStringCellValue());
        }
        
        a.setApprenticeshipInfo(i);
        a.setStudent(s);
        
        
        as.save(a);
    
      }
      
      wb.close();
      fs.close();
      
    } catch (IOException e) {
      e.printStackTrace();
    }

  }
  
  private void loadProjects() {
    Map<String,Project> projectIdByTitle = new HashMap<String,Project>(110);
    NPOIFSFileSystem fs;
    try {
      fs = new NPOIFSFileSystem(getClass().getClassLoader().getResourceAsStream("testData/projects.xls"));
      HSSFWorkbook wb = new HSSFWorkbook(fs.getRoot(), true);
      Sheet s = wb.getSheetAt(0);
      
      
      
      for(int y = 0; y < s.getLastRowNum(); y++) {
        Row r = s.getRow(y);
        Project p = new Project();
        String program = r.getCell(0).getStringCellValue();
        p.setDescription(r.getCell(1).getStringCellValue());

        Faculty f = getFaculty(r,2);
        f.setProgram(program);
        p.setFaculty1(f);
        p.setFaculty2(getFaculty(r,6));
        p.setGraduate(getFaculty(r,10));
        
        //Set the Project owner
        p.setUsername(f.getEmail().substring(0,f.getEmail().indexOf("@")));
        
        p.setLongDescription(r.getCell(14).getStringCellValue());
        p.setUrl(r.getCell(15).getStringCellValue());
        p.setRequirement(r.getCell(16).getStringCellValue());
        
        p.setSupervisionLevel(r.getCell(17).getStringCellValue());
        p.setSupervisor(r.getCell(18).getStringCellValue());
        
        p.setNatureOfWork(r.getCell(19).getStringCellValue());
        
        p.setPriorWork(r.getCell(20).getStringCellValue());
        
        int numMajors = ThreadLocalRandom.current().nextInt(1, MAJORS.size()+1);      
        List<String> acceptedMajors = new ArrayList<String>(numMajors);
        for(int x = 0; x < numMajors; x++) {
          acceptedMajors.add(MAJORS.get(x));
        }
        p.setAcceptedMajors(acceptedMajors);
        
        ps.save(p);
                
        projectIdByTitle.put(p.getDescription(), p);
      }
      
      ps.getCurrentSession().getTransaction().commit();
      ps.getCurrentSession().beginTransaction();
     
      
      wb.close();
      fs.close();
    } catch (IOException e) {
      e.printStackTrace();
    }    
  }

  private Faculty getFaculty(Row r, int i) {
    Faculty f = new Faculty();
    if(StringUtils.isBlank(r.getCell(i).getStringCellValue())) {
      return null;
    }
    
    f.setName(r.getCell(i).getStringCellValue()+" "+r.getCell(i+1).getStringCellValue());
    
    if(StringUtils.isNotBlank(r.getCell(i+2).getStringCellValue())) {
      PhoneNumber p = new PhoneNumber();
      String num = r.getCell(i+2).getStringCellValue().replaceAll("[^\\d.]", "");;
      p.setAreacode(num.substring(0,3));
      p.setPrefix(num.substring(3,6));
      p.setNumber(num.substring(6));
      f.setPhone(p);  
    }
    
    if(StringUtils.isNotBlank(r.getCell(i+3).getStringCellValue())) {
      f.setEmail(r.getCell(i+3).getStringCellValue());
    }
    
    return f;
    
  }
}
