<%@ Page Title="" Language="C#" MasterPageFile="~/login.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="COMANDFAST.Web.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <span class="login100-form-title p-b-34 p-t-27">
		<b style="color:#ff8c00;">C</b>OMAND <b style="color:#ff8c00;">F</b>AST
	</span><br/><br/>
	<div class="wrap-input100 input-group" data-validate = "Enter username">
        <span class="fa fa-user white" aria-hidden="true"></span>
		<input class="input100" type="text" name="username" placeholder="Usuario / E-mail"/>		
	</div>
	<div class="wrap-input100 validate-input" data-validate="Enter password">
        <span class="fa fa-unlock white" aria-hidden="true"></span>
		<input class="input100" type="password" name="pass" placeholder="Contraseña"/>		
	</div>
    <div>
        <asp:Label ID="txtRegistro" runat="server" CssClass="text-danger" Text="Reg"></asp:Label>
    </div>
	<div class="container-login100-form-btn">
		<a href="Default.aspx" class="login100-form-btn">
			Login
		</a><br/><br/>
	</div>    
	<div class="text-center p-t-90">
        <asp:HyperLink ID="irRegistro" NavigateUrl="~/Registro.aspx" class="txt1" runat="server">No estas regitrado?</asp:HyperLink>
	</div>
</asp:Content>
