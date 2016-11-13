package edu.colorado.csci5828.remotelypossible.dlap.stripes.utils;

import edu.colorado.csci5828.remotelypossible.dlap.model.Project;
import net.sourceforge.stripes.config.Configuration;
import net.sourceforge.stripes.validation.DefaultTypeConverterFactory;

public class DlapTypeConverterFactory extends DefaultTypeConverterFactory {

  @Override
  public void init(Configuration config) {
    super.init(config);
    add(Project.class , ProjectTypeConverter.class );
  }
  
  
}
