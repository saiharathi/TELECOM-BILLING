<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Backend/Backend.Master" CodeBehind="ChangePassword.aspx.cs" Inherits="TBSProject.Backend.ChangePassword" %>
<asp:Content ContentPlaceHolderID="ContentPlaceHolder1" runat="server">          
             

   
       <center><asp:Label ID="Label1" runat="server" Text="Change Password" Font-Underline="true" Font-Size="XX-Large"></asp:Label></center>
        <asp:Table ID="Table1" runat="server" HorizontalAlign="Center">
           <asp:TableRow runat="server"  Height="50">
                    <asp:TableCell>
                        <asp:Label ID="Label2" runat="server" Text="UserName" Font-Size="X-Large"></asp:Label>
                          </asp:TableCell>
                               <asp:TableCell>
                              <asp:Label ID="Label3" runat="server"  Font-Size="X-Large" Visible="false"></asp:Label>
                                </asp:TableCell>
                                    </asp:TableRow>
             <asp:TableRow runat="server"  Height="50">
                    <asp:TableCell>
                        <asp:Label ID="Label4" runat="server" Text="Old Password"  Font-Size="X-Large"></asp:Label>
                          </asp:TableCell>
                              <asp:TableCell>
                              <asp:Label ID="Label5" runat="server"  Font-Size="X-Large" Visible="false"></asp:Label>
                                </asp:TableCell>
                                    </asp:TableRow>
            <asp:TableRow runat="server"  Height="50">
                    <asp:TableCell>
                        <asp:Label ID="Label6" runat="server" Text="Enter New Password"  Font-Size="X-Large"></asp:Label>
                          </asp:TableCell>
                <asp:TableCell>
                             <asp:TextBox ID="TextBox1" TextMode="Password"  Font-Size="X-Large" runat="server" ></asp:TextBox><br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1"  ErrorMessage="Feid is mandatory"></asp:RequiredFieldValidator>
                               </asp:TableCell> 
                                    </asp:TableRow>
               <asp:TableRow runat="server"  Height="50">
                    <asp:TableCell>
                        <asp:Label ID="Label7" runat="server" Text="Confirm New Password"  Font-Size="X-Large"></asp:Label>
                          </asp:TableCell>
                   <asp:TableCell>
                             <asp:TextBox ID="TextBox2" TextMode="Password"  Font-Size="X-Large" runat="server"></asp:TextBox><br />
                       <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="TextBox2"  ControlToCompare="TextBox1"  ErrorMessage="password and confirm password should be same"></asp:CompareValidator>
                                </asp:TableCell>
                                    </asp:TableRow>
             <asp:TableRow runat="server"  Height="50">
                    <asp:TableCell>
                        <asp:Label ID="Label8" runat="server" Text="Acess Type"  Font-Size="X-Large"></asp:Label>
                          </asp:TableCell>
                   <asp:TableCell>
                            <asp:Label ID="Label9" runat="server"  Font-Size="X-Large" Visible="false"></asp:Label>
                                </asp:TableCell>
                                    </asp:TableRow>
            <asp:TableRow runat="server"  Height="50">
                    <asp:TableCell>
                        
             </asp:TableCell>
                                </asp:TableRow>

       
   </asp:Table>
     <asp:Button ID="Button1"  ForeColor="Yellow"  BackColor="Black" runat="server" Text="Update" Font-Size="X-Large" OnClick="PasswordUpdate_onclick" CssClass="auto-style1" Width="141px"/>
   </asp:Content>

     
<asp:Content ID="Content1" runat="server" contentplaceholderid="head">
    <style type="text/css">
        .auto-style1 {
            margin-left: 570px;
        }
    </style>
</asp:Content>


     
