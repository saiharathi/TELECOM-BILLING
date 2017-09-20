<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Finance/Finance.Master" CodeBehind="SingleUser.aspx.cs" Inherits="TBSProject.Finance.SingleUser" %>

<asp:Content ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

 <center><asp:Label ID="Label1" runat="server"  Font-Underline="true" Font-Size="XX-Large"  Text="Generate Bill For Single User"></asp:Label></center>
        <asp:Table ID="Table1" runat="server" HorizontalAlign="Center" Height="480px" Width="395px">
           <asp:TableRow runat="server"  Height="50">
                    <asp:TableCell>
                        <asp:Label ID="Label2" runat="server" Font-Size="X-Large" Text="Connection ID"></asp:Label>
                         </asp:TableCell>
                              <asp:TableCell>
                                 <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" Font-Size="X-Large" DataSourceID="SqlDataSource1" DataTextField="ConnectionID" DataValueField="ConnectionID" OnSelectedIndexChanged="GetDetails_Click"></asp:DropDownList>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:TBS1ConnectionString19 %>" SelectCommand="SELECT [ConnectionID] FROM [CustomerMaster]"></asp:SqlDataSource>
                                   </asp:TableCell>
               </asp:TableRow>
              <asp:TableRow runat="server"  Height="50">
                    <asp:TableCell>
                        <asp:Label ID="Label3" runat="server" Font-Size="X-Large" Text="Mobile Number"></asp:Label>
                         </asp:TableCell>
                              <asp:TableCell>
                                  <asp:Label ID="Label4" runat="server"  Font-Size="X-Large" Visible="false"></asp:Label>
                                   </asp:TableCell>
               </asp:TableRow>
              <asp:TableRow runat="server"  Height="50">
                    <asp:TableCell>
                        <asp:Label ID="Label5" runat="server" Font-Size="X-Large" Text="plan ID"></asp:Label>
                         </asp:TableCell>
                              <asp:TableCell>
                                  <asp:Label ID="Label6" runat="server"  Font-Size="X-Large" Visible="false"></asp:Label>
                                   </asp:TableCell>
                  </asp:TableRow>
                   <asp:TableRow runat="server"  Height="50">
                    <asp:TableCell>
                        <asp:Label ID="Label7" runat="server" Font-Size="X-Large" Text="Number Of Local Calls Made"></asp:Label>
                         </asp:TableCell>
                              <asp:TableCell>
                                  <asp:Label ID="Label8" runat="server"  Font-Size="X-Large" Visible="false"></asp:Label>
                                   </asp:TableCell>
               </asp:TableRow>
             <asp:TableRow runat="server"  Height="50">
                    <asp:TableCell>
                        <asp:Label ID="Label9" runat="server" Font-Size="X-Large" Text="Number Of STD Calls Made"></asp:Label>
                         </asp:TableCell>
                              <asp:TableCell>
                                  <asp:Label ID="Label10" Font-Size="X-Large" runat="server" Visible="false"></asp:Label>
                                   </asp:TableCell>
               </asp:TableRow>
            <asp:TableRow runat="server"  Height="50">
                    <asp:TableCell>
                        <asp:Label ID="Label13" runat="server" Font-Size="X-Large" Text="Cost Of Local Calls"></asp:Label>
                         </asp:TableCell>
                              <asp:TableCell>
                                  <asp:Label ID="Label14" Font-Size="X-Large" runat="server" Visible="false"></asp:Label>
                                   </asp:TableCell>
               </asp:TableRow>
            <asp:TableRow runat="server"  Height="50">
                    <asp:TableCell>
                        <asp:Label ID="Label15" runat="server" Font-Size="X-Large" Text="Cost Of STD Calls "></asp:Label>
                         </asp:TableCell>
                              <asp:TableCell>
                                  <asp:Label ID="Label16" Font-Size="X-Large" runat="server" Visible="false"></asp:Label>
                                   </asp:TableCell>
               </asp:TableRow>
             <asp:TableRow runat="server"  Height="50">
                    <asp:TableCell>
                        <asp:Label ID="Label11" runat="server" Font-Size="X-Large" Visible="false" Text="Amount"></asp:Label>
                         </asp:TableCell>
                              <asp:TableCell>
                                  <asp:Label ID="Label12" Font-Size="X-Large" runat="server" Visible="false"></asp:Label>
                                   </asp:TableCell>
                 </asp:TableRow>
            
            
                              
</asp:Table>
    <asp:Button ID="Button1"  ForeColor="Yellow"  BackColor="Black" Font-Size="X-Large" runat="server" Text="GetAmount" CssClass="auto-style1" Width="201px" OnClick="GetAmount_Click" />
           <asp:Button ID="Button2"  ForeColor="Yellow"  BackColor="Black" runat="server" Font-Size="X-Large" Text="Generate Bill" OnClick="GenerateBill_OnClick" CssClass="auto-style2" Width="194px" />
    

   </asp:Content>
<asp:Content ID="Content1" runat="server" contentplaceholderid="head">
    <style type="text/css">
        .auto-style1 {
            margin-left: 273px;
        }
        .auto-style2 {
            margin-left: 224px;
        }
    </style>
</asp:Content>

