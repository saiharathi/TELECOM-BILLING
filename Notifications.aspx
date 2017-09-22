<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Customer/Customer.Master" CodeBehind="Notifications.aspx.cs" Inherits="TBSProject.Customer.Notifications" %>

<asp:Content ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  
    

    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
    <Columns>
        <asp:BoundField DataField="ToSIMNumber" HeaderText="ToSIMNumber" SortExpression="ToSIMNumber" />
        <asp:BoundField DataField="StartTime" HeaderText="StartTime" SortExpression="StartTime" />
        <asp:BoundField DataField="EndTime" HeaderText="EndTime" SortExpression="EndTime" />
        <asp:BoundField DataField="CallStatus" HeaderText="CallStatus" SortExpression="CallStatus" />
        <asp:BoundField DataField="CallDuration" HeaderText="CallDuration" SortExpression="CallDuration" />
        <asp:BoundField DataField="ConnectionID" HeaderText="ConnectionID" SortExpression="ConnectionID" />
    </Columns>
</asp:GridView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:TBS1ConnectionString31 %>" SelectCommand="SELECT * FROM [CallMaster]"></asp:SqlDataSource>
  
    

    </asp:Content>