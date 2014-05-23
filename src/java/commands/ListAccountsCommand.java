package commands;

import dk.cphbusiness.bank.contract.BankManager;
import dk.cphbusiness.bank.contract.dto.AccountSummary;
import dk.cphbusiness.bank.contract.dto.CustomerIdentifier;
import servlets.Factory;
import java.util.Collection;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import security.SecurityRole;

public class ListAccountsCommand extends TargetCommand
{

    public ListAccountsCommand(String target, List<SecurityRole> roles)
    {
        super(target, roles);
    }

    @Override
    public String execute(HttpServletRequest request)
    {
        BankManager manager = Factory.getInstance().getManager();
        CustomerIdentifier customer = CustomerIdentifier.fromString(request.getParameter("cpr"));
        Collection<AccountSummary> accounts = manager.listCustomerAccounts(customer);
      //  AccountDetail ad = manager.showAccountHistory(new AccountIdentifier(accounts.iterator().next().getNumber()));
       // AccountIdentifier acid = AccountIdentifier.fromString(request.getParameter("number"));
        
      //  Double interest = manager.showAccountHistory(acid).getInterest().doubleValue();
        //request.setAttribute("accounts", accounts);
        request.getSession().setAttribute("accounts", accounts);
        request.getSession().setAttribute("cpr", customer.getCpr());
      //  request.setAttribute("accountDetails", ad);
        request.setAttribute("message", "This is a test");
        request.setAttribute("customer", customer);
        //request.setAttribute("cpr", customer.getCpr());

        return super.execute(request);
    }

}
