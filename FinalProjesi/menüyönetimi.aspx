<%@ Page Title="" Language="C#" MasterPageFile="~/adminpanel.Master" AutoEventWireup="true" CodeBehind="menüyönetimi.aspx.cs" Inherits="FinalProjesi.menüyönetimi"  ValidateRequest="false"%>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
      <script type="text/javascript" src="../ckfinder/ckfinder.js"></script>
    <script type="text/javascript" src="../ckeditor/ckeditor.js"></script>
    <script type="text/javascript">
        window.onload = function () {
            var editor = CKEDITOR.replace('<%=tbicerik.ClientID%>');
            CKFinder.setupCKEditor(editor, '../ckfinder');
        };
    </script>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 134px;
        }
        .auto-style3 {
            width: 4px;
        }
        .auto-style4 {
            width: 872px;
        }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="main-content">

        <table class="auto-style1">
            <tr>
                <td class="auto-style2">Sayfa Adı</td>
                <td class="auto-style3">:</td>
                <td class="auto-style4">
                    <asp:TextBox ID="tbad" runat="server" Width="250px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">ID</td>
                <td class="auto-style3">:</td>
                <td class="auto-style4">
                    <asp:TextBox ID="tbid" runat="server" Width="252px"></asp:TextBox>
&nbsp;
                    <asp:Label ID="Label1" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style4">
                    <asp:Button ID="ekle" runat="server" OnClick="ekle_Click" Text="Yeni" Width="61px" />
&nbsp;
                    <asp:Button ID="sil" runat="server" OnClick="sil_Click" Text="Sil" Width="61px" />
&nbsp;
                    <asp:Button ID="duzelt" runat="server" OnClick="duzelt_Click" Text="Düzelt" Width="61px" />
&nbsp;
                    <asp:Button ID="kaydet" runat="server" OnClick="kaydet_Click" Text="Kaydet" Width="60px" />
                &nbsp;&nbsp;
                    <asp:Label ID="lbuyarı" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Sayfa İçeriği</td>
                <td class="auto-style3">:</td>
                <td class="auto-style4">
                    <asp:TextBox ID="tbicerik" runat="server" TextMode="MultiLine" Width="647px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style4">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black" Height="16px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="224px">
                        <Columns>
                            <asp:CommandField HeaderText="İşlem" SelectText="Seç" ShowSelectButton="True" />
                            <asp:BoundField DataField="menüid" HeaderText="ID" />
                            <asp:BoundField DataField="ad" HeaderText="Ad" />
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
                <td class="auto-style4">&nbsp;</td>
            </tr>
        </table>

    </div>
</asp:Content>
