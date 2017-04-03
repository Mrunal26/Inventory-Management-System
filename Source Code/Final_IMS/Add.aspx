<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Add.aspx.cs" Inherits="Add" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 565px;
        }
        .style2
        {
            width: 425px;
        }
    </style>
</head>
<body>
     <form id="form1" runat="server">
    <div>
    
        here you can add items to the database..<br />
        <br />
        <table style="width:100%;">
            <tr>
                <td align="right" class="style2">
                    Name :</td>
                <td>
                    <asp:TextBox ID="item_name" runat="server"></asp:TextBox>
                &nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="item_name" ErrorMessage="*">Item Name should be entered</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td align="right" class="style2">
                    Total Quantity :</td>
                <td>
                    <asp:TextBox ID="tot_qty" runat="server"></asp:TextBox>
                &nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="tot_qty" ErrorMessage="*">Item&#39;s total quantity should be entered</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td align="right" class="style2">
                    Status :</td>
                <td class="style3" style="margin-left: 80px">
                    <asp:TextBox ID="sts" runat="server"></asp:TextBox>
                &nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                        ControlToValidate="sts" ErrorMessage="*">Item status should be entered</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td align="right" class="style2">
                    Used Quantity :</td>
                <td>
                    <asp:TextBox ID="used_qty" runat="server"></asp:TextBox>
                &nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                        ControlToValidate="used_qty" ErrorMessage="*">Item&#39;s used quantity should be entered</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td align="right" class="style2">
                    Balance Quantity :</td>
                <td>
                    <asp:TextBox ID="bal_qty" runat="server"></asp:TextBox>
                &nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                        ControlToValidate="bal_qty" ErrorMessage="*">The balance quantity should be entered</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td align="right" class="style2">
                    Vendor:</td>
                <td>
                    <asp:TextBox ID="vendor" runat="server" ontextchanged="vendor_TextChanged"></asp:TextBox>
                &nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                        ControlToValidate="vendor" ErrorMessage="*">The vendor field should be entered</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td align="right" class="style2">
                    Price :</td>
                <td>
                    <asp:TextBox ID="price" runat="server" ontextchanged="price_TextChanged"></asp:TextBox>
                &nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                        ControlToValidate="price" ErrorMessage="*">Price field should be entered</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td align="right" class="style2">
                    Total Price:</td>
                <td>
                    <asp:TextBox ID="tot_price" runat="server" 
                        ontextchanged="tot_price_TextChanged"></asp:TextBox>
                &nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                        ControlToValidate="tot_price" ErrorMessage="*">Total price should be entered</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td align="center" class="style1" colspan="2">
                    <asp:Button ID="submit" runat="server" Text="Submit" onclick="submit_Click" />
                </td>
            </tr>
        </table>
        <br />
        <br />
        <br />
    <a href="javascript: history.go(-1)">Go Back</a>
    </div>
    </form>

</body>
</html>
