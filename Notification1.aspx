<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Backend/Backend.Master" CodeBehind="Notification1.aspx.cs" Inherits="TBSProject.Backend.Notification1" %>

 <asp:Content ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <asp:Label ID="Label1" runat="server" Text="Notification1" Font-Size="XX-Large"></asp:Label>
     <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
         <Columns>
             <asp:BoundField DataField="LastUpdatedTime" HeaderText="LastUpdatedTime" SortExpression="LastUpdatedTime" />
             <asp:BoundField DataField="NewSimNumber" HeaderText="NewSimNumber" SortExpression="NewSimNumber" />
             <asp:BoundField DataField="NewName" HeaderText="NewName" SortExpression="NewName" />
             <asp:BoundField DataField="NewDob" HeaderText="NewDob" SortExpression="NewDob" />
             <asp:BoundField DataField="NewAddress" HeaderText="NewAddress" SortExpression="NewAddress" />
             <asp:BoundField DataField="NewContactno" HeaderText="NewContactno" SortExpression="NewContactno" />
             <asp:BoundField DataField="NewMobileno" HeaderText="NewMobileno" SortExpression="NewMobileno" />
             <asp:BoundField DataField="NewPlanID" HeaderText="NewPlanID" SortExpression="NewPlanID" />
             <asp:BoundField DataField="NewAccountStatus" HeaderText="NewAccountStatus" SortExpression="NewAccountStatus" />
             <asp:BoundField DataField="NewIDproof" HeaderText="NewIDproof" SortExpression="NewIDproof" />
         </Columns>
     </asp:GridView>

   
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:TBS1ConnectionString13 %>" SelectCommand="SELECT * FROM [BackendCustomerAudit]"></asp:SqlDataSource>

   
        
     </asp:Content>
    