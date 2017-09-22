<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Customer/Customer.Master" CodeBehind="ModifyBill.aspx.cs" Inherits="TBSProject.Customer.ModifyBill" %>

<asp:Content ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <asp:Table runat="server" HorizontalAlign="Center" Height="453px" Width="535px" >
        <asp:TableRow>
            <asp:TableCell>
                <asp:Label ID="Label10" runat="server" Font-Size="XX-Large" Font-Underline="true" Text="Modify Bill Plan"></asp:Label>
            </asp:TableCell>
        </asp:TableRow>
      <asp:TableRow>
            <asp:TableCell>
                <asp:Label ID="Label1" runat="server" Font-Size="X-Large" Text="Choose a Billing Plan Id "></asp:Label>
            </asp:TableCell>
            <asp:TableCell>
               <asp:DropDownList ID="DropDownList1" runat="server" Font-Size="X-Large" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="PlanID" DataValueField="PlanID" OnSelectedIndexChanged="ModifyPLanGET_Click"></asp:DropDownList>
          <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:TBS1ConnectionString20 %>" SelectCommand="SELECT [PlanID] FROM [BillingPlanMaster]"></asp:SqlDataSource>
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell>
                <asp:Label ID="Label11" runat="server" Font-Size="X-Large" Text="Enter Your ConnectionID"></asp:Label>
            </asp:TableCell>
            <asp:TableCell>
                <asp:TextBox ID="TextBox1" runat="server"  Font-Size="X-Large" ></asp:TextBox><br />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="TextBox1" ErrorMessage="Field cant be Empty"></asp:RequiredFieldValidator>

            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell>
                <asp:Label ID="Label2" runat="server" Font-Size="X-Large" Text="No. of free Local Minutes"></asp:Label>
            </asp:TableCell>
            <asp:TableCell>
                <asp:Label ID="Label3" runat="server"  Font-Size="X-Large" Visible="false"></asp:Label>
            </asp:TableCell>
        </asp:TableRow>
         <asp:TableRow>
            <asp:TableCell>
                <asp:Label ID="Label4" runat="server" Font-Size="X-Large" Text="No. of free STD minutes"></asp:Label>
            </asp:TableCell>
            <asp:TableCell>
                <asp:Label ID="Label5" runat="server"  Font-Size="X-Large" Visible="false"></asp:Label>
            </asp:TableCell>
        </asp:TableRow>
         <asp:TableRow>
            <asp:TableCell>
                <asp:Label ID="Label6" runat="server"  Font-Size="X-Large" Text="Cost Of local min"></asp:Label>
            </asp:TableCell>
            <asp:TableCell>
                <asp:Label ID="Label7" runat="server"  Font-Size="X-Large" Visible="false"></asp:Label>
            </asp:TableCell>
        </asp:TableRow>
         <asp:TableRow>
            <asp:TableCell>
                <asp:Label ID="Label8" runat="server" Font-Size="X-Large" Text="Cost Of STD min"></asp:Label>
            </asp:TableCell>
            <asp:TableCell>
                <asp:Label ID="Label9" runat="server"  Font-Size="X-Large" Visible="false"></asp:Label>
            </asp:TableCell>
        </asp:TableRow>
    </asp:Table>
    


    <asp:Button ID="Button2"  ForeColor="Yellow"  BackColor="Black" runat="server"  Font-Size="X-Large" Text="Update" OnClick="MOdifyPlanupdate_Click" CssClass="auto-style2" Width="118px" />
</asp:Content>
<asp:Content ID="Content1" runat="server" contentplaceholderid="head">
    <style type="text/css">
        .auto-style2 {
            margin-left: 672px;
            margin-top: 0px;
        }
        </style>
</asp:Content>
