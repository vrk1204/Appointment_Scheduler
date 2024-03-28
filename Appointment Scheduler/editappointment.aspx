<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="editappointment.aspx.cs" Inherits="editappointment" Title="Edit Appointment" Trace="true" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<h2>Edit Appointment</h2>
    <asp:FormView ID="FormView1" runat="server" DataSourceID="ObjectDataSource1" DefaultMode="Edit" DataKeyNames="appid" >
      <EditItemTemplate>
       <table border="1" cellpadding="5pt">
        <tr>
         <td>Title : </td>
         <td> 
          <asp:TextBox ID="title" runat="server"  Text='<%#Bind("title")%>'></asp:TextBox>
         </td>
        </tr>
        <tr>
         <td>Text : </td>
         <td> 
          <asp:TextBox  TextMode="Multiline" ID="text" runat="server"  Text='<%#Bind("text")%>'  Rows="4" Columns="30"></asp:TextBox>
         </td>
        </tr>
        <tr>
         <td>Notify Before Hours : </td>
         <td> 
          <asp:TextBox  ID="notifybeforehours" runat="server"  Text='<%#Bind("notifybeforehours")%>'></asp:TextBox>
         </td>
        </tr>
       </table>
       <p />
       <asp:Button id="btnUpdate" CommandName="Update" runat="server" Text="Update" />
       <asp:Button id="btnCancel" CommandName="Cancel" runat="server" Text="Cancel" />
      </EditItemTemplate>
    </asp:FormView>
    
    <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" SelectMethod="GetAppointment" TypeName="AppointmentsDAL" UpdateMethod="UpdateAppointment">
        <UpdateParameters>
            <asp:Parameter Name="appid" Type="String" />
            <asp:Parameter Name="title" Type="String" />
            <asp:Parameter Name="text" Type="String" />
            <asp:Parameter Name="notifybeforehours" Type="String" />
        </UpdateParameters>
        <SelectParameters>
            <asp:QueryStringParameter Name="appid" QueryStringField="appid" Type="String" />
        </SelectParameters>
    </asp:ObjectDataSource>
</asp:Content>

