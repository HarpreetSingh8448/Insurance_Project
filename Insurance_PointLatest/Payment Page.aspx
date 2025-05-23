<%@ Page Title="" Language="C#" MasterPageFile="~/Customer.Master" AutoEventWireup="true" CodeBehind="Payment Page.aspx.cs" Inherits="Insurance_PointLatest.Payment_Page" %>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  <style>
    #payment-container {
        display: flex;
        justify-content: center;
        align-items: center;
        height: auto; /* Adjust as needed */
        background-color: #f3f4f6;
        font-family: Arial, sans-serif;
        padding: 20px;

    }
    .card {
        background: white;
        padding: 20px;
        border-radius: 12px;
        box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
        width: 100%;
        max-width: 400px;
    }
    .card h2 {
        margin-bottom: 20px;
    }
    .input-group {
        margin-bottom: 15px;
    }
    .input-group label {
        display: block;
        margin-bottom: 5px;
    }
    .input-group input, .input-group select {
        width: 100%;
        padding: 10px;
        border: 1px solid #ccc;
        border-radius: 6px;
    }
    .btn1 {
        width: 100%;
        padding: 10px;
        background-color: #007bff;
        color: white;
        border: none;
        border-radius: 6px;
        cursor: pointer;
    }
    .btn1:hover {
        background-color: #0056b3;
    } 
</style> --> 
<div id="payment-container">
    <form id="paymentForm" runat="server">
        <div class="card">
            <h2>Payment Details</h2>
            <div class="input-group">
                <label for="card-number">Card Number</label>
                <asp:TextBox ID="txtCardNumber" runat="server" CssClass="input" placeholder="1234 5678 9012 3456"></asp:TextBox>
            </div>
            <div class="input-group">
                <label for="expiry-date">Expiry Date</label>
                <asp:TextBox ID="txtExpiryDate" runat="server" CssClass="input" placeholder="MM/YY"></asp:TextBox>
            </div>
            <div class="input-group">
                <label for="cvv">CVV</label>
                <asp:TextBox ID="txtCVV" runat="server" CssClass="input" TextMode="Password" placeholder="***"></asp:TextBox>
            </div>
            <div class="input-group">
                <label for="card-holder">Cardholder Name</label>
                <asp:TextBox ID="txtCardHolder" runat="server" CssClass="input" placeholder="John Doe"></asp:TextBox>
            </div>
            <div class="input-group">
                <label for="payment-method">Payment Method</label>
                <asp:DropDownList ID="ddlPaymentMethod" runat="server">
                    <asp:ListItem Value="credit">Credit Card</asp:ListItem>
                    <asp:ListItem Value="debit">Debit Card</asp:ListItem>
                    <asp:ListItem Value="paypal">PayPal</asp:ListItem>
                </asp:DropDownList>
            </div>
            <asp:Button ID="btnPayNow" runat="server" CssClass="btn1" Text="Pay Now" OnClick="btnPayNow_Click" />
        </div>
         <asp:Label ID="lblErrorMessage" runat="server" ForeColor="#CC3300"></asp:Label>  
    </form>
</div>

</asp:Content>
