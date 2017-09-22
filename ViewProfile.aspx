<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Customer/Customer.Master" CodeBehind="ViewProfile.aspx.cs" Inherits="TBSProject.Customer.ViewProfile" %>

<asp:Content ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Table runat="server" HorizontalAlign="Center" Width="441px">
    <asp:TableRow>
        <asp:TableCell HorizontalAlign="Center">
              <asp:Label ID="Label1" runat="server" Text="My Details" Font-Underline="true" horizantal-align="center" Font-Size="XX-Large"></asp:Label><br /><br />
        </asp:TableCell>
        </asp:TableRow>
       
    <asp:TableRow>
        <asp:TableCell>
           <asp:Label ID="Label2" runat="server" Font-Size="X-Large" Text="Connection ID " horizantal-align="center"></asp:Label>
            </asp:TableCell>
        <asp:TableCell>
            <asp:Label ID="Label9" runat="server" Visible="false" Font-Size="X-Large"></asp:Label>
        </asp:TableCell>
    </asp:TableRow>


        <asp:TableRow>
            <asp:TableCell>
                <asp:Label ID="Label15" runat="server" Font-Size="X-Large" Text="User Name" horizontalAlign="Center" ></asp:Label>
            </asp:TableCell>
            <asp:TableCell>
                <asp:Label ID="Label16" runat="server" Visible="false"  Font-Size="X-Large" horizantal-align="center"></asp:Label><br /><br /><br />
            </asp:TableCell>
        </asp:TableRow>

    <asp:TableRow>
        <asp:TableCell>
           <asp:Label ID="Label3" runat="server" Font-Size="X-Large" Text="Mobile Number " horizantal-align="center"></asp:Label>
            </asp:TableCell>
        <asp:TableCell>
             <asp:Label ID="Label10" runat="server"  Visible="false"  Font-Size="X-Large" horizantal-align="center"></asp:Label><br /><br /><br />
        </asp:TableCell>
   </asp:TableRow>

       <asp:TableRow>
        <asp:TableCell>
           <asp:Label ID="Label4" runat="server" Font-Size="X-Large" Text="SIM Number " horizantal-align="center"></asp:Label>
        </asp:TableCell>
           <asp:TableCell>
                <asp:Label ID="Label11" runat="server"  Visible="false"  Font-Size="X-Large" horizantal-align="center"></asp:Label><br /><br /><br />
           </asp:TableCell>
    </asp:TableRow>


    <asp:TableRow HorizontalAlign="Left">
        <asp:TableCell>
           <asp:Label ID="Label5" runat="server" Font-Size="X-Large" Text="Name " horizantal-align="center"></asp:Label>
        </asp:TableCell>
        <asp:TableCell>
               <asp:Label ID="Label12" runat="server"  Visible="false"  Font-Size="X-Large" horizantal-align="center"></asp:Label><br /><br /><br />
        </asp:TableCell>
    </asp:TableRow>


    <asp:TableRow >
        <asp:TableCell>
           <asp:Label ID="Label6" runat="server" Font-Size="X-Large" Text="Address " horizantal-align="center"></asp:Label>
        </asp:TableCell>
        <asp:TableCell>
            <asp:Label ID="Label17" runat="server" Visible="false" Font-Size="X-Large"></asp:Label>
      </asp:TableCell>
    </asp:TableRow>


    <asp:TableRow>
        <asp:TableCell>
           <asp:Label ID="Label7" runat="server" Font-Size="X-Large" Text="Contact " horizantal-align="center"></asp:Label>
        </asp:TableCell>
        <asp:TableCell>
          <asp:Label ID="Label13" runat="server" Visible="false"  Font-Size="X-Large" horizantal-align="center"></asp:Label><br /><br /><br />
        </asp:TableCell>
    </asp:TableRow> 

     <asp:TableRow>
        <asp:TableCell>
           <asp:Label ID="Label8" runat="server" Font-Size="X-Large" Text="Plan ID " horizantal-align="center"></asp:Label>
        </asp:TableCell>
         <asp:TableCell>
              <asp:Label ID="Label14" runat="server"   Font-Size="X-Large" horizantal-align="center" Visible="false"></asp:Label><br /><br />
         </asp:TableCell>
    </asp:TableRow>
</asp:Table>

</asp:Content>
<asp:Content ID="Content1" runat="server" contentplaceholderid="head">
    </asp:Content>
