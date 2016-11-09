package edu.colorado.csci5828.remotelypossible.dlap.stripes.action;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.concurrent.ThreadLocalRandom;

import org.apache.commons.lang3.StringUtils;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.poifs.filesystem.NPOIFSFileSystem;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;

import edu.colorado.csci5828.remotelypossible.dlap.model.Faculty;
import edu.colorado.csci5828.remotelypossible.dlap.model.PhoneNumber;
import edu.colorado.csci5828.remotelypossible.dlap.model.Project;
import edu.colorado.csci5828.remotelypossible.dlap.service.ProjectService;
import net.sourceforge.stripes.action.DefaultHandler;
import net.sourceforge.stripes.action.HttpCache;
import net.sourceforge.stripes.action.Resolution;
import net.sourceforge.stripes.action.UrlBinding;

@UrlBinding("/do/testLoad")
@HttpCache(allow=false)
public class TestLoadAction extends BaseAction {

  private List<String> MAJORS = Arrays.asList(new String[] { "ASEN","AMEN","AREN","CHEN","CBEN","CVEN","CSEN","EEEN","ECEN","EPEN","EVEN","GEEN","MCEN","TMEN" });

  
  @DefaultHandler
  public Resolution load() {
    
    NPOIFSFileSystem fs;
    try {
      fs = new NPOIFSFileSystem(getClass().getClassLoader().getResourceAsStream("testData/projects.xls"));
      HSSFWorkbook wb = new HSSFWorkbook(fs.getRoot(), true);
      Sheet s = wb.getSheetAt(0);
      
      ProjectService ps = new ProjectService();
      
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
      }
      
      wb.close();
      fs.close();
    } catch (IOException e) {
      e.printStackTrace();
    }
    
    return null;
    
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
