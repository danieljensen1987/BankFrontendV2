package commands;

import dk.cphbusiness.bank.contract.dto.AccountIdentifier;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import security.SecurityRole;

public class PrepairTransferCommand extends TargetCommand
{

    public PrepairTransferCommand(String target, List<SecurityRole> roles)
    {
        super(target, roles);
    }

    @Override
    public String execute(HttpServletRequest request)
    {
        AccountIdentifier account = AccountIdentifier.fromString(request.getParameter("number"));
       
        request.getParameter("account");
        request.setAttribute("message", "What the fuck");
        request.setAttribute("account", account);
        request.setAttribute("cpr", request.getParameter("cpr"));

        return super.execute(request);
    }
    
}
