<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Customer/Customer.Master" CodeBehind="Call.aspx.cs" Inherits="TBSProject.Customer.Call" %>

<asp:Content ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Table runat="server" HorizontalAlign="Center" Height="293px" Width="505px">
        <asp:TableRow HorizontalAlign="Center">
            <asp:TableCell>
                <asp:Label ID="Label1" runat="server" Font-Underline="true" Font-Size="XX-Large" Text="Call"></asp:Label>
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell>
                <asp:Label ID="Label5" runat="server"></asp:Label>

            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell>
                <asp:Label ID="Label2" runat="server" Font-Size="X-Large" Text="My Number"></asp:Label>
            </asp:TableCell>
            <asp:TableCell>
                <asp:TextBox ID="TextBox1"  Font-Size="X-Large" runat="server"></asp:TextBox>
            </asp:TableCell>
        </asp:TableRow>
         <asp:TableRow>
            <asp:TableCell>
                <asp:Label ID="Label4" runat="server" Font-Size="X-Large" Text="Enter Number"></asp:Label>
            </asp:TableCell>
            <asp:TableCell>
               
                 <asp:TextBox ID="TextBox2"  Font-Size="X-Large" runat="server" ></asp:TextBox><br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="TextBox2" runat="server" ErrorMessage="Field Cant be Empty"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Invalid Mobile No." ValidationExpression="^([7-9]{1})([0-9]{9})$"></asp:RegularExpressionValidator>
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell>
                <asp:Label ID="Label3"  Font-Size="X-Large" runat="server" Text="ChooseCallStatus"></asp:Label><br />
            </asp:TableCell>
             <asp:TableCell HorizontalAlign="Center">
                <asp:DropDownList ID="DropDownList1" Font-Size="X-Large" runat="server" AutoPostBack="True" CssClass="auto-style3" Width="110px" OnCallingDataMethods="DropDownList1_CallingDataMethods">
        <asp:ListItem>Local</asp:ListItem>
        <asp:ListItem>STD</asp:ListItem>
        <asp:ListItem></asp:ListItem>
    </asp:DropDownList>
           </asp:TableCell>
       </asp:TableRow>
         
            

    </asp:Table>
    
   
          <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <br />
    <br />
          <asp:Button ID="Button3"  ForeColor="Yellow"  BackColor="Black" runat="server"  Font-Size="X-Large"  OnClick="Call_click" Text="Continue" CssClass="auto-style2" Width="123px" />

    </asp:Content>
<asp:Content ID="Content1" runat="server" contentplaceholderid="head">
    <style type="text/css">
        .auto-style2 {
            margin-left: 779px;
        }
        .auto-style3 {
            margin-left: 440px;
        }
    </style>
    </asp:Content>
