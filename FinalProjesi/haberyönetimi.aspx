<%@ Page Title="" Language="C#" MasterPageFile="~/adminpanel.Master" AutoEventWireup="true" CodeBehind="haberyönetimi.aspx.cs" Inherits="FinalProjesi.haberyönetimi"  ValidateRequest="false"%>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <script type="text/javascript" src="../ckfinder/ckfinder.js"></script>
    <script type="text/javascript" src="../ckeditor/ckeditor.js"></script>
    <script type="text/javascript">
        window.onload = function () {
            var editor = CKEDITOR.replace('<%=icerik.ClientID%>');
            CKFinder.setupCKEditor(editor, '../ckfinder');
        };
    </script>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 125px;
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
                  <td class="auto-style2">Haber Türü</td>
                  <td class="auto-style3">:</td>
                  <td>
                      <asp:DropDownList ID="dptür" runat="server" Height="22px" Width="374px">
                          <asp:ListItem>Seçiniz</asp:ListItem>
                          <asp:ListItem>Spor Haberleri</asp:ListItem>
                          <asp:ListItem>Transfer Haberleri</asp:ListItem>
                      </asp:DropDownList>
&nbsp;&nbsp;&nbsp;
                      <asp:Button ID="getir" runat="server" Text="Getir" Width="63px" OnClick="getir_Click" />
                  </td>
              </tr>
              <tr>
                  <td class="auto-style2">Haber ID</td>
                  <td class="auto-style3">:</td>
                  <td>
                      <asp:TextBox ID="tbid" runat="server" Width="365px" Enabled="False"></asp:TextBox>
                  </td>
              </tr>
              <tr>
                  <td class="auto-style2">Haber Başlık</td>
                  <td class="auto-style3">:</td>
                  <td>
                      <asp:TextBox ID="tbad" runat="server" Width="363px"></asp:TextBox>
                  </td>
              </tr>
              <tr>
                  <td class="auto-style2">Resim</td>
                  <td class="auto-style3">:</td>
                  <td>
                      <asp:Image ID="Image1" runat="server" Height="239px" Width="428px" />
                      <br />
                      <br />
                      <asp:FileUpload ID="FileUpload1" runat="server" Width="426px" />
                  &nbsp;
                      <asp:Label ID="lbuyarı" runat="server"></asp:Label>
                  </td>
              </tr>
              <tr>
                  <td class="auto-style2">&nbsp;</td>
                  <td class="auto-style3">&nbsp;</td>
                  <td>
                      <asp:Button ID="Ekle" runat="server" Text="Yeni" Width="121px" OnClick="Ekle_Click" />
&nbsp;
                      <asp:Button ID="sil" runat="server" Text="Sil" Width="93px" OnClick="sil_Click" />
&nbsp;
                      <asp:Button ID="duzelt" runat="server" Text="Düzelt" Width="90px" OnClick="duzelt_Click" />
                  &nbsp;
                      <asp:Button ID="kaydet" runat="server" OnClick="kaydet_Click" Text="Kaydet" Width="105px" />
                  </td>
              </tr>
              <tr>
                  <td class="auto-style2">Haber İçeriği</td>
                  <td class="auto-style3">:</td>
                  <td>
                      <asp:TextBox ID="icerik" runat="server" TextMode="MultiLine" Width="960px"></asp:TextBox>
                  </td>
              </tr>
              <tr>
                  <td class="auto-style2">&nbsp;</td>
                  <td class="auto-style3">&nbsp;</td>
                  <td>
                      <asp:GridView ID="GridView1" runat="server" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" Height="35px" Width="944px" AutoGenerateColumns="False" OnPageIndexChanging="GridView1_PageIndexChanging" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                          <Columns>
                              <asp:CommandField HeaderText="İşlem" ShowSelectButton="True" />
                              <asp:BoundField DataField="haberturu" HeaderText="Haber Türü" />
                              <asp:BoundField DataField="baslik" HeaderText="Başlık" />
                              <asp:BoundField DataField="tarih" HeaderText="Tarih" />
                          </Columns>
                          <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                          <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                          <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                          <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                          <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                          <SortedAscendingCellStyle BackColor="#FFF1D4" />
                          <SortedAscendingHeaderStyle BackColor="#B95C30" />
                          <SortedDescendingCellStyle BackColor="#F1E5CE" />
                          <SortedDescendingHeaderStyle BackColor="#93451F" />
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
