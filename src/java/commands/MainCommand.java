package commands;

import clients.Bank;
import clients.BankRepositoryClient;
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
        Bank bank = new Bank("4791", "CPHBank", "http://www.cphbank.dk");
        client.save(bank);
        return target;
    }
}
