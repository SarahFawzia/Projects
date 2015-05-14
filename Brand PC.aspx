<%@ Page Title="" Language="C#" MasterPageFile="~/Main1.Master" AutoEventWireup="true" CodeBehind="Brand PC.aspx.cs" Inherits="onlineshoppingfinal.Brand_PC" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <form id="form1" runat="server">
        <asp:GridView ID="bGridView1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" AutoGenerateColumns="false">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
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
            <Columns>
                <asp:TemplateField HeaderText="ProductID">
                    <ItemTemplate>
                        <asp:Label ID="lb1" runat="server" Text='<%#Eval("ProductID") %>'></asp:Label>
                    </ItemTemplate>
               </asp:TemplateField>
                     <asp:TemplateField HeaderText="ProductType">
                    <ItemTemplate>
                        <asp:Label ID="lb2" runat="server" Text='<%#Eval("ProductType") %>'></asp:Label>
                    </ItemTemplate>
               </asp:TemplateField>
                     <asp:TemplateField HeaderText="Brand">
                    <ItemTemplate>
                        <asp:Label ID="lb3" runat="server" Text='<%#Eval("Brand") %>'></asp:Label>
                    </ItemTemplate>
               </asp:TemplateField>
                     <asp:TemplateField HeaderText="Models">
                    <ItemTemplate>
                        <asp:Label ID="lb4" runat="server" Text='<%#Eval("Models") %>'></asp:Label>
                    </ItemTemplate>
               </asp:TemplateField>
                     <asp:TemplateField HeaderText="Description">
                    <ItemTemplate>
                        <asp:Label ID="lb5" runat="server" Text='<%#Eval("Description") %>'></asp:Label>
                    </ItemTemplate>
               </asp:TemplateField>
                     <asp:TemplateField HeaderText="Price">
                    <ItemTemplate>
                        <asp:Label ID="lb6" runat="server" Text='<%#Eval("Price") %>'></asp:Label>
                    </ItemTemplate>
               </asp:TemplateField>
                    <asp:TemplateField HeaderText="Rating">
                    <ItemTemplate>
                        <asp:Label ID="lb7" runat="server" Text='<%#Eval("Rating") %>'></asp:Label>
                    </ItemTemplate>
               </asp:TemplateField>
                    <asp:TemplateField HeaderText="Number Of Product">
                    <ItemTemplate>
                        <asp:Label ID="lb8" runat="server" Text='<%#Eval("NOofProduct") %>'></asp:Label>
                    </ItemTemplate>
               </asp:TemplateField>
                <asp:TemplateField HeaderText="Image">
                    <ItemTemplate>
                        <asp:Image ID="img" runat="server" ImageUrl='<%#Eval("Image") %>' Height="100" Width="100"></asp:Image>
                    </ItemTemplate>
               </asp:TemplateField>
            </Columns>





        </asp:GridView>
    </form>
    
</asp:Content>

