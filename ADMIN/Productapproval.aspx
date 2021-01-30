<%@ Page Title="" Language="C#" MasterPageFile="~/ADMIN/MasterPage.master" AutoEventWireup="true" CodeFile="Productapproval.aspx.cs" Inherits="ADMIN_Productapproval" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" Runat="Server">
    Product Approval
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
        .useritemapproval {
            margin: auto;
        }
        .userbox1 {
            border: 1px dotted rgba(28, 255, 255, 0.2);
            padding: 5px;
            transition: 0.1s ease-in;
        }
        .userbox1:hover {
            border: 1px dotted rgba(255, 106, 0, 1);
            box-shadow: 0 5px 10px rgba(0, 0, 0, 0.5);
        }
        .userbox1:hover > .userbox2 {
            border: 1px dotted rgba(28, 255, 255, 0.4);
        }
        .userbox2 {
            border: 1px dotted rgba(28, 255, 255, 1);
            width: 1000px;
            height: 300px;
            position: relative;
            transition: 0.1s ease-out;
        }
        .prdimagesdiv {
            width: 30%;
            height: 100%;
            padding-right: 5px;
            float: left;
            border-right: 1px dotted rgba(28, 255, 255, 1);
        }
        .prdimgcss {
            max-width: 100%;
            max-height: 100%;
        }
        .prddetailsbox {
            width: 69.4%;
            float: left;
            height: 100%;
            overflow-y: auto;
        }
        .approvalbtnbox {
            position: absolute;
            top: 5px;
            right: 5px;
        }
        .appbtnbox {
            position: absolute;
            right: 20px;
            top: 28px;
        }
        .apprvbtn {
            border: 1px dotted rgba(28, 255, 255, 0.3);
            padding: 10px 25px 10px 25px;
            background: rgba(28, 255, 255, 0.06);
            color: #63ffff;
            font-family: Roboto;
            cursor: pointer;
            transition: background 0.1s ease-out, border 0.1s ease-in 0.1s; 
        }
        .apprvbtn:hover {
            border: 1px dotted rgba(28, 255, 255, 1);
            background: rgba(99, 255, 255, 0.11);
        }
        .rejtbtn {
            border: 1px dotted rgba(28, 255, 255, 0.3);
            padding: 10px 25px 10px 25px;
            background: rgba(28, 255, 255, 0.06);
            color: #63ffff;
            font-family: Roboto;
            cursor: pointer;
            transition: background 0.1s ease-out, border 0.1s ease-in 0.1s; 
        }
        .rejtbtn:hover {
            border: 1px dotted rgba(255, 106, 0, 1);
            background: rgba(99, 255, 255, 0.11);
        }
        .rejtbtn:active {
            background: rgba(99, 255, 255, 0.21);
        }
        .prdnamelbl {
            font-size: 40px;
            text-transform: uppercase;
            color: rgba(28, 255, 255, 1);
            text-shadow: 0 0 10px rgba(28, 255, 255, 0.5);
            font-family: Roboto;
            font-weight: bold;
        }
        .prdidlbl {
            font-family: Roboto;
            color: rgba(28, 255, 255, 0.3);
        }
        .prdidlblval {
            font-family: Roboto;
            color: rgba(28, 255, 255, 0.9);
            font-weight: bold;
            font-size: 18px;
            text-transform: uppercase;
        }
        .returnbox {
            position: relative;
            padding: 10px 20px 10px 20px;
            border: 1px solid rgba(28, 255, 255, 0.2);
            font-family: Roboto;
            background: rgba(28, 255, 255, 0.06);
            color: #63ffff;
            margin-left: 10px;
            width: 100%;
        }
        .aboutreturnprds {
            color: rgba(28, 255, 255, 0.2);
        }
        .aboutprdlbl {
            font-family: Roboto;
            color: rgba(28, 255, 255, 1);
        }
        .noapprvpanel {
            margin: 0% 30%;
        }
    </style>
        <script type="text/javascript">
            window.onload = function returnitemsbox() {
                var el1 = document.getElementsByClassName("prdtitlereturn");
                var el2 = document.getElementsByClassName("returnbox");
                for (var i = 0; i < el1.length; i++) {

                    if (el1[i].innerHTML == "") {
                        el2[i].style.display = "none";
                    } else {
                        el2[i].style.display = "block";
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
                        <asp:Label ID="Label8" runat="server" Text="USER ITEM APPROVAL" CssClass="tplbl"></asp:Label>
                    </td>
                    <td style="text-align: right;padding-right: 10px;">
                        <asp:TextBox ID="TextBox1" runat="server" CssClass="tptxtbx"></asp:TextBox>
                        <asp:Button ID="Button1" runat="server" Text="Search" CssClass="tpsrchbtn"/>
                    </td>
                </tr>
            </table>
        </div>

        <asp:Panel ID="Panel3" runat="server" CssClass="noapprvpanel">
            <asp:Label ID="Label5" runat="server" Text="No Request to approve." ForeColor="#003399" Font-Size="XX-Large" Font-Names="Montserrat"></asp:Label>
        </asp:Panel>

            <asp:Panel ID="Panel1" runat="server">
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString='<%$ ConnectionStrings:OBSConnectionString16 %>' SelectCommand="select * from tbl_reg ,ProductTable ,ProductimageTable ,ReturnTable1 ,ReturnTable2 ,ReturnTable3 where tbl_reg.reg_id = ProductTable.reg_id and ProductTable.pr_id = ProductimageTable.pr_imgid and ProductTable.pr_id = ReturnTable1.pr_id and ProductTable.pr_id = ReturnTable2.pr_id and ProductTable.pr_id = ReturnTable3.pr_id and ProductTable.pr_status = '0'"></asp:SqlDataSource>
            <asp:DataList CssClass="useritemapproval" ID="DataList1" runat="server" DataKeyField="reg_id" DataSourceID="SqlDataSource1" OnItemCommand="DataList1_ItemCommand">
                <ItemTemplate>
                    <div class="userbox1">
                        <div class="userbox2">
                            <div class="prdimagesdiv">
                                <asp:Image ID="Image1" runat="server" CssClass="prdimgcss" ImageUrl='<%# Eval("img_path") %>' />
                            </div>
                            <div class="prddetailsbox">
                                    <div class="approvalbtnbox">
                                        <asp:Button ID="Button2" runat="server" Text="APPROVE" CssClass="apprvbtn" CommandName="approvebtn" CommandArgument='<%#Eval("pr_id") %>' />
                                        <asp:Button ID="Button3" runat="server" Text="REJECT" CssClass="rejtbtn" />
                                    </div>
                                <table cellspacing="10px">
                                    <tr>
                                        <td colspan="2" style="text-align: left">
                                            <asp:Label ID="Label1" runat="server" ToolTip='<%# Eval("pr_name") %>' Text='<%# Eval("pr_name") %>' CssClass="prdnamelbl"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="text-align: right">
                                            <asp:Label ID="Label2" runat="server" Text="PRODUCT ID " CssClass="prdidlbl"></asp:Label>
                                            </td>
                                        <td>
                                            <asp:Label ID="Label3" runat="server" Text='<%# Eval("pr_id") %>' CssClass="prdidlblval"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                                    <td style="text-align: right">
                                                        <asp:Label ID="Label4" runat="server" Text="TRADER NAME  "  CssClass="prdidlbl"></asp:Label>
                                                    </td>
                                                    <td>
                                                        <asp:Label ID="Label5" runat="server" Text='<%# Eval("fname") %>' CssClass="prdidlblval"></asp:Label>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="text-align: right">
                                                        <asp:Label ID="Label6" runat="server" Text="TRADER   ID  "  CssClass="prdidlbl"></asp:Label>
                                                    </td>
                                                    <td>
                                                        <asp:Label ID="Label7" runat="server" Text='<%# Eval("reg_id") %>' CssClass="prdidlblval"></asp:Label>
                                                    </td>
                                                </tr>
                                    <tr>
                                        <td style="text-align: right">
                                            <asp:Label ID="Label19" runat="server" Text="DESCRIPTION " CssClass="prdidlbl"></asp:Label>
                                            </td>
                                        <td>
                                            <asp:Label ID="Label18" runat="server" Text='<%# Eval("pr_about") %>' CssClass="aboutprdlbl"></asp:Label>
                                        </td>
                                    </tr>
                                                <tr>
                                                    <td style="text-align: right;vertical-align: top;">
                                                        <asp:Label ID="Label12" runat="server" Text="RETURN ITEMS" CssClass="prdidlbl"></asp:Label>
                                                    </td>
                                                    <td>
                                             <table>
                                    <tr>
                                        <td>
                                            <div class="returnbox">
                                            <asp:Label ID="Label9" runat="server" Text='<%# Eval("pr_rename") %>' CssClass="prdtitlereturn"></asp:Label><br />
                                            <asp:Label ID="Label13" runat="server" Text='<%# Eval("pr_about1") %>' CssClass="aboutreturnprds"></asp:Label>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <div class="returnbox">
                                            <asp:Label ID="Label14" runat="server" Text='<%# Eval("pr_rename1") %>' CssClass="prdtitlereturn"></asp:Label><br />
                                            <asp:Label ID="Label15" runat="server" Text='<%# Eval("pr_about2") %>' CssClass="aboutreturnprds"></asp:Label>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <div class="returnbox">
                                            <asp:Label ID="Label16" runat="server" Text='<%# Eval("pr_rename2") %>' CssClass="prdtitlereturn"></asp:Label><br />
                                            <asp:Label ID="Label17" runat="server" Text='<%# Eval("pr_about3") %>' CssClass="aboutreturnprds"></asp:Label>
                                            </div>
                                        </td>
                                    </tr>
                                </table>
                                                    </td>
                                                </tr>
                                        </td>
                                    </tr>

                                </table>
                               
                                <asp:Label ID="Label10" runat="server" Text='<%# Eval("pr_rename1") %>' CssClass="retnprdlbl"></asp:Label><asp:Label ID="Label11" runat="server" Text='<%# Eval("pr_rename2") %>' CssClass="retnprdlbl"></asp:Label>
                            </div>
                            
                        </div>
                    </div>
                </ItemTemplate>
            </asp:DataList>
            </asp:Panel>
       </div>

</asp:Content>

