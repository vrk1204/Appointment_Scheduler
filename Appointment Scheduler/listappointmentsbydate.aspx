<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="listappointmentsbydate.aspx.cs" Inherits="listappointmentsbydate" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<center>
<h3>Select Date From Calendar Below </h3>
    <asp:Calendar ID="Calendar1" runat="server" 
        onselectionchanged="Calendar1_SelectionChanged"></asp:Calendar>
    <br />
    <asp:GridView ID="GridView1" runat="server">
    </asp:GridView>
</center>
</asp:Content>

