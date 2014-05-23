package commands;

import dk.cphbusiness.bank.contract.BankManager;
import dk.cphbusiness.bank.contract.dto.CustomerSummary;
import java.util.Collection;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import security.SecurityRole;
import servlets.Factory;

public class AboutCommand extends TargetCommand
{

    public AboutCommand(String target, List<SecurityRole> roles)
    {
        super(target, roles);
    }

    @Override
    public String execute(HttpServletRequest request)
    {
        BankManager manager = Factory.getInstance().getManager();
        
        Collection<CustomerSummary> customers = manager.listCustomers();
        int size = manager.getCustomerCount();
        
        request.setAttribute("customers", size);
        request.setAttribute("message", "This is a not test");
        
        return super.execute(request);
    }
}
