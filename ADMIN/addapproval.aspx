<%@ Page Title="" Language="C#" MasterPageFile="~/ADMIN/MasterPage.master" AutoEventWireup="true" CodeFile="addapproval.aspx.cs" Inherits="ADMIN_addapproval" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" Runat="Server">
    Ad Approval
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" Runat="Server">
    <style>
        * {
            outline: none;
        }
        .contentpanel {
            width: 80%;
            position: relative;
            float: left;
            height: 100vh;
            overflow: hidden;
            overflow-y: scroll;
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
        .mainpanel {
            width: 95%;
            padding: 5px 0px 5px 0px;
            margin: auto;
        }
        .addbox1 {
            position: relative;
            padding: 5px;
            border: 1px dotted #004040;
            box-sizing: border-box;
            margin-top: 45px;
        }
        .addbox2 {
            position: relative;
            padding: 5px;
            width: 100%;
            height: 500px;
            box-sizing: border-box;
            border: 1px dotted #ff6a00;
            overflow: hidden;
            overflow-y: scroll;
            background: rgba(28, 255, 255, 0.05);
        }
        .imagecontainer {
            width: 100%;
            height: 100%;
            position: relative;
            box-sizing: border-box;
            text-align: center;
        }
        .detailscontainer {
            width: 100%;
            height: 100%;
            box-sizing: border-box;
            position: relative;
            color: #00aeae;
        }
        .adimgcss {
            max-width: 100%;
            max-height: 100%;
        }
        .dbvalues,.da,.db,.dr {
            color: #ff6a00;
        }
        .approvalbtnbox {
            position: relative;
            float: right;
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
        .noapprvpanel {
            margin: 0% 30%;
        }
    </style>
    <script type="text/javascript">
        window.onload = function finddatedifference() {
            var el1 = document.getElementsByClassName("da"),
                el2 = document.getElementsByClassName("db"),
                el3 = document.getElementsByClassName("dr"),
                len = el1.length;

            for (var i = 0; i < len; i++) {
                var days = (el2[i].innerHTML) / (el1[i].innerHTML);
                el3[i].innerHTML = days;
            }
        }
    </script>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString='<%$ ConnectionStrings:OBSConnectionString16 %>' SelectCommand="select * from useradtypetable,adtypetable,tbl_reg,ProductTable where useradtypetable.ad_typeid = adtypetable.ad_typeid and tbl_reg.reg_id = useradtypetable.ad_regid and ProductTable.pr_id = useradtypetable.ad_prid and useradtypetable.ad_status = 0 order by ad_startdate"></asp:SqlDataSource>

    <asp:Panel ID="Panel1" runat="server" CssClass="contentpanel">

        <div class="toppart">
            <table>
                <tr>
                    <td style="padding-left: 10px;">
                        <asp:Label ID="Label8" runat="server" Text="USER ADs APPROVAL" CssClass="tplbl"></asp:Label>
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

        <asp:Panel ID="Panel2" runat="server">
    <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" CssClass="mainpanel" OnItemCommand="DataList1_ItemCommand">
        <ItemTemplate>
            <div class="addbox1">
                <div class="addbox2">
                    <table style="width: 100%; height: 100%; table-layout: fixed;">
                        <tr>
                            <td>
                                <div class="imagecontainer">
                                    <asp:Image ID="Image1" runat="server" CssClass="adimgcss" ImageUrl='<%# Eval("ad_img") %>' />
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <div class="detailscontainer">
                                    <table style="width: 100%;margin: 20px;text-align: center;font-family: Montserrat;" cellspacing="15">
                                        <tr>
                                            <td>
                                                <asp:Label ID="Label3" runat="server" Text="Ad Type : "></asp:Label><asp:Label ID="Label1" runat="server" Text='<%# Eval("ad_typename") %>' CssClass="dbvalues"></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <asp:Label ID="Label4" runat="server" Text="Product Name : "></asp:Label><asp:Label ID="Label2" runat="server" Text='<%# Eval("pr_name") %>' CssClass="dbvalues"></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <asp:Label ID="Label5" runat="server" Text="Ad Rate : "></asp:Label><asp:Label ID="Label6" class="da" runat="server" Text='<%# Eval("ad_rate") %>'></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <asp:Label ID="Label7" runat="server" Text="Ad Starting Date : "></asp:Label><asp:Label ID="Label8" runat="server" Text='<%# Eval("ad_startdate") %>' CssClass="dbvalues"></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <asp:Label ID="Label9" runat="server" Text="Ad Ending Date : "></asp:Label><asp:Label ID="Label10" runat="server" Text='<%# Eval("ad_enddate") %>' CssClass="dbvalues"></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <asp:Label ID="Label12" runat="server" Text="Amount Payed : "></asp:Label><asp:Label ID="Label13" runat="server" class="db" Text='<%# Eval("ad_pay") %>' ></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <asp:Label ID="Label14" runat="server" Text="Total Days Ad will show : "></asp:Label><asp:Label ID="Label11" runat="server" class="dr" Text="Label"></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <div style="border: 1px dotted #00ff21;padding: 5px 20px 5px 20px;display: inline-block;color: #cbff49">
                                                    <asp:Label ID="Label15" runat="server" Text="Trader name : "></asp:Label><asp:Label ID="Label16" runat="server" Text='<%# Eval("fname") %>' Font-Size="XX-Large"></asp:Label>
                                                </div>
                                            </td>
                                        </tr>
                                    </table>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td style="text-align: center;">
                                     <div class="approvalbtnbox">
                                        <asp:Button ID="Button2" runat="server" Text="APPROVE" CssClass="apprvbtn" CommandName="approvebtn" CommandArgument='<%#Eval("ad_id") %>' />
                                        <asp:Button ID="Button3" runat="server" Text="REJECT" CssClass="rejtbtn" CommandName="rejectbtnagr" CommandArgument='<%#Eval("ad_id") %>' />
                                    </div>
                            </td>
                        </tr>
                    </table>
                </div>
            </div>
        </ItemTemplate>
    </asp:DataList>
        </asp:Panel>
    </asp:Panel>

</asp:Content>

