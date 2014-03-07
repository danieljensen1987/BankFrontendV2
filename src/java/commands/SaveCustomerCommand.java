/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package commands;

import dk.cphbusiness.bank.contract.BankManager;
import dk.cphbusiness.bank.contract.dto.CustomerDetail;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import security.SecurityRole;
import servlets.Factory;

/**
 *
 * @author CP
 */
public class SaveCustomerCommand extends TargetCommand {

    public SaveCustomerCommand(String target, List<SecurityRole> roles) {
        super(target, roles);
    }

    @Override
    public String execute(HttpServletRequest request) {
        BankManager manager = Factory.getInstance().getManager();
        String cpr = request.getParameter("cpr");
        String title = request.getParameter("cpr");
        String f_name = request.getParameter("cpr");
        String l_name = request.getParameter("cpr");
        String street = request.getParameter("cpr");
        String postal_code = request.getParameter("cpr");
        String postal_district = request.getParameter("cpr");
        String phone = request.getParameter("cpr");
        String email = request.getParameter("cpr");

        CustomerDetail cd = new CustomerDetail(cpr, title, f_name, l_name,
                street, postal_code, postal_district, phone, email);

        manager.saveCustomer(cd);
        return super.execute(request);
    }
}
