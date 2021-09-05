<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Signup.aspx.cs" Inherits="Register_Form.Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <h1>Register Form</h1>
        UserName:
        <asp:TextBox runat="server" ID="txtusernm"/>&nbsp;<asp:Label ID="Label1" runat="server"></asp:Label>
        <br /><br />  

        Password:
        <asp:TextBox runat="server" ID="txtpass"/><br /><br />
        
        Confirm Password:
        <asp:TextBox runat="server" ID="txtcnfpass"/><br /><br />  


        <asp:Button Text="Submit" ID="btn_register" runat="server" OnClick="btn_register_Click" />
  

    </div>
    </form>
</body>
</html>
