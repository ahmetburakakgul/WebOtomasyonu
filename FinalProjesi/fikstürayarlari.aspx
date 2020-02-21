<%@ Page Title="" Language="C#" MasterPageFile="~/adminpanel.Master" AutoEventWireup="true" CodeBehind="fikstürayarlari.aspx.cs" Inherits="FinalProjesi.fikstürayarlari" ValidateRequest="false"%>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 68px;
        }
        .auto-style3 {
            width: 2px;
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
                <td class="auto-style2">Hafta Adı</td>
                <td class="auto-style3">:</td>
                <td>
                    <asp:TextBox ID="tbad" runat="server" Width="250px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Fikstür</td>
                <td class="auto-style3">:</td>
                <td>
                    <asp:TextBox ID="icerik" runat="server" TextMode="MultiLine"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">İşlemler</td>
                <td class="auto-style3">:</td>
                <td>
                    <asp:Button ID="ekle" runat="server" Text="Ekle" Width="63px" OnClick="ekle_Click" />
&nbsp;
                    <asp:Button ID="sil" runat="server" Text="Sil" Width="61px" OnClick="sil_Click" />
&nbsp;
                    <asp:Button ID="duzelt" runat="server" Text="Düzelt" OnClick="duzelt_Click" />
&nbsp;
                    <asp:Button ID="kaydet" runat="server" Text="Kaydet" OnClick="kaydet_Click" />
                &nbsp;&nbsp;
                    <asp:Label ID="lbuyarı" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">ID</td>
                <td class="auto-style3">:</td>
                <td>
                    <asp:TextBox ID="tbid" runat="server" Enabled="False" Width="250px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td>
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" PageSize="15" OnPageIndexChanging="GridView1_PageIndexChanging" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:CommandField HeaderText="İşlem" SelectText="Seç" ShowSelectButton="True" />
                            <asp:BoundField DataField="haftaadi" HeaderText="Hafta Adı" />
                        </Columns>
                        <EditRowStyle BackColor="#7C6F57" />
                        <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#E3EAEB" />
                        <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#F8FAFA" />
                        <SortedAscendingHeaderStyle BackColor="#246B61" />
                        <SortedDescendingCellStyle BackColor="#D4DFE1" />
                        <SortedDescendingHeaderStyle BackColor="#15524A" />
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
