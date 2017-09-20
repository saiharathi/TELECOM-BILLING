<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Backend/Backend.Master" CodeBehind="NewConnection.aspx.cs" Inherits="TBSProject.Backend.NewConnection" %>

<asp:Content ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
             
              
      <center><asp:Label  ID="Label1" runat="server"   Text="New Connection" Font-Underline="true" Font-Size="XX-Large"></asp:Label></center>  
             <asp:Table ID="Table1" runat="server" HorizontalAlign="Center" Height="472px" Width="548px">
                 <asp:TableRow>
                     <asp:TableCell HorizontalAlign="Center">
                  
                         </asp:TableCell>
                 </asp:TableRow>
                  
                <asp:TableRow runat="server"  Height="50">

                    <asp:TableCell>  
                        <asp:Label ID="Label2" runat="server" Text="Connection ID" Font-Size="X-Large" ></asp:Label>
                         </asp:TableCell>
        <asp:TableCell>       
            <asp:Label ID="Label9" runat="server" Text="Label"  Visible="false"></asp:Label>
             </asp:TableCell>
                    </asp:TableRow>    

    <asp:TableRow runat="server"  Height="50">
                    <asp:TableCell>       
            <asp:Label ID="Label3" runat="server" Text="SIM Card Number"  Font-Size="X-Large"></asp:Label>
                         </asp:TableCell>
                              <asp:TableCell>
                                  <asp:TextBox ID="TextBox2"    runat="server"  Font-Size="X-Large"></asp:TextBox><br />
                                  <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="TextBox2" runat="server" ErrorMessage="Field Cant be Empty"></asp:RequiredFieldValidator>
                                  <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox2" ErrorMessage="Invalid SIMNo." ValidationExpression="^([1-9]{1})([0-9]{15})$"></asp:RegularExpressionValidator>
                                  </asp:TableCell>
         </asp:TableRow >

         <asp:TableRow runat="server"  Height="50">
              <asp:TableCell>       
     
        <asp:Label ID="Label4" runat="server" Text="Name"  Font-Size="X-Large"></asp:Label>
                   </asp:TableCell>
                        <asp:TableCell>
<asp:TextBox ID="TextBox3" runat="server"   Font-Size="X-Large"></asp:TextBox><br />
                               <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="TextBox3" runat="server" ErrorMessage="Field Cant be Empty"></asp:RequiredFieldValidator>
                            </asp:TableCell>
               </asp:TableRow >           
       
        <asp:TableRow runat="server"  Height="50">
              <asp:TableCell>       
            <asp:Label ID="Label5" runat="server" Text="DOB(Date Of Birth)"  Font-Size="X-Large"></asp:Label>
                   </asp:TableCell>
                        <asp:TableCell>
             <asp:TextBox ID="TextBox4" runat="server"  Font-Size="X-Large" ></asp:TextBox><br />
                               <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ControlToValidate="TextBox4" runat="server" ErrorMessage="Field Cant be Empty"></asp:RequiredFieldValidator>
                             <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="TextBox4" ErrorMessage="Invalid Date" MaximumValue="1/10/2017" MinimumValue="1/1/1990"  Type="Date" Display="Dynamic"></asp:RangeValidator>
                                </asp:TableCell>
             </asp:TableRow >
                   <asp:TableRow runat="server"  Height="50">
              <asp:TableCell>

            <asp:Label ID="Label6" runat="server" Text="Plan ID"  Font-Size="X-Large"></asp:Label>
                   </asp:TableCell>
                        <asp:TableCell>
                     <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" Font-Size="X-Large" DataSourceID="SqlDataSource1" DataTextField="PlanID" DataValueField="PlanID"></asp:DropDownList>
   
           <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:TBS1ConnectionString12 %>" SelectCommand="SELECT [PlanID] FROM [BillingPlanMaster]"></asp:SqlDataSource>
                   </asp:TableCell>
                 </asp:TableRow>
            <asp:TableRow runat="server"  Height="50">
              <asp:TableCell>

            <asp:Label ID="Label7" runat="server" Text="Address"  Font-Size="X-Large"></asp:Label>
                  </asp:TableCell>

                      <asp:TableCell>
                          <asp:TextBox ID="TextBox5" runat="server" Font-Size="X-Large" ></asp:TextBox><br />
                             <asp:RequiredFieldValidator ID="RequiredFieldValidator4" ControlToValidate="TextBox5" runat="server" ErrorMessage="Field Cant be Empty"></asp:RequiredFieldValidator>
                          
            </asp:TableCell>
                  </asp:TableRow >
                 <asp:TableRow runat="server"  Height="50">
                     <asp:TableCell>      
            <asp:Label ID="Label8" runat="server" Text="Current Contact Number"  Font-Size="X-Large"></asp:Label>
                     </asp:TableCell>

                            <asp:TableCell>
                                <asp:TextBox ID="TextBox1" runat="server" Font-Size="X-Large" ></asp:TextBox><br />
                                   <asp:RequiredFieldValidator ID="RequiredFieldValidator5" ControlToValidate="TextBox1" runat="server" ErrorMessage="Field Cant be Empty"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox1" ErrorMessage="Invalid Mobile No." ValidationExpression="^([7-9]{1})([0-9]{9})$"></asp:RegularExpressionValidator>
                                              </asp:TableCell>
                  </asp:TableRow>
                 <asp:TableRow runat="server"  Height="50">
              <asp:TableCell>
                  <asp:Label ID="Label10" runat="server" Text="MobileNumber"  Font-Size="X-Large"></asp:Label>
                  </asp:TableCell>
                     <asp:TableCell>
                         <asp:TextBox ID="TextBox7" runat="server" Font-Size="X-Large"   ></asp:TextBox><br />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" ControlToValidate="TextBox7" runat="server" ErrorMessage="Field Cant be Empty"></asp:RequiredFieldValidator>
                        
                     </asp:TableCell>
                     </asp:TableRow>
                 <asp:TableRow runat="server"  Height="50">
              <asp:TableCell>
                  <asp:Label ID="Label11" runat="server" Text="IDProof"  Font-Size="X-Large"></asp:Label>
                  </asp:TableCell>
                     <asp:TableCell>
                         <asp:TextBox ID="TextBox6" runat="server" Font-Size="X-Large"  ></asp:TextBox><br />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" ControlToValidate="TextBox6" runat="server" ErrorMessage="Field Cant be Empty"></asp:RequiredFieldValidator>
                          <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="TextBox1" ErrorMessage="Invalid IDProof No." ValidationExpression="^([1-9]{1})([0-9]{11})$"></asp:RegularExpressionValidator>
                         </asp:TableCell>
                  </asp:TableRow>
            <asp:TableRow runat="server"  Height="50">
           
                  <asp:TableCell runat="server">

        
                   </asp:TableCell>

         </asp:TableRow>
            </asp:Table>
       <asp:Button ID="Button1" runat="server"  ForeColor="Yellow"  BackColor="Black" Text="Confirm"  HorizontalAlign="Center" OnClick="Confirm_Click"  Font-Size="X-Large" CssClass="auto-style1" Width="145px"/>
    
   
           </asp:Content>            

   
<asp:Content ID="Content1" runat="server" contentplaceholderid="head">
    <style type="text/css">
        .auto-style1 {
            margin-left: 589px;
        }
    </style>
</asp:Content>
            

   
