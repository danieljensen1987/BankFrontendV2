package commands;

import dk.cphbusiness.bank.contract.BankManager;
import dk.cphbusiness.bank.contract.dto.PersonSummary;
import java.util.Collection;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import security.SecurityRole;
import servlets.Factory;

public class ListPersonCommand extends TargetCommand
{

    public ListPersonCommand(String target, List<SecurityRole> roles)
    {
        super(target, roles);
    }

    @Override
    public String execute(HttpServletRequest request)
    {
        BankManager manager = Factory.getInstance().getManager();
        Collection<PersonSummary> persons = manager.listPersons();
        request.setAttribute("persons", persons);
        return super.execute(request); 
    }
    
    
}
