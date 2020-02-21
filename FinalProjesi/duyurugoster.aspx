<%@ Page Title="" Language="C#" MasterPageFile="~/anasayfamaster.Master" AutoEventWireup="true" CodeBehind="duyurugoster.aspx.cs" Inherits="FinalProjesi.duyurugoster" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
   
    <style type="text/css">
        .auto-style1 {
            height: 20px;
        }
    </style>
   
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  <div>

      <table class="w-100">
          <tr>
              <td colspan="3" style="vertical-align: middle; background-color: #000000; border: thick solid #FFFFFF; text-align: center; color: #FFFFFF; font-size: x-large; font-weight: bold; font-style: italic; font-variant: normal; text-transform: none; font-family: 'Times New Roman', Times, serif;" > <%Response.Write(tutbaslik); %>&nbsp;</td>
          </tr>
          <tr>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
          </tr>
          <tr>
              <td class="auto-style1" colspan="3"> <%Response.Write(tuticerik); %></td>
          </tr>
          <tr>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
          </tr>
          <tr>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
          </tr>
      </table>

  </div>
</asp:Content>