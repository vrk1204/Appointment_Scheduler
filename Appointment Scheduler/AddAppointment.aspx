<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="AddAppointment.aspx.cs" Inherits="AddAppointment" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h2> Add Appointment</h2>
    
    <table>
    <tr>
    <td>
     Appointment Title : 
    </td>
    <td>
        <asp:TextBox ID="txtTitle" runat="server"  size="30"></asp:TextBox>
    </td>
    </tr>
    
    <tr>
    <td>
     Appointment Text : 
    </td>
    <td>
        <asp:TextBox ID="txtText" runat="server"  TextMode="MultiLine" Rows="5" Columns ="30"></asp:TextBox>
    </td>
    </tr>
    
    <tr>
    <td>
     Appointment Date :  
    </td>
    <td>
        <asp:TextBox ID="txtDate" runat="server"  size="10"></asp:TextBox> (mm/dd/yy)
    </td>
    </tr>
    
    <tr>
    <td>
     Appointment  Time :  
    </td>
    <td>
        <asp:TextBox ID="txtTime" runat="server"  size="10"></asp:TextBox> (HH24:MM)
    </td>
    </tr>
    
    <tr>
    <td>
     Notify Hours Before :  
    </td>
    <td>
        <asp:TextBox ID="txtNHB" runat="server"  size="10"></asp:TextBox> 
    </td>
    </tr>
    
    </table>
    
    <p />
    <asp:Button ID="btnAdd" runat="server" Text="Add Appointment" 
            onclick="btnAdd_Click" />
    <p />
    <asp:Label ID="lblMsg" runat="server" Text=""></asp:Label>
    
</asp:Content>

