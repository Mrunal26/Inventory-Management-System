<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Departments.aspx.cs" Inherits="Departments" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <asp:Button ID="Add" runat="server" Text="Add" PostBackUrl="~/Add.aspx" />
    &nbsp;&nbsp;
    <asp:Button ID="Update" runat="server" Text="Update" 
        PostBackUrl="~/Update.aspx" />
    &nbsp;&nbsp;&nbsp;
    <asp:Button ID="Delete" runat="server" Text="Delete" />
    &nbsp;&nbsp;&nbsp;
    <asp:Button ID="View" runat="server" Text="View" 
    PostBackUrl="~/view.aspx" />
     

&nbsp;&nbsp;&nbsp; 
     

</asp:Content>

