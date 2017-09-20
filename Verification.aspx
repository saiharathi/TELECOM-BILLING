<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Backend/Backend.Master" CodeBehind="Verification.aspx.cs" Inherits="TBSProject.Backend.Verification" %>

<asp:Content ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
            <center> <asp:Label ID="Label1" runat="server" Text="Verification" Font-Underline="true" Font-Size="XX-Large"></asp:Label></center>
        <asp:Table ID="Table1" runat="server" HorizontalAlign="Center" Width="380px">
           <asp:TableRow runat="server"  Height="50">
                    <asp:TableCell>
                        <asp:Label ID="Label2" runat="server" Text="Connection ID"  Font-Size="X-Large"></asp:Label>
                         </asp:TableCell>
                              <asp:TableCell>
                                   <asp:DropDownList ID="DropDownList1" runat="server" Font-Size="X-Large" DataSourceID="SqlDataSource1" DataTextField="ConnectionID" DataValueField="ConnectionID" OnSelectedIndexChanged="Verification__onclick"></asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:TBS1ConnectionString6 %>" SelectCommand="SELECT [ConnectionID] FROM [CustomerMaster]"></asp:SqlDataSource>
                                  </asp:TableCell>
               </asp:TableRow>
         <asp:TableRow runat="server"  Height="50">
                    <asp:TableCell>
                        <asp:Label ID="Label3" runat="server" Text="Mobile Number"  Font-Size="X-Large"></asp:Label>
                                                </asp:TableCell>
                                <asp:TableCell>
                                    <asp:Label ID="Label4" runat="server"  Font-Size="X-Large" Visible="false"></asp:Label>
                                      </asp:TableCell>
             </asp:TableRow>
               <asp:TableRow runat="server"  Height="50">
                    <asp:TableCell>
                        <asp:Label ID="Label5" runat="server" Text="Name"  Font-Size="X-Large"></asp:Label>
                          </asp:TableCell>
                                <asp:TableCell>
                                    <asp:Label ID="Label6" runat="server"  Font-Size="X-Large" Visible="false"></asp:Label>
                                      </asp:TableCell>
             </asp:TableRow>
        <asp:TableRow runat="server"  Height="50">
                    <asp:TableCell>
                         <asp:Label ID="Label8" runat="server" Text="ID Proof"  Font-Size="X-Large"></asp:Label>
                          </asp:TableCell>
                                <asp:TableCell>
                                    <asp:Label ID="Label9" runat="server"  Font-Size="X-Large" Visible="false"></asp:Label>
                                      </asp:TableCell>
             </asp:TableRow>
             <asp:TableRow runat="server"  Height="50">
                    <asp:TableCell>
                         <asp:Label ID="Label10" runat="server" Text="Status"  Font-Size="X-Large"></asp:Label>
                          </asp:TableCell>
                                <asp:TableCell>
                                     <asp:DropDownList  Font-Size="X-Large" ID="DropDownList2" runat="server">
        <asp:ListItem>Active</asp:ListItem>
        <asp:ListItem>Inactive</asp:ListItem>
        <asp:ListItem>Pending</asp:ListItem>
        <asp:ListItem></asp:ListItem>
            </asp:DropDownList>
    
                                      </asp:TableCell>
             </asp:TableRow>
            <asp:TableRow runat="server"  Height="50">
                    <asp:TableCell>
                       
                         </asp:TableCell>
             </asp:TableRow>
</asp:Table>     
   
      <asp:Button ID="Button2" runat="server"  ForeColor="Yellow"  BackColor="Black" Text="Activate Connection"  Font-Size="X-Large" OnClick="Status_Click" CssClass="auto-style1" Width="243px" />
   
 
  </asp:Content>
<asp:Content ID="Content1" runat="server" contentplaceholderid="head">
    <style type="text/css">
    .auto-style1 {
        margin-left: 654px;
    }
</style>
</asp:Content>
