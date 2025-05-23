<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Payment Management.aspx.cs" Inherits="Insurance_PointLatest.Payment_Management" %>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">


    <form id="form1" runat="server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" Height="239px" Width="1353px">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
            <asp:BoundField DataField="Cardnumber" HeaderText="Cardnumber" SortExpression="Cardnumber" />
            <asp:BoundField DataField="Expirydate" HeaderText="Expirydate" SortExpression="Expirydate" />
            <asp:BoundField DataField="Cvv" HeaderText="Cvv" SortExpression="Cvv" />
            <asp:BoundField DataField="Cardholdername" HeaderText="Cardholdername" SortExpression="Cardholdername" />
            <asp:BoundField DataField="Paymentmethod" HeaderText="Paymentmethod" SortExpression="Paymentmethod" />
            <asp:BoundField DataField="PolicyNo" HeaderText="PolicyNo" SortExpression="PolicyNo" />
            <asp:BoundField DataField="transactionId" HeaderText="transactionId" SortExpression="transactionId" />
            <asp:BoundField DataField="status" HeaderText="status" SortExpression="status" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:DemoDBConnectionString2 %>" DeleteCommand="DELETE FROM [customer_paymentdetails] WHERE [Id] = @original_Id AND (([Cardnumber] = @original_Cardnumber) OR ([Cardnumber] IS NULL AND @original_Cardnumber IS NULL)) AND (([Expirydate] = @original_Expirydate) OR ([Expirydate] IS NULL AND @original_Expirydate IS NULL)) AND (([Cvv] = @original_Cvv) OR ([Cvv] IS NULL AND @original_Cvv IS NULL)) AND (([Cardholdername] = @original_Cardholdername) OR ([Cardholdername] IS NULL AND @original_Cardholdername IS NULL)) AND (([Paymentmethod] = @original_Paymentmethod) OR ([Paymentmethod] IS NULL AND @original_Paymentmethod IS NULL)) AND (([PolicyNo] = @original_PolicyNo) OR ([PolicyNo] IS NULL AND @original_PolicyNo IS NULL)) AND (([transactionId] = @original_transactionId) OR ([transactionId] IS NULL AND @original_transactionId IS NULL)) AND (([status] = @original_status) OR ([status] IS NULL AND @original_status IS NULL))" InsertCommand="INSERT INTO [customer_paymentdetails] ([Cardnumber], [Expirydate], [Cvv], [Cardholdername], [Paymentmethod], [PolicyNo], [transactionId], [status]) VALUES (@Cardnumber, @Expirydate, @Cvv, @Cardholdername, @Paymentmethod, @PolicyNo, @transactionId, @status)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [customer_paymentdetails]" UpdateCommand="UPDATE [customer_paymentdetails] SET [Cardnumber] = @Cardnumber, [Expirydate] = @Expirydate, [Cvv] = @Cvv, [Cardholdername] = @Cardholdername, [Paymentmethod] = @Paymentmethod, [PolicyNo] = @PolicyNo, [transactionId] = @transactionId, [status] = @status WHERE [Id] = @original_Id AND (([Cardnumber] = @original_Cardnumber) OR ([Cardnumber] IS NULL AND @original_Cardnumber IS NULL)) AND (([Expirydate] = @original_Expirydate) OR ([Expirydate] IS NULL AND @original_Expirydate IS NULL)) AND (([Cvv] = @original_Cvv) OR ([Cvv] IS NULL AND @original_Cvv IS NULL)) AND (([Cardholdername] = @original_Cardholdername) OR ([Cardholdername] IS NULL AND @original_Cardholdername IS NULL)) AND (([Paymentmethod] = @original_Paymentmethod) OR ([Paymentmethod] IS NULL AND @original_Paymentmethod IS NULL)) AND (([PolicyNo] = @original_PolicyNo) OR ([PolicyNo] IS NULL AND @original_PolicyNo IS NULL)) AND (([transactionId] = @original_transactionId) OR ([transactionId] IS NULL AND @original_transactionId IS NULL)) AND (([status] = @original_status) OR ([status] IS NULL AND @original_status IS NULL))">
        <DeleteParameters>
            <asp:Parameter Name="original_Id" Type="Int32" />
            <asp:Parameter Name="original_Cardnumber" Type="String" />
            <asp:Parameter Name="original_Expirydate" Type="String" />
            <asp:Parameter Name="original_Cvv" Type="String" />
            <asp:Parameter Name="original_Cardholdername" Type="String" />
            <asp:Parameter Name="original_Paymentmethod" Type="String" />
            <asp:Parameter Name="original_PolicyNo" Type="String" />
            <asp:Parameter Name="original_transactionId" Type="String" />
            <asp:Parameter Name="original_status" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Cardnumber" Type="String" />
            <asp:Parameter Name="Expirydate" Type="String" />
            <asp:Parameter Name="Cvv" Type="String" />
            <asp:Parameter Name="Cardholdername" Type="String" />
            <asp:Parameter Name="Paymentmethod" Type="String" />
            <asp:Parameter Name="PolicyNo" Type="String" />
            <asp:Parameter Name="transactionId" Type="String" />
            <asp:Parameter Name="status" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Cardnumber" Type="String" />
            <asp:Parameter Name="Expirydate" Type="String" />
            <asp:Parameter Name="Cvv" Type="String" />
            <asp:Parameter Name="Cardholdername" Type="String" />
            <asp:Parameter Name="Paymentmethod" Type="String" />
            <asp:Parameter Name="PolicyNo" Type="String" />
            <asp:Parameter Name="transactionId" Type="String" />
            <asp:Parameter Name="status" Type="String" />
            <asp:Parameter Name="original_Id" Type="Int32" />
            <asp:Parameter Name="original_Cardnumber" Type="String" />
            <asp:Parameter Name="original_Expirydate" Type="String" />
            <asp:Parameter Name="original_Cvv" Type="String" />
            <asp:Parameter Name="original_Cardholdername" Type="String" />
            <asp:Parameter Name="original_Paymentmethod" Type="String" />
            <asp:Parameter Name="original_PolicyNo" Type="String" />
            <asp:Parameter Name="original_transactionId" Type="String" />
            <asp:Parameter Name="original_status" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
</form>


</asp:Content>
