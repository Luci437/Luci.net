<%@ Page Title="" Language="C#" MasterPageFile="~/ADMIN/MasterPage.master" AutoEventWireup="true" CodeFile="itemdetails.aspx.cs" Inherits="ADMIN_itemdetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" Runat="Server">
    Items Details
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" Runat="Server">
    <style>
        * {
            margin: 0px;
            padding: 0px;
        }
        .maincontainer {
            width: 80%;
            height: 100vh;
            box-sizing: border-box;
            overflow: hidden;
            overflow-y: scroll;
            position: relative;
            background: #f1f1f1;
        }
        .toppart {
            width: 100%;
            height: 60px;
        }
        .toppart table {
            width: 100%;
            margin: auto;
            background: rgba(0, 0, 0, 0.47);
        }
        .tplbl {
            font-family: Roboto thin;
            font-size: 35px;
            text-transform: uppercase;
            color: #ffffff;
            padding: 0px 60px 0px 60px;
        }
        .tptxtbx {
            width: 200px;
            height: 30px;
            border-top: 1px solid #fff;
            border-left: 1px solid #fff;
            border-bottom: 1px solid #fff;
            border-right: 1px solid rgba(0, 0, 0, 0.00);
            background: rgba(0, 129, 129, 0.1);
            color: #fff;
            padding-left: 10px;
            font-size: 17px;
            font-family: sans-serif;
            outline: none;
            letter-spacing: 1.5px;
        }
        .tpsrchbtn {
            padding: 8px 15px 7px 15px;
            border-top: 1px solid #fff;
            border-right: 1px solid #fff;
            border-bottom: 1px solid #fff;
            border-left: 1px solid rgba(0, 0, 0, 0.00);
            background: rgba(0, 0, 0, 0.31);
            font-family: sans-serif;
            color: #fff;
            transition: 0.2s ease;
            cursor: pointer;
            position: relative;
            left: -5px;
            outline: none;
        }
        .tpsrchbtn:hover {
            background: rgba(0, 0, 0, 0.52);
        }
        .datalistone {
            width: 100%;
            overflow: hidden;
            overflow-y: scroll;
            position: relative;
        }
        .subcontainer {
            width: 90%;
            height: 200px;
            background: linear-gradient(#e4e4e4,#f1f1f1);
            margin: 10px auto;
            box-shadow: 0 5px 5px rgba(0, 0, 0, 0.10);
            border-radius: 3px;
            position: relative;
            border-top: 1px solid #ffffff;
            
        }
        .subcontainer:hover .prdimgs {
            transform: scale(1);
        }
        .prdimgbox {
            width: 20%;
            height: 200px;
            overflow: hidden;
            position: relative;
            float: left;
            text-align: center;
        }
        .prdimgs {
            max-width: 100%;
            max-height: 100%;
            transform: scale(1.1);
            transition: 0.1s ease-out;
        }
        .usernamelbl {
            position: absolute;
            bottom: 0px;
            background: rgba(0, 0, 0, 0.54);
            color: #fff;
            font-family: 'Motion Control';
            letter-spacing: 2px;
            font-size: 18px;
            width: 100%;
            padding: 10px 0px 10px 0px;
            text-align: center;
            text-transform: uppercase;
            left: 0px;
        }
        .prdsdetailsbox {
            width: 80%;
            height: 200px;
            float: left;
            overflow: hidden;
            overflow-y: scroll;
            position: relative;
            box-sizing: content-box;
        }
        .prdnamelbl {
            font-size: 25px;
            margin: 10px;
            font-family: Roboto;
            font-weight: bold;
            color: #1a1a1a;                                    
        }
        .prdaboutlbl {
            font-family: Roboto;
            font-weight: 500;
            font-size: 15px;
            color: #828282;
            margin-left: 30px;
            line-height: 1.5;
        }
        .prdsretrnlbl {
            font-family: Roboto;
            font-weight: 500;
            font-size: 15px;
            color: #009714;
            line-height: 5;
            margin: 10px;
            text-transform: uppercase;
        }
        .prdsretrnbox {
            margin-left: 30px;
            position: relative;
            top: -25px;
        }
        .prdrtns {
            font-family: Roboto;
            padding: 10px;
            font-weight: 500;
            cursor: pointer;
            margin-left: 10px;
            color: #009714;
        }
        .prdidbox {
            width: auto;
            height: auto;
            background: #009714;
            float: left;
            position: relative;
            left: 10px;
            padding: 10px 15px 10px 15px;
            color: #ededed;
            font-family: Roboto;
            font-weight: bold;
        }
        .trdidbox {
            width: auto;
            height: auto;
            background: #008a12;
            float: left;
            position: relative;
            left: 10px;
            padding: 10px 15px 10px 15px;
            color: #ededed;
            font-family: Roboto;
            font-weight: bold;
            box-sizing: content-box;
        }
        .usrprdidbox {
            position: absolute;
            top: 0px;
            right: 0px;
        }
        .prdstatuslbl {
            position: absolute;
            top: -200px;
        }
    </style>
    <script type="text/javascript">
        window.onload = function statusshow() {
            var el1 = document.getElementsByClassName("prdstatuslbl"),
                el2 = document.getElementsByClassName("usernamelbl"),
                len = el1.length;

            for (var i = 0; i < len; i++) {
                if (el1[i].innerHTML == 0) {
                    el2[i].innerHTML = "Not Available";
                } else {
                    el2[i].innerHTML = "Available";
                }
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
                        <asp:Label ID="Label8" runat="server" Text="USER ADs DETAILS" CssClass="tplbl"></asp:Label>
                    </td>
                    <td style="text-align: right;padding-right: 10px;">
                        <asp:TextBox ID="TextBox1" runat="server" CssClass="tptxtbx"></asp:TextBox>
                        <asp:Button ID="Button1" runat="server" Text="Search" CssClass="tpsrchbtn"/>
                    </td>
                </tr>
            </table>
        </div>


        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString='<%$ ConnectionStrings:OBSConnectionString16 %>' SelectCommand="SELECT * FROM tbl_reg,ProductTable,ProductimageTable,CategoryTable,SubcategoryTable,ReturnTable1,ReturnTable2,ReturnTable3,AddressTable where tbl_reg.reg_id = ProductTable.reg_id and ProductTable.pr_catid = CategoryTable.pr_catid and ProductTable.pr_subid = SubcategoryTable.pr_subid and ReturnTable1.pr_id = ProductTable.pr_id and ReturnTable2.pr_id = ProductTable.pr_id and ReturnTable3.pr_id = ProductTable.pr_id and AddressTable.pr_id = ProductTable.pr_id and ProductimageTable.pr_imgid = ProductTable.pr_id and ProductTable.pr_name LIKE '%' + @pr_name + '%'">
            <SelectParameters>
                <asp:ControlParameter ControlID="TextBox1" PropertyName="Text" Name="pr_name" Type="String"></asp:ControlParameter>
            </SelectParameters>
        </asp:SqlDataSource>

        <asp:DataList ID="DataList2" runat="server" DataSourceID="SqlDataSource2" CssClass="datalistone" OnItemCreated="DataList2_ItemCreated">
            <ItemTemplate>
                <div class="subcontainer">
                    <div class="prdimgbox">
                        <asp:Image ID="Image1" runat="server" ImageUrl='<%#Eval("img_path") %>' CssClass="prdimgs" />
                        <asp:Label ID="Label11" CssClass="usernamelbl" runat="server" Text=""></asp:Label>
                        <asp:Label ID="Label12" CssClass="prdstatuslbl" runat="server" Text='<%#Eval("pr_status") %>'></asp:Label>
                    </div>
                    <div class="prdsdetailsbox">
                        <asp:Label ID="Label1" runat="server" CssClass="prdnamelbl" Text='<%#Eval("pr_name") %>'></asp:Label><br />
                        <asp:Label ID="Label2" runat="server" CssClass="prdaboutlbl" Text='<%#Eval("pr_about") %>'></asp:Label><br />
                        <asp:Label ID="Label3" runat="server" CssClass="prdsretrnlbl" Text="Products in Return"></asp:Label><br />
                        <div class="prdsretrnbox">
                            <asp:Label ID="Label4" CssClass="prdrtns" runat="server" Text='<%#Eval("pr_rename") %>' ToolTip='<%#Eval("pr_about1") %>'></asp:Label><asp:Label ID="Label5" CssClass="prdrtns" runat="server" Text='<%#Eval("pr_rename1") %>' ToolTip='<%#Eval("pr_about2") %>'></asp:Label><asp:Label ID="Label6" CssClass="prdrtns" runat="server" Text='<%#Eval("pr_rename2") %>' ToolTip='<%#Eval("pr_about3") %>'></asp:Label>
                        </div>
                        <div class="usrprdidbox">
                        <div class="prdidbox">
                            <asp:Label ID="Label7" runat="server" Text="Trader ID : "></asp:Label><asp:Label ID="Label8" runat="server" Text='<%#Eval("reg_id") %>' ToolTip='<%#Eval("fname") %>'></asp:Label>
                        </div>
                        <div class="trdidbox">
                            <asp:Label ID="Label9" runat="server" Text="Product ID : "></asp:Label><asp:Label ID="Label10" runat="server" Text='<%#Eval("pr_id") %>'></asp:Label>
                        </div>
                        </div>
                    </div>
                </div>
            </ItemTemplate>
        </asp:DataList>


        <asp:Panel ID="Panel1" runat="server">
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString='<%$ ConnectionStrings:OBSConnectionString16 %>' SelectCommand="select * from tbl_reg,ProductTable,ProductimageTable,CategoryTable,SubcategoryTable,ReturnTable1,ReturnTable2,ReturnTable3,AddressTable where tbl_reg.reg_id = ProductTable.reg_id and ProductTable.pr_catid = CategoryTable.pr_catid and ProductTable.pr_subid = SubcategoryTable.pr_subid and ReturnTable1.pr_id = ProductTable.pr_id and ReturnTable2.pr_id = ProductTable.pr_id and ReturnTable3.pr_id = ProductTable.pr_id and AddressTable.pr_id = ProductTable.pr_id and ProductimageTable.pr_imgid = ProductTable.pr_id"></asp:SqlDataSource>
        <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" CssClass="datalistone">
            <ItemTemplate>
                <div class="subcontainer">
                    <div class="prdimgbox">
                        <asp:Image ID="Image1" runat="server" ImageUrl='<%#Eval("img_path") %>' CssClass="prdimgs" />
                        <asp:Label ID="Label11" CssClass="usernamelbl" runat="server" Text=""></asp:Label>
                        <asp:Label ID="Label12" CssClass="prdstatuslbl" runat="server" Text='<%#Eval("pr_status") %>'></asp:Label>
                    </div>
                    <div class="prdsdetailsbox">
                        <asp:Label ID="Label1" runat="server" CssClass="prdnamelbl" Text='<%#Eval("pr_name") %>'></asp:Label><br />
                        <asp:Label ID="Label2" runat="server" CssClass="prdaboutlbl" Text='<%#Eval("pr_about") %>'></asp:Label><br />
                        <asp:Label ID="Label3" runat="server" CssClass="prdsretrnlbl" Text="Products in Return"></asp:Label><br />
                        <div class="prdsretrnbox">
                            <asp:Label ID="Label4" CssClass="prdrtns" runat="server" Text='<%#Eval("pr_rename") %>' ToolTip='<%#Eval("pr_about1") %>'></asp:Label><asp:Label ID="Label5" CssClass="prdrtns" runat="server" Text='<%#Eval("pr_rename1") %>' ToolTip='<%#Eval("pr_about2") %>'></asp:Label><asp:Label ID="Label6" CssClass="prdrtns" runat="server" Text='<%#Eval("pr_rename2") %>' ToolTip='<%#Eval("pr_about3") %>'></asp:Label>
                        </div>
                        <div class="usrprdidbox">
                        <div class="prdidbox">
                            <asp:Label ID="Label7" runat="server" Text="Trader ID : "></asp:Label><asp:Label ID="Label8" runat="server" Text='<%#Eval("reg_id") %>' ToolTip='<%#Eval("fname") %>'></asp:Label>
                        </div>
                        <div class="trdidbox">
                            <asp:Label ID="Label9" runat="server" Text="Product ID : "></asp:Label><asp:Label ID="Label10" runat="server" Text='<%#Eval("pr_id") %>'></asp:Label>
                        </div>
                        </div>
                    </div>
                </div>
            </ItemTemplate>
        </asp:DataList>
        </asp:Panel>
    </div>
</asp:Content>

