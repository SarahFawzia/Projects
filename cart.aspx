<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="cart.aspx.cs" Inherits="onlineshoppingfinal.cart" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>

    Select Customer ID

    <asp:DropDownList ID="ddlCustomers" runat="server" AutoPostBack = "true"

          OnSelectedIndexChanged="ddlCustomers_SelectedIndexChanged">

    </asp:DropDownList>

    <br />

    <br />

    <br />

    <p>---Customer Details---</p>

    <hr />

    City :

    <asp:TextBox ID="txtCity" runat="server"></asp:TextBox>

    <br />

    Country :

    <asp:Label ID="lblCountry" runat="server" Text=""></asp:Label>

</div>
    </form>
</body>
</html>
