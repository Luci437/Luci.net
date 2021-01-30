<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ContactUs.aspx.cs" Inherits="MAIN_PAGES_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Contact Luci</title>
    <style>
        * {
            margin: 0px;
            padding: 0px;
        }
        body {
            background: #efefef;
        }
        .headerpart {
            width: 100%;
            height: 50px;
            background: #0094ff;
            position: relative;
        }
        .headerpart a {
            font-family: 'Script MT';
            font-size: 40px;
            color: #fff;
            top: 0px;
            left: 20px;
            position: relative;
            text-decoration: none;
        }
        .headerpart h3 {
            color: #f1f1f1;
            font-family: Roboto;
            font-size: 18px;
            position: relative;
            display: inline;
            left: 30px;
            top: -5px;
            border-left: 1px solid #f1f1f1;
            padding-left: 10px;
        }
        .maintable {
            margin: auto;
            width: 100%;
            position: relative;
        }
        .menucontainer {
            width: 100%;
            height: 400px;
            background: #fff;
            border-radius: 3px;
            box-shadow: 0 0 5px rgba(0, 0, 0, 0.24);
            float: left;
            position: relative;
        }
        .maincontainer {
            width: 100%;
            height: 400px;
            background: #fff;
            border-radius: 3px;
            box-shadow: 0 0 5px rgba(0, 0, 0, 0.24);
            float: left;
            position: relative;
        }
        .maincontainer h3 {
            font-family: Roboto;
            color: #676767;
            position: relative;
            padding: 15px;
            font-size: 15px;
            font-weight: 300;
        }
        .loginerrortable {
            text-align: center;
            margin: 20px auto;
        }
        .text1 {
            font-family: Roboto;
            color: #1f1f1f;
            position: relative;
            padding: 15px;
            font-size: 20px;
            font-weight: 500;
        }
        .loginbtn {
            color: #fff;
            font-family: Roboto;
            font-size: 17px;
            padding: 5px 15px 5px 15px;
            background: #0094ff;
            border-radius: 3px;
            border: none;
            cursor: pointer;
        }
        .loginbtn:hover {
            background: #0089eb;
        }
        .menuheading {
            font-family: Roboto;
            color: #a3a3a3;
            font-size: 15px;
        }
        .menubtns {
            font-family: Roboto;
            font-size: 15px;
            padding-top: 5px;
            background:none;
            border: none;
            color: #141414;
            cursor: pointer;
        }
        .menubtns:hover {
            color: #0094ff;
        }
        .reporttable {
            position: relative;
            width: 80%;
            margin: auto;
        }
        .rptlbl {
            font-family: Roboto;
            font-size: 15px;
            color: #161616;
        }
        .rprttxtbx {
            width: 100%;
            height: 30px;
            border-radius: 3px;
            border: 1px solid #aaaaaa;
            padding-left: 10px;
            font-family: Roboto;
        }
        .rptbtn {
            background: #0094ff;
            font-family: Roboto;
            padding: 10px 20px 10px 20px;
            border-radius: 3px;
            border: none;
            color: #fff;
            min-width: 100px;
            cursor: pointer;
        }
        .validationtext {
            font-family: Roboto;
            color: #ff3d3d;
            font-size: 13px;
        }
        .copytext {
            position: absolute;
            bottom: 0px;
            left: 50%;
            font-family: Roboto;
            font-size: 18px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="headerpart">
            <a href="../MAIN_PAGES/Home.aspx">Luci</a>
            <h3>Help Center</h3>
        </div>
        <table class="maintable" cellspacing="10px">
            <tr>
                <td style="width: 20px;">
                    <div class="menucontainer">
                        <table style="position: relative;top: 20px;width: 100%;padding: 5px;left: 10px;" cellspacing="15px">
                            <tr>
                                <td>
                                    <h2 class="menuheading">RESOLVE ISSUES</h2>
                                </td>
                            </tr>
                                <tr>
                                    <td>
                                        <asp:Button ID="Button1" runat="server" Text="About Trader" CssClass="menubtns" OnClick="Button1_Click1" CausesValidation="False" />
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Button ID="Button3" runat="server" Text="Advertisement Related" CssClass="menubtns" OnClick="Button3_Click" CausesValidation="False" />
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Button ID="Button4" runat="server" Text="Fake Products" CssClass="menubtns" OnClick="Button4_Click" CausesValidation="False" />
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Button ID="Button7" runat="server" Text="Others" CssClass="menubtns" OnClick="Button7_Click" CausesValidation="False" />
                                    </td>
                                </tr>
                        </table>
                    </div>
                </td>
                <td style="width: 75%;">
                    <div class="maincontainer">
            <h3>Help Center</h3>
            <asp:Panel ID="Panel2" runat="server" Visible="False">
                <table class="loginerrortable">
                    <tr>
                        <td><img src="../Images/loginicon.jpg" width="200" height="200" /></td>
                    </tr>
                    <tr>
                        <td>
                            <h2 class="text1">Login to get help with your recent orders</h2>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Button ID="Button2" CssClass="loginbtn" runat="server" OnClick="Button1_Click" Text="LOG IN" CausesValidation="False" />
                        </td>
                    </tr>
                </table>
            </asp:Panel>
                        <asp:Panel ID="Panel1" runat="server" Visible="False">
                            <table class="reporttable" cellspacing="15px">
                                <tr>
                                    <td>
                                        <h1 class="rptlbl">Problem Subject</h1>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:TextBox ID="TextBox1" runat="server" CssClass="rprttxtbx"></asp:TextBox>
                                        <asp:RequiredFieldValidator CssClass="validationtext" ID="RequiredFieldValidator1" runat="server" ErrorMessage="Subject Required" ControlToValidate="TextBox1"></asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="position: relative;top: -15px;">
                                        <asp:TextBox ID="TextBox2" runat="server" placeholder="Explain about your problem." CssClass="rprttxtbx" TextMode="MultiLine" Height="150"></asp:TextBox>
                                        <asp:RequiredFieldValidator CssClass="validationtext" ID="RequiredFieldValidator2" runat="server" ErrorMessage="Description needed" ControlToValidate="TextBox2"></asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="text-align: right;position: relative;top: -40px;left: 10px;">
                                        <asp:Button ID="Button5" runat="server" Text="Send" CssClass="rptbtn" OnClick="Button5_Click" />
                                        <asp:Button ID="Button6" runat="server" Text="Cancel" CssClass="rptbtn" OnClick="Button6_Click" CausesValidation="False" />
                                    </td>
                                </tr>
                            </table>
                        </asp:Panel>
        </div>
                </td>
            </tr>
        </table>
    </form>
    <div class="copytext">
        <p>Luci &copy; 2018</p>
    </div>
</body>
</html>
