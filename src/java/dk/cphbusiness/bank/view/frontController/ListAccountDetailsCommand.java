package dk.cphbusiness.bank.view.frontController;

import dk.cphbusiness.bank.contract.BankManager;
import dk.cphbusiness.bank.contract.dto.AccountDetail;
import dk.cphbusiness.bank.contract.dto.AccountIdentifier;
import dk.cphbusiness.bank.contract.dto.AccountSummary;
import dk.cphbusiness.bank.contract.dto.CustomerIdentifier;
import dk.cphbusiness.bank.contract.dto.TransferSummary;
import dk.cphbusiness.bank.view.Factory;
import dk.cphbusiness.dummy.bank.control.Assembler;
import dk.cphbusiness.dummy.bank.model.Account;
import java.util.Collection;
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
        
        request.setAttribute("transfers", transfers.getTransfers());
        request.setAttribute("message", "History of account "+account.getNumber());
        
        return super.execute(request);
    }
    
    
}
