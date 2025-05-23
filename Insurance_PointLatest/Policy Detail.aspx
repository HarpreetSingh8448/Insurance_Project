<%@ Page Title="" Language="C#" MasterPageFile="~/Customer.Master" AutoEventWireup="true" CodeBehind="Policy Detail.aspx.cs" Inherits="Insurance_PointLatest.Policy_Detail" %>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <style>
     body {
         background-color: #f0f8ff; /* Light theme background */
     }
     #policy-container {
         width: 40%;
         margin: 80px auto;
         padding: 40px;
         background-color: #2c3e50; /* Darker blue background for container */
         color: #ecf0f1;
         border-radius: 15px;
         box-shadow: 0 8px 16px rgba(0, 0, 0, 0.2);
         font-family: Arial, sans-serif;
     }
     #policy-container h2 {
         text-align: center;
         margin-bottom: 20px;
         color: #1abc9c;
     }
     .policy-card h3 {
    margin: 0 0 10px;
    color: #1abc9c;
    text-align:center;

}
         .auto-style1 {
             height: 378px;
         }
         .auto-style2 {
             width: 38%;
             height: 366px;
         }
         </style>
      <div id="policy-container" class="auto-style2">
          <div class="policy-card">
              <div>
               <form runat="server" class="auto-style1">

        <label for="poilcyno">Policy no :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;    </label>
        <asp:Label ID="lblpolicyno" runat="server" ></asp:Label>
                   <br><br >
        <label for="fullName">Full Name</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="fullName" runat="server" Required="true" Width="214px"></asp:TextBox>
        <br><br>
        
        <label for="email">Email Id&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  </label>
        <asp:TextBox ID="email" runat="server" TextMode="Email" Required="true" Width="214px"></asp:TextBox>
        <br><br>
        
        <label for="phone">Phone Number</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="phone" runat="server" TextMode="Phone" Required="true" Width="213px"></asp:TextBox>
        <br><br>
        
        <label for="policyType">Select Policy Type</label>&nbsp;&nbsp;&nbsp;
        <asp:DropDownList ID="policyType" runat="server" Required="true">
            <asp:ListItem Value="term">Term Insurance</asp:ListItem>
            <asp:ListItem Value="whole-life">Whole Life Insurance</asp:ListItem>
            <asp:ListItem Value="child">Child Insurance</asp:ListItem>
            <asp:ListItem Value="retirement">Retirement Plan</asp:ListItem>
            <asp:ListItem Value="endowment">Endowment Plan</asp:ListItem>
            <asp:ListItem Value="money-back">Money Back Plan</asp:ListItem>
        </asp:DropDownList>
                   <br />
        <br>    
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;    
        <asp:Button ID="submitButton" runat="server" Text="Proceed to Payment" OnClick="SubmitForm" />
                   &nbsp;<br> 
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
          <asp:Label ID="lblErrorMessage" runat="server" ForeColor="#CC3300"></asp:Label>  
                   <br >
    </form>
                  </div>
          </div>
          </div>
</asp:Content>
