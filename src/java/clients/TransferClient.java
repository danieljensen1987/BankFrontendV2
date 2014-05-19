package clients;

import dk.cphbusiness.bank.contract.dto.TransferRequest;
import dk.cphbusiness.bank.contract.dto.TransferResponse;
import javax.ws.rs.client.Client;
import javax.ws.rs.client.ClientBuilder;
import javax.ws.rs.client.Entity;
import javax.ws.rs.client.WebTarget;
import static javax.ws.rs.core.MediaType.APPLICATION_JSON_TYPE;
import org.glassfish.jersey.client.ClientConfig;
import org.glassfish.jersey.jackson.JacksonFeature;

public class TransferClient implements AutoCloseable
{
    private final WebTarget target;
    private final Client client;

    public TransferClient(String targetURL)
    {
        ClientConfig config = new ClientConfig().register(new JacksonFeature());
        client = ClientBuilder.newClient(config);
        target = client.target(targetURL).path("transfer");
    }

    @Override
    public void close()
    {
        client.close();
    }


    public TransferResponse create(TransferRequest transferRequest)
    {
        System.out.println("Transfer client ------ Source: " + transferRequest.getSource());
        System.out.println("Transfer client ------ target url: " + target.getUri());
        System.out.println("=================================================================");
        return target
                .request(APPLICATION_JSON_TYPE)
                .post(
                        Entity.entity(transferRequest, APPLICATION_JSON_TYPE),
                        TransferResponse.class
                );
    }
    
}
