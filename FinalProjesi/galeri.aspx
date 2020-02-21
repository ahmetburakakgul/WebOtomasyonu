<%@ Page Title="" Language="C#" MasterPageFile="~/anasayfamaster.Master" AutoEventWireup="true" CodeBehind="galeri.aspx.cs" Inherits="FinalProjesi.galeri" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            height: 22px;
        }
        .auto-style2 {
            height: 466px;
        }
        .auto-style3 {
            height: 22px;
            width: 1058px;
        }
        .auto-style4 {
            height: 466px;
            width: 1058px;
        }
        .auto-style5 {
            width: 1058px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <div class="ptb-0">
                <a class="mt-10" href="anasayfa.aspx"><i class="fa fa-home"></i><b>ANASAYFA</b></a>
                <a class="mt-10 color-ash" ><i class="mlr-10 ion-chevron-right"></i><b> > Galeri</b></a>

            </div>
        <table class="w-100">
            <tr>
                <td class="auto-style1"></td>
                <td class="auto-style3">
                    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
                    <asp:Timer ID="Timer1" runat="server" OnTick="Timer1_Tick" Interval="1000"></asp:Timer>
                </td>
                <td class="auto-style1"></td>
            </tr>
            <tr>
                <td class="auto-style2" style="vertical-align: middle; text-align: center">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:LinkButton ID="LinkButton5" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="XX-Large" OnClick="LinkButton5_Click" ForeColor="Black">&lt;</asp:LinkButton>
                </td>
                <td class="auto-style4">
                    <asp:Image ID="Image1" runat="server" Height="385px" Width="995px" />
                </td>
                <td class="auto-style2" style="vertical-align: middle; text-align: left">&nbsp;&nbsp;&nbsp;
                    <asp:LinkButton ID="LinkButton6" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="XX-Large" OnClick="LinkButton6_Click" ForeColor="Black">&gt;</asp:LinkButton>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>

    </div>
</asp:Content>
