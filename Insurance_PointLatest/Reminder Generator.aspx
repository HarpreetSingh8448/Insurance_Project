<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Reminder Generator.aspx.cs" Inherits="Insurance_PointLatest.Reminder_Generator" %>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <form id="form1" runat="server">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" Width="1260px" Height="261px">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                <asp:BoundField DataField="Policyno" HeaderText="Policyno" SortExpression="Policyno" />
                <asp:BoundField DataField="Policytype" HeaderText="Policytype" SortExpression="Policytype" />
                <asp:BoundField DataField="Fullname" HeaderText="Fullname" SortExpression="Fullname" />
                <asp:BoundField DataField="Phoneno" HeaderText="Phoneno" SortExpression="Phoneno" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:DemoDBConnectionString2 %>" DeleteCommand="DELETE FROM [Renewal_table] WHERE [Id] = @original_Id AND (([Policyno] = @original_Policyno) OR ([Policyno] IS NULL AND @original_Policyno IS NULL)) AND (([Policytype] = @original_Policytype) OR ([Policytype] IS NULL AND @original_Policytype IS NULL)) AND (([Fullname] = @original_Fullname) OR ([Fullname] IS NULL AND @original_Fullname IS NULL)) AND (([Phoneno] = @original_Phoneno) OR ([Phoneno] IS NULL AND @original_Phoneno IS NULL))" InsertCommand="INSERT INTO [Renewal_table] ([Policyno], [Policytype], [Fullname], [Phoneno]) VALUES (@Policyno, @Policytype, @Fullname, @Phoneno)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Renewal_table]" UpdateCommand="UPDATE [Renewal_table] SET [Policyno] = @Policyno, [Policytype] = @Policytype, [Fullname] = @Fullname, [Phoneno] = @Phoneno WHERE [Id] = @original_Id AND (([Policyno] = @original_Policyno) OR ([Policyno] IS NULL AND @original_Policyno IS NULL)) AND (([Policytype] = @original_Policytype) OR ([Policytype] IS NULL AND @original_Policytype IS NULL)) AND (([Fullname] = @original_Fullname) OR ([Fullname] IS NULL AND @original_Fullname IS NULL)) AND (([Phoneno] = @original_Phoneno) OR ([Phoneno] IS NULL AND @original_Phoneno IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_Id" Type="Int32" />
                <asp:Parameter Name="original_Policyno" Type="String" />
                <asp:Parameter Name="original_Policytype" Type="String" />
                <asp:Parameter Name="original_Fullname" Type="String" />
                <asp:Parameter Name="original_Phoneno" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Policyno" Type="String" />
                <asp:Parameter Name="Policytype" Type="String" />
                <asp:Parameter Name="Fullname" Type="String" />
                <asp:Parameter Name="Phoneno" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Policyno" Type="String" />
                <asp:Parameter Name="Policytype" Type="String" />
                <asp:Parameter Name="Fullname" Type="String" />
                <asp:Parameter Name="Phoneno" Type="String" />
                <asp:Parameter Name="original_Id" Type="Int32" />
                <asp:Parameter Name="original_Policyno" Type="String" />
                <asp:Parameter Name="original_Policytype" Type="String" />
                <asp:Parameter Name="original_Fullname" Type="String" />
                <asp:Parameter Name="original_Phoneno" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </form>
</asp:Content>
