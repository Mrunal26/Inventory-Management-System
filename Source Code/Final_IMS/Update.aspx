<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Update.aspx.cs" Inherits="Update" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>

        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" DataKeyNames="item_id" OnPageIndexChanging="GridView1_PageIndexChanging" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowDeleting="GridView1_RowDeleting" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating">
    <Columns>
        <asp:BoundField DataField="item_id" HeaderText="Item ID" />
        <asp:BoundField DataField="item_name" HeaderText=" Item Name" />
        <asp:BoundField DataField="item_total_quantity" HeaderText="Total Quantity" />
        <asp:BoundField DataField="item_status" HeaderText="Status" />
         <asp:BoundField DataField="item_used_quantity" HeaderText="Used Quantity" />
          <asp:BoundField DataField="item_balance_quantity" HeaderText="Balance Quantity" />
           <asp:BoundField DataField="item_price" HeaderText="Item price" />
            <asp:BoundField DataField="item_tot_price" HeaderText="Total price" />
             <asp:BoundField DataField="item_vendor" HeaderText="Vendor" />
        <asp:CommandField ShowEditButton="true" />
        <asp:CommandField ShowDeleteButton="true" />
        </Columns>
    </asp:GridView>


    
      <%--  <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            DataKeyNames="item_id" DataSourceID="SqlDataSource1">
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
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:InventoryManagementConnectionString %>" 
            SelectCommand="SELECT * FROM [Inventory]"></asp:SqlDataSource>--%>
    
    </div>
    </form>
</body>
</html>
