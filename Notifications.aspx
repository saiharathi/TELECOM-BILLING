<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Admin/Admin.Master" CodeBehind="Notifications.aspx.cs" Inherits="TBSProject.Admin.Notifications" %>

<asp:Content ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  <asp:Label ID="Label1" runat="server" Font-Size="XX-Large" Font-Underline="true" Text="Notifications"></asp:Label> 

    <div>
    <asp:HyperLink  ID="HyperLink1" runat="server" Font-Size="X-Large" NavigateUrl="~/Admin/Notification1.aspx">BillingPlanMasterNotifcations</asp:HyperLink>
    </div>
    <div>
    <asp:HyperLink ID="HyperLink2" runat="server" Font-Size="X-Large" NavigateUrl="~/Admin/Notification2.aspx">UserMasterNotifications</asp:HyperLink>
        </div>
</asp:Content>
 