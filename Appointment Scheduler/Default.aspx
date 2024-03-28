<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" Title="Home Page" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<h2>Upcoming Appointments</h2>
    <p/>
    <asp:GridView ID="GridView1" runat="server" DataSourceID="ObjectDataSource1" DataKeyNames ="appid" AutoGenerateColumns="False">
        <HeaderStyle BackColor="#FF3300" Font-Bold="True" ForeColor="White" />
        <Columns>
            <asp:BoundField DataField="title" HeaderText="Title" />
            <asp:BoundField DataField="text" HeaderText="Text" />
            <asp:BoundField DataField="AppDate" HeaderText="App. Date" />
            <asp:BoundField DataField="Notifybeforehours" HeaderText="Notify Hours" />
            <asp:TemplateField ShowHeader="False">
                <ItemTemplate>
                    <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Delete"
                        onClientClick='return confirm("Do you really want to delete appointment")' Text="Delete"></asp:LinkButton>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:HyperLinkField DataNavigateUrlFields="appid" DataNavigateUrlFormatString="editappointment.aspx?appid={0}"
                Text="Edit " />
        </Columns>
    </asp:GridView>
    <center>
        &nbsp;</center>   
    <center>
     <a href="allappointments.aspx">[View All Appointments]</a>
    </center>
    <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" 
        SelectMethod="GetUpcomingAppointments" TypeName="AppointmentsDAL" DeleteMethod="DeleteAppointment">
        <SelectParameters>
            <asp:SessionParameter Name="username" SessionField="username" Type="String" />
        </SelectParameters>
        <DeleteParameters>
            <asp:Parameter Name="appid" Type="String" />
        </DeleteParameters>
    </asp:ObjectDataSource>
    <br />
 
</asp:Content>

