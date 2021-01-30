<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Editprds.aspx.cs" Inherits="CUSTOMER_Editprds" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" Runat="Server">
    Update Details
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" Runat="Server">
    <style>
        * {
            outline: none;
        }
        .maincontainer {
            width: 100%;
            height: auto;
            position: relative;
            box-sizing: content-box;
        }
        .mainheading {
            color: #0094ff;
            font-size: 35px;
            font-family: Montserrat;
            letter-spacing: 3px;
            text-transform: uppercase;
            position: relative;
            text-align: center;
        }
        .boxs {
            width: 80%;
            height: auto;
            background: #fff;
            margin: 10px auto;
            border-bottom: 1px solid #b1b1b1;
            position: relative;
            box-sizing: border-box;
            box-shadow: 0 5px 5px rgba(0, 0, 0, 0.21);
        }
        .boxs2 {
            width: 80%;
            height: auto;
            margin: 10px auto;
            position: relative;
            box-sizing: border-box;
        }
        .subheading {
            font-family: Montserrat;
            color: #fff;
            background:#0094ff;
            padding-left: 25px;
            font-size: 18px;
            font-weight: 400;
            line-height: 3;
        }
        .chfilbtn {
            position: relative;
            color: #fff;
            padding: 15px 30px 15px 30px;
            border-radius: 3px;
            background: #2eff49;
            font-family: Montserrat;
            letter-spacing: 3px;
            left: -250px;
            margin: 10px;
            border: none;
            cursor: pointer;
        }
        .upldbtn {
            position: absolute;
            color: #fff;
            padding: 15px 30px 15px 30px;
            border-radius: 3px;
            background: linear-gradient(#159cfe,#0094ff);
            font-family: Montserrat;
            letter-spacing: 3px;
            margin: 10px;
            bottom: 0px;
            right: 0px;
            border: none;   
            cursor: pointer;
        }
        .upldbtn:hover {
            background: linear-gradient(#0094ff,#159cfe);
        }
        .upldbtn2 {
            position: relative;
            color: #fff;
            padding: 15px 30px 15px 30px;
            border-radius: 3px;
            background: linear-gradient(#159cfe,#0094ff);
            font-family: Montserrat;
            letter-spacing: 3px;
            border: none;   
            cursor: pointer;
            left: 140px;
        }
        .upldbtn2:hover {
            background: linear-gradient(#0094ff,#159cfe);
        }
        .filupbtn {
            position: relative;
            left: 113px;
        }
        .chgnametxtbx {
            font-family: Montserrat;
            padding-left: 10px;
            width: 400px;
            height: 35px;
            border: 1px solid #cbcbcb;
            border-radius: 3px;
            margin: 13px;
        }
        .rttxtbx {
            font-family: Montserrat;
            padding-left: 10px;
            width: 250px;
            height: 35px;
            border: 1px solid #cbcbcb;
            border-radius: 3px;
            margin: 10px;
        }
        .abtrtitmtxtbx {
            font-family: Montserrat;
            padding-left: 10px;
            width: 250px;
            height: 100px;
            border: 1px solid #cbcbcb;
            border-radius: 3px;
            margin: 10px;
        }
        .crntitmlbl {
            font-family: Montserrat;
            font-size: 20px;
            color: #ff4d4d;
            margin: 10px 10px;
        }
        .imgbx {
            width: 150px;
            height: 150px;
            margin: 10px;
        }
        .imgcss {
            max-height: 100%;
            max-width: 100%;
        }
    </style>
    <script>
        $(document).ready(function () {
            var inter = function () {
                $('.filupbtn').html($('.filupbtn').val());
            };
            $('.chfilbtn').click(function () {
                $('.filupbtn').click();
                setInterval(inter, 1);
                return false;
                
            });
        });
    </script>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="maincontainer">
        <h3 class="mainheading">
            Update your item details
        </h3>
        <table style="width: 100%">
            <tr>
                <td>
                    <div class="boxs2">
                        <asp:Label ID="Label1" runat="server" CssClass="crntitmlbl" Text="ITEM SELECTED : "></asp:Label><asp:Label ID="Label2" runat="server" CssClass="crntitmlbl" Text="Label"></asp:Label>
                        <div class="imgbx">
                            <asp:Image ID="Image1" runat="server" CssClass="imgcss" />
                        </div>
                    </div>
                </td>
            </tr>
            <tr>
                <td>
                    <div class="boxs">
                        <h2 class="subheading">
                            > Upload another image
                        </h2>
                        <asp:FileUpload ID="FileUpload1" CssClass="filupbtn" runat="server" />
                        <asp:Button ID="Button1" CssClass="chfilbtn" runat="server" Text="CHOOSE FILE" />
                        <asp:Button ID="Button2" CssClass="upldbtn" runat="server" Text="UPLOAD" OnClick="Button2_Click" />
                    </div>
                </td>
            </tr>
            <tr>
                <td>
                    <div class="boxs">
                        <h2 class="subheading">
                            > Change item name
                        </h2>
                        <asp:TextBox ID="TextBox2" CssClass="chgnametxtbx" runat="server" placeholder="Enter new name"></asp:TextBox>                        
                        <asp:Button ID="Button4" CssClass="upldbtn" runat="server" Text="CHANGE" OnClick="Button4_Click" />
                    </div>
                </td>
            </tr>
            <tr>
                <td>
                    <div class="boxs">
                        <h2 class="subheading">
                            > Change Return Items
                        </h2>
                        <table style="margin: auto;">
                            <tr>
                                <td>
                                    <asp:TextBox ID="TextBox1" CssClass="rttxtbx" runat="server" placeholder="Return Item 1"></asp:TextBox>
                                </td>
                                <td>
                                    <asp:TextBox ID="TextBox3" CssClass="rttxtbx" runat="server" placeholder="Return Item 2"></asp:TextBox>
                                </td>
                                <td>
                                    <asp:TextBox ID="TextBox4" CssClass="rttxtbx" runat="server" placeholder="Return Item 3"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:TextBox ID="TextBox5" runat="server" placeholder="About item 1" TextMode="MultiLine" CssClass="abtrtitmtxtbx"></asp:TextBox>
                                </td>
                                <td>
                                    <asp:TextBox ID="TextBox6" runat="server" placeholder="About item 2" TextMode="MultiLine" CssClass="abtrtitmtxtbx"></asp:TextBox>
                                </td>
                                <td>
                                    <asp:TextBox ID="TextBox7" runat="server" placeholder="About item 3" TextMode="MultiLine" CssClass="abtrtitmtxtbx"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Button ID="Button3" CssClass="upldbtn2" runat="server" Text="CHANGE" OnClick="Button3_Click" />
                                </td>
                                <td>
                                    <asp:Button ID="Button5" CssClass="upldbtn2" runat="server" Text="CHANGE" OnClick="Button5_Click" />
                                </td>
                                <td>
                                    <asp:Button ID="Button6" CssClass="upldbtn2" runat="server" Text="CHANGE" OnClick="Button6_Click" />
                                </td>
                            </tr>
                        </table>
                        
                    </div>
                </td>
            </tr>
            <tr>
                <td>
                    <div class="boxs">
                        <h2 class="subheading">
                            > Change Address
                        </h2>
                        <asp:TextBox ID="TextBox8" runat="server" CssClass="chgnametxtbx" placeholder="House/Company Name"></asp:TextBox><br />
                        <asp:TextBox ID="TextBox9" runat="server" CssClass="chgnametxtbx" placeholder="Mobile Phone"></asp:TextBox>
                        <asp:Button ID="Button7" CssClass="upldbtn" runat="server" Text="CHANGE" OnClick="Button7_Click" />
                    </div>
                </td>
            </tr>
        </table>
    </div>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>

