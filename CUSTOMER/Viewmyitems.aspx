<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Viewmyitems.aspx.cs" Inherits="CUSTOMER_Viewmyitems" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" Runat="Server">
    View All Items
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" Runat="Server">
    <style>
        .prdcontainer {
            padding: 10px;
        }
        .maintable {
            float: right;
            padding: 10px;
            border-bottom: 1px solid #eaeaea;
            font-family: Roboto;
        }
        .datalistcss {
            float: right;
            height: 300px;
            background: #fff;
            position: relative;
        }
        .datalistcss::before {
            z-index: -1;
            content: "";
            max-width: 100%;
            width: 90%;
            top: 80%;
            left: 10px;
            box-shadow: 0 10px 5px #000;
            bottom: 0;
        }
        .imgsizer {
            width: 200px;
            height: 200px;
            text-align: center;
        }
        .prdimgcss {
            max-height: 100%;
            max-width: 100%;
        }
        .prdtitlable {
            letter-spacing: 0.2px;
            font-family: 25px;
            font-weight: 600;
        }
        .usernamelbl {
            letter-spacing: 0.2px;
            font-family: 15px;
            font-weight: 400;
            color: #0a8118;
        }
        .linkbtn {
            text-decoration: none;
            color: #000;
            transition: 0.1s ease;
        }
        .linkbtn:hover .prdtitlable {
            color: #0094ff;
        }
        .aboutprddiv {
            width: 90%;
            float: right;
            text-align: justify;
            font-family: Roboto;
            color: #4b4b4b;
            font-size: 15px;
            line-height: 1.4;
            padding: 10px;
        }
        .hedngs {
            font-weight: 500;
            color: #313131;
            line-height: 2;
        }
        .yritembtns {
            margin-left: 10px;
            padding: 10px 25px 10px 25px;
            color: #fff;
            background: linear-gradient(#0f9aff,#007dd8,#4cb4ff);
            font-family: Roboto;
            border: none;
            border-radius: 3px;
            position: relative;
            cursor: pointer;
        }
        .yritembtns:hover {
            background: #007dd8;
        }
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="prdcontainer">
        <div class="prdviewcontainer">
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:OBSConnectionString10 %>" SelectCommand="select * from tbl_reg ,ProductTable ,ProductimageTable ,ReturnTable1 ,ReturnTable2 ,ReturnTable3 where tbl_reg.reg_id = ProductTable.reg_id and ProductTable.pr_id = ProductimageTable.pr_imgid and ProductTable.pr_id = ReturnTable1.pr_id and ProductTable.pr_id = ReturnTable2.pr_id and ProductTable.pr_id = ReturnTable3.pr_id and ProductTable.reg_id = @reg_id">
                <SelectParameters>
                    <asp:SessionParameter Name="reg_id" SessionField="userid" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
            <asp:DataList ID="DataList1" runat="server" DataKeyField="pr_id" DataSourceID="SqlDataSource1" CssClass="datalistcss" OnItemCommand="DataList1_ItemCommand" OnSelectedIndexChanged="DataList1_SelectedIndexChanged">
                <ItemTemplate>
                    <asp:LinkButton ID="LinkButton1" runat="server" CssClass="linkbtn">
                    <table class="maintable">
                        <tr>
                            <td style="width: 250px;height: 300px;text-align: center;padding: 0px 20px 0px 20px;">
                                <div class="imgsizer">
                                <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("img_path") %>' CssClass="prdimgcss"/>
                                </div>
                            </td>
                            <td style="width: 400px;height: 300px;vertical-align: top;">
                                <table style="margin-top: 20px;text-align: left;line-height: 1.5;">
                                    <tr>
                                        <th>
                                            <asp:Label ID="Label9" runat="server" Text='<%# Eval("pr_name") %>' CssClass="prdtitlable"></asp:Label>
                                        </th>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:Label ID="Label1" runat="server" Text="Trader Name :" CssClass="usernamelbl"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="padding-top: 20px;">
                                            <asp:Label ID="Label3" runat="server" Text="Description" CssClass="hedngs"></asp:Label><br />
                                            <div class="aboutprddiv">
                                                <asp:Label ID="Label2" runat="server" Text='<%# Eval("pr_about") %>'></asp:Label>
                                            </div>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                            <td style="width: 250px;height: 300px;vertical-align: text-top;color: #0a8118;padding-left: 10px;">
                                <table style="margin-top: 20px;text-align: left;line-height: 1.5;">
                                    <tr>
                                        <td>
                                            <asp:Label ID="Label4" runat="server" Text="Return Items" CssClass="hedngs"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="font-size: 15px;">
                                            <asp:Label ID="Label8" runat="server" Text='<%# Eval("pr_rename") %>'></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:Label ID="Label5" runat="server" Text='<%# Eval("pr_rename1") %>'></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:Label ID="Label6" runat="server" Text='<%# Eval("pr_rename2") %>'></asp:Label>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="3" style="text-align: right;">
                                <asp:Button ID="Button1" runat="server" Text="Remove Item" CommandName="removeitem" CommandArgument='<%# Eval("pr_id") %>' CssClass="yritembtns" />
                                <asp:Button ID="Button2" runat="server" Text="Edit Item" CommandName="edititem" CssClass="yritembtns" CommandArgument='<%# Eval("pr_id") %>' />
                            </td>
                        </tr>
                    </table>
                    <br />
                    <br />
                  </asp:LinkButton>
                </ItemTemplate>
            </asp:DataList>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>

