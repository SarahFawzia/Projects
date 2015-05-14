<%@ Page Title="" Language="C#" MasterPageFile="~/Main1.Master" AutoEventWireup="true" CodeBehind="createcart.aspx.cs" Inherits="onlineshoppingfinal.createcart" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <form id="form1" runat="server" style="height: 1225px; width: 703px">
        <br />
        &nbsp;&nbsp;
        <asp:Button ID="Button3" runat="server" BackColor="#00FFCC" BorderColor="#33CCCC" OnClick="Button3_Click" Text="Back" Width="166px" />
        &nbsp;
        <asp:Button ID="Button4" runat="server" BackColor="#00FFCC" BorderColor="#33CCCC" OnClick="Button4_Click" Text="Log Out" Width="139px" />
        &nbsp;
        <asp:Button ID="Button5" runat="server" BackColor="#00FFCC" BorderColor="#33CCCC" OnClick="Button5_Click" Text="ViewCart" Width="141px" />
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
            <Columns>
                <asp:TemplateField HeaderText="ProductID">
                    <ItemTemplate>
                        <asp:Label ID="lbl" runat="server" Text='<%#Eval("ProductID") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="ProductType">
                    <ItemTemplate>
                        <asp:Label ID="lbl0" runat="server" Text='<%#Eval("ProductType") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Brand">
                    <ItemTemplate>
                        <asp:Label ID="lbl1" runat="server" Text='<%#Eval("Brand") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Models">
                    <ItemTemplate>
                        <asp:Label ID="lbl2" runat="server" Text='<%#Eval("Models") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Description">
                    <ItemTemplate>
                        <asp:Label ID="lbl3" runat="server" Text='<%#Eval("Description") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Price">
                    <ItemTemplate>
                        <asp:Label ID="lbl4" runat="server" Text='<%#Eval("Price") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Rating">
                    <ItemTemplate>
                        <asp:Label ID="lbl5" runat="server" Text='<%#Eval("Rating") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="NOofProduct">
                    <ItemTemplate>
                        <asp:Label ID="lbl6" runat="server" Text='<%#Eval("NOofProduct") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Image">
                    <ItemTemplate>
                        <asp:Image ID="Img" runat="server" Height="100" ImageUrl='<%#Eval("Image") %>' Width="100" />
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
        <br />
        <br />
        &nbsp;&nbsp; <strong>Customer ID</strong> :
        <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label1" runat="server" Text="Choose your Item :"></asp:Label>
        <br />
        &nbsp;&nbsp;&nbsp;
        <br />
        &nbsp; <strong>&nbsp;</strong><span class="auto-style1"><strong> Product ID&nbsp; :</strong></span>&nbsp;&nbsp;
        <asp:DropDownList ID="DropDownList1" runat="server" DataTextField="PRODUCTID" DataValueField="PRODUCTID">
        </asp:DropDownList>
        &nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Check Information" />
        &nbsp;
        <br />
        <br />
        &nbsp;&nbsp;&nbsp; Product Type : <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <br />
        <br />
        &nbsp;&nbsp;&nbsp; Brand&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        <br />
        <br />
        &nbsp;&nbsp;&nbsp; Model&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :
        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
        <br />
        <br />
        &nbsp;&nbsp;&nbsp; Price&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :
        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
        <br />
        <br />
        &nbsp;&nbsp;&nbsp; Quantity&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :
        &nbsp;
        <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
&nbsp;&nbsp; &nbsp;
        <asp:Label ID="Label2" runat="server" style="font-weight: 700; color: #FF3399" Text="Select Quantity:"></asp:Label>
        <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
        <br />
        <br />
        &nbsp;&nbsp;&nbsp; Date&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :
        <asp:TextBox ID="TextBox5" runat="server" OnTextChanged="TextBox5_TextChanged"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Add to CART" />
        &nbsp;&nbsp;
        <asp:Label ID="Label3" runat="server" style="font-weight: 700; color: #FF0066"></asp:Label>
        <br />
        <br />
    </form>
</asp:Content>
