<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Backend/Backend.Master" CodeBehind="CancelConnection.aspx.cs" Inherits="TBSProject.Backend.CancelConnection" %>

<asp:Content ContentPlaceHolderID="ContentPlaceHolder1" runat="server">               

   
       <center> <asp:Label ID="Label1" runat="server" Text="Cancel Connection" Font-Underline="true" Font-Size="XX-Large"></asp:Label></center>
        <asp:Table ID="Table1" runat="server" HorizontalAlign="Center" Width="354px">
           <asp:TableRow runat="server"  Height="50">
                    <asp:TableCell>
                        <asp:Label ID="Label2" runat="server" Text="Connection ID"  Font-Size="X-Large"></asp:Label>
                         </asp:TableCell>
                              <asp:TableCell>
                                    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" Font-Size="X-Large" DataSourceID="SqlDataSource1" DataTextField="ConnectionID" DataValueField="ConnectionID" OnSelectedIndexChanged="Cancel_onclick"></asp:DropDownList>
     
       <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:TBS1ConnectionString8 %>" SelectCommand="SELECT [ConnectionID] FROM [CustomerMaster]"></asp:SqlDataSource>
                               
                                  </asp:TableCell>
               </asp:TableRow>
         <asp:TableRow runat="server"  Height="50">
                    <asp:TableCell>
                        <asp:Label ID="Label3" runat="server" Text="SIM Number"  Font-Size="X-Large"></asp:Label>
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
                        <asp:Label ID="Label7" runat="server" Text="DOB(Date Of Birth)"  Font-Size="X-Large"></asp:Label>
                          </asp:TableCell>
                                <asp:TableCell>
                                    <asp:Label ID="Label8" runat="server"  Font-Size="X-Large" Visible="false"></asp:Label>
                                      </asp:TableCell>
             </asp:TableRow>
        <asp:TableRow runat="server"  Height="50">
                    <asp:TableCell>
                        <asp:Label ID="Label9" runat="server" Text="Plan ID"  Font-Size="X-Large"></asp:Label>
                          </asp:TableCell>
            
                                <asp:TableCell>
                                    <asp:Label ID="Label10" runat="server"  Font-Size="X-Large" Visible="false"></asp:Label>
                                      </asp:TableCell>
             </asp:TableRow>
       
        <asp:TableRow runat="server"  Height="50">
                    <asp:TableCell>
                        <asp:Label ID="Label14" runat="server" Text="Address"  Font-Size="X-Large"></asp:Label>
                          </asp:TableCell>
                                <asp:TableCell>
                                    <asp:Label ID="Label15" runat="server"  Font-Size="X-Large" Visible="false"></asp:Label>
                                      </asp:TableCell>
             </asp:TableRow>
             <asp:TableRow runat="server"  Height="50">
                    <asp:TableCell>
                        <asp:Label ID="Label11" runat="server" Text="Current Contact Number"  Font-Size="X-Large"></asp:Label>
                        </asp:TableCell>
                 <asp:TableCell>
                     <asp:Label ID="Label12" runat="server"  Font-Size="X-Large" Visible="false"></asp:Label>
                 </asp:TableCell>
                 </asp:TableRow>
              <asp:TableRow runat="server"  Height="50">
                  <asp:TableCell>
                       
                  </asp:TableCell>
                  </asp:TableRow>
      
     </asp:Table>
    <asp:Button ID="Button1"  ForeColor="Yellow"  BackColor="Black" runat="server" Text="confirm"   Font-Size="X-Large" OnClick="CancelClick" CssClass="auto-style1" Width="126px" />
  
     
     </asp:content>
<asp:Content ID="Content1" runat="server" contentplaceholderid="head">
    <style type="text/css">
        .auto-style1 {
            margin-left: 747px;
        }
    </style>
</asp:Content>
