<%@ Page MasterPageFile="~/UserMasterPage.master" Language="C#" AutoEventWireup="true" CodeBehind="Register_Page.aspx.cs" Inherits="Register_Form.Register_Page" %>

<%@ Register Assembly="Microsoft.ReportViewer.WebForms" Namespace="Microsoft.Reporting.WebForms" TagPrefix="rsweb" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <!DOCTYPE html>

    <html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <title></title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" />
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>

        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" />
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

        <link href="StyleSheet1.css" rel="stylesheet" />
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1" />
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" />
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

        <style>
            .about {
                margin-top: 200px;
            }

            @import url('https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css');
            @import url('https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js');
            @import url('https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js');
            @import url('https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js');
            @import url('https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css');
            @import url('https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js');

            .add_plots {
                margin-top: 200px;
            }
            /*        body {
    background: #74ebd5;
    
    min-height: 100vh;

        }*/

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

        <form id="form1" runat="server" class="mt-5">
            <button type="button" class="btn btn-info btn-lg btn btn-primary float-right" style="border: none; border-radius: 20px;" data-toggle="modal" data-target="#exampleModalLong">See Layout</button>
            <table style="margin-top: 30px;" class="w-100">
                <tr>
                    <td>
                        <asp:GridView Style="text-align: center; background-color: white;" runat="server" ID="g1" class="table table-bordered responsive-table" AutoGenerateColumns="False" OnSelectedIndexChanged="g1_SelectedIndexChanged">
                            <Columns>
                                <asp:BoundField DataField="plot_no" HeaderText="PLOT NO" />
                                <asp:BoundField DataField="square_fit" HeaderText="SQUARE FEET" />
                                <asp:BoundField DataField="status" HeaderText="STATUS" />
                                <asp:TemplateField HeaderText="SELECT PLOT" ShowHeader="False">
                                    <ItemTemplate>
                                        <asp:LinkButton ID="LinkButton2" runat="server" class="btn btn-info btn-lg btn btn-primary float-center" Style="border: none; border-radius: 20px;" CausesValidation="False" CommandName="Select" Text="Select"></asp:LinkButton>
                                    </ItemTemplate>
                                    <ControlStyle CssClass="btn btn-info btn-lg btn btn-primary" />
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="BOOK PLOT">
                                    <ItemTemplate>
                                        <asp:LinkButton ID="LinkButton1" class="btn btn-info btn-lg btn btn-primary float-center" Style="border: none; border-radius: 20px;" data-toggle="modal" data-target="#myModal" runat="server" CausesValidation="false" CommandName="" Text="BOOK NOW"></asp:LinkButton>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:BoundField DataField="bookingdate" HeaderText="BOOKED DATE" />
                            </Columns>
                            <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
                            <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="White" BorderStyle="None" />
                            <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
                            <RowStyle ForeColor="Black" BorderStyle="None" />
                            <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
                            <SortedAscendingCellStyle BackColor="#F1F1F1" />
                            <SortedAscendingHeaderStyle BackColor="#594B9C" />
                            <SortedDescendingCellStyle BackColor="#CAC9C9" />
                            <SortedDescendingHeaderStyle BackColor="#33276A" />
                        </asp:GridView>
                    </td>
                    <td></td>
                </tr>
                <tr>
                    <td></td>
                </tr>
            </table>
            <!-- Bootstrap Modal -->
            <div class="modal fade mt-5 " id="myModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true" style="padding: 100px">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h2>Add Plot</h2>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">×</span>
                            </button>
                        </div>
                        <div class="modal-body mt-2">
                            <asp:Label runat="server"><i class="fa fa-sort-numeric-asc"></i>Plot No</asp:Label>

                            <asp:TextBox type="text" ReadOnly="true" ID="txtplotno" class="form-control" runat="server" />

                            <asp:Label runat="server"><i class="fa fa-area-chart"></i>Square Feet</asp:Label>

                            <asp:TextBox type="text" ReadOnly="true" ID="txtsqft" class="form-control" runat="server" />

                            <asp:Label runat="server"><i class="fa fa-check-square"></i>Status</asp:Label>

                            <asp:TextBox type="text" ReadOnly="true" ID="txtstatus" class="form-control" runat="server" />

                            <asp:Label runat="server"><i class="fa fa-user"></i>Cutomer Name</asp:Label>

                            <asp:TextBox type="text" ID="txtcname" class="form-control" runat="server" ReadOnly="true" />

                            <asp:Label runat="server"><i class="fa fa-phone-square"></i>Mobile No.</asp:Label>

                            <asp:TextBox type="text" ID="txtcontact" ValidationGroup="plotbooking" class="form-control" runat="server" />
                        </div>
                        <div class="modal-footer">
                            <asp:Button Text="Close" class="btn btn-secondary" data-dismiss="modal" runat="server" Style="width: 100%" />
                            <asp:Button Text="Book" class="btn btn-primary" runat="server" Style="width: 100%" OnClick="btn_Click" ID="btn_saves" />
                        </div>
                    </div>
                </div>
            </div>

            <!-- END Bootstrap Modal -->

            <!--Layout Modal -->
            <div class="modal fade" id="exampleModalLong" tabindex="-1" role="dialog" aria-labelledby="exampleModalLongTitle" aria-hidden="true">
                <div class="modal-dialog modal-lg" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h3 class="modal-title" id="exampleModalLongTitle"><span style="font-style: italic; color: gray; font-size: 25px">Aarzo</span> <span style="font-size: 15px">Real Estate Site Layout</span></h3>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <div class="modal-body ">
                            <img src="Images/layout.jpg" style="height: 100%; width: 100%;" />
                        </div>
                        <%--<div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                            <button type="button" class="btn btn-primary">Booking</button>
                        </div>--%>
                    </div>
                </div>
            </div>
            <!--Layout Modal End -->
        </form>
    </body>
    </html>
</asp:Content>
