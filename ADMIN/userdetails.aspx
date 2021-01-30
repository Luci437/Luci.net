<%@ Page Title="" Language="C#" MasterPageFile="~/ADMIN/MasterPage.master" AutoEventWireup="true" CodeFile="userdetails.aspx.cs" Inherits="ADMIN_userdetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" Runat="Server">
      User Details
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" Runat="Server">
    <style>
        .maincontainer {
            width: 80%;
            height: 100vh;
            background: #000f1a;
            overflow: auto;
            float: left;
            perspective: 900px;
            perspective-origin: 50% 50%;
        }
        .userbox1 {
            width: 300px;
            height: 400px;
            border: 1px dotted rgba(0, 129, 129, 0.3);
            position: relative;
            margin: 10px;
            transition: 0.1s ease;
            cursor: pointer;
        }
        .userbox1:hover {
            border: 1px dotted rgba(255, 106, 0, 1);
            box-shadow: 0 10px 15px rgba(0, 0, 0, 0.4);
        }
        .userbox2 {
            width: 288px;
            height: 388px;
            border: 1px solid rgba(0, 129, 129, 0.00);
            position: relative;
            margin: 5px;
            background: linear-gradient(#000f1a,rgba(0, 129, 129, 0.3));
            overflow: hidden;
            transition: 0.1s ease 0.3s;
        }
        .userdetailsdatalist {
            margin: auto;
            border-bottom: 1px dotted #4cff00;
        }
        .userdefaultimg {
            width: 200px;
            height: 200px;
            position: relative;
            margin: -200px auto;
            transition: 0.2s ease 0.1s;
        }
        .userdefaultimg img {
            max-width: 100%;
            max-height: 100%;
        }
        .popupid {
            color: rgba(99, 255, 255, 0.91);
            font-family: Roboto;
            font-size: 70px;
            position: absolute;
            top: 0px;
            text-shadow: 0 0 10px rgba(99, 255, 255, 0.5);
            left: -100px;
            transition: 0.1s 0.1s;
        }
        .userbox2:hover > .popupid {
            left: 5px;
        }
        .usertable {
            width: 100%;
            height: 46%;
            background: rgba(0, 129, 129, 0.07);
            position: relative;
            margin-top: 580px;
            transition: 0.1s ease 0.2s;
        }
        .userdetailslabel {
            font-family: Roboto;
            color: #63ffff;
            text-transform: uppercase;
        }
        .userdetailslabele {
            font-family: Roboto;
            color: #008181;
            letter-spacing: 1px;
        }
        .toppart {
            width: 100%;
            height: 60px;
        }
        .toppart table {
            width: 100%;
            margin: auto;
            background: rgba(255, 106, 0, 0.06);
        }
        .tplbl {
            font-family: Roboto thin;
            font-size: 35px;
            text-transform: uppercase;
            color: rgba(255, 106, 0, 1);
            padding: 0px 60px 0px 60px;
        }
        .tptxtbx {
            width: 200px;
            height: 30px;
            border-top: 1px solid #008181;
            border-left: 1px solid #008181;
            border-bottom: 1px solid #008181;
            border-right: 1px solid rgba(0, 0, 0, 0.00);
            background: rgba(0, 129, 129, 0.1);
            color: #63ffff;
            padding-left: 10px;
            font-size: 17px;
            font-family: sans-serif;
            outline: none;
            letter-spacing: 1.5px;
        }
        .tpsrchbtn {
            padding: 8px 15px 7px 15px;
            border-top: 1px solid #008181;
            border-right: 1px solid #008181;
            border-bottom: 1px solid #008181;
            border-left: 1px solid rgba(0, 0, 0, 0.00);
            background: rgba(28, 255, 255, 0.2);
            font-family: sans-serif;
            color: #63ffff;
            transition: 0.2s ease;
            cursor: pointer;
            position: relative;
            left: -5px;
            outline: none;
        }
        .tpsrchbtn:hover {
            background: rgba(28, 255, 255, 0.4);
        }
        .disapprovebox {
            position: absolute;
            width: 40px;
            height: 40px;
            border: 1px dotted #63ffff;
            top: 10px;
            right: 10px;
            transition: 0.2s ease-in;
        }
        .disbtn {
            width: 30px;
            margin: 5px;
            height: 30px;
            border: 1px dotted rgba(255, 106, 0, 1);
            background: rgba(99, 255, 255, 0.10);
            color: rgba(99, 255, 255, 0.1);
            font-family: Roboto;
            font-size: 25px;
            cursor: pointer;
            transition: 0.2s ease-out;
        }
        .disapprovebox:hover {
            border: 1px dotted rgba(255, 106, 0, 1);
        }
        .disapprovebox:hover > .disbtn {
             border: 1px dotted rgba(99, 255, 255, 0.6);
             color: rgba(255, 106, 0, 1);
        }
    </style>
    <script type="text/javascript">
        window.onload = function smoothload() {
            var el1 = document.getElementsByClassName("userdefaultimg");
            var el2 = document.getElementsByClassName("usertable");
            var el4 = document.getElementsByClassName("userbox2");

            var ln1 = el1.length;

            for (var i = 0; i < ln1; i++) {
                el1[i].style.margin = "5px auto";
                el2[i].style.marginTop = "0px";

                el4[i].style.border = "1px solid #008181";
            }
        }
    </script>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="maincontainer">

        <div class="toppart">
            <table>
                <tr>
                    <td style="padding-left: 10px;">
                        <asp:Label ID="Label8" runat="server" Text="DETAILS OF USERS" CssClass="tplbl"></asp:Label>
                    </td>
                    <td style="text-align: right;padding-right: 10px;">
                        <asp:TextBox ID="TextBox1" runat="server" CssClass="tptxtbx"></asp:TextBox>
                        <asp:Button ID="Button1" runat="server" Text="Search" CssClass="tpsrchbtn" />
                    </td>
                </tr>
            </table>
        </div>

        <asp:Panel ID="searchpanel" runat="server">
            
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString='<%$ ConnectionStrings:OBSConnectionString16 %>' SelectCommand="SELECT * FROM [tbl_reg] WHERE ([fname] LIKE '%' + @fname + '%')">
                <SelectParameters>
                    <asp:ControlParameter ControlID="TextBox1" PropertyName="Text" Name="fname" Type="String"></asp:ControlParameter>
                </SelectParameters>
            </asp:SqlDataSource>
            <asp:DataList ID="DataList2" CssClass="userdetailsdatalist" runat="server" DataKeyField="reg_id" DataSourceID="SqlDataSource2" RepeatColumns="3" RepeatDirection="Horizontal">
                <ItemTemplate>
                <div class="userbox1">
                <div class="userbox2">
                    <asp:Label ID="Label9" runat="server" Text='<%#Eval("reg_id") %>' CssClass="popupid"></asp:Label>
                    <div class="userdefaultimg"><img src="../Images/usericon.png" /></div>
                    <table class="usertable" style="text-align: center;">
                        <tr>
                            <td>
                                <asp:Label ID="Label1" runat="server" Text='<%#Eval("fname") %>' CssClass="userdetailslabel"></asp:Label><asp:Label ID="Label2" runat="server" Text=" "></asp:Label>
                                <asp:Label ID="Label3" runat="server" Text='<%#Eval("lname") %>' CssClass="userdetailslabel"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label4" runat="server" Text='<%#Eval("email") %>' CssClass="userdetailslabele"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label6" runat="server" Text="USER ID : " CssClass="userdetailslabele"></asp:Label>
                                <asp:Label ID="Label5" runat="server" Text='<%#Eval("reg_id") %>' CssClass="userdetailslabele"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label7" runat="server" Text='<%#Eval("mobile") %>' CssClass="userdetailslabele"></asp:Label>
                            </td>
                        </tr>
                    </table>
                </div>
            </div>
                </ItemTemplate>
            </asp:DataList>
        </asp:Panel>

        <asp:Panel ID="alluserpanel" runat="server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString='<%$ ConnectionStrings:OBSConnectionString16 %>' SelectCommand="SELECT * FROM [tbl_reg] where status = 'approved' and role='user'"></asp:SqlDataSource>
    <asp:DataList ID="DataList1" CssClass="userdetailsdatalist" runat="server" DataKeyField="reg_id" DataSourceID="SqlDataSource1" RepeatColumns="3" RepeatDirection="Horizontal" OnItemCommand="DataList1_ItemCommand">
        <ItemTemplate>
            <div class="userbox1">
                <div class="userbox2">
                    <div class="disapprovebox">
                        <asp:Button ID="Button2" runat="server" Text="*" CssClass="disbtn" ToolTip="Terminate" CommandName="disapproveuser" CommandArgument='<%#Eval("reg_id") %>' />
                    </div>
                    <asp:Label ID="Label9" runat="server" Text='<%#Eval("reg_id") %>' CssClass="popupid"></asp:Label>
                    <div class="userdefaultimg"><img src="../Images/usericon.png" /></div>
                    <table class="usertable" style="text-align: center;">
                        <tr>
                            <td>
                                <asp:Label ID="Label1" runat="server" Text='<%#Eval("fname") %>' CssClass="userdetailslabel"></asp:Label><asp:Label ID="Label2" runat="server" Text=" "></asp:Label>
                                <asp:Label ID="Label3" runat="server" Text='<%#Eval("lname") %>' CssClass="userdetailslabel"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label4" runat="server" Text='<%#Eval("email") %>' CssClass="userdetailslabele"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label6" runat="server" Text="USER ID : " CssClass="userdetailslabele"></asp:Label>
                                <asp:Label ID="Label5" runat="server" Text='<%#Eval("reg_id") %>' CssClass="userdetailslabele"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label7" runat="server" Text='<%#Eval("mobile") %>' CssClass="userdetailslabele"></asp:Label>
                            </td>
                        </tr>
                    </table>
                </div>
            </div>
        </ItemTemplate>
    </asp:DataList>
            </asp:Panel>
    </div>
</asp:Content>

