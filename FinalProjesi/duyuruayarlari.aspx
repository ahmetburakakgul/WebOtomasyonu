<%@ Page Title="" Language="C#" MasterPageFile="~/adminpanel.Master" AutoEventWireup="true" CodeBehind="duyuruayarlari.aspx.cs" Inherits="FinalProjesi.duyuruayarlari" ValidateRequest="false"%>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 93px;
        }
        .auto-style3 {
            width: 10px;
        }
        .auto-style4 {
            width: 93px;
            height: 25px;
        }
        .auto-style5 {
            width: 10px;
            height: 25px;
        }
        .auto-style6 {
            height: 25px;
            width: 777px;
        }
        .auto-style7 {
            width: 777px;
        }
    </style>
     <script type="text/javascript" src="../ckfinder/ckfinder.js"></script>
    <script type="text/javascript" src="../ckeditor/ckeditor.js"></script>
    <script type="text/javascript">
        window.onload = function () {
            var editor = CKEDITOR.replace('<%=icerik.ClientID%>');
            CKFinder.setupCKEditor(editor, '../ckfinder');
        };
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="main-content">

        <table class="auto-style1">
            <tr>
                <td class="auto-style2">Duyuru Başlığı</td>
                <td class="auto-style3">:</td>
                <td class="auto-style7">
                    <asp:TextBox Width="420px" ID="baslik" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Duyuru İçeriği</td>
                <td class="auto-style3">:</td>
                <td class="auto-style7">
                    <asp:TextBox Width="222px" ID="icerik" runat="server" TextMode="MultiLine"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">Yayınla </td>
                <td class="auto-style5">:</td>
                <td class="auto-style6">
                    <asp:CheckBox ID="cbyayinlansin" runat="server" Text="Yayınla" />
                </td>
            </tr>
            <tr>
                <td class="auto-style2">ID</td>
                <td class="auto-style3">:</td>
                <td class="auto-style7">
                    <asp:TextBox Width="420px" ID="tbid" runat="server" Enabled="False"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">İşlemler</td>
                <td class="auto-style3">:</td>
                <td class="auto-style7">
                    <asp:Button ID="ekle" runat="server" Text="Yeni" Width="100px" OnClick="ekle_Click" />
&nbsp;
                    <asp:Button ID="sil" runat="server" Text="Sil" Width="100px" OnClick="sil_Click" />
&nbsp;
                    <asp:Button ID="duzelt" runat="server" Text="Düzelt" OnClick="duzelt_Click" Width="100px" />
&nbsp;
                    <asp:Button ID="kaydet" runat="server" Text="Kaydet" Width="100px" OnClick="kaydet_Click" />
                &nbsp;&nbsp;&nbsp;
                    <asp:Label ID="lbuyarı" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style7">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style7">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Height="74px" Width="574px">
                        <Columns>
                            <asp:CommandField HeaderText="İşlem" SelectText="Seç" ShowSelectButton="True" />
                            <asp:BoundField DataField="baslik" HeaderText="Başlık" />
                            <asp:BoundField DataField="aciklama" HeaderText="İçerik" Visible="False" />
                            <asp:BoundField DataField="yayinda" HeaderText="Yayında Mı ?" />
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
                <td class="auto-style7">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style7">&nbsp;</td>
            </tr>
        </table>

    </div>
</asp:Content>
