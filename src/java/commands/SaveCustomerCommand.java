package commands;

import dk.cphbusiness.bank.contract.BankManager;
import dk.cphbusiness.bank.contract.dto.CustomerDetail;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import security.SecurityRole;
import servlets.Factory;


public class SaveCustomerCommand extends TargetCommand {

    public SaveCustomerCommand(String target, List<SecurityRole> roles) {
        super(target, roles);
    }

    @Override
    public String execute(HttpServletRequest request) {
        BankManager manager = Factory.getInstance().getManager();
        String cpr = request.getParameter("cpr");
        String title = request.getParameter("title");
        String firstName = request.getParameter("firstName");
        String lastName = request.getParameter("lastName");
        String street = request.getParameter("street");
        String postalCode = request.getParameter("postalCode");
        String postalDistrict = request.getParameter("postalDistrict");
        String phone = request.getParameter("phone");
        String email = request.getParameter("email");

        CustomerDetail cd = new CustomerDetail(cpr, title, firstName, lastName,
                street, postalCode, postalDistrict, phone, email);
        
        manager.saveCustomer(cd);
        request.setAttribute("command", "customer-details");
        request.setAttribute("cpr", cpr);
        return super.execute(request);
    }
}
