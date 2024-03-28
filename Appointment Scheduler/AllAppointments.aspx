<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<h2>All Appointments</h2>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" DataSourceID="ObjectDataSource1" PageSize="5">
    </asp:GridView>
    <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" SelectMethod="GetAllAppointments" TypeName="AppointmentsDAL">
        <SelectParameters>
            <asp:SessionParameter Name="username" SessionField="username" Type="String" />
        </SelectParameters>
    </asp:ObjectDataSource>
</asp:Content>

