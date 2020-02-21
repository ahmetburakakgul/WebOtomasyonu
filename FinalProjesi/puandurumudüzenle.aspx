<%@ Page Title="" Language="C#" MasterPageFile="~/adminpanel.Master" AutoEventWireup="true" CodeBehind="puandurumudüzenle.aspx.cs" Inherits="FinalProjesi.puandurumudüzenle" ValidateRequest="false"%>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 99px;
        }
        .auto-style3 {
            width: 3px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="main-content">

        <table class="auto-style1">
            <tr>
                <td class="auto-style2">Takım Adı</td>
                <td class="auto-style3">:</td>
                <td>
                    <asp:TextBox ID="ad" runat="server" Width="222px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Puan</td>
                <td class="auto-style3">:</td>
                <td>
                    <asp:TextBox ID="puan" runat="server" Width="222px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Oynanan Maç</td>
                <td class="auto-style3">:</td>
                <td>
                    <asp:TextBox ID="omac" runat="server" Width="222px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Galibiyet</td>
                <td class="auto-style3">:</td>
                <td>
                    <asp:TextBox ID="galibiyet" runat="server" Width="222px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Beraberlik</td>
                <td class="auto-style3">:</td>
                <td>
                    <asp:TextBox ID="beraber" runat="server" Width="222px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Mağlubiyet</td>
                <td class="auto-style3">:</td>
                <td>
                    <asp:TextBox ID="mag" runat="server" Width="222px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Atılan Gol</td>
                <td class="auto-style3">:</td>
                <td>
                    <asp:TextBox ID="ag" runat="server" Width="222px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Yenilen Gol</td>
                <td class="auto-style3">:</td>
                <td>
                    <asp:TextBox ID="yg" runat="server" Width="222px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Averaj</td>
                <td class="auto-style3">:</td>
                <td>
                    <asp:TextBox ID="averaj" runat="server" Width="222px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">İşlemler</td>
                <td class="auto-style3">:</td>
                <td>
                    <asp:Button ID="ekle" runat="server" OnClick="ekle_Click1" Text="Yeni" Width="51px" />
&nbsp;<asp:Button ID="sil" runat="server" OnClick="sil_Click1" Text="Sil" Width="57px" />
&nbsp;<asp:Button ID="duzelt" runat="server" OnClick="duzelt_Click1" Text="Düzelt" />
&nbsp;<asp:Button ID="kaydet" runat="server" OnClick="kaydet_Click1" Text="Kaydet" />
&nbsp;
                    &nbsp;
                    &nbsp;
                    </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td>
                    <asp:Label ID="lbuyarı" runat="server" Text="Lütfen Boşlukları Doldurunuz!!!" Visible="False"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">ID</td>
                <td class="auto-style3">:</td>
                <td>
                    <asp:TextBox ID="tbid" runat="server" Enabled="False" Width="222px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td>
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" CellSpacing="1" GridLines="None" OnPageIndexChanging="GridView1_PageIndexChanging" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" PageSize="18" >
                        <Columns>
                            <asp:CommandField HeaderText="İşlem" SelectText="Seç" ShowSelectButton="True" />
                            <asp:BoundField DataField="takimadi" HeaderText="Takım Adı" />
                            <asp:BoundField DataField="puan" HeaderText="Puan" />
                            <asp:BoundField DataField="oynananmac" HeaderText="Oynanan Maç" />
                            <asp:BoundField DataField="galibiyet" HeaderText="Galibiyet" />
                            <asp:BoundField DataField="beraberlik" HeaderText="Beraberlik" />
                            <asp:BoundField DataField="maglubiyet" HeaderText="Mağlubiyet" />
                            <asp:BoundField DataField="atılangol" HeaderText="Atılan Gol" />
                            <asp:BoundField DataField="yenilengol" HeaderText="Yenilen Gol" />
                            <asp:BoundField DataField="averaj" HeaderText="Averaj" />
                        </Columns>
                        <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
                        <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
                        <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
                        <RowStyle BackColor="#DEDFDE" ForeColor="Black" />
                        <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#F1F1F1" />
                        <SortedAscendingHeaderStyle BackColor="#594B9C" />
                        <SortedDescendingCellStyle BackColor="#CAC9C9" />
                        <SortedDescendingHeaderStyle BackColor="#33276A" />
                    </asp:GridView>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>

    </div>
</asp:Content>
