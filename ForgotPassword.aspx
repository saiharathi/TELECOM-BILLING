<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ForgotPassword.aspx.cs" Inherits="TBSProject.ForgotPassword" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            margin-left: 158px;
        }
        .auto-style2 {
            margin-left: 327px;
        }

        body {
                background-image:url(Images/login1.png)
        }
    </style>

</head>
<body>
       
    <form id="form1" runat="server">
        
       <asp:Table HorizontalAlign="Center" runat="server" Height="174px" Width="434px">
        
           <asp:TableHeaderRow>
               <asp:TableHeaderCell>
               <asp:Label runat="server" Font-Size="XX-Large" Font-Underline="true" Font-Bold="true" ForeColor="White" Text="Forgot Password"></asp:Label>
                   </asp:TableHeaderCell>
           </asp:TableHeaderRow>
           <asp:TableRow>
               <asp:TableCell>
                   <asp:Label ID="Label1" runat="server" Font-Size="Large" ForeColor="White" Text="Please Enter your Mobile Number"></asp:Label>
                     
              </asp:TableCell>
               <asp:TableCell>
                   <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                   <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="TextBox1" runat="server" ErrorMessage="Field Cant be Empty"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox1" ErrorMessage="Invalid Mobile No." ValidationExpression="^([7-9]{1})([0-9]{9})$"></asp:RegularExpressionValidator>
               </asp:TableCell>
           </asp:TableRow>
          
           

       </asp:Table>
         <br />
        <br />
         <asp:Button ID="Button1" runat="server" Text="Send Password" CssClass="auto-style2" OnClick="SendPassword_Click" Width="159px" />
         <asp:Button ID="Button2" runat="server" Text="Cancel" CssClass="auto-style1" OnClick="Cancel_Click" Width="126px"/>
        <br />
        
        
    </form>
</body>
</html>

