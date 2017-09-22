<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Customer/Customer.Master" CodeBehind="BillPayment.aspx.cs" Inherits="TBSProject.Customer.BillPayment" %>

<asp:Content ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:Table runat="server" HorizontalAlign="Center" Height="518px" Width="454px">
        <asp:TableRow HorizontalAlign="Center">
            <asp:TableCell>
                <asp:Label ID="Label17" runat="server" Font-Underline="true" Font-size="XX-Large" Text="My Bill Payment"></asp:Label>
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell>
                <asp:Label ID="Label1" runat="server" Font-Size="X-Large" Text="Connection ID "></asp:Label>
            </asp:TableCell>
            <asp:TableCell>
                <asp:Label ID="Label2" runat="server"  Font-Size="X-Large" Visible="false"></asp:Label>
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell>
                <asp:Label ID="Label3" runat="server" Font-Size="X-Large" Text="Mobile Number "></asp:Label>
            </asp:TableCell>
            <asp:TableCell>
                <asp:Label ID="Label4" Visible="false"  Font-Size="X-Large" runat="server" ></asp:Label>
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell>
                <asp:Label ID="Label5" runat="server"  Font-Size="X-Large" Text="No. of local calls "></asp:Label>
            </asp:TableCell>
            <asp:TableCell>
                <asp:Label ID="Label6" runat="server"  Font-Size="X-Large" Visible="false"></asp:Label>
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell>
                <asp:Label ID="Label7" runat="server" Font-Size="X-Large" Text="No. of STD calls "></asp:Label>
            </asp:TableCell>
            <asp:TableCell>
                <asp:Label ID="Label8" runat="server"  Font-Size="X-Large" Visible="false"></asp:Label>
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell>
                <asp:Label ID="Label9" runat="server" Font-Size="X-Large" Text="Last date of Bill payment "></asp:Label>
            </asp:TableCell>
            <asp:TableCell>
                <asp:Label ID="Label10" runat="server"  Font-Size="X-Large" visible="false"></asp:Label>
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell>
                <asp:Label ID="Label11" runat="server" Font-Size="X-Large" Text="Amount "></asp:Label>
            </asp:TableCell>
            <asp:TableCell>
                <asp:Label ID="Label12" runat="server"  Font-Size="X-Large" Visible="false"></asp:Label>
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell>
                <asp:Label ID="Label13" runat="server" Font-Size="X-Large" Text="Account Number "></asp:Label>
            </asp:TableCell>
            <asp:TableCell>
                <asp:Label ID="Label14" runat="server"  Font-Size="X-Large" Visible="false"></asp:Label>
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell>
                <asp:Label ID="Label15" runat="server" Font-Size="X-Large" Text="Payment Amount "></asp:Label>
            </asp:TableCell>
            <asp:TableCell>
                <asp:Label ID="Label16" runat="server"  Font-Size="X-Large" Visible="false"></asp:Label>
            </asp:TableCell>
        </asp:TableRow>
    </asp:Table>
  <asp:Button ID="Button2" runat="server"  ForeColor="Yellow"  BackColor="Black"  Font-Size="X-Large"  Text="MakePayment" OnClick="Payment_Click" CssClass="auto-style2" Width="177px" />

</asp:Content>

<asp:Content ID="Content1" runat="server" contentplaceholderid="head">
    <style type="text/css">
        .auto-style2 {
            margin-left: 640px;
            margin-top: 0px;
        }
        </style>
</asp:Content>
