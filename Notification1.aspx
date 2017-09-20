<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Admin/Admin.Master" CodeBehind="Notification1.aspx.cs" Inherits="TBSProject.Admin.Notification1" %>

<asp:Content ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Label ID="Label1" runat="server" Text="Notication1"></asp:Label>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" AllowPaging="True" AllowSorting="True">
        <Columns>
            <asp:BoundField DataField="LastUpdatedTime" HeaderText="LastUpdatedTime" SortExpression="LastUpdatedTime" />
            <asp:BoundField DataField="ChangedPlanID" HeaderText="ChangedPlanID" SortExpression="ChangedPlanID" />
            <asp:BoundField DataField="ChangedPlanName" HeaderText="ChangedPlanName" SortExpression="ChangedPlanName" />
            <asp:BoundField DataField="ChangedLFM" HeaderText="ChangedLFM" SortExpression="ChangedLFM" />
            <asp:BoundField DataField="ChangedSTD" HeaderText="ChangedSTD" SortExpression="ChangedSTD" />
            <asp:BoundField DataField="ChangedCLFM" HeaderText="ChangedCLFM" SortExpression="ChangedCLFM" />
            <asp:BoundField DataField="ChangedCSTD" HeaderText="ChangedCSTD" SortExpression="ChangedCSTD" />
            <asp:BoundField DataField="ChangedStatus" HeaderText="ChangedStatus" SortExpression="ChangedStatus" />
        </Columns>
</asp:GridView>

   <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:TBS1ConnectionString5 %>" SelectCommand="SELECT * FROM [AdminBillingAudit]"></asp:SqlDataSource>

   </asp:Content>
   