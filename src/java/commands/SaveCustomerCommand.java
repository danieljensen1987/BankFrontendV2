
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
        String f_name = request.getParameter("f_name");
        String l_name = request.getParameter("l_name");
        String street = request.getParameter("street");
        String postal_code = request.getParameter("postal-code");
        String postal_district = request.getParameter("postal-distrct");
        String phone = request.getParameter("phone");
        String email = request.getParameter("email");

        CustomerDetail cd = new CustomerDetail(cpr, title, f_name, l_name,
                street, postal_code, postal_district, phone, email);
        
        manager.saveCustomer(cd);
        
        return super.execute(request);
    }
}
