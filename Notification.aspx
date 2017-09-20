<%@ Page Language="C#" AutoEventWireup="true"  MasterPageFile="~/Finance/Finance.Master" CodeBehind="Notification.aspx.cs" Inherits="TBSProject.Finance.Notification" %>

<asp:Content ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:GridView ID="GridView2" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="LastUpdateTime" HeaderText="LastUpdateTime" SortExpression="LastUpdateTime" />
            <asp:BoundField DataField="ChangedUserName" HeaderText="ChangedUserName" SortExpression="ChangedUserName" />
            <asp:BoundField DataField="ChagedPassword" HeaderText="ChagedPassword" SortExpression="ChagedPassword" />
            <asp:BoundField DataField="ChangedAcessType" HeaderText="ChangedAcessType" SortExpression="ChangedAcessType" />
            <asp:BoundField DataField="Status" HeaderText="Status" SortExpression="Status" />
            <asp:BoundField DataField="ConnectionID" HeaderText="ConnectionID" SortExpression="ConnectionID" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:TBS1ConnectionString25 %>" SelectCommand="SELECT * FROM [FinanceUserAudit]"></asp:SqlDataSource>
    </asp:Content>