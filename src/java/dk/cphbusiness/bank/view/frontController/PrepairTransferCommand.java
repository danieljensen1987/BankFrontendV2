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

public class PrepairTransferCommand extends TargetCommand
{

    public PrepairTransferCommand(String target)
    {
        super(target);
    }

    @Override
    public String execute(HttpServletRequest request)
    {
        AccountIdentifier account = AccountIdentifier.fromString(request.getParameter("number"));
       
        request.getParameter("account");
        request.setAttribute("message", "What the fuck");
        request.setAttribute("account", account);
        request.setAttribute("cpr", request.getParameter("cpr"));

        return super.execute(request);
    }
    
}
