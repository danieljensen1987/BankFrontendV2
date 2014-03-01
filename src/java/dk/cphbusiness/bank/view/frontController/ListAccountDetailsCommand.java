package dk.cphbusiness.bank.view.frontController;

import dk.cphbusiness.bank.contract.BankManager;
import dk.cphbusiness.bank.contract.dto.AccountDetail;
import dk.cphbusiness.bank.contract.dto.AccountIdentifier;
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
        //System.out.println("xxxxx");
        BankManager manager = Factory.getInstance().getManager();
        
//        AccountIdentifier account = AccountIdentifier.fromString(request.getParameter("number"));
//        AccountDetail transfers = manager.showAccountHistory(account);
//        request.setAttribute("transfers", transfers.getTransfers());
        
        String id = request.getParameter("number");
        AccountDetail accountDetail = manager.showAccountHistory(new AccountIdentifier(id));
        
        for (int i = 0; i < accountDetail.getTransfers().size(); i++) {
            System.out.println("Account number "+accountDetail.getTransfers().iterator().next().getAccountNumber());
            System.out.println("Amount "+accountDetail.getTransfers().iterator().next().getAmount());
            System.out.println("Date "+accountDetail.getTransfers().iterator().next().getDate());
        }
        request.setAttribute("accountDetail", accountDetail);
        request.setAttribute("tranfers", accountDetail.getTransfers());
//                .iterator().next().getAccountNumber());
      //  request.setAttribute("Date", accountDetail.getTransfers().iterator().next().getDate());
        return super.execute(request);
    }
    
    
}
