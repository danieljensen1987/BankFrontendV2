package commands;

import dk.cphbusiness.bank.contract.BankManager;
import dk.cphbusiness.bank.contract.dto.AccountDetail;
import dk.cphbusiness.bank.contract.dto.CheckingAccountDetail;
import dk.cphbusiness.bank.contract.dto.CustomerIdentifier;
import dk.cphbusiness.bank.contract.eto.CustomerBannedException;
import dk.cphbusiness.bank.contract.eto.NoSuchCustomerException;
import java.math.BigDecimal;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.http.HttpServletRequest;
import security.SecurityRole;
import servlets.Factory;

public class CreateAccountCommand extends TargetCommand{
    
    public CreateAccountCommand(String target, List<SecurityRole> roles) {
        super(target, roles);
    }

    @Override
    public String execute(HttpServletRequest request) {
    BankManager manager = Factory.getInstance().getManager();
    CustomerIdentifier customer = CustomerIdentifier.fromString(request.getParameter("cpr"));
    BigDecimal number = new BigDecimal(request.getParameter("interest"));
    AccountDetail account = new CheckingAccountDetail(number);
        try {
            manager.createAccount(customer, account);
        } catch (NoSuchCustomerException ex) {
            Logger.getLogger(CreateAccountCommand.class.getName()).log(Level.SEVERE, null, ex);
        } catch (CustomerBannedException ex) {
            Logger.getLogger(CreateAccountCommand.class.getName()).log(Level.SEVERE, null, ex);
        }
    
    
        return super.execute(request);
    }
    }
