<%@ Page MasterPageFile="~/IndexMaster.Master" Language="C#" AutoEventWireup="true" CodeBehind="AdminReports.aspx.cs" Inherits="Register_Form.AdminReports" %>
<%@ Register Assembly="Microsoft.ReportViewer.WebForms" Namespace="Microsoft.Reporting.WebForms" TagPrefix="rsweb" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <!DOCTYPE html>

    <html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <title></title>
    </head>
    <body style="margin-top:70px;">
        <form id="form1" runat="server">
            Enter Plot No: <asp:TextBox ID="txtplotno" runat="server"></asp:TextBox> <asp:Button ID="btnsearch" runat="server" Text="SEARCH" OnClick="btnsearch_Click" />
            <table style="width: 100%;margin-top:70px;">
                <tr>
                    <td>                        
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>
                        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
                        <rsweb:ReportViewer ID="ReportViewer1" runat="server" Height="486px" Width="1083px"></rsweb:ReportViewer>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </form>
    </body>
    </html>
</asp:Content>