<script>
       $(".id").change(function(){
        var id = $(this).val();
        $.ajax({
            url: "FrontController",
            data: {
                command: "ajax-checkAccount",
                id: id
            },
            success: function(data) {
                $("#error").html(data);
            }
        });
    });
    $("#id").change(function(){
        $(".orangeButton").show();
        $("#error").empty();
        $("#amount").val("");
    });
    $("#amount").change(function(){
        var amount = $(this).val();
        var id = $("#id").val();
        $.ajax({
            url: "FrontController",
            data: {
                command: "ajax-checkBalance",
                amount: amount,
                id: id
            },
            success: function(data) {
                if(data.length === 0)
                    {
                        $("#error").html(data);
                        $(".orangeButton").show();
                    }
                else
                    {
                        $("#error").html(data);
                        $(".orangeButton").hide();
                    }
            }
            });
        });
</script>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<form class="TransferForm" action="FrontController" method="POST">
    <select name="senderId" id="id">
        <c:forEach var="account" items="${accounts}">
            <option type="number" value="${account.accountId}">${account.accountId}: ${account.accountType}</option>
        </c:forEach>
    </select>
    <input type="number" class="id" name="recieverId" placeholder="Reciever Account ID" required />
    <input type="number" id="amount" name="amount" placeholder="Amount" required />
    <input type="text" name="messageToSender" placeholder="Message to your self" required/>
    <input type="text" name="messageToReciever" placeholder="Message to the reciever" required />
    <button class="orangeButton" type="submit" name="command" value="transfer">Transfer</button>
    <div class="error" id="error" style="font:18px solid; color:red;"></div>
</form>