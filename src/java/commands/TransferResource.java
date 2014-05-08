package commands;

import dk.cphbusiness.bank.contract.BankManager;
import dk.cphbusiness.bank.contract.dto.AccountIdentifier;
import dk.cphbusiness.bank.contract.dto.TransferRequest;
import dk.cphbusiness.bank.contract.dto.TransferResponse;
import dk.cphbusiness.bank.contract.eto.InsufficientFundsException;
import dk.cphbusiness.bank.contract.eto.NoSuchAccountException;
import dk.cphbusiness.bank.contract.eto.TransferNotAcceptedException;
import java.math.BigDecimal;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.ejb.EJBException;
import javax.ws.rs.core.Context;
import javax.ws.rs.core.UriInfo;
import javax.ws.rs.Consumes;
import javax.ws.rs.Path;
import javax.ws.rs.POST;
import javax.ws.rs.Produces;
import servlets.Factory;

@Path("transfer")
public class TransferResource
{

    @Context
    private UriInfo context;

    public TransferResource()
    {
    }

    @POST
    @Consumes("application/json")
    @Produces("application/json")
    public TransferResponse create(TransferRequest transfer)
    {

        BigDecimal amount = transfer.getAmount();
        AccountIdentifier source = new AccountIdentifier(transfer.getSource().getReg(), transfer.getSource().getNumber());
        AccountIdentifier target = new AccountIdentifier(transfer.getTarget().getReg(), transfer.getTarget().getNumber());
        boolean accepted = false;
        BankManager manager = Factory.getInstance().getManager();
        try {
            manager.transferAmount(amount, source, target);
            accepted = true;
            return new TransferResponse(accepted, "ok");

        } catch (NoSuchAccountException ex) {
            return new TransferResponse(accepted, ex.getMessage());
        } catch (TransferNotAcceptedException ex) {
            return new TransferResponse(accepted, ex.getMessage());
        } catch (InsufficientFundsException ex) {
            return new TransferResponse(accepted, ex.getMessage());
        } 

    }
}
