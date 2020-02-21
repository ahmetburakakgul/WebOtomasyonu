<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="uyegiris.aspx.cs" Inherits="FinalProjesi.uyegiris" ValidateRequest="false"  EnableEventValidation="false"%>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <title>Giriş Yap</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->	
	<link rel="icon" type="image/png" href="UyeGiris/images/icons/favicon.ico"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="UyeGiris/vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="UyeGiris/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="UyeGiris/fonts/Linearicons-Free-v1.0.0/icon-font.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="UyeGiris/vendor/animate/animate.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="UyeGiris/vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="UyeGiris/vendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="UyeGiris/vendor/select2/select2.min.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="UyeGiris/vendor/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="UyeGiris/css/util.css">
	<link rel="stylesheet" type="text/css" href="UyeGiris/css/main.css">
<!--===============================================================================================-->
</head>
<body>
    <form id="form1" runat="server">
    <div class="limiter">
		<div class="container-login100">
			<div class="wrap-login100 p-l-85 p-r-85 p-t-55 p-b-55">
				<form class="login100-form validate-form flex-sb flex-w">
					<span class="login100-form-title p-b-32">
						Üye Girişi
					</span>

					<span class="txt1 p-b-11">
						Kullanıcı Adı
					</span>
					<div class="wrap-input100 validate-input m-b-36">
                        <asp:TextBox CssClass="input100" ID="tbkul" runat="server"></asp:TextBox>
						<span class="focus-input100"></span>
					</div>
					
					<span class="txt1 p-b-11">
						Şifre
					</span>
					<div class="wrap-input100 validate-input m-b-12">
						<span class="btn-show-pass">
							<i class="fa fa-eye"></i>
						</span>
                        <asp:TextBox CssClass="input100" ID="tbsifre" runat="server"></asp:TextBox>
						<span class="focus-input100"></span>
					</div>
					
					
					<div class="container-login100-form-btn">
						<button class="login100-form-btn">
                            <asp:LinkButton ID="LinkButton1" runat="server" ForeColor="White" OnClick="LinkButton1_Click1">Giriş</asp:LinkButton>
						</button>
					</div>

				</form>
			</div>
		</div>
	</div>
	

	<div id="dropDownSelect1">
        <asp:Label ID="Label1" runat="server" Text="Label">Kullanıcı Adı Veya Şifre Yanlış Girilmiştir</asp:Label></div>
	
<!--===============================================================================================-->
	<script src="UyeGiris/vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="UyeGiris/vendor/animsition/js/animsition.min.js"></script>
<!--===============================================================================================-->
	<script src="UyeGiris/vendor/bootstrap/js/popper.js"></script>
	<script src="UyeGiris/vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="UyeGiris/vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
	<script src="UyeGiris/vendor/daterangepicker/moment.min.js"></script>
	<script src="UyeGiris/vendor/daterangepicker/daterangepicker.js"></script>
<!--===============================================================================================-->
	<script src="UyeGiris/vendor/countdowntime/countdowntime.js"></script>
<!--===============================================================================================-->
	<script src="UyeGiris/js/main.js"></script>
    </form>
</body>
</html>
