<%@ Page Language="C#" MasterPageFile="~/UserMasterPage.Master" AutoEventWireup="true" CodeBehind="Modal_popup_form.aspx.cs" Inherits="Register_Form.Modal_popup_form" %>

<%--<!DOCTYPE html>--%>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>Modal popup</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css"/>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
     <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
     <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"/>
    

</head>
<body>
    <form id="form1"  runat="server">
    <div class="container">
        <!-- The button that triggers the Modal -->
<button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModal">Open Modal</button>
 
<!-- Bootstrap Modal -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">×</span>
        </button>
      </div>
      <div class="modal-body">
          <asp:Label  runat="server" ><i class="fa fa-user"></i>User Name</asp:Label>

          <asp:TextBox type="text" ID="txtuser_name" class="form-control" runat="server" />

          <asp:Label  runat="server" ><i class="fa fa-lock"></i>Password</asp:Label>

          <asp:TextBox type="password" ID="txt_pass" class="form-control" runat="server" />

          <asp:Label  runat="server" ><i class="fa fa-user"></i>Confirm password</asp:Label>

          <asp:TextBox type="password" ID="txt_confirmpass" class="form-control" runat="server" />
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        <button type="button" class="btn btn-primary">Save changes</button>
      </div>
    </div>
  </div>
</div>
<!-- END Bootstrap Modal -->
    </div>
    </form>
</body>
</html>
</asp:Content>