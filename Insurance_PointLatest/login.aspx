<%@ Page Title="" Language="C#" MasterPageFile="~/Test.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="Insurance_PointLatest.login1" %>
 <asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
    <style>
         body {
     background-color: #f0f8ff; /* Light theme background */
        #login-container {
            width: 100%;
            max-width: 350px;
            margin: 80px auto;
            padding: 30px;
            background-color: #2c3e50;
            color: #ecf0f1;
            border-radius: 15px;
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.2);
            font-family: Arial, sans-serif;
        }
        #login-container h2 {
            text-align: center;
            margin-bottom: 20px;
            color: #1abc9c;
        }
        #login-container input[type="text"],
        #login-container input[type="password"] {
            width: 100%;
            padding: 12px;
            margin: 8px 0;
            border: none;
            border-radius: 5px;
            background-color: #34495e;
            color: #ecf0f1;
        }
        #login-container button {
            width: 100%;
            padding: 12px;
            background-color: #1abc9c;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: background 0.3s ease;
        }
        #login-container button:hover {
            background-color: #16a085;
        }
        #login-container .checkbox-group {
            display: flex;
            align-items: center;
            gap: 5px;
            margin: 10px 0;
        }
        .my-button {
    background-color: #007bff; /* Blue background */
    color: white; /* White text */
    padding: 10px 20px; /* Padding */
    border: none; /* Remove default border */
    border-radius: 5px; /* Rounded corners */
    cursor: pointer; /* Pointer cursor on hover */
    font-size: 16px;
    align-items:center;
}

.my-button:hover {
    background-color: #0056b3; /* Darker blue on hover */
}

    </style>
    <script>
        function togglePassword() {
            const passwordField = document.getElementById("password");
            passwordField.type = passwordField.type === "password" ? "text" : "password";
        }
    </script>
    <div id="login-container">
        <h2>Login</h2>
        <form runat="server">
              <asp:Label ID="Usernamelabel" runat="server" Text="Username: *" ></asp:Label> 
 
            <asp:TextBox ID="txtUsername" runat="server" ></asp:TextBox>

          
              <asp:Label ID="Passwordlabel" runat="server" Text="Password: *" ></asp:Label> 
 
            <asp:TextBox ID="txtPassword" runat="server" ></asp:TextBox>

         <!--   <div class="checkbox-group">
                <input type="checkbox" id="show-password" onclick="togglePassword()">
                <label for="show-password">Show Password</label>
            </div>

            <div class="checkbox-group">
                <input type="checkbox" id="remember" name="remember">
                <label for="remember">Remember me</label>
            </div>  -->

       <!--     <button type="submit" runat="server">Login</button> -->
            <asp:Button ID="Button1" runat="server" Text="login" OnClick="Button1_Click" CssClass="my-button"/>
             <asp:Label ID="lblErrorMessage" runat="server" ForeColor="#CC3300"></asp:Label>
        </form>
    </div>        

</asp:Content>
