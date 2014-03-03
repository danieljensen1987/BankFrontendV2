package dk.cphbusiness.bank.view.frontController;

import dk.cphbusiness.bank.contract.BankManager;
import dk.cphbusiness.bank.contract.dto.AccountDetail;
import dk.cphbusiness.bank.contract.dto.AccountIdentifier;
import dk.cphbusiness.bank.contract.eto.InsufficientFundsException;
import dk.cphbusiness.bank.contract.eto.NoSuchAccountException;
import dk.cphbusiness.bank.contract.eto.TransferNotAcceptedException;
import dk.cphbusiness.bank.view.Factory;
import java.math.BigDecimal;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.http.HttpServletRequest;

public class TransferCommand extends TargetCommand
{

    public TransferCommand(String target)
    {
        super(target);
    }

    @Override
    public String execute(HttpServletRequest request)
    {
            AccountIdentifier sourceAccount = new AccountIdentifier(request.getParameter("source"));
            AccountIdentifier targetAccount = new AccountIdentifier(request.getParameter("target"));
            String sAmount = request.getParameter("amount");
            BigDecimal amount = new BigDecimal(sAmount);
            
            System.out.println("TC Source " + sourceAccount.getNumber());
            System.out.println("TC target " + targetAccount.getNumber());
            System.out.println("TC amount " + amount);
            
            BankManager manager = Factory.getInstance().getManager();
            
        try {
            AccountDetail aDetail = manager.transferAmount(amount, sourceAccount, targetAccount);
            request.setAttribute("transfers", aDetail);
        } catch (NoSuchAccountException ex) {
            Logger.getLogger(TransferCommand.class.getName()).log(Level.SEVERE, null, ex);
        } catch (TransferNotAcceptedException ex) {
            Logger.getLogger(TransferCommand.class.getName()).log(Level.SEVERE, null, ex);
        } catch (InsufficientFundsException ex) {
            Logger.getLogger(TransferCommand.class.getName()).log(Level.SEVERE, null, ex);
        }
            request.setAttribute("message", "What the fuck");
            
        return super.execute(request);
    }

}
