//package rest;
//
//import dk.cphbusiness.bank.contract.BankManager;
//import dk.cphbusiness.bank.contract.dto.TransferRequest;
//import dk.cphbusiness.bank.contract.dto.TransferResponse;
//import dk.cphbusiness.bank.contract.eto.InsufficientFundsException;
//import dk.cphbusiness.bank.contract.eto.NoSuchAccountException;
//import dk.cphbusiness.bank.contract.eto.TransferNotAcceptedException;
//import java.util.logging.Level;
//import java.util.logging.Logger;
//import javax.ws.rs.core.Context;
//import javax.ws.rs.core.UriInfo;
//import javax.ws.rs.Consumes;
//import javax.ws.rs.Path;
//import javax.ws.rs.POST;
//import javax.ws.rs.Produces;
//import servlets.Factory;
//
//
//@Path("transfer")
//public class TransferResource
//{
//    
//    @Context
//    private UriInfo context;
//
//    /**
//     * Creates a new instance of TransferResource
//     */
//    public TransferResource()
//    {
//    }
//    
//    /*
//    {
//    "amount": 200.33,
//    "source": {"reg": "abc", "number": "12345678"},
//    "target": {"reg": "xyz", "number": "87654321"}
//    }
//    
//    */
//
//    @POST
//    @Consumes("application/json")
//    @Produces("application/json")
//    public TransferResponse create(TransferRequest transfer)
//    {
//        System.out.println(transfer.getSource());
//        System.out.println(transfer.getTarget());
//        System.out.println(transfer.getAmount());
//        System.out.println();
//        
//        
//        BankManager manager = Factory.getInstance().getManager();
//        try {
//            manager.transferAmount(transfer.getAmount(), transfer.getSource(), transfer.getTarget());
//            return new TransferResponse(true, "ok");
//        } catch (NoSuchAccountException ex) {
//            return new TransferResponse(false, "No such account");
//        } catch (TransferNotAcceptedException ex) {
//            return new TransferResponse(false, "Transfer not accepted");
//        } catch (InsufficientFundsException ex) {
//            return new TransferResponse(true, "NEED MORE CASH, HOBO!");
//        }
//    }
//
//}
