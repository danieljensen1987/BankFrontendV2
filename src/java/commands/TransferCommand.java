package commands;

import clients.Bank;
import clients.BankRepositoryClient;
import dk.cphbusiness.bank.contract.BankManager;
import dk.cphbusiness.bank.contract.dto.AccountDetail;
import dk.cphbusiness.bank.contract.dto.AccountIdentifier;
import dk.cphbusiness.bank.contract.dto.TransferRequest;
import dk.cphbusiness.bank.contract.eto.InsufficientFundsException;
import dk.cphbusiness.bank.contract.eto.NoSuchAccountException;
import dk.cphbusiness.bank.contract.eto.TransferNotAcceptedException;
import servlets.Factory;
import java.math.BigDecimal;
import java.util.Date;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.http.HttpServletRequest;
import security.SecurityRole;

public class TransferCommand extends TargetCommand {

    public TransferCommand(String target, List<SecurityRole> roles) {
        super(target, roles);
    }

    private HttpServletRequest executeTransfer(HttpServletRequest request) {
        BankManager manager = Factory.getInstance().getManager();

        AccountIdentifier sourceAccount = new AccountIdentifier(request.getParameter("source"));
        AccountIdentifier targetAccount = new AccountIdentifier(request.getParameter("target"));
        BigDecimal amount = new BigDecimal(request.getParameter("amount"));
        Date trans_date = null;
        try {
            AccountDetail aDetail = manager.transferAmount(amount, sourceAccount, targetAccount);
            trans_date = aDetail.getTransfers().iterator().next().getDate();
        } catch (NoSuchAccountException ex) {
            request.setAttribute("error_message", ex);
            Logger.getLogger(TransferCommand.class.getName()).log(Level.SEVERE, null, ex);
        } catch (TransferNotAcceptedException ex) {
            Logger.getLogger(TransferCommand.class.getName()).log(Level.SEVERE, null, ex);
        } catch (InsufficientFundsException ex) {
            Logger.getLogger(TransferCommand.class.getName()).log(Level.SEVERE, null, ex);
        }

        request.setAttribute("date", trans_date);
        request.setAttribute("src_acc", sourceAccount.getNumber());
        request.setAttribute("targ_acc", targetAccount.getNumber());
        request.setAttribute("amnt", amount);
        request.setAttribute("message", "The following transaction has been made from " + sourceAccount.getNumber()
                + " please check details for inconsistencies");

        return request;

    }

    @Override
    public String execute(HttpServletRequest request) {

        String treg = request.getParameter("treg");
        HttpServletRequest requestResponse = null;

        if (treg.isEmpty() || treg != null) {
            requestResponse = executeTransfer(request);
            return super.execute(requestResponse);

        } else {
            boolean sendt = false;
            AccountIdentifier sourceAccount = new AccountIdentifier(request.getParameter("source"));
            AccountIdentifier targetAccount = new AccountIdentifier(request.getParameter("target"));
            BigDecimal amount = new BigDecimal(request.getParameter("amount"));

            BankRepositoryClient client = new BankRepositoryClient();
            Bank bank = client.find(treg);
            TransferRequest req = new TransferRequest(amount, sourceAccount, targetAccount);
            BankRepositoryClient restClient = new BankRepositoryClient(bank.getUrl());
            restClient.send(req);
            sendt = true;
            if (sendt) {
                requestResponse = executeTransfer(request);

            }
            return super.execute(requestResponse);
        }

    }

}
