/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package commands;

import dk.cphbusiness.bank.contract.BankManager;
import dk.cphbusiness.bank.contract.dto.AccountDetail;
import dk.cphbusiness.bank.contract.dto.AccountIdentifier;
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

/**
 *
 * @author CP
 */
public class CreateAccountCommand extends TargetCommand{
    
    public CreateAccountCommand(String target, List<SecurityRole> roles) {
        super(target, roles);
    }

    @Override
    public String execute(HttpServletRequest request) {
    BankManager manager = Factory.getInstance().getManager();
    CustomerIdentifier customer = CustomerIdentifier.fromString(request.getParameter("cpr"));
    String number = request.getParameter("interest");
        System.out.println("kommer vi her?");
    AccountDetail account = new CheckingAccountDetail(BigDecimal.valueOf(0.1));
        try {
            manager.createAccount(customer, account);
            System.out.println("kommer vi herind?");
        } catch (NoSuchCustomerException ex) {
            Logger.getLogger(CreateAccountCommand.class.getName()).log(Level.SEVERE, null, ex);
        } catch (CustomerBannedException ex) {
            Logger.getLogger(CreateAccountCommand.class.getName()).log(Level.SEVERE, null, ex);
        }
    
    
        return super.execute(request);
    }
    }
