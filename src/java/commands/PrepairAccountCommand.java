package commands;

import java.util.List;
import javax.servlet.http.HttpServletRequest;
import security.SecurityRole;

public class PrepairAccountCommand extends TargetCommand
{

    public PrepairAccountCommand(String target, List<SecurityRole> roles)
    {
        super(target, roles);
    }

    @Override
    public String execute(HttpServletRequest request)
    {
        return super.execute(request);
    }

    
}
