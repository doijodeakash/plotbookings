<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login_page.aspx.cs" Inherits="Register_Form.Login_page" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login Page</title>

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Kaushan+Script&family=Poppins&display=swap');
        @import url('https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css');
        @import url('https://stackpath.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.bundle.min.js');
        @import url('https://use.fontawesome.com/releases/v5.7.2/css/all.css');
        @import url('https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js');

        * {
            padding: 0;
            margin: 0;
            box-sizing: border-box
        }

        body {
            background-color: #eee;
            height: 100vh;
            font-family: 'Poppins', sans-serif;
            background: linear-gradient(to top, #fff 10%, rgba(93, 42, 141, 0.4) 90%) no-repeat
        }

        .wrapper {
            max-width: 500px;
            border-radius: 10px;
            margin: 50px auto;
            padding: 30px 40px;
            box-shadow: 20px 20px 80px rgb(206, 206, 206)
        }

        .h2 {
            font-family: 'Kaushan Script', cursive;
            font-size: 3.5rem;
            font-weight: bold;
            color: #400485;
            font-style: italic
        }

        .h4 {
            font-family: 'Poppins', sans-serif
        }

        .input-field {
            border-radius: 5px;
            padding: 5px;
            display: flex;
            align-items: center;
            cursor: pointer;
            border: 1px solid #400485;
            color: #400485
        }

            .input-field:hover {
                color: #7b4ca0;
                border: 1px solid #7b4ca0
            }

        input {
            border: none;
            outline: none;
            box-shadow: none;
            width: 100%;
            padding: 0px 2px;
            font-family: 'Poppins', sans-serif
        }

        .fa-eye-slash.btn {
            border: none;
            outline: none;
            box-shadow: none
        }

        a {
            text-decoration: none;
            color: #400485;
            font-weight: 700
        }

            a:hover {
                text-decoration: none;
                color: #7b4ca0
            }

        .option {
            position: relative;
            padding-left: 30px;
            cursor: pointer
        }

            .option label.text-muted {
                display: block;
                cursor: pointer
            }

            .option input {
                display: none
            }

        .checkmark {
            position: absolute;
            top: 3px;
            left: 0;
            height: 20px;
            width: 20px;
            background-color: #fff;
            border: 1px solid #ddd;
            border-radius: 50%;
            cursor: pointer
        }

        .option input:checked ~ .checkmark:after {
            display: block
        }

        .option .checkmark:after {
            content: "";
            width: 13px;
            height: 13px;
            display: block;
            background: #400485;
            position: absolute;
            top: 48%;
            left: 53%;
            border-radius: 50%;
            transform: translate(-50%, -50%) scale(0);
            transition: 300ms ease-in-out 0s
        }

        .option input[type="radio"]:checked ~ .checkmark {
            background: #fff;
            transition: 300ms ease-in-out 0s;
            border: 1px solid #400485
        }

            .option input[type="radio"]:checked ~ .checkmark:after {
                transform: translate(-50%, -50%) scale(1)
            }

        .btn.btn-block {
            border-radius: 20px;
            background-color: #400485;
            color: #fff
        }

            .btn.btn-block:hover {
                background-color: #55268be0
            }

        @media(max-width: 575px) {
            .wrapper {
                margin: 10px
            }
        }

        @media(max-width:424px) {
            .wrapper {
                padding: 30px 10px;
                margin: 5px
            }

            .option {
                position: relative;
                padding-left: 22px
            }

                .option label.text-muted {
                    font-size: 0.95rem
                }

            .checkmark {
                position: absolute;
                top: 2px
            }

            .option .checkmark:after {
                top: 50%
            }

            #forgot {
                font-size: 0.95rem
            }
        }
    </style>
</head>
<body>
    <form class="pt-3" id="form1" runat="server">

        <div class="wrapper bg-white">
            <div class="h2 text-center">Creativity</div>
            <div class="h4 text-muted text-center pt-2">Enter your login details</div>

            <div class="form-group py-2">
                <div class="input-field">
                    <span class="far fa-user p-2"></span>
                    <asp:TextBox runat="server" ID="txtname" />
                </div>
            </div>
            <div class="form-group py-1 pb-2">
                <div class="input-field"><span class="fas fa-lock p-2"></span>
                    <asp:TextBox runat="server" ID="txtpass" />
                    <button class="btn bg-white text-muted"><span class="far fa-eye-slash"></span></button>
                </div>
            </div>
            <div class="d-flex align-items-start">
                <div class="remember">
                    <label class="option text-muted">Remember me
                        <input type="radio" name="radio" />
                        <span class="checkmark"></span></label>
                </div>
                <div class="ml-auto"><a href="#" id="forgot">Forgot Password?</a> </div>
            </div>
            <asp:Button Text="login" runat="server" OnClick="btn_login_Click" class="btn btn-block text-center my-3" />
            <%-- <div class="text-center pt-3 text-muted btn btn-info btn-lg" data-toggle="modal" data-target="#myModal" >Not a member? <a href="#myModal" data-target="#myModal">Sign up</a></div>--%>
            <button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModal">Open Modal</button>
        </div>

        <!-- Bootstrap Modal -->
        <div class="modal fade mt-5 " id="myModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true" style="padding: 100px">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h2>Signup</h2>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">×</span>
                        </button>
                    </div>
                    <div class="modal-body mt-2">
                        <asp:Label runat="server"><i class="fa fa-user"></i>User Name</asp:Label>

                        <asp:TextBox type="text" ID="txtuser_name" class="form-control" runat="server" />

                        <asp:Label runat="server"><i class="fa fa-lock"></i>Password</asp:Label>

                        <asp:TextBox type="password" ID="txt_pass" class="form-control" runat="server" />

                        <asp:Label runat="server"><i class="fa fa-user"></i>Confirm password</asp:Label>

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
    </form>

    <!-- </form>-->
</body>
</html>
