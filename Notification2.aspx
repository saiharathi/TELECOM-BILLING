<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Backend/Backend.Master" CodeBehind="Notification2.aspx.cs" Inherits="TBSProject.Backend.Notification2" %>

<asp:Content ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
             <asp:Label ID="Label1" runat="server" Text="Notification2" Font-Size="XX-Large"></asp:Label>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="LastUpdateTime" HeaderText="LastUpdateTime" SortExpression="LastUpdateTime" />
            <asp:BoundField DataField="ChangedUserName" HeaderText="ChangedUserName" SortExpression="ChangedUserName" />
            <asp:BoundField DataField="ChagedPassword" HeaderText="ChagedPassword" SortExpression="ChagedPassword" />
            <asp:BoundField DataField="ChangedAcessType" HeaderText="ChangedAcessType" SortExpression="ChangedAcessType" />
            <asp:BoundField DataField="Status" HeaderText="Status" SortExpression="Status" />
            <asp:BoundField DataField="ConnectionID" HeaderText="ConnectionID" SortExpression="ConnectionID" />
        </Columns>
             </asp:GridView>
             <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:TBS1ConnectionString30 %>" SelectCommand="SELECT * FROM [BackendUserAudit]"></asp:SqlDataSource>
     </asp:Content>
    