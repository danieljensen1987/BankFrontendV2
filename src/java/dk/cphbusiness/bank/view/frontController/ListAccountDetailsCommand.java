package dk.cphbusiness.bank.view.frontController;

import dk.cphbusiness.bank.contract.BankManager;
import dk.cphbusiness.bank.contract.dto.AccountDetail;
import dk.cphbusiness.bank.contract.dto.AccountIdentifier;
import dk.cphbusiness.bank.view.Factory;
import javax.servlet.http.HttpServletRequest;

public class ListAccountDetailsCommand extends TargetCommand
{

    public ListAccountDetailsCommand(String target)
    {
        super(target);
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
