<%@ Page Title="" Language="C#" MasterPageFile="~/Main1.Master" AutoEventWireup="true" CodeBehind="MyAccount.aspx.cs" Inherits="onlineshoppingfinal.MyAccount" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <form id="form1" runat="server">
    <div style="margin: 200px; width: 526px;">
        <table align="center" style="border: 1px ridge #999999; width: 450px;">
            <tr>
                <td align="center" colspan="2">
                    <asp:Label ID="Label1" runat="server" Font-Names="Aharoni" ForeColor="#0033CC" Style="font-weight: 700" Text="ShoppingCart-CustomerPanel"></asp:Label>
                    <hr />
                </td>
            </tr>
            <tr>
                <td align="center" style="width: 50%;">Login ID: </td>
                <td>
                    <asp:TextBox ID="txtloginid" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="center" style="width: 50%;">Password : </td>
                <td>
                    <asp:TextBox ID="Txtpassword" runat="server" TextMode="Password"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="center" style="width: 50%;">&nbsp; </td>
                <td>
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Login" />
                </td>
            </tr>
            <tr>
                <td align="center" colspan="2" style="height: 72px">
                    <hr />
                    <asp:Label ID="LabelAlert" runat="server" Font-Names="Aharoni" ForeColor="Red"></asp:Label>
                </td>
            </tr>
        </table>
        <br />
        <br />
        <br />
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Italic="False" ForeColor="Red" Text="Sign Up Here ==&gt;"></asp:Label>
&nbsp;&nbsp;
        <asp:Button ID="Button2" runat="server" Text="Sign Up" Width="93px" OnClick="Button2_Click" />
        <br />
        <br />
    </div>
</form>
</asp:Content>
