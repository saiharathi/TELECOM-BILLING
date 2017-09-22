<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Customer/Customer.Master" CodeBehind="UnBilledAmount.aspx.cs" Inherits="TBSProject.Customer.UnBilledAmount" %>

<asp:Content ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Table runat="server" HorizontalAlign="Center" Height="477px" Width="397px">
        <asp:TableRow HorizontalAlign="Center">
            <asp:TableCell>
                <asp:Label ID="Label1" runat="server" Font-Underline="true" Font-Size="XX-Large" Text=" UnBilledAmount"></asp:Label>
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell>
                <asp:Label ID="Label2" runat="server"  Font-Size="X-Large" Text="Connection ID"></asp:Label>
            </asp:TableCell>
            <asp:TableCell>
                  <asp:Label ID="Label3" runat="server"  Font-Size="X-Large" Visible="false"></asp:Label>
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell>
                <asp:Label ID="Label4" runat="server" Font-Size="X-Large" Text="Mobile Numbeer"></asp:Label>
            </asp:TableCell>
            <asp:TableCell>
                <asp:Label ID="Label5" runat="server"  Font-Size="X-Large" Visible="false"></asp:Label>
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell>
                <asp:Label ID="Label6" runat="server" Font-Size="X-Large" Text="No. of Local calls"></asp:Label>
            </asp:TableCell>
            <asp:TableCell>
                  <asp:Label ID="Label7" runat="server"  Font-Size="X-Large" Visible="false"></asp:Label>
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell>
                <asp:Label ID="Label8" runat="server" Font-Size="X-Large" Text="No. of STD calls"></asp:Label>
            </asp:TableCell>
            <asp:TableCell>
                  <asp:Label ID="Label9" runat="server"  Font-Size="X-Large" Visible="false"></asp:Label>
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell>
                <asp:Label ID="Label10" runat="server" Font-Size="X-Large" Text="Last Date of Bill Payment"></asp:Label>
            </asp:TableCell>
            <asp:TableCell>
                  <asp:Label ID="Label11" runat="server"  Font-Size="X-Large" Visible="false"></asp:Label>
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell>
                <asp:Label ID="Label12" runat="server" Font-Size="X-Large" Text="Amount"></asp:Label>
            </asp:TableCell>
            <asp:TableCell>
                  <asp:Label ID="Label13" runat="server"  Font-Size="X-Large" Visible="false"></asp:Label>
            </asp:TableCell>
        </asp:TableRow>
</asp:Table>
</asp:Content>
<asp:Content ID="Content1" runat="server" contentplaceholderid="head">
    <style type="text/css">
        .auto-style1 {
            margin-left: 660px;
        }
    </style>
</asp:Content>

