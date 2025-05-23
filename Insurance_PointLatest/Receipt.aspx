 <%@ Page Title="" Language="C#" MasterPageFile="~/Customer.Master" AutoEventWireup="true" CodeBehind="Receipt.aspx.cs" Inherits="Insurance_PointLatest.Receipt" %>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
         body {
     background-color: #f0f8ff; /* Light theme background */
 }
 #policy-container {
     width: 70%;
     margin: 80px auto;
     padding: 40px;
     background-color: #2c3e50; /* Darker blue background for container */
     color: #ecf0f1;
     border-radius: 15px;
     box-shadow: 0 8px 16px rgba(0, 0, 0, 0.2);
     font-family: Arial, sans-serif;
 }
 #policy-container h1 {
     text-align: center;
     margin-bottom: 20px;
     color: #1abc9c;
 }
 .policy-card {
     background-color: #34495e;
     padding: 20px;
     margin: 15px 0;
     border-radius: 10px;
     cursor: pointer;
     transition: background 0.3s ease;
 }
 .policy-card:hover {
     background-color: #16a085;
 }
    </style>
    <div id="policy-container">
        <div id="policy-card">
      <label for="transactionid">Transaction id :    </label>
  <asp:Label ID="lbltransactionid" runat="server" ></asp:Label>
            <br />
                <label for="policyno">Policy no :    </label>
            <asp:Label ID="lblpolicyno" runat="server" ></asp:Label>

    <h1>Payment succesful</h1>
            </div>
        </div>
</asp:Content>
