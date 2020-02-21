<%@ Page Title="" Language="C#" MasterPageFile="~/anasayfamaster.Master" AutoEventWireup="true" CodeBehind="yorumyap.aspx.cs" Inherits="FinalProjesi.yorumyap" ValidateRequest="false"%>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 
        {
            width:100%;
        }
        .auto-style2 {
            width: 129px;
        }
        .auto-style3 {
            width: 12px;
        }
        .auto-style4 {
            width: 129px;
            height: 18px;
        }
        .auto-style5 {
            width: 12px;
            height: 18px;
        }
        .auto-style6 {
            height: 18px;
        }
        .auto-style7 {
            width: 129px;
            height: 41px;
        }
        .auto-style8 {
            width: 12px;
            height: 41px;
        }
        .auto-style9 {
            height: 41px;
        }
        .auto-style10 {
            width: 126px;
            height: 41px;
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
     <div class="ptb-0">
                <a class="mt-10" href="anasayfa.aspx"><i class="fa fa-home"></i><b>ANASAYFA</b></a>
                <a class="mt-10 color-ash"><i class="mlr-10 ion-chevron-right"></i><b> > Yorum Yap</b></a>

            </div>
    <br />
    <table class="auto-style1">
        
        <tr>
            <td class="auto-style2">Yorum konu</td>
            <td class="auto-style3">:</td>
            <td colspan="3">
                <asp:TextBox ID="tbadı" runat="server" Height="35px" Width="236px"></asp:TextBox>
            </td>
        </tr>
        
        <tr>
            <td class="auto-style2">Yorum İçerik</td>
            <td class="auto-style3">:</td>
            <td colspan="3">
                <asp:TextBox ID="icerik" runat="server" Height="16px" TextMode="MultiLine" Width="156px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style7">&nbsp;</td>
            <td class="auto-style8">&nbsp;</td>
            <td class="auto-style10">
                <asp:Button ID="gonder" runat="server" Font-Bold="True" Font-Size="10pt" Height="43px" OnClick="gonder_Click" Text="Gönder" Width="113px" />
            </td>
            <td class="auto-style9">
                <asp:Button ID="iptal" runat="server" Font-Bold="True" Font-Size="10pt" Height="43px" OnClick="iptal_Click" Text="İptal" Width="113px" />
            </td>
            <td class="auto-style9">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td colspan="3">&nbsp;</td>
        </tr>
    </table>
     
</asp:Content>
