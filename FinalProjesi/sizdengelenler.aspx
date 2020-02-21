<%@ Page Title="" Language="C#" MasterPageFile="~/adminpanel.Master" AutoEventWireup="true" CodeBehind="sizdengelenler.aspx.cs" Inherits="FinalProjesi.sizdengelenler" ValidateRequest="false" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 182px;
        }
        .auto-style3 {
            width: 19px;
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
    
        	<div class="tab-content" id="tab2">

        	 
        	    <table class="auto-style1">
                    <tr>
                        <td class="auto-style2">ID</td>
                        <td class="auto-style3">:</td>
                        <td>
                            <asp:TextBox ID="tbid" runat="server" Width="188px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2">Yorum Konu</td>
                        <td class="auto-style3">:</td>
                        <td>
                            <asp:TextBox ID="ykonu" runat="server" Width="185px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2">Yorum İçerik</td>
                        <td class="auto-style3">:</td>
                        <td>
                            <asp:TextBox ID="icerik" runat="server" TextMode="MultiLine" Width="182px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2">&nbsp;</td>
                        <td class="auto-style3">&nbsp;</td>
                        <td>
                            <asp:Button ID="onayla" runat="server" Text="Onayla" Width="107px" OnClick="onayla_Click" />
&nbsp;&nbsp;
                            <asp:Button ID="sil" runat="server" Text="Sil" Width="101px" OnClick="sil_Click" />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2">&nbsp;</td>
                        <td class="auto-style3">&nbsp;</td>
                        <td>
					
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" Height="16px" Width="792px" OnPageIndexChanging="GridView1_PageIndexChanging" GridLines="Horizontal" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                            <Columns>
                                <asp:CommandField HeaderText="İşlem" SelectText="Seç" ShowSelectButton="True" />
                                <asp:BoundField DataField="uyekullanıcıadi" HeaderText="Kullanıcı Adı" />
                                <asp:BoundField DataField="yorumkonu" HeaderText="Konu" />
                                <asp:BoundField DataField="mesaj" HeaderText="Mesaj" />
                                <asp:BoundField DataField="sizdentarih" HeaderText="Tarih" />                                
                            </Columns>
                            <FooterStyle BackColor="White" ForeColor="#333333" />
                            <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
                            <RowStyle BackColor="White" ForeColor="#333333" />
                            <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
                            <SortedAscendingCellStyle BackColor="#F7F7F7" />
                            <SortedAscendingHeaderStyle BackColor="#487575" />
                            <SortedDescendingCellStyle BackColor="#E5E5E5" />
                            <SortedDescendingHeaderStyle BackColor="#275353" />
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
    
   </div>
</asp:Content>
