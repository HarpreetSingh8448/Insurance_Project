<%@ Page Title="" Language="C#" MasterPageFile="~/Test.Master" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="Insurance_PointLatest.Registration" %>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
<style>   
 body {
        background-color: #f0f8ff;
    }
    #registration-container {
        width: 50%;
        margin: 80px auto;
        padding: 30px;
        background-color: #2c3e50;
        color: #ecf0f1;
        border-radius: 15px;
        box-shadow: 0 8px 16px rgba(0, 0, 0, 0.2);
        font-family: Arial, sans-serif;
    }
    #registration-container h2 {
        text-align: center;
        margin-bottom: 20px;
        color: #1abc9c;
    }
    #registration-container label {
        display: block;
        margin: 10px 0 5px;
    }
    #registration-container input[type="text"],
    #registration-container input[type="email"],
    #registration-container input[type="tel"],
    #registration-container input[type="date"],
    #registration-container select {
        width: calc(100% - 20px);
        padding: 12px;
        margin: 8px 10px;
        border: none;
        border-radius: 5px;
        background-color: #34495e;
        color: #ecf0f1;
    }
    #registration-container button {
        width: calc(100% - 20px);
        margin: 10px;
        padding: 12px;
        background-color: #1abc9c;
        color: white;
        border: none;
        border-radius: 5px;
        cursor: pointer;
        transition: background 0.3s ease;
    }
    #registration-container button:hover {
        background-color: #16a085;
    }
</style>
    <div id="registration-container">
        <h2>Registration Form</h2>
        <form runat="server">
   
            <asp:Label ID="FirstNameLabel" runat="server" Text="first name: * " ></asp:Label> 

            <asp:TextBox ID="txtFirstname" runat="server" ></asp:TextBox>

  
            <asp:Label ID="MiddleNameLabel" runat="server" Text="middle name: *" Font-Bold="True"></asp:Label> 
 
            <asp:TextBox ID="txtMiddlename" runat="server"></asp:TextBox>


              <asp:Label ID="LastNameLabel" runat="server" Text="last name: *" ></asp:Label> 
 
            <asp:TextBox ID="txtLastname" runat="server" ></asp:TextBox>


               <asp:Label ID="UsernameLabel" runat="server" Text="User name: *" ></asp:Label> 
 
               <asp:TextBox ID="txtUsername" runat="server" ></asp:TextBox>

  
              <asp:Label ID="DateofBirthLabel" runat="server" Text="date of birth: *" ></asp:Label> 
 
               <asp:TextBox ID="txtDateofBirth" runat="server" ></asp:TextBox>


              <asp:Label ID="GenderLabel" runat="server" Text="gender: *" ></asp:Label>
            <asp:DropDownList ID="txtGender" runat="server">
               <asp:ListItem Text="male"></asp:ListItem>
              <asp:ListItem Text="female"></asp:ListItem>
                <asp:ListItem Text="other"></asp:ListItem>
            </asp:DropDownList>

  
             <asp:Label ID="AddressLabel" runat="server" Text="address: *" ></asp:Label> 
 
  <asp:TextBox ID="txtAddress" runat="server" ></asp:TextBox>


    
             <asp:Label ID="CityLabel" runat="server" Text="city: *" ></asp:Label> 
 
  <asp:TextBox ID="txtCity" runat="server" ></asp:TextBox>



 
             <asp:Label ID="EmailidLabel" runat="server" Text="email id: *" ></asp:Label> 
 
  <asp:TextBox ID="txtEmailid" runat="server" ></asp:TextBox>


             <asp:Label ID="PhonenoLabel" runat="server" Text="phone no: *" ></asp:Label> 
 
      <asp:TextBox ID="txtPhoneno" runat="server" ></asp:TextBox>


 
             <asp:Label ID="MobileNoLabel" runat="server" Text="mobile no: *" ></asp:Label> 
 
           <asp:TextBox ID="txtMobileno" runat="server" ></asp:TextBox>


              <asp:Label ID="PasswordLabel" runat="server" Text="password: *" ></asp:Label> 
 
            <asp:TextBox ID="txtPassword" runat="server" ></asp:TextBox>

             <asp:Button ID="btnRegister" runat="server" OnClick="btnRegister_Click" Text="Register"></asp:Button>
                         <br /> 

             <asp:Label ID="lblErrorMessage" runat="server" ForeColor="#CC3300"></asp:Label>
        </form>
    </div>
</asp:Content>
