<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Finance/Finance.Master" CodeBehind="AllUsers.aspx.cs" Inherits="TBSProject.Finance.AllUsers" %>

<asp:Content ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<asp:Label ID="Label1" runat="server" Text="Generate Bill For All User"></asp:Label>

    <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1">
        <AlternatingItemTemplate>
            <tr style="background-color:#FFF8DC;">
                <td>
                    <asp:Label ID="MobileNumberLabel" runat="server" Text='<%# Eval("MobileNumber") %>' />
                </td>
                <td>
                    <asp:Label ID="PlanIDLabel" runat="server" Text='<%# Eval("PlanID") %>' />
                </td>
                <td>
                    <asp:Label ID="UsedLocalMinLabel" runat="server" Text='<%# Eval("UsedLocalMin") %>' />
                </td>
                <td>
                    <asp:Label ID="UsedSTDMinLabel" runat="server" Text='<%# Eval("UsedSTDMin") %>' />
                </td>
                <td>
                    <asp:Label ID="PaymentAmountLabel" runat="server" Text='<%# Eval("PaymentAmount") %>' />
                </td>
                <td>
                    <asp:Label ID="LastDateOfBillPaymentLabel" runat="server" Text='<%# Eval("LastDateOfBillPayment") %>' />
                </td>
            </tr>
        </AlternatingItemTemplate>
        <EditItemTemplate>
            <tr style="background-color:#008A8C;color: #FFFFFF;">
                <td>
                    <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                </td>
                <td>
                    <asp:TextBox ID="MobileNumberTextBox" runat="server" Text='<%# Bind("MobileNumber") %>' />
                </td>
                <td>
                    <asp:TextBox ID="PlanIDTextBox" runat="server" Text='<%# Bind("PlanID") %>' />
                </td>
                <td>
                    <asp:TextBox ID="UsedLocalMinTextBox" runat="server" Text='<%# Bind("UsedLocalMin") %>' />
                </td>
                <td>
                    <asp:TextBox ID="UsedSTDMinTextBox" runat="server" Text='<%# Bind("UsedSTDMin") %>' />
                </td>
                <td>
                    <asp:TextBox ID="PaymentAmountTextBox" runat="server" Text='<%# Bind("PaymentAmount") %>' />
                </td>
                <td>
                    <asp:TextBox ID="LastDateOfBillPaymentTextBox" runat="server" Text='<%# Bind("LastDateOfBillPayment") %>' />
                </td>
            </tr>
        </EditItemTemplate>
        <EmptyDataTemplate>
            <table runat="server" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;">
                <tr>
                    <td>No data was returned.</td>
                </tr>
            </table>
        </EmptyDataTemplate>
        <InsertItemTemplate>
            <tr style="">
                <td>
                    <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                </td>
                <td>
                    <asp:TextBox ID="MobileNumberTextBox" runat="server" Text='<%# Bind("MobileNumber") %>' />
                </td>
                <td>
                    <asp:TextBox ID="PlanIDTextBox" runat="server" Text='<%# Bind("PlanID") %>' />
                </td>
                <td>
                    <asp:TextBox ID="UsedLocalMinTextBox" runat="server" Text='<%# Bind("UsedLocalMin") %>' />
                </td>
                <td>
                    <asp:TextBox ID="UsedSTDMinTextBox" runat="server" Text='<%# Bind("UsedSTDMin") %>' />
                </td>
                <td>
                    <asp:TextBox ID="PaymentAmountTextBox" runat="server" Text='<%# Bind("PaymentAmount") %>' />
                </td>
                <td>
                    <asp:TextBox ID="LastDateOfBillPaymentTextBox" runat="server" Text='<%# Bind("LastDateOfBillPayment") %>' />
                </td>
            </tr>
        </InsertItemTemplate>
        <ItemTemplate>
            <tr style="background-color:#DCDCDC;color: #000000;">
                <td>
                    <asp:Label ID="MobileNumberLabel" runat="server" Text='<%# Eval("MobileNumber") %>' />
                </td>
                <td>
                    <asp:Label ID="PlanIDLabel" runat="server" Text='<%# Eval("PlanID") %>' />
                </td>
                <td>
                    <asp:Label ID="UsedLocalMinLabel" runat="server" Text='<%# Eval("UsedLocalMin") %>' />
                </td>
                <td>
                    <asp:Label ID="UsedSTDMinLabel" runat="server" Text='<%# Eval("UsedSTDMin") %>' />
                </td>
                <td>
                    <asp:Label ID="PaymentAmountLabel" runat="server" Text='<%# Eval("PaymentAmount") %>' />
                </td>
                <td>
                    <asp:Label ID="LastDateOfBillPaymentLabel" runat="server" Text='<%# Eval("LastDateOfBillPayment") %>' />
                </td>
            </tr>
        </ItemTemplate>
        <LayoutTemplate>
            <table runat="server">
                <tr runat="server">
                    <td runat="server">
                        <table id="itemPlaceholderContainer" runat="server" border="1" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                            <tr runat="server" style="background-color:#DCDCDC;color: #000000;">
                                <th runat="server">MobileNumber</th>
                                <th runat="server">PlanID</th>
                                <th runat="server">UsedLocalMin</th>
                                <th runat="server">UsedSTDMin</th>
                                <th runat="server">PaymentAmount</th>
                                <th runat="server">LastDateOfBillPayment</th>
                            </tr>
                            <tr id="itemPlaceholder" runat="server">
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr runat="server">
                    <td runat="server" style="text-align: center;background-color: #CCCCCC;font-family: Verdana, Arial, Helvetica, sans-serif;color: #000000;">
                        <asp:DataPager ID="DataPager1" runat="server">
                            <Fields>
                                <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowLastPageButton="True" />
                            </Fields>
                        </asp:DataPager>
                    </td>
                </tr>
            </table>
        </LayoutTemplate>
        <SelectedItemTemplate>
            <tr style="background-color:#008A8C;font-weight: bold;color: #FFFFFF;">
                <td>
                    <asp:Label ID="MobileNumberLabel" runat="server" Text='<%# Eval("MobileNumber") %>' />
                </td>
                <td>
                    <asp:Label ID="PlanIDLabel" runat="server" Text='<%# Eval("PlanID") %>' />
                </td>
                <td>
                    <asp:Label ID="UsedLocalMinLabel" runat="server" Text='<%# Eval("UsedLocalMin") %>' />
                </td>
                <td>
                    <asp:Label ID="UsedSTDMinLabel" runat="server" Text='<%# Eval("UsedSTDMin") %>' />
                </td>
                <td>
                    <asp:Label ID="PaymentAmountLabel" runat="server" Text='<%# Eval("PaymentAmount") %>' />
                </td>
                <td>
                    <asp:Label ID="LastDateOfBillPaymentLabel" runat="server" Text='<%# Eval("LastDateOfBillPayment") %>' />
                </td>
            </tr>
        </SelectedItemTemplate>
</asp:ListView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:TBS1ConnectionString23 %>" SelectCommand="SELECT * FROM [h1]"></asp:SqlDataSource>
    <asp:Button ID="Button1"  ForeColor="Yellow"  BackColor="Black" Font-Size="X-Large" runat="server" OnClick="GenerateBill_Click" Text="Generate Bill" CssClass="auto-style1" Width="186px" />


 </asp:Content>
<asp:Content ID="Content1" runat="server" contentplaceholderid="head">
    <style type="text/css">
        .auto-style1 {
            margin-left: 404px;
        }
    </style>
</asp:Content>
