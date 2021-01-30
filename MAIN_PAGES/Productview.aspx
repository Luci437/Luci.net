<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Productview.aspx.cs" Inherits="MAIN_PAGES_Productview" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" Runat="Server">
    Luci's Product
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" Runat="Server">
    <style>
    html,body {
        width: 100%;
        height: 100%;
    }
    .prdimgdiv {
        width: 400px;
        height: 400px;
        margin: auto;
    }
    .prdimgcss {
        max-width: 100%;
        max-height: 100%;
    }
    .chatbtn {
        width: 100%;
        padding: 20px 0 20px 0;
        background: #ff6a00;
        border: none;
        border-radius: 5px;
        color: #fff;
        font-family: Roboto;
        font-weight: 600;
        font-size: 15px;
        cursor: pointer;
        background-size: contain;
        background-repeat: no-repeat;
        background-origin: content-box;
    }
    .chatbtn:hover {
        box-shadow: 0 5px 5px #e9e9e9;
    }
    .prdimgtable {
        width: 500px;
        text-align: center;
        
    }
    .maintableprd {
        margin: auto;
        width: 100%;
    }
    .prdrtncss {
        font-family: Roboto;
        padding: 10px 25px 10px 25px;
        background: #0CB647;
        border-radius: 5px;
        color: #fff;
        cursor: pointer;
        float: left;
        position: relative;
        margin-left: 5px;
    }
    .prdbox {
        width: 100%;
        background: #fff;
        margin-top: 1%;
    }
    .userdetails {
        width: 100%;
        background: #fff;
        position: relative;
    }
    .userdetails table {
        width: 450px;
        margin: 10px;
    }
    .owerdetailscss {
        font-family: Roboto;
        font-size: 18px;
        color: grey;
        text-transform: uppercase;
    }
    .sameperson {
        width: 100%;
        height: 1000px;
        background: rgba(0, 0, 0, 0.48);
        position: fixed;
        top: 0px;
    }
    .errorcontainer {
        width: 100%;
        height: 200px;
        background: #fff;
        margin-top: 20%;
        box-shadow: 0 10px 20px rgba(0, 0, 0, 0.46);
        position: relative;
    }
    .closebtn {
        position: absolute;
        right: 5px;
        top: 5px;
        font-family: Roboto;
        font-weight: bold;
        font-size: 12px;
        width: 40px;
        height: 40px;
        padding: 10px;
        border-radius: 100%;
        border: none;
        background: #fff;
        cursor: pointer;
        transition: 0.1s ease-out;
        outline: none;
    }
    .closebtn:hover {
        text-shadow: 0 1px 1px #2e2e2e;
        background: #ff8383;
        color: #fff;
        box-shadow: 0 0 30px #000 inset;
    }
    .errorcontainer > table {
        position: relative;
        margin: auto;
        top: 40px;
    }
    .ratingbox {
        width: 170px;
        padding: 2px;
        height: 80px;
        border: 1px solid #d8d8d8;
        position: absolute;
        top: 0px;
        right: 0px;
        font-family: Montserrat;
        color: #222222;
    }
    .likebtns {
        font-family: 'Wingdings 2';
        border: none;
        padding: 10px 30px 10px 30px;
        font-size: 30px;
        font-weight: bold;
        background: linear-gradient(#0094ff,#007dd7);
        cursor: pointer;
        margin: 2px;
        color: #fff;
        border-radius: 3px;
        border-bottom: 1px solid #fff;
    }
    .likebtns:hover {
        background: linear-gradient(#007dd7,#0094ff);
    }
    .likelbl {
        color: #fff;
        font-family: Montserrat;
        position: absolute;
        bottom: 27px;
        left: 8px;
    }
    .dislikelbl {
        color: #fff;
        font-family: Montserrat;
        position: absolute;
        bottom: 27px;
        right: 8px;
    }
    </style>
    <script type="text/javascript">
        window.onload = function returnitemsbox() {
            var el1 = document.getElementsByClassName("prdrtncss");
            for (var i = 0; i < el1.length; i++) {

                if (el1[i].innerHTML == "") {
                    el1[i].style.display = "none";
                } else {
                    el1[i].style.display = "block";
                }
            }
        }
    </script>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:OBSConnectionString15 %>" SelectCommand="select * from tbl_reg ,ProductTable ,ProductimageTable ,ReturnTable1 ,ReturnTable2 ,ReturnTable3 ,CategoryTable ,SubcategoryTable where tbl_reg.reg_id = ProductTable.reg_id and ProductTable.pr_id = ProductimageTable.pr_imgid and ProductTable.pr_id = ReturnTable1.pr_id and ProductTable.pr_id = ReturnTable2.pr_id and ProductTable.pr_id = ReturnTable3.pr_id and ProductTable.pr_id = @pr_id and CategoryTable.pr_catid = ProductTable.pr_catid and SubcategoryTable.pr_subid = ProductTable.pr_subid">
        <SelectParameters>
            <asp:QueryStringParameter Name="pr_id" QueryStringField="prdid" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <table class="prdbox">
       <tr>
           <td>
    <asp:DataList ID="DataList1" runat="server" DataKeyField="pr_id" DataSourceID="SqlDataSource1" OnItemCommand="DataList1_ItemCommand">
        <ItemTemplate>
            <%--<asp:Label ID="Label8" runat="server" Text='<%# Eval("reg_id") %>'></asp:Label>--%>
            <table class="maintableprd">
                <tr>
                    <td>
                                <table class="prdimgtable">
                                    <tr>
                                        <td colspan="2">
                                            <div class="prdimgdiv">
                                                <asp:Image ID="Image1" runat="server" CssClass="prdimgcss" ImageUrl='<%# Eval("img_path") %>' />
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                        <asp:Button ID="Button2" runat="server" CommandName="chatnow" CommandArgument='<%# Eval("reg_id") %>' Text="CHAT HERE" CssClass="chatbtn" />
                                        </td>
                                        <td>
                                            <asp:Button ID="Button1" runat="server" Text="CONTACT" CssClass="chatbtn" BackColor="#F2C100" />
                                        </td>
                                    </tr>
                                </table>
                    </td>

                <td style="vertical-align: top;">
                    <table class="detailtable">
                        <tr >
                            <td>
                                <asp:Label ID="Label1" runat="server" Text='<%# Eval("pr_name") %>' Font-Names="roboto" Font-Bold="False" Font-Size="X-Large"></asp:Label><br />
                                <asp:Label ID="Label3" runat="server" Text="PRODUCT ID : " Font-Names="roboto" ForeColor="#0CB647" Font-Bold="True" Font-Size="Small"></asp:Label><asp:Label ID="Label2" runat="server" Text='<%# Eval("pr_id") %>' Font-Names="roboto" ForeColor="#0CB647" Font-Size="Small"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td style="font-family: Roboto;color: #00a138">
                                <asp:Label ID="Label21" runat="server" Text='<%#Eval("catname") %>' Font-Size="Small" Font-Bold="True"></asp:Label> > <asp:Label ID="Label22" runat="server" Text='<%#Eval("subname") %>' Font-Size="Small" Font-Bold="True"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td style="vertical-align: bottom; height: 80px;">
                                <asp:Label ID="Label4" runat="server" Text="Products in Return" Font-Names="roboto" ForeColor="Black" Font-Size="Large" Font-Bold="False"></asp:Label><br /><br />
                             </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label5" runat="server" Text='<%# Eval("pr_rename") %>' CssClass="prdrtncss"></asp:Label>
                                <asp:Label ID="Label6" runat="server" Text='<%# Eval("pr_rename1") %>' CssClass="prdrtncss"></asp:Label>
                                <asp:Label ID="Label7" runat="server" Text='<%# Eval("pr_rename2") %>' CssClass="prdrtncss"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td style="vertical-align: bottom; height: 80px;">
                                <asp:Label ID="Label9" runat="server" Text="Description" Font-Names="roboto" ForeColor="Black" Font-Size="Large"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label10" runat="server" Text='<%# Eval("pr_about") %>' ForeColor="Gray" Font-Names="roboto"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td style="vertical-align: bottom; height: 80px;">
                                <asp:Label ID="Label11" runat="server" Text="Reference Website" Font-Names="roboto" ForeColor="Black" Font-Size="Large"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:LinkButton ID="LinkButton1" runat="server" Text='<%# Eval("pr_web") %>' Font-Names="roboto" ForeColor="Gray" PostBackUrl='<%# Eval("pr_web") %>'></asp:LinkButton>
                            </td>
                        </tr>
                    </table>
                </td>
                </tr>
            </table>           
        </ItemTemplate>
    </asp:DataList>
           </td>
       </tr>
   </table>

         <div class="userdetails">
          <asp:DataList ID="DataList2" runat="server"><ItemTemplate>              
            <table>
                <tr style="height: 50px;vertical-align: bottom;">
                    <td>
                        <asp:Label ID="Label12" runat="server" Text="ABOUT TRADER" Font-Names="roboto" Font-Size="X-Large" ForeColor="#339933"></asp:Label>

                    </td>
                </tr>
                <tr>
                    <td>
                        
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label15" runat="server" Text="Address" Font-Names="roboto" Font-Bold="True"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td style="color: gray;padding-left: 30px;font-family: Roboto;">
                        <asp:Label ID="Label8" runat="server" Text='<%#Eval("fname") %>' Font-Bold="True"></asp:Label> <asp:Label ID="Label13" runat="server" Text='<%#Eval("lname") %>' Font-Bold="True"></asp:Label><br />
                        <asp:Label ID="Label16" runat="server" Text='<%#Eval("name") %>'></asp:Label><br />
                        <asp:Label ID="Label17" runat="server" Text='<%#Eval("cntry") %>'></asp:Label> ------
                        <asp:Label ID="Label18" runat="server" Text='<%#Eval("state") %>'></asp:Label><br />
                        <asp:Label ID="Label19" runat="server" Text='<%#Eval("pincode") %>'></asp:Label><br />
                        <asp:Label ID="Label20" runat="server" Text='<%#Eval("mob") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        
                    </td>
                </tr>
            </table>
           </ItemTemplate></asp:DataList>  
             <div class="ratingbox">
                 <asp:Button ID="Button4" CssClass="likebtns" runat="server" Text="<" ToolTip="Like" OnClick="Button5_Click" /><asp:Button ID="Button5" CssClass="likebtns" runat="server" Text="=" ToolTip="Dislike" OnClick="Button4_Click" /><br />
                 <asp:Label ID="Label23" runat="server" Text="Total Rating : "></asp:Label><asp:Label ID="Label24" runat="server" Text=""></asp:Label>
                 <asp:Label ID="Label25" runat="server" Text="0" CssClass="likelbl"></asp:Label>
                 <asp:Label ID="Label26" runat="server" Text="0" CssClass="dislikelbl"></asp:Label>
             </div>
        </div>

    <%--if the chat receiver and sender are same then this error will be displayed--%>
    <asp:Panel ID="Panel1" runat="server" class="sameperson" Visible="False">
        <div class="errorcontainer">
            <asp:Button ID="Button3" runat="server" Text="x" CssClass="closebtn" OnClick="Button3_Click" />
            <table>
                <tr>
                    <td style="text-align: center">
                        <asp:Label ID="Label14" runat="server" Text="Can't Process that" Font-Bold="False" Font-Names="Script MT" Font-Size="50px" ForeColor="#3399FF"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td style="text-align: center">
                        <asp:Label runat="server" Text="It seems like you want to chat with yourself :)" Font-Size="20px" Font-Italic="True" ForeColor="Black" Font-Names="Cambria"></asp:Label>
                    </td>
                </tr>
            </table>
        </div>
    </asp:Panel>

    </asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">

</asp:Content>

