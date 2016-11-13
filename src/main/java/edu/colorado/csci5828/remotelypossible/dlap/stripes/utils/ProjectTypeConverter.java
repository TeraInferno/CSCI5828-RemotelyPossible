package edu.colorado.csci5828.remotelypossible.dlap.stripes.utils;

import java.util.Collection;
import java.util.Locale;

import org.apache.commons.lang3.StringUtils;

import edu.colorado.csci5828.remotelypossible.dlap.model.Project;
import edu.colorado.csci5828.remotelypossible.dlap.service.ProjectService;
import net.sourceforge.stripes.validation.TypeConverter;
import net.sourceforge.stripes.validation.ValidationError;

public class ProjectTypeConverter implements TypeConverter<Project> {

  
  public Project convert(String id, Class<? extends Project> project, Collection<ValidationError> error)
  {
     if (StringUtils.isNotBlank(id) && StringUtils.isNumeric(id)) {
       ProjectService ps = new ProjectService();
       Project p = ps.get(Long.parseLong(id));
       return p;
     }
     return null;
  }

  @Override
  public void setLocale(Locale arg0) {
    // TODO Auto-generated method stub
    
  }

}
