<%@ Page Title="" Language="C#" MasterPageFile="~/Customer.Master" AutoEventWireup="true" CodeBehind="Renewal page.aspx.cs" Inherits="Insurance_PointLatest.Renewal_page" %>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
    body {
        background-color: #f0f8ff; /* Light theme background */
        font-family: Arial, sans-serif;
        font-size: 18px;
    }
    #policy-container {
        width: 40%;
        margin: 80px auto;
        padding: 40px;
        background-color: #2c3e50; /* Darker blue background for container */
        color: #ecf0f1;
        border-radius: 15px;
        box-shadow: 0 8px 16px rgba(0, 0, 0, 0.2);
    }
    #policy-container h2 {
        text-align: center;
        margin-bottom: 20px;
        color: #1abc9c;
        font-size: 24px;
    }
    .policy-card {
        display: flex;
        flex-direction: column;
        align-items: center;
    }
    .form-group {
        width: 100%;
        display: flex;
        flex-direction: column;
        align-items: center;
        margin-bottom: 20px;
    }
    .form-group label {
        font-weight: bold;
        margin-bottom: 8px;
        font-size: 20px;
    }
    .form-group input, .form-group select {
        width: 85%;
        padding: 12px;
        font-size: 18px;
        border-radius: 5px;
        border: none;
        text-align: center;
    }
    #btnRenewal {
        background-color: #1abc9c;
        color: white;
        padding: 12px 20px;
        border: none;
        border-radius: 5px;
        cursor: pointer;
        font-size: 18px;
    }
    #btnRenewal:hover {
        background-color: #16a085;
    }
    #lblErrorMessage {
        margin-top: 12px;
        color: #ff4d4d;
        font-weight: bold;
        font-size: 18px;
    }
</style>
<div id="policy-container">
    <h2>Policy Renewal</h2>
    <div class="policy-card">
        <form runat="server">
            <div class="form-group">
                <asp:Label ID="PolicynoLabel" runat="server" Text="Policy no: *"></asp:Label>
                <asp:TextBox ID="txtPolicyno" runat="server"></asp:TextBox>
            </div>
            
            <div class="form-group">
                <asp:Label ID="PolicytypeLabel" runat="server" Text="Policy type: *"></asp:Label>
                <asp:DropDownList ID="ddlPolicyType" runat="server">
                    <asp:ListItem Text="Term Insurance" Value="Term Insurance"></asp:ListItem>
                    <asp:ListItem Text="Whole Life Insurance" Value="Whole Life Insurance"></asp:ListItem>
                    <asp:ListItem Text="Child Insurance" Value="Child Insurance"></asp:ListItem>
                    <asp:ListItem Text="Retirement Plan" Value="Retirement"></asp:ListItem>
                    <asp:ListItem Text="Endowment Plan" Value="Endowment"></asp:ListItem>
                    <asp:ListItem Text="Money Back Plan" Value="Money Back"></asp:ListItem>
                </asp:DropDownList>
            </div>
            
            <div class="form-group">
                <asp:Label ID="FullNameLabel" runat="server" Text="Full name: *"></asp:Label>
                <asp:TextBox ID="txtFullname" runat="server"></asp:TextBox>
            </div>
            
            <div class="form-group">
                <asp:Label ID="PhonenoLabel" runat="server" Text="Phone no: *"></asp:Label>
                <asp:TextBox ID="txtPhoneno" runat="server"></asp:TextBox>
            </div>
            
            <div class="form-group">
                <asp:Button ID="btnRenewal" runat="server" OnClick="btnRenewal_Click" Text="Apply for Renewal"></asp:Button>
            </div>
            
            <div class="form-group">
                <asp:Label ID="lblErrorMessage" runat="server"></asp:Label>
            </div>
        </form>
    </div>
</div>


</asp:Content>
