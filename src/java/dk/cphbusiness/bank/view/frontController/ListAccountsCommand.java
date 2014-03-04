package dk.cphbusiness.bank.view.frontController;

import dk.cphbusiness.bank.contract.BankManager;
import dk.cphbusiness.bank.contract.dto.AccountDetail;
import dk.cphbusiness.bank.contract.dto.AccountIdentifier;
import dk.cphbusiness.bank.contract.dto.AccountSummary;
import dk.cphbusiness.bank.contract.dto.CustomerIdentifier;
import dk.cphbusiness.bank.view.Factory;
import dk.cphbusiness.dummy.bank.model.Account;
import java.util.Collection;
import javax.servlet.http.HttpServletRequest;

public class ListAccountsCommand extends TargetCommand
{

    public ListAccountsCommand(String target)
    {
        super(target);
    }

    @Override
    public String execute(HttpServletRequest request)
    {
        BankManager manager = Factory.getInstance().getManager();
        CustomerIdentifier customer = CustomerIdentifier.fromString(request.getParameter("cpr"));
        Collection<AccountSummary> accounts = manager.listCustomerAccounts(customer);
        AccountDetail ad = manager.showAccountHistory(new AccountIdentifier(accounts.iterator().next().getNumber()));
       // AccountIdentifier acid = AccountIdentifier.fromString(request.getParameter("number"));
        
      //  Double interest = manager.showAccountHistory(acid).getInterest().doubleValue();
        //request.setAttribute("accounts", accounts);
        request.getSession().setAttribute("accounts", accounts);
        request.getSession().setAttribute("cpr", customer.getCpr());
        request.setAttribute("accountDetails", ad);
        request.setAttribute("message", "This is a test");
        request.setAttribute("customer", customer);
        //request.setAttribute("cpr", customer.getCpr());

        return super.execute(request);
    }

}
