<%@ Page Title="" Language="C#" MasterPageFile="~/ADMIN/MasterPage.master" AutoEventWireup="true" CodeFile="Admincontactus.aspx.cs" Inherits="ADMIN_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" Runat="Server">
    User Report
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" Runat="Server">
    <style>
        * {
            margin: 0px;
            padding: 0px;
            text-decoration: none;
        }
        .maincontainer {
            width: 80%;
            float: left;
            position: relative;
        }
        .subjectselectbox {
            width: 95%;
            margin: 10px auto;
            height: 68px;
            border: 1px dotted rgba(0, 148, 255, 0.84);
        }
        .optionbtns {
            border: 1px solid rgba(0, 177, 255, 0.72);
            background: rgba(0, 177, 255, 0.11);
            font-family: 'Devil inside';
            padding: 4px 100px;
            font-size: 45px;
            color: rgba(0, 148, 255, 0.84);
            float: left;
            margin-top: 6px;
            margin-left: 10px;
            cursor: pointer;
            transition: 0.2s ease;
        }
        .optionbtns:hover {
            background: rgba(0, 177, 255, 0.21);
            text-shadow: 0 0 25px rgba(0, 255, 255, 0.42);
        }
        .optionbtns:nth-child(3) {
            font-family: Tattoolike;
        }
        .optionbtns:nth-child(4) {
            font-family: Tattoolike;
        }
        .contentviewbox {
            width: 95%;
            border: 1px dotted rgba(0, 148, 255, 0.84);
            position: relative;
            margin: auto;
            height: 500px;
            overflow-y: scroll;
        }
        .mainheading {
            font-family: 'Motion Control';
            font-size: 40px;
            letter-spacing: 3px;
            color: rgba(0, 148, 255, 0.84);
            text-align: center;
        }
        .datalistbox {
            width: 95%;
            padding: 5px 0px;
            margin: auto;
        }
        .subbox {
            width: 100%;
            height: 200px;
            border: 1px solid rgba(0, 177, 255, 0.72);
            margin-top: 20px;
            position: relative;
        }
        .useridbox {
            position: relative;
            width: 200px;
            height: 200px;
            top: -25px;
            perspective: 900px;
            perspective-origin: 50% 50%;
            float: left;
        }
        .cirs1 {
            width: 150px;
            height: 150px;
            border-radius: 100%;
            border-top: 20px solid rgba(0, 177, 255, 0.72);
            border-bottom: 20px solid rgba(0, 177, 255, 0.72);
            border-left: 20px solid rgba(0, 177, 255, 0);
            border-right: 20px solid rgba(0, 177, 255, 0);
            margin: auto;
            transform: rotateX(75deg) translateY(-250px);
            animation: cirs1 1s infinite alternate;
        }
        @keyframes cirs1 {
            0% {
                transform: rotateX(75deg) translateY(-200px);
            border-top: 20px solid rgba(0, 177, 255, 0.72);
            border-bottom: 20px solid rgba(0, 177, 255, 0.72);
            border-left: 20px solid rgba(0, 177, 255, 0);
            border-right: 20px solid rgba(0, 177, 255, 0);
            }
            100% {
                transform: rotateX(75deg) translateY(-250px);
            border-left: 20px solid rgba(0, 177, 255, 0.72);
            border-right: 20px solid rgba(0, 177, 255, 0.72);
            border-top: 20px solid rgba(0, 177, 255, 0);
            border-bottom: 20px solid rgba(0, 177, 255, 0);
            }
        }
        .cirs2 {
            width: 150px;
            height: 150px;
            border-radius: 100%;
            border: 5px solid rgba(0, 177, 255, 0.72);
            margin: auto;
            position: relative;
            transform: rotateX(75deg) translateY(-650px);
            animation: cirs2 0.2s infinite linear;
        }
        @keyframes cirs2 {
            0% {
                background: rgba(0, 177, 255, 0);
            }
            100% {
                background: rgba(0, 177, 255, 0.30);
            }
        }
        .useridlbl {
            font-family: 'Motion Control';
            font-size: 130px;
            position: relative;
            left: 35%;
            top: 50px;
            text-shadow: 0 30px 80px rgba(0, 177, 255, 1);
            color: rgba(0, 177, 255, 1);
            transform: translateY(-100px);
        }
        .contentbox {
            width: 79.5%;
            height: 200px;
            position: relative;
            float: left;
        }
        .text1 {
            font-family: Roboto;
            font-size: 25px;
            color: rgba(0, 177, 255, 1);
            padding: 5px;
            text-transform: uppercase;
            font-weight: bold;
        }
        .text2 {
            font-family: Montserrat;
            font-size: 15px;
            color: #00bbbb;
            padding-left: 25px;
        }
        .replytextbox {
            width: 100%;
            height: 25px;
            border: 1px groove #00b9ff;
            background: rgba(0, 255, 255, 0.12);
            color: #fff;
            border-radius: 4px;
            padding-left: 10px;
            font-family: Roboto;
            letter-spacing: 1px;
        }
        .replybtn {
            position: relative;
            padding: 5px 25px 5px 25px;
            border: 1px solid rgba(0, 177, 255, 1);
            color: #00ffff;
            border-radius: 3px;
            font-family: Roboto;
            background: rgba(0, 177, 255, 0.21);
            left: 20px;
            cursor: pointer;
        }
        .contorlbox {
            right: 10px;
            top: 10px;
            border: 1px dotted #00b9ff;
            width: 200px;
            height: 50px;
            position: absolute;
        }
        .attendbtn {
            width: 95%;
            height: 40px;
            margin: 5px;
            border: none;
            background: rgba(0, 177, 255, 0.11);
            color: #00bbbb;
            font-family: Roboto;
            font-size: 15px;
            cursor: pointer;
            transition: 0.1s ease-out;
        }
        .attendbtn:hover {
            background: rgba(0, 177, 255, 0.20);
        }
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h2 class="mainheading">HELP CENTER</h2>
    <div class="maincontainer">
        <div class="subjectselectbox">
            <asp:Button ID="Button1" runat="server" CssClass="optionbtns" Text="H" ToolTip="About Trader" OnClick="Button1_Click" />
            <asp:Button ID="Button2" runat="server" CssClass="optionbtns" Text="N" ToolTip="About Ads" OnClick="Button2_Click" />
            <asp:Button ID="Button3" runat="server" CssClass="optionbtns" Text="B" ToolTip="About Products" OnClick="Button3_Click"/>
            <asp:Button ID="Button4" runat="server" CssClass="optionbtns" Text="Z" ToolTip="Other Resons" OnClick="Button4_Click"/>
        </div>
        <div class="contentviewbox">

            <asp:DataList ID="DataList1" CssClass="datalistbox" OnItemCommand="DataList1_ItemCommand" runat="server" DataKeyField="cont_id" DataSourceID="SqlDataSource1">
                <ItemTemplate>
                    <div class="subbox">
                       <div class="useridbox">
                           <asp:Label ID="Label1" CssClass="useridlbl" runat="server" Text='<%# Eval("reg_id") %>'></asp:Label>
                           <div class="cirs1"></div>
                           <div class="cirs2"></div>
                       </div>
                        <div class="contentbox">
                            <table style="width: 90%;">
                                <tr>
                                    <td colspan="2">
                                        <asp:Label ID="Label2" CssClass="text1" runat="server" Text='<%# Eval("cont_sub") %>'></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2" style="height: 125px; vertical-align: top;">
                                        <asp:Label ID="Label3" CssClass="text2" runat="server" Text='<%# Eval("cont_desc") %>'></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:TextBox ID="TextBox1" CssClass="replytextbox" runat="server" TextMode="MultiLine"></asp:TextBox>
                                    </td>
                                    <td style="width: 100px;">
                                        <asp:Button ID="Button5" CssClass="replybtn" runat="server" Text="REPLAY" />
                                    </td>
                                </tr>
                            </table>
                            <div class="contorlbox">
                                <asp:Button ID="Button6" CssClass="attendbtn" runat="server" Text="SOLVED" CommandArgument='<%#Eval("cont_id") %>' CommandName="replyarv"/>
                            </div>
                        </div>
                    </div>
                </ItemTemplate>
            </asp:DataList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:OBSConnectionString16 %>" SelectCommand="SELECT * FROM [ContactUsTable] where status = '0'"></asp:SqlDataSource>

        </div>
    </div>
    <asp:Panel ID="Panel1" runat="server">

    </asp:Panel>
</asp:Content>

