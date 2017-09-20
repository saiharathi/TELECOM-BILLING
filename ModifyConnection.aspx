<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Backend/Backend.Master" CodeBehind="ModifyConnection.aspx.cs" Inherits="TBSProject.Backend.ModifyConnection" %>

<asp:Content ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
             

   
       <center> <asp:Label ID="Label1" runat="server" Text="Modify Connection" Font-Underline="true" Font-Size="XX-Large"></asp:Label></center>
        <asp:Table ID="Table1" runat="server" HorizontalAlign="Center">
           <asp:TableRow runat="server"  Height="50">
                    <asp:TableCell>
                        <asp:Label ID="Label2" runat="server" Text="Connection ID" Font-Size="X-Large"></asp:Label>                       
           </asp:TableCell>
                              <asp:TableCell>
                                  <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" Font-Size="X-Large" DataSourceID="SqlDataSource1" DataTextField="ConnectionID" DataValueField="ConnectionID" OnSelectedIndexChanged="ModifySelect_onclick"></asp:DropDownList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:TBS1ConnectionString10 %>" SelectCommand="SELECT [ConnectionID] FROM [CustomerMaster]"></asp:SqlDataSource>
                                                             </asp:TableCell>
               </asp:TableRow>
         <asp:TableRow runat="server"  Height="50">
                    <asp:TableCell>
                        <asp:Label ID="Label3" runat="server" Text="SIM Number"  Font-Size="X-Large"></asp:Label>
                                                </asp:TableCell>
                                <asp:TableCell>
                                    <asp:Label ID="Label4" Visible="false" Font-Size="X-Large" runat="server"></asp:Label>
                                      </asp:TableCell>
             </asp:TableRow>
               <asp:TableRow runat="server"  Height="50">
                    <asp:TableCell>
                        <asp:Label ID="Label5" runat="server" Text="Name"  Font-Size="X-Large"></asp:Label>
                          </asp:TableCell>
                                <asp:TableCell>
                                    <asp:Label ID="Label6" Visible="false"  Font-Size="X-Large"  runat="server" ></asp:Label>
                                      </asp:TableCell>
             </asp:TableRow>
        <asp:TableRow runat="server"  Height="50">
                    <asp:TableCell>
                        <asp:Label ID="Label7" runat="server" Text="DOB(Date Of Birth)"  Font-Size="X-Large"></asp:Label>
                          </asp:TableCell>
                                <asp:TableCell>
                                    <asp:Label ID="Label8" Visible="false" Font-Size="X-Large"  runat="server" ></asp:Label>
                                      </asp:TableCell>
             </asp:TableRow>
        <asp:TableRow runat="server"  Height="50">
                    <asp:TableCell>
                        <asp:Label ID="Label9" runat="server" Text="Plan ID"  Font-Size="X-Large"></asp:Label>
                          </asp:TableCell>
            
                                <asp:TableCell>
                                    <asp:Label ID="Label10"  Visible="false" Font-Size="X-Large"  runat="server"></asp:Label>
                                      </asp:TableCell>
             </asp:TableRow>
        <asp:TableRow runat="server"  Height="50">
                    <asp:TableCell>
                        <asp:Label ID="Label11" runat="server" Text=" Choose New Plan ID"  Font-Size="X-Large"></asp:Label>
                          </asp:TableCell>
                                <asp:TableCell>
                                    <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" Font-Size="X-Large" DataSourceID="SqlDataSource2" DataTextField="PlanID" DataValueField="PlanID"></asp:DropDownList>
                                      
   
   <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:TBS1ConnectionString11 %>" SelectCommand="SELECT [PlanID] FROM [BillingPlanMaster]"></asp:SqlDataSource>
                                       </asp:TableCell>
             </asp:TableRow>
        <asp:TableRow runat="server"  Height="50">
                    <asp:TableCell>
                        <asp:Label ID="Label12" runat="server" Text="Mobile Number"  Font-Size="X-Large"></asp:Label>
                          </asp:TableCell>
                                <asp:TableCell>
                                    <asp:Label ID="Label13" Visible="false" Font-Size="X-Large"  runat="server" ></asp:Label>
                                      </asp:TableCell>
             </asp:TableRow>
        <asp:TableRow runat="server"  Height="50">
                    <asp:TableCell>
                        <asp:Label ID="Label14" runat="server" Text="Address"  Font-Size="X-Large"></asp:Label>
                          </asp:TableCell>
                                <asp:TableCell>
                                    <asp:Label ID="Label15" Visible="false" Font-Size="X-Large"  runat="server" ></asp:Label>
                                      </asp:TableCell>
             </asp:TableRow>
        <asp:TableRow runat="server"  Height="50">
                    <asp:TableCell>
                        <asp:Label ID="Label16" runat="server" Text="Enter New Address"  Font-Size="X-Large"></asp:Label>
                          </asp:TableCell>
                                <asp:TableCell>
                                    <asp:TextBox ID="TextBox1" runat="server" Font-Size="X-Large" ></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="TextBox1" runat="server" ErrorMessage="Field Cant Be Empty"></asp:RequiredFieldValidator>

                                </asp:TableCell>
             </asp:TableRow>
        <asp:TableRow runat="server"  Height="50">
                    <asp:TableCell>
                        <asp:Label ID="Label17" runat="server" Text="Contact Number"  Font-Size="X-Large"></asp:Label>
                          </asp:TableCell>
                                <asp:TableCell>
                                    <asp:Label ID="Label18" Visible="false" Font-Size="X-Large"  runat="server" ></asp:Label>
                                      </asp:TableCell>
             </asp:TableRow>
        <asp:TableRow runat="server"  Height="50">
                    <asp:TableCell>
                        <asp:Label ID="Label19" runat="server" Text="Enter New Contact Number"  Font-Size="X-Large"></asp:Label>
                          </asp:TableCell>
                                <asp:TableCell>
                                    <asp:TextBox ID="TextBox2" font-size="X-Large" runat="server"></asp:TextBox>
                                 -  <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Field is mandatory"></asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Invalid Mobile No." ValidationExpression="^([7-9]{1})([0-9]{9})$"></asp:RegularExpressionValidator>
                                                                       
                                </asp:TableCell>
             </asp:TableRow>
        <asp:TableRow runat="server"  Height="50">
                    <asp:TableCell>                       
          
             </asp:TableCell>
                                </asp:TableRow>
                  
   </asp:Table>    
     <asp:Button ID="Button1"  ForeColor="Yellow"  BackColor="Black" runat="server" Text="Confirm" Font-Size="X-Large" OnClick ="ModifyClick" CssClass="auto-style1" Width="142px" />    

    
                                      
   
   </asp:Content>
<asp:Content ID="Content1" runat="server" contentplaceholderid="head">
    <style type="text/css">
        .auto-style1 {
            margin-left: 519px;
        }
    </style>
</asp:Content>

