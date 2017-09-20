<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Backend/Backend.Master" CodeBehind="ChangedSIMNumber.aspx.cs" Inherits="TBSProject.Backend.ChangedSIMNumber" %>

<asp:Content ContentPlaceHolderID="ContentPlaceHolder1" runat="server">                

   
       <center> <asp:Label ID="Label1" runat="server" Text="Change SIMCard Number" Font-Underline="true" Font-Size="XX-Large"></asp:Label></center>
        <asp:Table ID="Table1" runat="server" HorizontalAlign="Center">
           <asp:TableRow runat="server"  Height="50">
                    <asp:TableCell>
                        <asp:Label ID="Label2" runat="server" Text="Connection ID"  Font-Size="X-Large"></asp:Label>
                         </asp:TableCell>
                              <asp:TableCell>
                                    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" Font-Size="X-Large" DataSourceID="SqlDataSource1" DataTextField="ConnectionID" DataValueField="ConnectionID" OnSelectedIndexChanged="ChangeSIMNo_onclick"></asp:DropDownList>
    
       <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:TBS1ConnectionString9 %>" SelectCommand="SELECT [ConnectionID] FROM [CustomerMaster]"></asp:SqlDataSource>
                                
                                  </asp:TableCell>
               </asp:TableRow>
         <asp:TableRow runat="server"  Height="50">
                    <asp:TableCell>
                        <asp:Label ID="Label3" runat="server" Text="SIM  Card Number"  Font-Size="X-Large"></asp:Label>
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
                                    <asp:Label ID="Label10" runat="server"   Font-Size="X-Large" Visible="false"></asp:Label>
                                      </asp:TableCell>
             </asp:TableRow>
        <asp:TableRow runat="server"  Height="50">
                    <asp:TableCell>
                        <asp:Label ID="Label11" runat="server" Text="Enter New Sim Nmber"  Font-Size="X-Large"></asp:Label>
                        </asp:TableCell>
                            <asp:TableCell>
                                <asp:TextBox ID="TextBox1"  Font-Size="X-Large" runat="server"></asp:TextBox><br />
                                   <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox1" ErrorMessage="Invalid Sim No." ValidationExpression="^([1-9]{1})([0-9]{15})$"></asp:RegularExpressionValidator>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Field is mandatory"></asp:RequiredFieldValidator>
                              

                            </asp:TableCell></asp:TableRow>
             <asp:TableRow runat="server"  Height="50">
                  <asp:TableCell>
                      
                  </asp:TableCell>
                  </asp:TableRow>
    </asp:Table>
  
    
     <asp:Button ID="Button1" runat="server"  ForeColor="Yellow"  BackColor="Black"  Font-Size="X-Large" Text="Confirm" OnClick="ChangeSim" CssClass="auto-style1" Width="145px" />
   
     </asp:Content>
<asp:Content ID="Content1" runat="server" contentplaceholderid="head">
    <style type="text/css">
        .auto-style1 {
            margin-left: 642px;
        }
    </style>
</asp:Content>
