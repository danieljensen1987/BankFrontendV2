package commands;

import dk.cphbusiness.bank.contract.BankManager;
import dk.cphbusiness.bank.contract.dto.AccountDetail;
import dk.cphbusiness.bank.contract.dto.AccountIdentifier;
import java.util.List;
import servlets.Factory;
import javax.servlet.http.HttpServletRequest;
import security.SecurityRole;

public class ListAccountDetailsCommand extends TargetCommand
{

    public ListAccountDetailsCommand(String target, List<SecurityRole> roles)
    {
        super(target, roles);
    }

    @Override
    public String execute(HttpServletRequest request)
    {
        BankManager manager = Factory.getInstance().getManager();
        
        AccountIdentifier account = AccountIdentifier.fromString(request.getParameter("number"));
        AccountDetail transfers = manager.showAccountHistory(account);
        
        request.getSession().setAttribute("transfers", transfers.getTransfers());
        request.getSession().setAttribute("message", "History of account");
        request.setAttribute("accountNumber", account.getNumber());
        
        return super.execute(request);
    }
    
    
}
