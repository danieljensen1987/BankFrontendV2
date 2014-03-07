package servlets;


import commands.TargetCommand;
import commands.Command;
import commands.ListAccountDetailsCommand;
import commands.ListAccountsCommand;
import commands.ListCustomersCommand;
import commands.LoginCommand;
import commands.LogoutCommand;
import commands.PrepairTransferCommand;
import commands.SaveCustomerCommand;
import commands.ShowLoginCommand;
import commands.TransferCommand;
import dk.cphbusiness.bank.contract.BankManager;
import dk.cphbusiness.dummy.bank.control.DummyBankManager;
import java.util.HashMap;
import java.util.Map;
import java.util.Arrays;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import security.SecurityRole;

public class Factory
{

    private static Factory instance = new Factory();
    private final Map<String, Command> commands = new HashMap<>();
    private final BankManager manager;

    private Factory()
    {
        
        manager = new DummyBankManager();
        Map<SecurityRole, String> roles = new HashMap();
        roles.put(SecurityRole.Employee, "/employees/employeeStartPage.jsp");
        roles.put(SecurityRole.SuperEmployee, "/superEmployees/superEmployeeStartPage.jsp");
        roles.put(SecurityRole.Customer, "/customers/startCustomerPage.jsp");
        
        
        // viewed by all
        commands.put("main", new TargetCommand("/all/main.jsp", Arrays.asList(SecurityRole.All)));
        
        // viewed by customers
        
        // viewed by employess
        commands.put("list-customers", new ListCustomersCommand("/employees/listCustomers.jsp", Arrays.asList(SecurityRole.Employee, SecurityRole.SuperEmployee)));
        commands.put("list-accounts", new ListAccountsCommand("/employees/account-list.jsp", Arrays.asList(SecurityRole.Employee, SecurityRole.SuperEmployee)));
        commands.put("list-accounts-detail", new ListAccountDetailsCommand("/employees/account-detail.jsp", Arrays.asList(SecurityRole.Employee, SecurityRole.SuperEmployee)));
        commands.put("prepair-transfer", new PrepairTransferCommand("/transactions/transfer.jsp", Arrays.asList(SecurityRole.Employee, SecurityRole.SuperEmployee)));
        commands.put("transferMoney", new TransferCommand("/transactions/transaction_confirmation.jsp", Arrays.asList(SecurityRole.Employee, SecurityRole.SuperEmployee)));
        
        // viewed by superemployess
//        commands.put("main", new TargetCommand("/all/main.jsp", Arrays.asList(SecurityRole.All)));
        commands.put("showlogin", new ShowLoginCommand("/login/login.jsp", Arrays.asList(SecurityRole.All)));
//        
        commands.put("login", new LoginCommand(roles, "/login/login.jsp"));
        commands.put("logout", new LogoutCommand("/all/main.jsp", Arrays.asList(SecurityRole.All)));
//
//        commands.put("customer-main", new ViewCurrentCustomer("/customers/startCustomerPage.jsp", Arrays.asList(SecurityRole.Customer)));
//        commands.put("showcustdetails", new ViewCurrentCustomer("/customers/customerDetails.jsp", Arrays.asList(SecurityRole.Customer)));
//
//        commands.put("listcustomers", new ListCustomersCommand("/employees/listCustomers.jsp", Arrays.asList(SecurityRole.Employee, SecurityRole.SuperEmployee)));
//        commands.put("viewcustomer", new ViewCustomerCommand("/employees/viewCustomer.jsp", Arrays.asList(SecurityRole.Employee, SecurityRole.SuperEmployee)));
        commands.put("employee-main", new TargetCommand("/employees/employeeStartPage.jsp", Arrays.asList(SecurityRole.Employee, SecurityRole.SuperEmployee)));
//
        commands.put("create-customer", new TargetCommand("/superEmployees/save-customer.jsp", Arrays.asList(SecurityRole.SuperEmployee)));
        commands.put("save-customer", new SaveCustomerCommand("/superEmployees/save-customer.jsp", Arrays.asList(SecurityRole.SuperEmployee)));
//        commands.put("save-customer", new SaveCustomerCommand("/superEmployee/addCustomer.jsp", Arrays.asList(SecurityRole.SuperEmployee)));
    }

    public BankManager getManager()
    {
        return manager;
    }

    
    public Command getCommand(String cmdStr, HttpServletRequest request)
    {
        if (cmdStr == null) {
            cmdStr = "main";
        }
        Command cmd = commands.get(cmdStr);
        SecurityCheck(cmd, request);
        return cmd;
    }

    private void SecurityCheck(Command command, HttpServletRequest request) throws SecurityException
    {
        if (command instanceof TargetCommand) {
            List<SecurityRole> requiredRoles = ((TargetCommand) command).getRoles();
            boolean requiredRoleFound = false;
            for (SecurityRole requiredRole : requiredRoles) {
                if (requiredRole == SecurityRole.All || request.isUserInRole(requiredRole.toString())) {
                    requiredRoleFound = true;
                    break;
                }
            }
            if (!requiredRoleFound) {
                throw new SecurityException("You don't have the necessary rights to perform this command");
            }
        }
    }

    public static Factory getInstance()
    {
        return instance;
    }
}
