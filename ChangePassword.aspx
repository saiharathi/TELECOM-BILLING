<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Customer/Customer.Master" CodeBehind="ChangePassword.aspx.cs" Inherits="TBSProject.Customer.ChangePassword" %>

<asp:Content ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  
 
        <asp:Table ID="Table1" runat="server" HorizontalAlign="Center" Height="333px" Width="459px">
            <asp:TableRow>
                 <asp:TableCell>
                   <asp:Label ID="Label1" runat="server" Font-Underline="true" horizantal-align="center" Font-Size="XX-Large" Text="ChangePassword"></asp:Label>
               </asp:TableCell>
            </asp:TableRow>
           <asp:TableRow runat="server"  Height="50">

              
                    <asp:TableCell>
                        <asp:Label ID="Label2" runat="server" Font-Size="X-Large" Text="Username"></asp:Label>
                          </asp:TableCell>
                               <asp:TableCell>
                                <asp:Label ID="Label3" runat="server"  Font-Size="X-Large" Visible="false"></asp:Label>
                                </asp:TableCell>
                                    </asp:TableRow>
             <asp:TableRow runat="server"  Height="50">
                    <asp:TableCell>
                        <asp:Label ID="Label4" runat="server" Font-Size="X-Large" Text="Old Password"></asp:Label>
                          </asp:TableCell>
                              <asp:TableCell>
                                  <asp:TextBox ID="TextBox3"  TextMode="Password"  Font-Size="X-Large" runat="server"></asp:TextBox><br />
                                  <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox3" ErrorMessage="Field cant be Empty"></asp:RequiredFieldValidator>
                                </asp:TableCell>
                                    </asp:TableRow>


            <asp:TableRow runat="server"  Height="50">
                    <asp:TableCell>
                        <asp:Label ID="Label6" runat="server" Font-Size="X-Large" Text="Enter New Password"></asp:Label>
                          </asp:TableCell>
                <asp:TableCell>
                             <asp:TextBox ID="TextBox1" TextMode="Password" Font-Size="X-Large" runat="server"></asp:TextBox><br />
                       <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox1" ErrorMessage="Field cant be Empty"></asp:RequiredFieldValidator>
                               </asp:TableCell> 
                                    </asp:TableRow>
               <asp:TableRow runat="server"  Height="50">
                    <asp:TableCell>
                        <asp:Label ID="Label7" runat="server" Font-Size="X-Large" Text="Confirm New Password"></asp:Label>

                          </asp:TableCell>
                   <asp:TableCell>
                             <asp:TextBox ID="TextBox2" TextMode="Password"  Font-Size="X-Large" runat="server"></asp:TextBox><br />
                          <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox2" ErrorMessage="Field cant be Empty"></asp:RequiredFieldValidator>
                       <asp:CompareValidator ID="CompareValidator1" ControlToValidate="TextBox2" ControlToCompare="TextBox1" runat="server" ErrorMessage="Password doesn't match"></asp:CompareValidator>
                                </asp:TableCell>
                                    </asp:TableRow>
              <asp:TableRow runat="server"  Height="50">
                    <asp:TableCell>
                     
          
             </asp:TableCell>
                                </asp:TableRow>

       
   </asp:Table>

    <asp:Button ID="Button1"  ForeColor="Yellow"   BackColor="Black" runat="server" Font-Size="X-Large" Text="Update" OnClick="ChangePassword_onclick" CssClass="auto-style1" Width="148px" />
   </asp:Content>

<asp:Content ID="Content1" runat="server" contentplaceholderid="head">
    <style type="text/css">
        .auto-style1 {
            margin-left: 518px;
        }
    </style>
</asp:Content>
