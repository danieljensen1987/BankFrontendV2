package commands;

import clients.Bank;
import clients.BankRepositoryClient;
import java.net.InetAddress;
import java.net.UnknownHostException;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import security.SecurityRole;

public class MainCommand implements Command
{

    private final String target;
    private BankRepositoryClient client = new BankRepositoryClient();

    List<SecurityRole> roles;

    public MainCommand(String target, List<SecurityRole> roles)
    {
        this.target = target;
        this.roles = roles;

    }

    public List<SecurityRole> getRoles()
    {
        return roles;
    }

    @Override
    public String execute(HttpServletRequest request)
    {
        String ip = "";
        try {
            InetAddress addr = InetAddress.getLocalHost();
            ip = addr.getHostAddress();
//            System.out.println(ip);
        } catch (UnknownHostException e) {
            System.out.println(e.getMessage());
        }
        Bank bank = new Bank("4791", "CPHBankDummy", "http://" + ip +":8181/DummyBank/repository");
        client.save(bank);
        return target;
    }
}
