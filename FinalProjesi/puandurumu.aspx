<%@ Page Title="" Language="C#" MasterPageFile="~/anasayfamaster.Master" AutoEventWireup="true" CodeBehind="puandurumu.aspx.cs" Inherits="FinalProjesi.puandurumu" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style3 {
            width: 400px;
        }
        .auto-style6 {
            width: 180px;
        }
        .auto-style7 {
            width: 451px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <div class="ptb-0">
                <a class="mt-10" href="anasayfa.aspx"><i class="fa fa-home"></i><b>ANASAYFA</b></a>
                <a class="mt-10 color-ash" ><i class="mlr-10 ion-chevron-right"></i><b> > Puan Durumu</b></a>

            </div>
        <table class="w-full" aria-expanded="undefined" style="vertical-align: middle; text-align: center">
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style6">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style7">
                    <asp:GridView ID="GridView1" runat="server" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black" Width="767px" AutoGenerateColumns="False" Height="132px">
                        <Columns>
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
                <td class="auto-style6">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style6">&nbsp;</td>
            </tr>
        </table>

    </div>
</asp:Content>
