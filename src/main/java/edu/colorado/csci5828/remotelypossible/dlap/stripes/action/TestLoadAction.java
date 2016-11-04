package edu.colorado.csci5828.remotelypossible.dlap.stripes.action;

import java.io.IOException;

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
System.out.println("Row# "+y);
        String program = r.getCell(0).getStringCellValue();
        p.setDescription(r.getCell(1).getStringCellValue());

        p.setFaculty1(getFaculty(r,2));
        p.getFaculty1().setProgram(program);
        p.setFaculty2(getFaculty(r,6));
        p.setGraduate(getFaculty(r,10));
        
        System.out.println("LongDesciption: "+r.getCell(14).getStringCellValue().length());
        p.setLongDescription(r.getCell(14).getStringCellValue());
        p.setUrl(r.getCell(15).getStringCellValue());
        p.setRequirement(r.getCell(16).getStringCellValue());
        
        p.setSupervisionLevel(r.getCell(17).getStringCellValue());
        p.setSupervisor(r.getCell(18).getStringCellValue());
        
        p.setNatureOfWork(r.getCell(19).getStringCellValue());
        
        System.out.println("PRIORWORK: "+r.getCell(20).getStringCellValue().length());
        p.setPriorWork(r.getCell(20).getStringCellValue());
        
        
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
