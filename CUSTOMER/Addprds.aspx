<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Addprds.aspx.cs" Inherits="CUSTOMER_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" Runat="Server">
    Add Product
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
       html,body {
           height: 100%;
           width: 100%;
       }
       .prdmaincontainer {
           padding-bottom: 100px;
           margin: auto;
           background-image: url("../Images/wal2.jpg");
           background-size: cover;
           text-align: center;
       }
       .mainheading {
           font-size: 60px;
           font-family: 'Script MT';
           line-height: 2;
           color: #2b2b2b;
       }
       .prdlabel {
           font-size: 17px;
           font-family: sans-serif;
           line-height: 2;
           letter-spacing: 0.2px;
           color: #353535;
       }
       .prdmaintable {
           margin: auto;
           padding: 10px;
           width: 800px;
           border: 1px solid #ebebeb;
           box-shadow: 0 -300px 40px rgba(255, 255, 255, 0.9) inset,0 300px 40px rgba(255, 255, 255, 0.9) inset;;
       }
       .prdtextbx {
           width: 400px;
           padding: 5px 0 5px 10px;
           border: 1px solid #c4c4c4;
           outline: none;
           font-size: 15px;
           font-family: sans-serif;
           border-radius: 5px;
       }
       .prddroplist {
           width: 400px;
           height: 25px;
           border: 1px solid #c4c4c4;
           border-radius: 5px;
           font-family: sans-serif;
           font-size: 15px;
       }
       .prdreturnbx {
           width: 400px;
           padding: 5px 0 5px 10px;
           border: 1px solid #c4c4c4;
           outline: none;
           font-size: 15px;
           font-family: sans-serif;
           border-radius: 5px;
       }
       .prdheading {
           font-size: 18px;
           font-family: sans-serif;
           line-height: 2;
           letter-spacing: 0.2px;
           color: #353535;
           font-weight: bold;
       }
       .prdsubbtn {
           line-height: 3;
           width: 100%;
           border: none;
           border-radius: 5px;
           background: #0094ff;
           font-family: sans-serif;
           color: #fff;
           font-size: 24px;
       }
       .prdsubbtn:hover {
           background: #007ad3;
       }
       .returnitemmorebtn {
           padding: 7px 13px 5px 13px;
           color: #007ad3;
           border-radius: 3px;
           border: none;
           background: #d1d1d1;
           cursor: pointer;
           transition: 0.1s ease-in;
       }
       .returnitemmorebtn:hover {
           color: #fff;
           background: #007ad3;
       }
       hr {
           background: #a8a8a8;
       }
        .admokeimg {
            width: 100px;
            height: 100px;
            position: relative;
            top: -160px;
        }
        .fup {
           position: relative;
        }
        .auto-style2 {
            height: 56px;
        }
        .validationtext {
            color: #ff6363;
            font-family: Roboto;
        }
   </style>
        <script>
        $(document).ready(function () {
            var inter = function () {
                $('.fup').html($('.fup').val());
            };
            $('.addbtn').click(function () {
                $('.fup').click();
                setInterval(inter, 1);
                return false;
                
            });
        });
    </script>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="prdmaincontainer">
        <asp:Label ID="Label1" runat="server" Text="Post Your Products" CssClass="mainheading"></asp:Label>
        <table class="prdmaintable" cellspacing="20">
            <tr>
                <td style="text-align: right">
                    <asp:Label ID="Label2" runat="server" Text="Product title" CssClass="prdlabel"></asp:Label>
                </td>
                <td style="text-align: left">
                    <asp:TextBox ID="TextBox1" runat="server" CssClass="prdtextbx"></asp:TextBox><br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" CssClass="validationtext" runat="server" ErrorMessage="*Please give your product a name." ControlToValidate="TextBox1"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="text-align: right" class="auto-style2">
                    <asp:Label ID="Label3" runat="server" Text="Any reference website" CssClass="prdlabel"></asp:Label>
                </td>
                <td style="text-align: left" class="auto-style2">
                    <asp:TextBox ID="TextBox2" runat="server" CssClass="prdtextbx"></asp:TextBox><br />
                    <asp:RegularExpressionValidator CssClass="validationtext" ID="RegularExpressionValidator1" runat="server" ErrorMessage="*Provide a valid web address(http://www.example.com)" ValidationExpression="http(s)?://([\w-]+\.)+[\w-]+(/[\w- ./?%&amp;=]*)?" ControlToValidate="TextBox2"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr style="height: 100px">
                <td style="text-align: right; vertical-align: top;">
                    <asp:Label ID="Label4" runat="server" Text="Product Description" CssClass="prdlabel"></asp:Label>
                </td>
                <td style="text-align: left">
                    <asp:TextBox ID="TextBox3" runat="server" CssClass="prdtextbx" Height="150px" TextMode="MultiLine"></asp:TextBox><br />
                    
                </td>
            </tr>
            <tr>
                <td style="text-align: right">
                    <asp:Label ID="Label5" runat="server" Text="Category" CssClass="prdlabel"></asp:Label>
                </td>
                <td style="text-align: left">
                    <asp:DropDownList ID="DropDownList1" runat="server" CssClass="prddroplist" DataSourceID="SqlDataSource1" DataTextField="catname" DataValueField="pr_catid" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" AutoPostBack="True"></asp:DropDownList>
                    <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:OBSConnectionString16 %>' SelectCommand="SELECT * FROM [CategoryTable]"></asp:SqlDataSource>
                    <asp:Label ID="Label17" runat="server" Text="1" Visible="False"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="text-align: right">
                    <asp:Label ID="Label14" runat="server" Text="Sub Category" CssClass="prdlabel"></asp:Label>
                </td>
                <td style="text-align: left">
                    <asp:DropDownList ID="DropDownList2" runat="server" CssClass="prddroplist" DataSourceID="SqlDataSource4" DataTextField="subname" DataValueField="pr_subid" AutoPostBack="True"></asp:DropDownList>
                    <asp:SqlDataSource runat="server" ID="SqlDataSource4" ConnectionString='<%$ ConnectionStrings:OBSConnectionString16 %>' SelectCommand="SELECT * FROM [SubcategoryTable] WHERE ([pr_catid] = @pr_catid)">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="Label17" PropertyName="Text" Name="pr_catid" Type="Int32"></asp:ControlParameter>
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td style="text-align: left" colspan="2">
                    <asp:Label ID="Label6" runat="server" Text="Expected Items" CssClass="prdheading"></asp:Label>
                    <hr />
                </td>
            </tr>
            <tr>
                <td style="text-align: right;vertical-align: top;">
                    <asp:Label ID="Label7" runat="server" Text="Item 1" CssClass="prdlabel"></asp:Label>
                </td>
                <td style="text-align: left">
                    <asp:TextBox ID="TextBox4" runat="server" CssClass="prdreturnbx"></asp:TextBox>
                    <asp:Button ID="Button2" runat="server" Text="+" ToolTip="Add More Details" CssClass="returnitemmorebtn" OnClick="Button2_Click" CausesValidation="False" /><br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" CssClass="validationtext" runat="server" ErrorMessage="Do you want to give product freely, add atleast one return item." ControlToValidate="TextBox4"></asp:RequiredFieldValidator>
                    <asp:TextBox ID="TextBox10" runat="server" TextMode="MultiLine" Height="100" CssClass="prdtextbx" placeholder="Say something about this item." Visible="false"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="text-align: right;vertical-align: top;">
                    <asp:Label ID="Label8" runat="server" Text="Item 2" CssClass="prdlabel"></asp:Label>
                </td>
                <td style="text-align: left">
                    <asp:TextBox ID="TextBox5" runat="server" CssClass="prdreturnbx"></asp:TextBox>
                    <asp:Button ID="Button3" runat="server" Text="+" ToolTip="Add More Details" CssClass="returnitemmorebtn" OnClick="Button3_Click" CausesValidation="False" /><br /><br />
                    <asp:TextBox ID="TextBox11" runat="server" TextMode="MultiLine" Height="100" CssClass="prdtextbx" placeholder="Say something about this item." Visible="false"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="text-align: right;vertical-align: top;">
                    <asp:Label ID="Label9" runat="server" Text="Item 3" CssClass="prdlabel"></asp:Label>
                </td>
                <td style="text-align: left">
                    <asp:TextBox ID="TextBox6" runat="server" CssClass="prdreturnbx"></asp:TextBox>
                    <asp:Button ID="Button4" runat="server" Text="+" ToolTip="Add More Details" CssClass="returnitemmorebtn" OnClick="Button4_Click" CausesValidation="False" /><br /><br />
                    <asp:TextBox ID="TextBox12" runat="server" TextMode="MultiLine" Height="100" CssClass="prdtextbx" placeholder="Say something about this item." Visible="false"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="text-align: left" colspan="2">
                    <asp:Label ID="Label16" runat="server" Text="Add Image" CssClass="prdheading"></asp:Label>
                    <hr />
                </td>
            </tr>
            <tr>
                <td></td>
                <td>
                     <asp:FileUpload ID="FileUpload1" runat="server" class="fup" />
                </td>
            </tr>
            <tr>
                <td style="text-align: left" colspan="2">
                    <asp:Label ID="Label10" runat="server" Text="Your contact details" CssClass="prdheading"></asp:Label>
                    <hr />
                </td>
            </tr>
            <tr>
                <td style="text-align: right">
                    <asp:Label ID="Label11" runat="server" Text="Name" CssClass="prdlabel"></asp:Label>
                </td>
                <td style="text-align: left">
                    <asp:TextBox ID="TextBox7" runat="server" CssClass="prdreturnbx" placeholder="House/Company Name"></asp:TextBox><br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" CssClass="validationtext" runat="server" ErrorMessage="*Please fill this column." ControlToValidate="TextBox7"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="text-align: right">
                    <asp:Label ID="Label12" runat="server" Text="Phone number" CssClass="prdlabel"></asp:Label>
                </td>
                <td style="text-align: left">
                    <asp:TextBox ID="TextBox8" runat="server" CssClass="prdreturnbx"></asp:TextBox><br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" CssClass="validationtext" runat="server" ErrorMessage="*Please fill this Column." ControlToValidate="TextBox8"></asp:RequiredFieldValidator><br />                    
                </td>
            </tr>
            <tr>
                <td style="text-align: right; vertical-align: top;">
                    <asp:Label ID="Label13" runat="server" Text="Address" CssClass="prdlabel"></asp:Label>
                </td>
                <td style="text-align: left">
                    <asp:DropDownList ID="DropDownList4" runat="server" CssClass="prddroplist">
                        <asp:ListItem Selected="True">Select Country</asp:ListItem>
                        <asp:ListItem>India</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td style="text-align: right; vertical-align: top;">
                   
                </td>
                <td style="text-align: left">
                    <asp:DropDownList ID="DropDownList3" runat="server" CssClass="prddroplist" DataSourceID="SqlDataSource2" DataTextField="state_name" DataValueField="state_id"></asp:DropDownList>
                    <asp:SqlDataSource runat="server" ID="SqlDataSource2" ConnectionString='<%$ ConnectionStrings:OBSConnectionString16 %>' SelectCommand="SELECT * FROM [StatenameTable]"></asp:SqlDataSource>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" CssClass="validationtext" runat="server" ErrorMessage="*Select a State" ControlToValidate="DropDownList3"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="text-align: right; vertical-align: top;">
                   
                </td>
                <td style="text-align: left">
                    <asp:TextBox ID="TextBox14" runat="server" CssClass="prdreturnbx" placeholder="Pin code" ValidateRequestMode="Inherit"></asp:TextBox><br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" CssClass="validationtext" runat="server" ErrorMessage="*Please fill this column" ControlToValidate="TextBox14"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td colspan="2" style="text-align: center">
                    <asp:Label ID="Label15" runat="server" Text="By clicking 'Submit' you agree to our Terms of Use & Posting Rules" CssClass="prdlabel"></asp:Label>
                    <hr />
                </td>
            </tr>
            <tr style="height: 60px;">
                <td colspan="2" style="text-align: right">
                    <asp:Button ID="Button1" runat="server" Text="Submit" CssClass="prdsubbtn" OnClick="Button1_Click"/>
                </td>
            </tr>
        </table>
    </div>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>

