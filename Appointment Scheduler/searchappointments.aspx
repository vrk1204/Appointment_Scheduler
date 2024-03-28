<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="searchappointments.aspx.cs" Inherits="searchappointments" Title="Untitled Page"  Trace="true"  %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<h2>Search Appointments</h2>
<p />
Title : 
    <asp:TextBox ID="txtTitle" runat="server"></asp:TextBox>
    Text :  <asp:TextBox ID="txtText" runat="server"></asp:TextBox>
    <p />
    <asp:Button ID="btnSearch" runat="server" Text="Search" />
    <p />
    <asp:GridView ID="GridView1" runat="server" DataSourceID="ObjectDataSource1">
    </asp:GridView>
    <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" 
            SelectMethod="SearchAppointments" TypeName="AppointmentsDAL">
        <SelectParameters>
            <asp:SessionParameter Name="username" SessionField="username" Type="String" />
            <asp:ControlParameter ControlID="txtTitle" Name="title" PropertyName="Text" 
                Type="String" />
            <asp:ControlParameter ControlID="txtText" Name="text" PropertyName="Text" 
                Type="String" />
        </SelectParameters>
        </asp:ObjectDataSource>
</asp:Content>

