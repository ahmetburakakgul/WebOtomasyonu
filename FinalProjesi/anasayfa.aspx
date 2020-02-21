<%@ Page Title="" Language="C#" MasterPageFile="~/anasayfamaster.Master" AutoEventWireup="true" CodeBehind="anasayfa.aspx.cs" Inherits="FinalProjesi.anasayfa" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <div>
            <!-- Breadcrumb -->
	<div class="container">
		<div class="bg0 flex-wr-sb-c p-rl-20 p-tb-8">
			<div class="f2-s-1 p-r-30 m-tb-6">				
			</div>			
		</div>
	</div>
	<!-- Post -->
	<section class="bg0 p-b-55">
		<div class="container">
			<div class="row justify-content-center">
				<div class="col-md-10 col-lg-8 p-b-80">
					<div class="p-r-10 p-r-0-sr991">
						<div class="m-t--65 p-b-40">
                            <br />
                            <br />
							                          
                            <!-- Item Blog -->
							<div class="flex-col-s-c how-bor2 p-t-65 p-b-40">
								<h5 class="p-b-17 txt-center">
									<a href="#" class="f1-l-1 cl2 hov-cl10 trans-03 respon2">
										<%Response.Write(ad); %>
									</a>
								</h5>
								<div class="cl8 txt-center p-b-24">									
									<span class="f1-s-3">
										<%Response.Write(tarih); %>
									</span>
								</div>
								<a href="#" class="wrap-pic-w hov1 trans-03 m-b-30">
                                    <asp:Image ID="Image1" runat="server" Width="750px" Height="380px"/>
								</a>	
								<a href="uyegiris.aspx" class="f1-s-1 cl9 hov-cl10 trans-03">
									Daha Fazlası İçin Üye Olun
									<i class="m-l-2 fa fa-long-arrow-alt-right"></i>
								</a>
							</div>
							<!-- Item Blog -->
							<div class="flex-col-s-c how-bor2 p-t-65 p-b-40">
								<h5 class="p-b-17 txt-center">
									<a href="#" class="f1-l-1 cl2 hov-cl10 trans-03 respon2">
										<%Response.Write(ad1); %>
									</a>
								</h5>
								<div class="cl8 txt-center p-b-24">										
									<span class="f1-s-3">
										<%Response.Write(tarih1); %>
									</span>
								</div>
								<a href="#" class="wrap-pic-w hov1 trans-03 m-b-30">
                                    <asp:Image ID="Image2" runat="server" Height="380px" Width="750px"/>
								</a>
								<a href="uyegiris.aspx" class="f1-s-1 cl9 hov-cl10 trans-03">
									Daha Fazlası İçin Üye Olun
									<i class="m-l-2 fa fa-long-arrow-alt-right"></i>
								</a>
							</div>
							<!-- Item Blog -->
							<div class="flex-col-s-c how-bor2 p-t-65 p-b-40">								
								<h5 class="p-b-17 txt-center">
									<a href="#" class="f1-l-1 cl2 hov-cl10 trans-03 respon2">
										<%Response.Write(ad2); %>
									</a>
								</h5>

								<div class="cl8 txt-center p-b-24">									
									<span class="f1-s-3">
										<%Response.Write(tarih2); %>
									</span>
								</div>
								<a href="#" class="wrap-pic-w hov1 trans-03 m-b-30">
                                    <asp:Image ID="Image3" runat="server" Width="750px" Height="380px"/>
								</a>
								<a href="uyegiris.aspx" class="f1-s-1 cl9 hov-cl10 trans-03">
									Daha Fazlası İçin Üye Olun
									<i class="m-l-2 fa fa-long-arrow-alt-right"></i>
								</a>
							</div>
							<!-- Item Blog -->
							<div class="flex-col-s-c how-bor2 p-t-65 p-b-40">
								<h5 class="p-b-17 txt-center">
									<a href="#" class="f1-l-1 cl2 hov-cl10 trans-03 respon2">
										<%Response.Write(ad3); %>
									</a>
								</h5>
								<div class="cl8 txt-center p-b-24">									
									<span class="f1-s-3">
										<%Response.Write(tarih3); %>
									</span>
								</div>
								<a href="#" class="wrap-pic-w hov1 trans-03 m-b-30">
									 <asp:Image ID="Image4" runat="server" Width="750px" Height="380px"/>
								</a>
								<a href="uyegiris.aspx" class="f1-s-1 cl9 hov-cl10 trans-03">
									Daha Fazlası İçin Üye Olun
									<i class="m-l-2 fa fa-long-arrow-alt-right"></i>
								</a>
							</div>
							<!-- Item Blog -->
							<div class="flex-col-s-c how-bor2 p-t-65 p-b-40">								
								<h5 class="p-b-17 txt-center">
									<a href="#" class="f1-l-1 cl2 hov-cl10 trans-03 respon2">
										<%Response.Write(ad4); %>
									</a>
								</h5>
								<div class="cl8 txt-center p-b-24">									
									<span class="f1-s-3">
										<%Response.Write(tarih4); %>
									</span>
								</div>
								<a href="#" class="wrap-pic-w hov1 trans-03 m-b-30">
									 <asp:Image ID="Image5" runat="server" Width="750px" Height="380px"/>
								</a>								
								<a href="uyegiris.aspx" class="f1-s-1 cl9 hov-cl10 trans-03">
									Daha Fazlası İçin Üye Olun
									<i class="m-l-2 fa fa-long-arrow-alt-right"></i>
								</a>
							</div>
							<!-- Item Blog -->
							<div class="flex-col-s-c how-bor2 p-t-65 p-b-40">	
								<h5 class="p-b-17 txt-center">
									<a href="#" class="f1-l-1 cl2 hov-cl10 trans-03 respon2">
										<%Response.Write(ad5); %>
									</a>
								</h5>

								<div class="cl8 txt-center p-b-24">
									<span class="f1-s-3">
										<%Response.Write(tarih5); %>
									</span>
								</div>
								<a href="#" class="wrap-pic-w hov1 trans-03 m-b-30">
									 <asp:Image ID="Image6" runat="server" Width="750px" Height="300px"/>
								</a>
								<a href="uyegiris.aspx" class="f1-s-1 cl9 hov-cl10 trans-03">
									Daha Fazlası İçin Üye Olun
									<i class="m-l-2 fa fa-long-arrow-alt-right"></i>
								</a>
							</div>                            
						</div>                        					
					</div>
				</div>
                <div class="col-md-10 col-lg-4 p-b-80">                 
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />                                           
             <asp:Panel ID="Panel1" runat="server" Height="400px" Width="600px" ForeColor="White" Font-Bold="true" Font-Italic="true">
            <marquee align="middle" scrollamount="2" width="100%" direction="up" scrolldelay="10" style="height:160px">
            <asp:Repeater ID="Repeater1" runat="server">
                <ItemTemplate>
                    <a id="a1" href='<%#Eval("duyuruid","~/duyurugoster.aspx?duyuruid={0}")%>' runat="server">
                        <p style="text-align:center"><%#Eval("baslik")%> </p>
                    </a>
                </ItemTemplate>
            </asp:Repeater>
                </marquee>
        </asp:Panel>
				</div> 				
			</div>
		</div>
	</section>
        </div>
</asp:Content>
