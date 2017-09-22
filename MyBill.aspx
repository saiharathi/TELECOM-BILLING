<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Customer/Customer.Master" CodeBehind="MyBill.aspx.cs" Inherits="TBSProject.Customer.MyBill" %>
<asp:Content ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:Table ID="Table1" runat="server" HorizontalAlign="Center" CssClass="auto-style2" Height="509px" Width="608px">
        <asp:TableRow HorizontalAlign="Center" >
            <asp:TableCell>
            <asp:Label runat="server" Font-Size="XX-Large"  Font-Underline="true" Text="My Bill" ></asp:Label>
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell>
                <asp:Label ID="Label1" runat="server" Font-Size="X-Large" Text="Connection ID "></asp:Label>
            </asp:TableCell>
            <asp:TableCell>
                <asp:Label ID="Label2" runat="server"  Font-Size="X-Large" Visible="false"></asp:Label><br /><br />
            </asp:TableCell>
        </asp:TableRow>
         <asp:TableRow>
            <asp:TableCell>
                <asp:Label ID="Label3" runat="server" Font-Size="X-Large" Text=" Mobile Number "></asp:Label>
            </asp:TableCell>
            <asp:TableCell>
                <asp:Label ID="Label4" Visible="false"  runat="server" Font-Size="X-Large"></asp:Label>
            </asp:TableCell>
        </asp:TableRow>

         <asp:TableRow>
            <asp:TableCell> 
                <asp:Label ID="Label5" runat="server" Font-Size="X-Large" Text="Number of Local Calls "></asp:Label>
            </asp:TableCell>
            <asp:TableCell>
                <asp:Label ID="Label6" runat="server"  Font-Size="X-Large" Visible="false"></asp:Label><br /><br />
            </asp:TableCell>
        </asp:TableRow>

         <asp:TableRow>
            <asp:TableCell>
                <asp:Label ID="Label7" runat="server"  Font-Size="X-Large" Text="Number of STD calls "></asp:Label>
            </asp:TableCell>
            <asp:TableCell>
                <asp:Label ID="Label8" runat="server"  Font-Size="X-Large" Visible="false"></asp:Label><br /><br />
            </asp:TableCell>
        </asp:TableRow>

         <asp:TableRow>
            <asp:TableCell>
                <asp:Label ID="Label9" runat="server"  Font-Size="X-Large" Text="Amount "></asp:Label>
            </asp:TableCell>
            <asp:TableCell>
                <asp:Label ID="Label10" runat="server"  Font-Size="X-Large" Visible="false"></asp:Label><br /><br />
            </asp:TableCell>
        </asp:TableRow>
</asp:Table>
</asp:Content>
<asp:Content ID="Content1" runat="server" contentplaceholderid="head">
    <style type="text/css">
        .auto-style2 {
        margin-left: 0px;
        margin-top: 0px;
    }
        </style>
</asp:Content>
