<%@ Page Title="" Language="C#" MasterPageFile="~/ADMIN/MasterPage.master" AutoEventWireup="true" CodeFile="AdminHome.aspx.cs" Inherits="ADMIN_AdminHome" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" Runat="Server">
    Home
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" Runat="Server">
    <style>
        body {
            width: 80%;
            position: relative;
        }
        .maincontainer {
            width: 80%;
            height: 100vh;
            position: relative;
            box-sizing: border-box;
            float: left;
            overflow: hidden;
            overflow-y: scroll;
        }
        .categorybox {
            position: relative;
            width: 98%;
            height: 315px;
            border: 1px dotted #00ffff;
            margin: 10px auto;
            background: linear-gradient(#001321,#040d14,#001c31);
        }
        .headerpart {
            width: 100%;
            height: 50px;
            background: rgba(0, 255, 255, 0.05);
            position: relative;
        }
        .headerpart h1 {
            font-size: 30px;
            position: relative;
            padding: 10px;
            font-family: 'Motion Control';
            color: rgba(0, 255, 255, 0.8);
            text-shadow: 0 0 10px rgba(0, 255, 255, 0.5);
            letter-spacing: 2px;
        }
        .headerpart h2 {
            font-size: 30px;
            position: absolute;
            padding: 10px;
            font-family: 'Motion Control';
            color: rgba(0, 255, 255, 0.8);
            text-shadow: 0 0 10px rgba(0, 255, 255, 0.5);
            letter-spacing: 2px;
            right: 0px;
            top: 0px;
        }
        .catbox {
            position: relative;
            width: 500px;
            height: 150px;
            border: 1px dotted rgba(0, 255, 255, 0.5);
            overflow: hidden;
            overflow-y: scroll;
            top: 50px;
            left: 10px;
            float: left;
        }
        .catbox:nth-child(3) {
            left: 55px;
        }
        .catcontainer {
            width: 490px;
            position: relative;
            margin: auto 5px;
            padding: 5px 0px 5px 0px;
            background: rgba(0, 148, 255, 0.05);
            box-sizing: border-box;
        }
        .closebtn {
            position: absolute;
            right: 5px;
            top: 7px;
            font-size: 27px;
            border: none;
            background: rgba(0, 148, 255, 0.0);
            font-family:'Wingdings 2';
            color: rgba(0, 255, 255, 0.64);
            cursor: pointer;
            transition: 0.2s ease-out;
        }
        .closebtn2 {
            position: absolute;
            top: 7px;
            font-size: 25px;
            border: none;
            background: rgba(0, 148, 255, 0.0);
            color: rgba(0, 255, 255, 0.64);
            cursor: pointer;
            font-family: 'Wingdings 3';
            right: 40px;
            width: 50px;
            transition: 0.2s ease-out;
        }
        .closebtn2:hover {
            color: rgba(0, 255, 255, 1);
        }
        .closebtn:hover {
            color: #ff2525;
        }
        .textboxbox {
            position: relative;
            width: 500px;
            height: 50px;
            left: 10px;
            top: 55px;
            float: left;
            border: 1px dotted rgba(255, 106, 0, 0.6);
        }
        .textboxbox2 {
            position: relative;
            width: 500px;
            height: 50px;
            left: 55px;
            top: 55px;
            float: left;
            border: 1px dotted rgba(255, 106, 0, 0.6);
        }
        .txtbxcat {
            width: 78%;
            height: 30px;
            position: relative; 
            top: 10px;
            left: 10px;
            border: none;
            float: left;
            background: rgba(0, 255, 255, 0.21);
            color: rgba(0, 255, 255, 0.71);
            font-family: sans-serif;
            padding-left: 10px;
        }
        .txtbxcat2 {
            width: 60%;
            margin-left: 10px;
            height: 30px;
            position: relative; 
            top: 10px;
            left: 10px;
            border: none;
            float: left;
            background: rgba(0, 255, 255, 0.21);
            color: rgba(0, 255, 255, 0.71);
            font-family: sans-serif;
            padding-left: 10px;
        }
        .txtbxcat3 {
            width: 18.5%;
            margin-left: 10px;
            height: 30px;
            position: relative; 
            top: 10px;
            left: 10px;
            border: none;
            float: left;
            background: rgba(0, 255, 255, 0.21);
            color: rgba(0, 255, 255, 0.71);
            font-family: sans-serif;
            padding-left: 10px;
        }
        .btncat {
            width: 15%;
            height: 30px;
            top: 10px;
            left: 15px;
            background: rgba(0, 255, 255, 0.1);
            border: 1px dotted rgba(0, 255, 255, 0.71);
            position: relative;
            color: rgba(0, 255, 255, 0.74);
            font-family: Roboto;
            cursor: pointer;
        }
        .btncat:hover {
            background: rgba(0, 255, 255, 0.2);
        }
        .nodatabox {
            width: 460px;
            height: 80px;
            background: rgba(0, 255, 255, 0.02);
            position: relative;
            top: 35px;
            left: 20px;
        }
        .nodatabox h2 {
            font-family: 'Motion Control';
            font-size: 35px;
            text-align: center;
            color: #00ffff;
            top: 25px;
            position: relative; 
        }
        .headerids {
            position: absolute;
            top: 70px;
            width: 100%;
        }
        .headertableh3 {
            color: rgba(0, 255, 255, 0.3);
            font-family: Roboto;
            padding: 3px;
            font-size: 15px;
        }
        .offerbox {
            position: relative;
            width: 90%;
            height: 150px;
            margin: 50px auto;
            border: 1px dotted rgba(0, 255, 255, 0.64);
            overflow-y: scroll;
        }
        .textboxbox3 {
            position: relative;
            width: 90%;
            height: 50px;
            left: 55px;
            top: -45px;
            border: 1px dotted rgba(255, 106, 0, 0.6);
        }
        .adcontainer {
            position: relative;
            width: 100%;
        }
        .catcontainer2 {
            width: 98%;
            position: relative;
            margin:auto;
            padding: 5px 0px 5px 0px;
            background: rgba(0, 148, 255, 0.05);
            box-sizing: border-box;
        }
        .adupdatebtn {
            font-family: 'Wingdings 2';
            font-size: 26px;
            border: none;
            background: rgba(0, 148, 255, 0.0);
            color: rgba(0, 255, 255, 0.58);
            cursor: pointer;
        }
        .addelbtn {
            font-family: 'Wingdings 2';
            font-size: 26px;
            border: none;
            background: rgba(0, 148, 255, 0.0);
            color: rgba(0, 255, 255, 0.58);
            cursor: pointer;
            transition: 0.2s ease-out;
        }
        .adupdatebtn:hover {
            color: rgba(0, 255, 255,1);
        }
        .addelbtn:hover {
            color: #ff2525;
        }
        .bigerrorbox {
            width: 100%;
            height: 100vh;
            background: rgba(0, 0, 0, 0.8);
            position: absolute;
            top: 0px;
            left: 0px;
        }
        .errorbox {
            width: 100%;
            height: 200px;
            background: rgba(0, 255, 255, 1);
            top: 200px;
            position: relative;
        }
        .clsbtn {
            font-family: 'Wingdings 2';
            font-size: 30px;
            position: absolute;
            right: 10px;
            top: 10px;
            background: rgba(0, 0, 0, 0.00);
            border: none;
            cursor: pointer;
            color: rgba(0, 0, 0, 0.46);
        }
        .clsbtn:hover {
            color: #000000;
        }
        .txtbxup {
            width: 200px;
            height: 30px;
            padding-left: 10px;
            border: none;
        }
        .upbtn {
            padding: 8px 20px 8px 20px;
            border: none;
            background: #ff2525;
            color: #fff;
            cursor: pointer;
        }
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="maincontainer">
        <div class="categorybox">
            <div class="headerpart">
                <h1>CATEGORY SECTION</h1>
                <h2>SUB CATEGORY SECTION</h2>
            </div>
            <div class="catbox">
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString='<%$ ConnectionStrings:OBSConnectionString16 %>' SelectCommand="SELECT * FROM [CategoryTable]"></asp:SqlDataSource>
                <asp:DataList ID="DataList1" runat="server" DataKeyField="pr_catid" DataSourceID="SqlDataSource1" OnItemCommand="DataList1_ItemCommand">
                    <ItemTemplate>
                        <div class="catcontainer">
                            <table style="color: rgba(0, 255, 255, 0.8);font-family: Roboto;">
                                <tr>
                                    <td style="width: 50px;padding-left: 15px;color: rgba(0, 255, 255, 0.71)">
                                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("pr_catid") %>'></asp:Label>
                                    </td>
                                    <td>
                                        <asp:Label ID="Label2" runat="server" Text='<%# Eval("catname") %>'></asp:Label>
                                    </td>
                                </tr>
                            </table>
                            <asp:Button ID="Button3" runat="server" Text="9" ToolTip="View Subcategory" CssClass="closebtn2" CommandName="viewsubcat" CommandArgument='<%# Eval("pr_catid") %>' />
                            <asp:Button ID="Button1" runat="server" Text="V" ToolTip="Delete" CssClass="closebtn" CommandName="delcat" CommandArgument='<%# Eval("pr_catid") %>' />
                        </div>
                    </ItemTemplate>
                </asp:DataList>
            </div>
        <div class="catbox">
                <asp:DataList ID="DataList2" runat="server" OnItemCommand="DataList2_ItemCommand">
                    <ItemTemplate>
                        <div class="catcontainer">
                            <table style="color: rgba(0, 255, 255, 0.8);font-family: Roboto;">
                                <tr>
                                    <td style="width: 50px;padding-left: 15px;color: rgba(0, 255, 255, 0.71)">
                                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("pr_subid") %>'></asp:Label>
                                    </td>
                                    <td style="width: 50px;padding-left: 15px;color: rgba(0, 255, 255, 0.71)">
                                        <asp:Label ID="Label3" runat="server" Text='<%# Eval("pr_catid") %>'></asp:Label>
                                    </td>
                                    <td>
                                        <asp:Label ID="Label2" runat="server" Text='<%# Eval("subname") %>'></asp:Label>
                                    </td>
                                </tr>
                            </table>
                            <asp:Button ID="Button1" runat="server" Text="V" ToolTip="Delete" CssClass="closebtn" CommandName="delsub" CommandArgument='<%# Eval("pr_subid") %>' />
                        </div>
                    </ItemTemplate>
                </asp:DataList>
            <asp:Panel ID="Panel1" runat="server" Visible="False">
                <div class="nodatabox">
                    <h2>NO SUBCATEGORY</h2>
                </div>
            </asp:Panel>
        </div>
            <div class="textboxbox">
                <asp:TextBox ID="TextBox1" CssClass="txtbxcat" runat="server" placeholder="Category Name"></asp:TextBox><asp:Button ID="Button2" CssClass="btncat" runat="server" Text=" ADD " OnClick="Button2_Click" />
            </div>
            <div class="textboxbox2">
                <asp:TextBox ID="TextBox2" CssClass="txtbxcat" runat="server" placeholder="Sub Category Name"></asp:TextBox><asp:Button ID="Button4" CssClass="btncat" runat="server" Text=" ADD " OnClick="Button4_Click" />
            </div>
            <div class="headerids">
                <table>
                    <tr>
                        <td style="width: 65px;padding-left: 10px;">
                            <h3 class="headertableh3">CAT ID</h3>
                        </td>
                        <td style="width: 480px;">
                            <h3 class="headertableh3">CATEGORY NAME</h3>
                        </td>
                        <td style="width: 65px;">
                            <h3 class="headertableh3">SUB ID</h3>
                        </td>
                        <td style="width: 65px;">
                            <h3 class="headertableh3">CAT ID</h3>
                        </td>
                        <td>
                            <h3 class="headertableh3">SUB CATEGORY NAME</h3>
                        </td>
                    </tr>
                </table>
            </div>
        </div>

        <div class="categorybox">
            <div class="headerpart">
                <h1>ADVERTISEMENT OFFER SECTION</h1>
            </div>
            <div class="offerbox">
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString='<%$ ConnectionStrings:OBSConnectionString16 %>' SelectCommand="SELECT * FROM [adtypetable]"></asp:SqlDataSource>
                <asp:DataList ID="DataList3" runat="server" DataKeyField="ad_typeid" DataSourceID="SqlDataSource2" CssClass="adcontainer" OnItemCommand="DataList3_ItemCommand">
                    <ItemTemplate>
                        <div class="catcontainer2">
                            <table style="color: #00ffff;font-family: Roboto;">
                                <tr>
                                    <td style="width: 50px;padding-left: 15px;">
                                        <asp:Label ID="Label4" runat="server" Text='<%#Eval("ad_typeid") %>'></asp:Label>
                                    </td>
                                    <td style="width: 1050px;">
                                        <asp:Label ID="Label5" runat="server" Text='<%#Eval("ad_typename") %>'></asp:Label>
                                    </td>
                                    <td style="width: 490px;">
                                        <asp:Label ID="Label6" runat="server" Text='<%#Eval("ad_rate") %>'></asp:Label>
                                    </td>
                                    <td style="width: 50px;">
                                        <asp:Button ID="Button5" runat="server" Text="2" CssClass="adupdatebtn" ToolTip="Update" CommandName="updatepanel" CommandArgument='<%#Eval("ad_typeid") %>' />
                                    </td>
                                    <td>
                                        <asp:Button ID="Button6" runat="server" Text="V" CssClass="addelbtn" ToolTip="Delete" CommandName="deloffer" CommandArgument='<%#Eval("ad_typeid") %>' />
                                    </td>
                                </tr>
                            </table>
                        </div>
                    </ItemTemplate>
                </asp:DataList>
            </div>
            <div class="textboxbox3">
                <asp:TextBox ID="TextBox3" CssClass="txtbxcat2" runat="server" placeholder="Offer Name"></asp:TextBox>
                <asp:TextBox ID="TextBox4" CssClass="txtbxcat3" runat="server" placeholder="Offer Rate" Font-Bold="True"></asp:TextBox>
                <asp:Button ID="Button7" CssClass="btncat" runat="server" Text=" ADD " OnClick="Button7_Click" />
            </div>

            <div class="headerids">
                <table style="position: relative;top: -10px;left: 50px;">
                    <tr>
                        <td style="width: 45px;padding-left: 10px;">
                            <h3 class="headertableh3">AD ID</h3>
                        </td>
                        <td style="width: 560px;">
                            <h3 class="headertableh3">OFFER NAME</h3>
                        </td>
                        <td style="width: 95px;">
                            <h3 class="headertableh3">OFFER RATE</h3>
                        </td>
                    </tr>
                </table>
            </div>

        </div>
        <asp:Panel ID="Panel2" runat="server" CssClass="bigerrorbox" Visible="False">
            <div class="errorbox">
                <asp:Button ID="Button8" runat="server" Text="V" CssClass="clsbtn" OnClick="Button8_Click" />
                <table style="width: 500px;margin: auto;font-family: Roboto;position: relative;top: 50px;" cellspacing="10">
                    <tr>
                        <td colspan="3" style="font-family: 'Motion Control';font-size: 25px;">
                            <asp:Label ID="Label10" runat="server" Text="Current Offer : "></asp:Label><asp:Label ID="Label9" runat="server" Text="Label"></asp:Label>(Rs.<asp:Label ID="Label11" runat="server" Text="Label"></asp:Label>)
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label7" runat="server" Text="Offer Name"></asp:Label>
                        </td>
                        <td>
                            <asp:Label ID="Label8" runat="server" Text="Offer Rate"></asp:Label>
                        </td>
                        <td>

                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:TextBox ID="TextBox5" runat="server" CssClass="txtbxup"></asp:TextBox>
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox6" runat="server" CssClass="txtbxup"></asp:TextBox>
                        </td>
                        <td>
                            <asp:Button ID="Button9" runat="server" Text="UPDATE" CssClass="upbtn" OnClick="Button9_Click" />
                        </td>
                    </tr>
                </table>
            </div>
        </asp:Panel>
    </div>
</asp:Content>