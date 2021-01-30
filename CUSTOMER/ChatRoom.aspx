<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ChatRoom.aspx.cs" Inherits="CUSTOMER_ChatRoom" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Chat Room</title>
    <style>
        * {
            margin: 0px;
            padding: 0px;
        }
        body {
            background: #f2f2f2;
        }
        .headerpart {
            width: 100%;
            padding: 10px 0 10px 0;
            background: #0077cc;
            position: relative;
        }
        .pagetil {
            font-family: 'Script MT';
            font-size: 35px;
            color: #fff;
            padding-left: 50px;
            width: auto;
            text-decoration: none;
        }
        .usernamebtn {
            padding: 5px 15px 5px 15px;
            border-radius: 5px;
            color: #ffffff;
            font-family: roboto;
            letter-spacing: 1px;
            text-transform: uppercase;
            background: #0077cc;
            border: 1px solid #0077cc;
            font-weight: 600;
            font-size: 22px;
            float: right;
            margin-right: 5%;
            vertical-align: central;
            transition: 0.2s ease-out;
        }
        .usernamebtn:hover {
            border: 1px solid #7bb6e0;
            box-shadow: 0 5px 5px rgba(0, 0, 0, 0.19),0 -20px 15px #006dbb inset;
            background: #0080dc;
        }
        .usersname {
            width: 250px;
            padding-bottom: 10px;
            background: #ccc;
        }
        .userbutton {
            background: #e1e1e1;
            padding: 5px 25px 20px 5px;
            color: #313131;
            font-size: 20px;
            font-family: Roboto;
            min-width: 100px;
        }
        .userid {
            position: relative;
            top: -20px;
            color: #454545;
            font-family: Roboto;
            font-size: 10px;
        }
        .chatbox {
            width: 400px;
            padding: 0px;
            background: #0080dc;
            border-radius: 0px 3px 3px 0px;
            position: relative;
        }
        .mssgtextbox {
            width: 99%;
            height: 30px;
            padding-left: 5px;
            border-radius: 3px;
            font-family: Roboto;
            border: none;
            font-size: 15px;
            vertical-align: bottom;
            outline: none;
            overflow: auto;
        }
        .chatarea {
            width: 100%;
            height: 500px;
            background: #fff;
            border-radius: 0 0 3px 3px;
            overflow: auto;
        }
        .chatmssglabel {
            padding: 5px 10px 5px 10px;
            background: #0094ff;
            font-family: Roboto;
            color: #fff;
        }
        .sendbtn {
            width: 100%;
            height: 100%;
            color: #fff;
            background: #004679;
            border: none;
            font-size: 15px;
            padding: 7px 0px 7px 0px;
            border-radius: 3px;
            cursor: pointer;
        }
        .chatmssgbox2 {
            padding: 5px 10px 5px 10px;
            background: #0080dc;
            color: #fff;
            font-family: Roboto;
            height: 551px;
            min-width: 200px;
            position: relative;
            left: 2px;
            border-radius: 3px 0px 0px 3px;
        }
        .chattable {
            position: relative;
        }
        .chattable::before {
            z-index: -1;
            content: "";
            position: absolute;
            top: 80%;
            bottom: 2px;
            width: 100%;
            max-width: 620px;
            left: 15px;
            box-shadow: 0 3px 10px rgba(0, 0, 0, 0.76);
        }
        .idbox {
            background: #0062a9;
            min-width: 200px;
            position: relative;
            margin: 5px 0 0 0;
            padding: 10px;
            border-radius: 3px;
            overflow: hidden;
            text-transform: uppercase;
            box-shadow: 0 -20px 15px #00508a inset;
        }
        .usernamelbl {
            color: #fcf830;
            font-family: Roboto;
            font-size: 10px;
            position: absolute;
            top: 3px;
            right: 5px;
        }
        .chatmssgbox {
            padding: 5px;
            border-radius: 5px;
            background: #0094ff;
            color: #fff;
            margin-top: 10px;
            margin-left: 10px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="headerpart">
            <asp:Button ID="Button1" runat="server" Text="" CssClass="usernamebtn"/>
            <asp:LinkButton ID="LinkButton1" runat="server" CssClass="pagetil" PostBackUrl="~/MAIN_PAGES/Home.aspx">Luci</asp:LinkButton>
        </div>
        <asp:ScriptManager ID="ScriptManager2" runat="server"></asp:ScriptManager>
        <asp:UpdatePanel ID="UpdatePanel2" runat="server">
            <ContentTemplate>
        <table class="chattable">
            <tr style="vertical-align: top;">
                <td>
                    <div class="chatmssgbox2">
                        <table>
                            <tr style="height: 50px;">
                                <td>
                                    <div class="idbox">
                                        <asp:Label ID="Label9" runat="server" Text="SENDER" CssClass="usernamelbl"></asp:Label>
                                        <asp:Label ID="Label3" runat="server" Text="Label" ForeColor="#F2A400" Font-Bold="True" ToolTip="User ID"></asp:Label>
                                        <asp:Label ID="Label4" runat="server" Text=" - " Font-Bold="True" Font-Size="Medium" ForeColor="White"></asp:Label>
                                        <asp:Label ID="Label5" runat="server" Text="Label" Font-Bold="False" ForeColor="White"></asp:Label>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <div class="idbox">
                                        <asp:Label ID="Label10" runat="server" Text="RECEIVER" CssClass="usernamelbl"></asp:Label>
                                        <asp:Label ID="Label6" runat="server" Text="Label" ForeColor="#F2A400" Font-Bold="True" ToolTip="User ID"></asp:Label>
                                        <asp:Label ID="Label7" runat="server" Text=" - " Font-Bold="True" Font-Size="Medium" ForeColor="White"></asp:Label>
                                        <asp:Label ID="Label8" runat="server" Text="Label" Font-Bold="False" ForeColor="White"></asp:Label>
                                    </div>
                                </td>
                            </tr>
                        </table>
                    </div>
                </td>
                <td>
                     <div class="chatbox">
            <table style="width: 100%;" cellspacing="10">
                <tr>
                    <td colspan="2">
                        <div class="chatarea">
                            <asp:DataList ID="DataList1" runat="server">
                                <ItemTemplate>
                                    <div class="chatmssgbox">
                                        <table>
                                            <tr style="text-align: left;font-style: italic;">
                                                <td>
                                                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("person_name") %>' Font-Bold="True" Font-Names="Roboto"></asp:Label>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <asp:Label ID="Label2" runat="server" Text='<%# Eval("mssg_text") %>' Font-Names="Roboto"></asp:Label>
                                                </td>
                                            </tr>
                                        </table>
                                    </div>
                                </ItemTemplate>
                            </asp:DataList>
                               
                        </div>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server" CssClass="mssgtextbox" placeholder="Type Message here"></asp:TextBox>
                    </td>
                    <td>
                        <asp:Button ID="Button2" runat="server" Text="Send" CssClass="sendbtn" OnClick="Button2_Click" />
                    </td>
                </tr>
            </table>
        </div>
                </td>
            </tr>
        </table>
                <asp:Timer runat="server" Interval="10000"></asp:Timer>
            </ContentTemplate>
            
        </asp:UpdatePanel>
    </form>
</body>
</html>
