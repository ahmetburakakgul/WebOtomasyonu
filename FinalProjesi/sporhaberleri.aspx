<%@ Page Title="" Language="C#" MasterPageFile="~/anasayfamaster.Master" AutoEventWireup="true" CodeBehind="sporhaberleri.aspx.cs" Inherits="FinalProjesi.sporhaberleri" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 870px;
        }
        .auto-style2 {
            width: 81px;
        }
        .auto-style3 {
            width: 362px;
        }
        .auto-style4 {
            height: 22px;
        }
        .auto-style5 {
            width: 870px;
            height: 22px;
        }
        .auto-style6 {
            width: 81px;
            height: 22px;
        }
        .auto-style7 {
            width: 362px;
            height: 22px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <div class="ptb-0">
                <a class="mt-10" href="anasayfa.aspx"><i class="fa fa-home"></i><b>ANASAYFA</b></a>
                <a class="mt-10 color-ash"><i class="mlr-10 ion-chevron-right"></i><b> > Spor Haberleri</b></a>

            </div>
        <table class="w-100">
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td class="auto-style1">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td class="auto-style1">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td class="auto-style1">
                    <asp:Image ID="Image1" runat="server" Height="428px" Width="864px" />
                </td>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black" Height="147px" OnPageIndexChanging="GridView1_PageIndexChanging" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="417px">
                        <Columns>
                            <asp:CommandField SelectText="Seç" ShowSelectButton="True" />
                            <asp:BoundField DataField="baslik" HeaderText="Başlık" />
                            <asp:BoundField DataField="tarih" HeaderText="Tarih" />
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
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4"></td>
                <td class="auto-style4"></td>
                <td class="auto-style4"></td>
                <td class="auto-style5">
                    <asp:Label ID="Label1" runat="server" Text="Tarih   : "></asp:Label>
                    <asp:Label ID="lbtarih" runat="server"></asp:Label>
                </td>
                <td class="auto-style6"></td>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style4"></td>
            </tr>
            <tr>
                <td class="auto-style4"></td>
                <td class="auto-style4"></td>
                <td class="auto-style4"></td>
                <td class="auto-style5">
                    <asp:Label ID="Label3" runat="server" Text="Başlık   : "></asp:Label>
&nbsp;<%Response.Write(baslik); %></td>
                <td class="auto-style6"></td>
                <td class="auto-style7"></td>
                <td class="auto-style4"></td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td class="auto-style1">
                    <asp:Label ID="Label4" runat="server" Text="İçerik   :"></asp:Label>
                &nbsp;<%Response.Write(ictemiz1); %></td>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td class="auto-style1">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>

    </div>
</asp:Content>
