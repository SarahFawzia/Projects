<%@ Page Title="" Language="C#" MasterPageFile="~/Main2.Master" AutoEventWireup="true" CodeBehind="cartinfo.aspx.cs" Inherits="onlineshoppingfinal.cartinfo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <form id="form1" runat="server">
    <br />
    <asp:Label ID="Label1" runat="server" BackColor="White" Font-Bold="True" Font-Overline="False" Font-Size="Medium" ForeColor="#6699FF" Text="Cart Information:"></asp:Label>
    <br />
    <br />
    <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:BoundField DataField="CARTID" HeaderText="CARTID" SortExpression="CARTID" />
            <asp:BoundField DataField="CUSTOMERID" HeaderText="CUSTOMERID" SortExpression="CUSTOMERID" />
            <asp:BoundField DataField="PRODUCTID" HeaderText="PRODUCTID" SortExpression="PRODUCTID" />
            <asp:BoundField DataField="PRODUCTTYPE" HeaderText="PRODUCTTYPE" SortExpression="PRODUCTTYPE" />
            <asp:BoundField DataField="BRAND" HeaderText="BRAND" SortExpression="BRAND" />
            <asp:BoundField DataField="MODELS" HeaderText="MODELS" SortExpression="MODELS" />
            <asp:BoundField DataField="PRICE" HeaderText="PRICE" SortExpression="PRICE" />
            <asp:BoundField DataField="QUANTITY" HeaderText="QUANTITY" SortExpression="QUANTITY" />
            <asp:BoundField DataField="DATE_TIME" HeaderText="DATE_TIME" SortExpression="DATE_TIME" />
        </Columns>
        <EditRowStyle BackColor="#999999" />
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#E9E7E2" />
        <SortedAscendingHeaderStyle BackColor="#506C8C" />
        <SortedDescendingCellStyle BackColor="#FFFDF8" />
        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM &quot;CART&quot;"></asp:SqlDataSource>
</form>
</asp:Content>
