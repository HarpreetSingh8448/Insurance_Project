<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Customer Management.aspx.cs" Inherits="Insurance_PointLatest.Customer_Management" %>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <div>
  
    <form id="form1" runat="server">
       
  
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" Height="245px" Width="1463px">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                <asp:BoundField DataField="Firstname" HeaderText="Firstname" SortExpression="Firstname" />
                <asp:BoundField DataField="Middlename" HeaderText="Middlename" SortExpression="Middlename" />
                <asp:BoundField DataField="Lastname" HeaderText="Lastname" SortExpression="Lastname" />
                <asp:BoundField DataField="Username" HeaderText="Username" SortExpression="Username" />
                <asp:BoundField DataField="DateofBirth" HeaderText="DateofBirth" SortExpression="DateofBirth" />
                <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
                <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
                <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
                <asp:BoundField DataField="Emailid" HeaderText="Emailid" SortExpression="Emailid" />
                <asp:BoundField DataField="Phoneno" HeaderText="Phoneno" SortExpression="Phoneno" />
                <asp:BoundField DataField="Mobileno" HeaderText="Mobileno" SortExpression="Mobileno" />
                <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:DemoDBConnectionString2 %>" DeleteCommand="DELETE FROM [Vcustomer_details] WHERE [Id] = @original_Id AND (([Firstname] = @original_First_name) OR ([Firstname] IS NULL AND @original_First_name IS NULL)) AND (([Middlename] = @original_Middle_name) OR ([Middlename] IS NULL AND @original_Middle_name IS NULL)) AND (([Lastname] = @original_Last_name) OR ([Lastname] IS NULL AND @original_Last_name IS NULL)) AND (([Username] = @original_User_name) OR ([Username] IS NULL AND @original_User_name IS NULL)) AND (([DateofBirth] = @original_Date_of_Birth) OR ([DateofBirth] IS NULL AND @original_Date_of_Birth IS NULL)) AND (([Gender] = @original_Gender) OR ([Gender] IS NULL AND @original_Gender IS NULL)) AND (([Address] = @original_Address) OR ([Address] IS NULL AND @original_Address IS NULL)) AND (([City] = @original_City) OR ([City] IS NULL AND @original_City IS NULL)) AND (([Emailid] = @original_Email_id) OR ([Emailid] IS NULL AND @original_Email_id IS NULL)) AND (([Phoneno] = @original_Phone_no) OR ([Phoneno] IS NULL AND @original_Phone_no IS NULL)) AND (([Mobileno] = @original_Mobile_no) OR ([Mobileno] IS NULL AND @original_Mobile_no IS NULL)) AND (([Password] = @original_Password) OR ([Password] IS NULL AND @original_Password IS NULL))" InsertCommand="INSERT INTO [Vcustomer_details] ([Firstname], [Middlename], [Lastname], [Username], [DateofBirth], [Gender], [Address], [City], [Emailid], [Phoneno], [Mobileno], [Password]) VALUES (@First_name, @Middle_name, @Last_name, @User_name, @Date_of_Birth, @Gender, @Address, @City, @Email_id, @Phone_no, @Mobile_no, @Password)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Vcustomer_details]" UpdateCommand="UPDATE [Vcustomer_details] SET [Firstname] = @First_name, [Middlename] = @Middle_name, [Lastname] = @Last_name, [Username] = @User_name, [DateofBirth] = @Date_of_Birth, [Gender] = @Gender, [Address] = @Address, [City] = @City, [Emailid] = @Email_id, [Phoneno] = @Phone_no, [Mobileno] = @Mobile_no, [Password] = @Password WHERE [Id] = @original_Id AND (([Firstname] = @original_First_name) OR ([Firstname] IS NULL AND @original_First_name IS NULL)) AND (([Middlename] = @original_Middle_name) OR ([Middlename] IS NULL AND @original_Middle_name IS NULL)) AND (([Lastname] = @original_Last_name) OR ([Lastname] IS NULL AND @original_Last_name IS NULL)) AND (([Username] = @original_User_name) OR ([Username] IS NULL AND @original_User_name IS NULL)) AND (([DateofBirth] = @original_Date_of_Birth) OR ([DateofBirth] IS NULL AND @original_Date_of_Birth IS NULL)) AND (([Gender] = @original_Gender) OR ([Gender] IS NULL AND @original_Gender IS NULL)) AND (([Address] = @original_Address) OR ([Address] IS NULL AND @original_Address IS NULL)) AND (([City] = @original_City) OR ([City] IS NULL AND @original_City IS NULL)) AND (([Emailid] = @original_Email_id) OR ([Emailid] IS NULL AND @original_Email_id IS NULL)) AND (([Phoneno] = @original_Phone_no) OR ([Phoneno] IS NULL AND @original_Phone_no IS NULL)) AND (([Mobileno] = @original_Mobile_no) OR ([Mobileno] IS NULL AND @original_Mobile_no IS NULL)) AND (([Password] = @original_Password) OR ([Password] IS NULL AND @original_Password IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_Id" Type="Int32" />
                <asp:Parameter Name="original_First_name" Type="String" />
                <asp:Parameter Name="original_Middle_name" Type="String" />
                <asp:Parameter Name="original_Last_name" Type="String" />
                <asp:Parameter Name="original_User_name" Type="String" />
                <asp:Parameter DbType="Date" Name="original_Date_of_Birth" />
                <asp:Parameter Name="original_Gender" Type="String" />
                <asp:Parameter Name="original_Address" Type="String" />
                <asp:Parameter Name="original_City" Type="String" />
                <asp:Parameter Name="original_Email_id" Type="String" />
                <asp:Parameter Name="original_Phone_no" Type="String" />
                <asp:Parameter Name="original_Mobile_no" Type="String" />
                <asp:Parameter Name="original_Password" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="First_name" Type="String" />
                <asp:Parameter Name="Middle_name" Type="String" />
                <asp:Parameter Name="Last_name" Type="String" />
                <asp:Parameter Name="User_name" Type="String" />
                <asp:Parameter DbType="Date" Name="Date_of_Birth" />
                <asp:Parameter Name="Gender" Type="String" />
                <asp:Parameter Name="Address" Type="String" />
                <asp:Parameter Name="City" Type="String" />
                <asp:Parameter Name="Email_id" Type="String" />
                <asp:Parameter Name="Phone_no" Type="String" />
                <asp:Parameter Name="Mobile_no" Type="String" />
                <asp:Parameter Name="Password" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="First_name" Type="String" />
                <asp:Parameter Name="Middle_name" Type="String" />
                <asp:Parameter Name="Last_name" Type="String" />
                <asp:Parameter Name="User_name" Type="String" />
                <asp:Parameter DbType="Date" Name="Date_of_Birth" />
                <asp:Parameter Name="Gender" Type="String" />
                <asp:Parameter Name="Address" Type="String" />
                <asp:Parameter Name="City" Type="String" />
                <asp:Parameter Name="Email_id" Type="String" />
                <asp:Parameter Name="Phone_no" Type="String" />
                <asp:Parameter Name="Mobile_no" Type="String" />
                <asp:Parameter Name="Password" Type="String" />
                <asp:Parameter Name="original_Id" Type="Int32" />
                <asp:Parameter Name="original_First_name" Type="String" />
                <asp:Parameter Name="original_Middle_name" Type="String" />
                <asp:Parameter Name="original_Last_name" Type="String" />
                <asp:Parameter Name="original_User_name" Type="String" />
                <asp:Parameter DbType="Date" Name="original_Date_of_Birth" />
                <asp:Parameter Name="original_Gender" Type="String" />
                <asp:Parameter Name="original_Address" Type="String" />
                <asp:Parameter Name="original_City" Type="String" />
                <asp:Parameter Name="original_Email_id" Type="String" />
                <asp:Parameter Name="original_Phone_no" Type="String" />
                <asp:Parameter Name="original_Mobile_no" Type="String" />
                <asp:Parameter Name="original_Password" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <br />
        <br />
        </form>
    </div>
</asp:Content>
