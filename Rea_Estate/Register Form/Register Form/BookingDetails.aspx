<%@ Page MasterPageFile="~/UserMasterPage.Master" Language="C#" AutoEventWireup="true" CodeBehind="BookingDetails.aspx.cs" Inherits="Register_Form.BookingDetails" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <html xmlns="http://www.w3.org/1999/xhtml">
    <head>
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

        <style>
            @import url('https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css');
/*            @import url('https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js');*/
            /*@import url('https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js');*/
            /*@import url('https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js');*/
            @import url('https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css');
            /*@import url('https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js');*/

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
        
        <title></title>
    </head>
    <body>
        <form id="form1" runat="server">
                        <table style="margin-top: 30px;" align="center" class="w-100">
                <tr>
                    <td>&nbsp;</td>
                    <td>
                        <asp:GridView ID="GridView1" Style="background-color: white;" class="table table-bordered responsive-table" runat="server" AutoGenerateColumns="False" CellPadding="3" CellSpacing="1" GridLines="None" OnRowDeleting="GridView1_RowDeleting" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating" OnRowCancelingEdit="GridView1_RowCancelingEdit" AllowPaging="True" OnPageIndexChanging="GridView1_PageIndexChanging" PageSize="5">
                            <Columns>
<%--                                <asp:TemplateField HeaderText="PLOT ID">
                                    <EditItemTemplate>
                                        <asp:TextBox ID="txtid" runat="server" Text='<%# Bind("plot_no") %>'></asp:TextBox>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:Label ID="lblid" runat="server" Text='<%# Bind("plot_no") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="SQUARE FEET">
                                    <EditItemTemplate>
                                        <asp:TextBox ID="txtsquarefeet" runat="server" Text='<%# Bind("square_fit") %>'></asp:TextBox>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:Label ID="Label2" runat="server" Text='<%# Bind("square_fit") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="STATUS">
                                    <EditItemTemplate>
                                        <asp:TextBox ID="txtstatus" runat="server" Text='<%# Bind("status") %>'></asp:TextBox>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:Label ID="Label3" runat="server" Text='<%# Bind("status") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="USER NAME">
                                    <EditItemTemplate>
                                        <asp:TextBox ID="txtuser" runat="server" Text='<%# Bind("user_name") %>'></asp:TextBox>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:Label ID="Label7" runat="server" Text='<%# Bind("user_name") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="CONTACT">
                                    <EditItemTemplate>
                                        <asp:TextBox ID="txtmobile" Style="width: auto;" runat="server" Text='<%# Bind("mobile") %>'></asp:TextBox>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:Label ID="Label4" runat="server" Text='<%# Bind("mobile") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>--%>
                                <asp:TemplateField HeaderText="PLOT ID">
                                    <EditItemTemplate>
                                        <asp:TextBox ID="txtid" runat="server" Text='<%# Bind("plot_no") %>'></asp:TextBox>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:Label ID="lblid" runat="server" Text='<%# Bind("plot_no") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <%--<asp:BoundField DataField="plot_no" HeaderText="PLOT NO" />--%>
                                <asp:BoundField DataField="square_fit" HeaderText="SQUARE FEET" />
                                <asp:BoundField DataField="status" HeaderText="STATUS" />
                                <asp:BoundField DataField="mobile" HeaderText="CONATCT" />
                                <asp:BoundField DataField="bookingdate" HeaderText="DATE OF BOOKING" />
                                <asp:CommandField ShowDeleteButton="True"></asp:CommandField>
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
                    <td>&nbsp;</td>
                </tr>
            </table>
        </form>
    </body>
    </html>
</asp:Content>
