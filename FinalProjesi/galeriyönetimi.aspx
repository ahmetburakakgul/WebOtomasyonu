<%@ Page Title="" Language="C#" MasterPageFile="~/adminpanel.Master" AutoEventWireup="true" CodeBehind="galeriyönetimi.aspx.cs" Inherits="FinalProjesi.galeriyönetimi" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 32%;
        }
        .auto-style3 {
        width: 246px;
    }
        .auto-style5 {
        width: 261px;
    }
        .auto-style6 {
            width: 231px;
        }
    .auto-style7 {
        width: 872px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div id="main-content">

         <table class="auto-style1">
             <tr>
                 <td class="auto-style3">&nbsp;</td>
                 <td class="auto-style6">&nbsp;</td>
                 <td>&nbsp;</td>
                 <td class="auto-style7">&nbsp;</td>
                 <td class="auto-style5">&nbsp;</td>
             </tr>
             <tr>
                 <td class="auto-style3" style="vertical-align: middle; text-align: right;">
                     <asp:LinkButton ID="LinkButton1" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="XX-Large" OnClick="LinkButton1_Click">&lt;</asp:LinkButton>
                 </td>
                 <td colspan="3" style="vertical-align: top">
                     <asp:Image ID="Image1" runat="server" Height="377px" Width="841px" />
                 </td>
                 <td class="auto-style5" style="vertical-align: middle; text-align: left;">
                     <asp:LinkButton ID="LinkButton2" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="XX-Large" OnClick="LinkButton2_Click">&gt;</asp:LinkButton>
                 </td>
             </tr>
             <tr>
                 <td class="auto-style3">&nbsp;</td>
                 <td class="auto-style6">
                     <asp:FileUpload ID="FileUpload1" runat="server" />
                 </td>
                 <td>
                     <asp:Label ID="lbuyarı" runat="server"></asp:Label>
                 </td>
                 <td class="auto-style7">&nbsp;</td>
                 <td class="auto-style5">&nbsp;</td>
             </tr>
             <tr>
                 <td class="auto-style3">&nbsp;</td>
                 <td class="auto-style6">
                     <asp:Button ID="ekle" runat="server" Text="Ekle" Width="106px" OnClick="ekle_Click" />
&nbsp;
                     <asp:Button ID="sil" runat="server" Text="Sil" Width="105px" OnClick="sil_Click" />
                 </td>
                 <td>&nbsp;</td>
                 <td class="auto-style7"> 
                     <asp:ScriptManager ID="ScriptManager1" runat="server">
                        </asp:ScriptManager>
                        </td>
                 <td class="auto-style5">&nbsp;</td>
             </tr>
         </table>

         </div>
</asp:Content>
