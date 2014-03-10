package commands;

import dk.cphbusiness.bank.contract.BankManager;
import dk.cphbusiness.bank.contract.dto.CustomerDetail;
import dk.cphbusiness.bank.contract.dto.CustomerIdentifier;
import dk.cphbusiness.bank.contract.eto.NoSuchCustomerException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.http.HttpServletRequest;
import security.SecurityRole;
import servlets.Factory;

public class EditCustomerCommand extends TargetCommand {

    public EditCustomerCommand(String target, List<SecurityRole> roles) {
        super(target, roles);
    }

    @Override
    public String execute(HttpServletRequest request) {
        BankManager manager = Factory.getInstance().getManager();
        //CustomerDetail customer = (CustomerDetail) request.getAttribute("customer");
        CustomerIdentifier customer_id = CustomerIdentifier.fromString(request.getParameter("customer"));
        CustomerDetail customer = null;
        try {
            customer = manager.showCustomer(customer_id);
        } catch (NoSuchCustomerException ex) {
            Logger.getLogger(EditCustomerCommand.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        request.setAttribute("customer", customer);
        return super.execute(request);
    }
}
