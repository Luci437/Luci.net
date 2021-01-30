<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="CUSTOMER_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <script type="text/javascript" src="javasc/jav.js"></script>
    <style>
        * {
            margin: 0px;
            padding: 0px;
        }
        body,html {
            width: 100%;
            height: 100%;
        }
        #imgslider {
            width: 100%;
            height: 300px;
        }
        .mainboxcontainer {
            width: 100%;
            height: 400px;
            background: #fff;
            box-shadow: 0 5px 5px #e5e5e5;
            margin-top: 20px;
            margin-bottom: 20px;
        }
        .maincontpart1 {
            width: 25%;
            height: 380px;
            float: left;
        }
        .maincontpart1 h3 {
            font-size: 30px;
            font-family: Cambria;
            font-style: italic;
            font-weight: 600;
            text-align: center;
            top: 40%;
            position: relative;
        }
        .maincontpart2 {
            width: 75%;
            height: 400px;
            float: left;
            overflow-y: auto;
            overflow-x: hidden;
        }
        .auto-style2 {
            width: 64px;
            height: 135px;
        }
        .auto-style3 {
            width: 71px;
        }
        .prdimgdiv {
            width: 220px;
            height: 220px;
            display: inline-block;
        }
        .prdimg {
            max-height: 100%;
            max-width: 100%;
            transition: 0.1s;
        }
        .prdimg:hover {
            transform: scale(1.1);
        }
        .prdname {
            font-size: 15px;
            font-family: sans-serif;
            font-weight: 600;
            color: #171717;
            letter-spacing: 0.5px;
        }
        .prdreturns {
            font-size: 15px;
            font-family: sans-serif;
            font-weight: 200;
            color: #37762b;
            letter-spacing: 0.5px;
            width: 100px;
        }
        .prdtradebtn {
            width: 100%;
            padding: 10px 0 10px 0;
            background: #0094ff;
            border: none;
            border-radius: 3px;
            color: #fff;
            cursor: pointer;
        }
        .prdtradebtn:hover {
            background: #007cd5;
        }
        .textoverflowdiv {
            width: 100%;
            height: 30px;
        }
        .textoverflowdiv:hover pre {
            overflow: visible;
            text-overflow: initial;
            transform: translateY(-15px);
        }
        .textoverflowdiv pre {
            width: 90px;
            overflow: hidden;
            text-overflow: ellipsis;
            transition: 0.5s ease;
        }
        .noprdmsglbl {
            position: relative;
            font-size: 30px;
            font-family: Cambria;
            font-weight: bold;
            font-style: italic;
        }
        .noprdmsglbl2 {
            position: relative;
            font-size: 20px;
            font-family: Cambria;
            color: #152835;
        }
        .noprdmssgpanel {
            margin:  10% auto;
            width: 100%;
            text-align: center;
            color: #007cd5;
        }
        .containerbtns {
            color: #fff;
            border: none;
            border-radius: 2px;
            margin: 15px;
            background: #0094ff;
            padding: 10px 15px 10px 15px;
            text-transform: uppercase;
            font-size: 20px;
            font-family: sans-serif;
            cursor: pointer;
            text-decoration: none;
        }
        .containerbtns:hover {
            box-shadow: 0 5px 3px #dcdcdc;
        }
        /**Ads viewer containers codes*/
        .adviewcontainers {
            width: 100%;
            height: 300px;
            position: relative;
            text-align: center;
            overflow: hidden;
        }
        .adimgs {
            width: 800px;
            height: 300px;
            position: absolute;
            margin-left: 20%;

        }
        .adimgcss {
            max-height: 100%;
            max-width: 100%;
            opacity: 0;
            transition: 0.5s ease;
        }
        .bgadtitle {
            font-size: 100px;
            font-family: sans-serif;
            color: #a4a4a4;
            text-shadow: 0 1px 0 #fff;
            margin-top: 6%;
            opacity: 0.3;
        }
        </style>
    <script>
        var imgval = 1;
        var call = 1;
        window.onload = function sliderimgchange() {
            if (call == 1) {
                call = 2;
                checkimg();
            }
            var el1 = document.getElementById("imgslider");
            var totalimg = 5;

            if (imgval >= totalimg) {
                imgval = 1;
            }

            el1.style.background = "url(slide" + imgval + ".jpg)";
            imgval += 1;

            setTimeout(sliderimgchange, 3000);

        }

        var elen;
        var currpos = 0;
        function checkimg() {
            var el2 = document.getElementsByClassName("adimgcss");
            var el3 = document.getElementsByClassName("adimgs");
            elen = el2.length;

            for (var i = 0; i < elen; i++) {
                if (i == currpos) {
                    el2[i].style.opacity = "1";
                    el3[i].style.marginLeft = "20%";
                } else {
                    el2[i].style.opacity = "0";
                    el3[i].style.marginLeft = "-60%";
                }
            }

            currpos += 1;

            if (currpos <= elen) {
                setTimeout(checkimg, 3000);
            } else {
                currpos = 0;
                checkimg();
            }
        }

    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="imgslider"></div>

    <div class="mainboxcontainer">
        <div class="maincontpart1">
            <h3>Recent Items</h3>
        </div><!--Container Title goes inside this div-->

        <div class="maincontpart2">
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString='<%$ ConnectionStrings:OBSConnectionString16 %>' SelectCommand="select * from tbl_reg ,ProductTable ,ProductimageTable ,ReturnTable1 ,ReturnTable2 ,ReturnTable3 where tbl_reg.reg_id = ProductTable.reg_id and ProductTable.pr_id = ProductimageTable.pr_imgid and ProductTable.pr_id = ReturnTable1.pr_id and ProductTable.pr_id = ReturnTable2.pr_id and ProductTable.pr_id = ReturnTable3.pr_id and ProductTable.pr_status = 1 order by ProductTable.pr_id desc"></asp:SqlDataSource>
            <asp:DataList CssClass="datalist1css" ID="DataList1" runat="server" DataKeyField="reg_id" DataSourceID="SqlDataSource1" CellSpacing="10" OnSelectedIndexChanged="DataList1_SelectedIndexChanged" OnItemCommand="DataList1_ItemCommand" RepeatDirection="Horizontal" RepeatColumns="3">
                <ItemTemplate>
                    <table cellspacing="10">
                        <tr>
                            <td colspan="3" style="text-align: center">
                                <div class="prdimgdiv">
                                    <asp:Image ID="Image1" runat="server" CssClass="prdimg" ImageUrl='<%# Eval("img_path") %>' />
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="3" style="text-align: center">
                                <asp:Label ID="Label1" runat="server" Text='<%# Eval("pr_name") %>' CssClass="prdname"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td style="text-align: center">
                                <div class="textoverflowdiv">
                                    <pre><asp:Label ID="Label2" CssClass="prdreturns" runat="server" Text='<%# Eval("pr_rename") %>'></asp:Label></pre>
                                </div>
                            </td>
                            <td style="text-align: center">
                                <div class="textoverflowdiv">
                                    <pre><asp:Label ID="Label3" CssClass="prdreturns" runat="server" Text='<%# Eval("pr_rename1") %>'></asp:Label></pre>
                                </div>
                            </td>
                            <td style="text-align: center">
                                <div class="textoverflowdiv">
                                    <pre><asp:Label ID="Label4" CssClass="prdreturns" runat="server" Text='<%# Eval("pr_rename2") %>'></asp:Label></pre>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="3" style="text-align: center">
                                <asp:Label ID="Label5" runat="server" Text="Trader : " Font-Names="roboto" ForeColor="#0099FF"></asp:Label>
                                <asp:Label ID="Label6" runat="server" Text='<%# Eval("fname") %>' Font-Names="roboto" ForeColor="#3399FF" Font-Bold="True"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="3" style="text-align: center">
                                <asp:Button ID="Button2" runat="server" Text="Trade Now" CssClass="prdtradebtn" OnClick="Button2_Click" CommandName="Productview" CommandArgument='<%# Eval("pr_id") %>'/>
                            </td>
                        </tr>
                    </table>
                </ItemTemplate>
            </asp:DataList>
        </div><!--Data list will be shown here-->
    </div><!--This will show recently added items from database-->

    <div class="adviewcontainers">
        <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString='<%$ ConnectionStrings:OBSConnectionString16 %>' SelectCommand="SELECT * FROM [useradtypetable] where ad_status = 1"></asp:SqlDataSource>
        <asp:Repeater ID="Repeater1" runat="server" OnItemCommand="Repeater1_ItemCommand" DataSourceID="SqlDataSource4">
            <ItemTemplate>
                <div class="adimgs">
                    <asp:LinkButton ID="LinkButton1" runat="server" CommandName="prdids" CommandArgument='<%#Eval("ad_prid") %>'>
                    <asp:Image ID="Image3" runat="server" CssClass="adimgcss" ImageUrl='<%#Eval("ad_img") %>'/>
                        .
                    </asp:LinkButton>
                </div>               
            </ItemTemplate>
        </asp:Repeater>
        <h1 class="bgadtitle">Ads @ Luci</h1>
    </div>

    <div class="mainboxcontainer">
        <div class="maincontpart1">
                <h3>Your Items</h3>
         </div>
        <div class="maincontpart2">

            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString='<%$ ConnectionStrings:OBSConnectionString16 %>' SelectCommand="select * from tbl_reg ,ProductTable ,ProductimageTable ,ReturnTable1 ,ReturnTable2 ,ReturnTable3 where tbl_reg.reg_id = ProductTable.reg_id and ProductTable.pr_id = ProductimageTable.pr_imgid and ProductTable.pr_id = ReturnTable1.pr_id and ProductTable.pr_id = ReturnTable2.pr_id and ProductTable.pr_id = ReturnTable3.pr_id and tbl_reg.reg_id = @reg_id">
                <SelectParameters>
                    <asp:SessionParameter SessionField="userid" Name="reg_id" Type="String"></asp:SessionParameter>
                </SelectParameters>
            </asp:SqlDataSource>

            <asp:DataList ID="DataList2" runat="server" DataSourceID="SqlDataSource2" OnItemCommand="DataList2_ItemCommand" RepeatColumns="3" RepeatDirection="Horizontal">
                <ItemTemplate>
                    <table cellspacing="10">
                        <tr>
                            <td colspan="3" style="text-align: center">
                                <div class="prdimgdiv">
                                    <asp:Image ID="Image1" runat="server" CssClass="prdimg" ImageUrl='<%# Eval("img_path") %>' />
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="3" style="text-align: center">
                                <asp:Label ID="Label1" runat="server" Text='<%# Eval("pr_name") %>' CssClass="prdname"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td style="text-align: center">
                                <div class="textoverflowdiv">
                                    <pre><asp:Label ID="Label2" CssClass="prdreturns" runat="server" Text='<%# Eval("pr_rename") %>'></asp:Label></pre>
                                </div>
                            </td>
                            <td style="text-align: center">
                                <div class="textoverflowdiv">
                                    <pre><asp:Label ID="Label3" CssClass="prdreturns" runat="server" Text='<%# Eval("pr_rename1") %>'></asp:Label></pre>
                                </div>
                            </td>
                            <td style="text-align: center">
                                <div class="textoverflowdiv">
                                    <pre><asp:Label ID="Label4" CssClass="prdreturns" runat="server" Text='<%# Eval("pr_rename2") %>'></asp:Label></pre>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="3" style="text-align: center">
                                <asp:Button ID="Button2" runat="server" Text="Edit" CssClass="prdtradebtn" OnClick="Button2_Click" CommandName="Productview" CommandArgument='<%# Eval("pr_id") %>'/>
                            </td>
                        </tr>
                    </table>                    
                </ItemTemplate>
            </asp:DataList>

            <asp:Panel ID="Panel1" runat="server" CssClass="noprdmssgpanel" Visible="False">
                <asp:Label ID="noproductmssglabel" runat="server" Text="" CssClass="noprdmsglbl"></asp:Label><br />
                <asp:Label ID="noproductmssglabel2" runat="server" Text="" CssClass="noprdmsglbl2"></asp:Label><br />
                <asp:Button ID="Button1" runat="server" Text="Add Now" CssClass="containerbtns" OnClick="Button1_Click" PostBackUrl="~/CUSTOMER/Addprds.aspx" Visible="False" />
                <asp:Button ID="Button4" runat="server" Text="Login" CssClass="containerbtns" PostBackUrl="~/MAIN_PAGES/LoginPage.aspx" Visible="False" />
            </asp:Panel>
        </div>
        
    </div><!--This will show user products-->
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>

