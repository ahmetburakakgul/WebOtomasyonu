<%@ Page Title="" Language="C#" MasterPageFile="~/adminpanel.Master" AutoEventWireup="true" CodeBehind="kullaniciyonet.aspx.cs" Inherits="FinalProjesi.kullaniciyonet" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 109px;
        }
        .auto-style3 {
            width: 2px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="main-content">

        <table class="auto-style1">
            <tr>
                <td class="auto-style2">Kullanıcı Adı Ara</td>
                <td class="auto-style3">:</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" Width="267px"></asp:TextBox>
&nbsp;
                    <asp:Button ID="ara" runat="server" OnClick="ara_Click" Text="Arama" Width="94px" />
&nbsp;
                    <asp:Button ID="temizle" runat="server" OnClick="temizle_Click" Text="Temizle" Width="90px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Kullanıcı Adı</td>
                <td class="auto-style3">:</td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" Width="264px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Kullanıcı Rütbesi</td>
                <td class="auto-style3">:</td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server" Width="262px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Yeni Rütbesi</td>
                <td class="auto-style3">:</td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server" Width="270px">
                         <asp:ListItem>Admin</asp:ListItem>
                    <asp:ListItem>Üye</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td>
                    <asp:Button ID="kaydet" runat="server" OnClick="kaydet_Click" Text="Kaydet" Width="135px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td>
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black" Height="255px" Width="414px" OnPageIndexChanging="GridView1_PageIndexChanging" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                        <Columns>
                            <asp:CommandField ShowSelectButton="True" />
                            <asp:BoundField DataField="uyekullanıcıadi" HeaderText="Kullanıcı Adı" />
                            <asp:BoundField DataField="uyeadi" HeaderText="Adı" />
                            <asp:BoundField DataField="uyesoyadi" HeaderText="Soyadı" />
                            <asp:BoundField DataField="uyerutbe" HeaderText="Rütbesi" />
                        </Columns>
                        <FooterStyle BackColor="#CCCCCC" />
                        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                        <RowStyle BackColor="White" />
                        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#F1F1F1" />
                        <SortedAscendingHeaderStyle BackColor="#808080" />
                        <SortedDescendingCellStyle BackColor="#CAC9C9" />
                        <SortedDescendingHeaderStyle BackColor="#383838" />
                    </asp:GridView>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>

    </div>
</asp:Content>
