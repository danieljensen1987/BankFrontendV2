package commands;

import com.sun.xml.wss.impl.transform.ACTransform;
import dk.cphbusiness.bank.contract.BankManager;
import dk.cphbusiness.bank.contract.dto.AccountDetail;
import dk.cphbusiness.bank.contract.dto.AccountIdentifier;
import dk.cphbusiness.bank.contract.dto.CustomerDetail;
import dk.cphbusiness.bank.contract.dto.CustomerIdentifier;
import dk.cphbusiness.bank.contract.eto.NoSuchCustomerException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.http.HttpServletRequest;
import security.SecurityRole;
import servlets.Factory;

public class CustomerDetailsCommand extends TargetCommand{
 
    public CustomerDetailsCommand(String target, List<SecurityRole> roles)
    {
        super(target, roles);
    }

    @Override
    public String execute(HttpServletRequest request)
    {
        BankManager manager = Factory.getInstance().getManager();
            CustomerIdentifier customer_id = CustomerIdentifier.fromString(request.getParameter("cpr"));
            CustomerDetail customer = null;
        try {
            customer = manager.showCustomer(customer_id);
        } catch (NoSuchCustomerException ex) {
            Logger.getLogger(CustomerDetailsCommand.class.getName()).log(Level.SEVERE, null, ex);
        }
           // CustomerDetail customer = (CustomerDetail)request.getAttribute("customer");
         //   System.out.println("haha "+ customer.getFirstName()+" "+customer.getPhone()+"------------------------------------------" );
        request.setAttribute("customer", customer);
       
        return super.execute(request);
}
}