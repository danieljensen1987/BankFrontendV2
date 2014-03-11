
package commands;

import java.util.List;
import security.SecurityRole;

  public class ShowLoginCommand  extends TargetCommand{

  public ShowLoginCommand(String target,List<SecurityRole> roles) {
    super(target,roles);
  }
}
