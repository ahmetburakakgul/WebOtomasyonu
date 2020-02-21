<%@ Page Title="" Language="C#" MasterPageFile="~/anasayfamaster.Master" AutoEventWireup="true" CodeBehind="sayfalar.aspx.cs" Inherits="FinalProjesi.sayfalar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section>
        <div>            
           <div>
                 <a class="mt-10" href="anasayfa.aspx"><i class="fa fa-home" style=""></i><b>ANASAYFA >  </b></a>
                <a class="mt-10 color-ash" href="#"><i class="mlr-10 ion-chevron-right"></i><b><% Response.Write(menuismi);%></b></a>

            </div> 
 <section>

            <div class="plr-50 h-600x h-md-800x h-xs-1000x oflow-hidden"> <%Response.Write(icerik1); %></div>
        </section>
        </div>
    </section>
</asp:Content>
