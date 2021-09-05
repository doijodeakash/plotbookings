<%@ Page MasterPageFile="~/UserMasterPage.Master" Language="C#" AutoEventWireup="true" CodeBehind="UserHome.aspx.cs" Inherits="Register_Form.UserHome" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <asp:DataList ID="dlplots" style="margin-left:50px;" runat="server" Width="285px" OnItemCommand="dlplots_ItemCommand">
                        <ItemTemplate>
                <table class="auto-style1">
                    <tr>
                        <td>
                            <asp:Label ID="Label1" runat="server" Text='Plot No'></asp:Label>
                        </td>
                        <td>
                            <asp:Label ID="lblplotno" runat="server" Text='<%# Eval("plot_no") %>'></asp:Label>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                </table>
                            <br />
                            <table class="auto-style1">
                                <tr>
                                    <td>
                                        <asp:Label ID="Label2" runat="server" Text="Plot No"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:Label ID="lblplotno0" runat="server" Text='<%# Eval("plot_no") %>'></asp:Label>
                                    </td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                            </table>
                            <br />
                            <table class="auto-style1">
                                <tr>
                                    <td>
                                        <asp:Label ID="Label3" runat="server" Text="Plot No"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:Label ID="lblplotno1" runat="server" Text='<%# Eval("plot_no") %>'></asp:Label>
                                    </td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                            </table>
            </ItemTemplate>
            <AlternatingItemStyle Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" HorizontalAlign="Center" VerticalAlign="Middle" />
            <EditItemStyle BackColor="#FFFF99" BorderColor="#3399FF" ForeColor="#FFFF99" />
            <ItemTemplate>
                <table class="auto-style1">
                    <tr>
                        <td>
                            <asp:Label ID="Label1" runat="server" Text='Plot No'></asp:Label>
                        </td>
                        <td>
                            <asp:Label ID="lblplotno" runat="server" Text='<%# Eval("plot_no") %>'></asp:Label>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </form>
</body>
</html>
    </asp:Content>