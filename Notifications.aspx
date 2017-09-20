<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Backend/Backend.Master" CodeBehind="Notifications.aspx.cs" Inherits="TBSProject.Backend.Notifications" %>

    <asp:Content ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <asp:Label ID="Label1" Font-Size="XX-Large" runat="server" Text="Notifications"></asp:Label>
    <div>
    <asp:HyperLink  ID="HyperLink1" runat="server" Font-Size="X-Large" ForeColor="Black" NavigateUrl="~/Backend/Notification1.aspx">CustomerMasterNotifications</asp:HyperLink><br />

   


    <asp:HyperLink ID="HyperLink2" runat="server" Font-Size="X-Large" ForeColor="Black" NavigateUrl="~/Backend/Notification2.aspx">UserMasterNotifications</asp:HyperLink><br />
         </div>
        </asp:Content>