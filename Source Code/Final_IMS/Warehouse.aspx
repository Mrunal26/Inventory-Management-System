<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Warehouse.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        CURRENT COMPLETE DATA!!!</div>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        CellPadding="4" DataKeyNames="item_id" DataSourceID="SqlDataSource1" 
        ForeColor="#333333" GridLines="None" 
        onselectedindexchanged="GridView1_SelectedIndexChanged">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="item_id" HeaderText="item_id" InsertVisible="False" 
                ReadOnly="True" SortExpression="item_id" />
            <asp:BoundField DataField="item_name" HeaderText="item_name" 
                SortExpression="item_name" />
            <asp:BoundField DataField="item_total_quantity" 
                HeaderText="item_total_quantity" SortExpression="item_total_quantity" />
            <asp:BoundField DataField="item_status" HeaderText="item_status" 
                SortExpression="item_status" />
            <asp:BoundField DataField="item_used_quantity" HeaderText="item_used_quantity" 
                SortExpression="item_used_quantity" />
            <asp:BoundField DataField="item_balance_quantity" 
                HeaderText="item_balance_quantity" SortExpression="item_balance_quantity" />
            <asp:BoundField DataField="item_price" HeaderText="item_price" 
                SortExpression="item_price" />
            <asp:BoundField DataField="item_tot_price" HeaderText="item_tot_price" 
                SortExpression="item_tot_price" />
            <asp:BoundField DataField="item_vendor" HeaderText="item_vendor" 
                SortExpression="item_vendor" />
        </Columns>
        <EditRowStyle BackColor="#2461BF" />
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#EFF3FB" />
        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F5F7FB" />
        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
        <SortedDescendingCellStyle BackColor="#E9EBEF" />
        <SortedDescendingHeaderStyle BackColor="#4870BE" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:InventoryManagementConnectionString %>" 
        SelectCommand="SELECT * FROM [Inventory]"></asp:SqlDataSource>
    <br />
    </form>
</body>
</html>
