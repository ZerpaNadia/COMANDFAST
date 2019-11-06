<%@ Page Title="" Language="C#" MasterPageFile="~/login.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="COMANDFAST.Web.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <span class="login100-form-title p-b-34 p-t-27">
		<b style="color:#ff8c00;">C</b>OMAND <b style="color:#ff8c00;">F</b>AST
	</span><br/><br/>
	<div class="wrap-input100 validate-input" data-validate = "Enter username">
        <span class="fa fa-user white" aria-hidden="true"></span>
        <asp:TextBox runat="server" id="txtUsuario" name="username" placeholder="Usuario / E-mail" class="input100"/>
        <ASP:RequiredFieldValidator ControlToValidate="txtUsuario"
           Display="Static" ErrorMessage="*" runat="server" 
           ID="vUserName" />        
	</div>
	<div class="wrap-input100 validate-input" data-validate="Enter password">
        <span class="fa fa-unlock white" aria-hidden="true"></span>
        <asp:TextBox runat="server" id="txtPassword" type="password" name="pass" placeholder="Contraseña" class="input100"/>
        <ASP:RequiredFieldValidator ControlToValidate="txtPassword"
          Display="Static" ErrorMessage="*" runat="server" 
          ID="vUserPass" />
	</div>
    <div style="display: none">
        <tr>
          <td>Persistent Cookie:</td>
          <td><ASP:CheckBox id="chkPersistCookie" runat="server" autopostback="false" /></td>
          <td></td>
       </tr>
    </div>
	<div>
        <asp:Label ID="txtRegistro" runat="server" CssClass="text-danger" Text="Reg"></asp:Label>
    </div>
	<div class="container-login100-form-btn">
        <input type="submit" class="login100-form-btn" value="Login" runat="server" id="cmdLogin"><p>&nbsp;</p>
	</div>
    <br />
        <asp:Label id="lblMsg" ForeColor="red" Font-Name="Verdana" Font-Size="10" runat="server" style="text-align: center"></asp:Label><br/>
    
	<div class="text-center p-t-90">
        <br />
        <asp:HyperLink ID="irRegistro" NavigateUrl="~/Registro.aspx" class="txt1" runat="server">No estas regitrado?</asp:HyperLink>
	    <br />
        <asp:HyperLink ID="HyperLink1" NavigateUrl="~/Menu-externo.aspx" class="txt1" runat="server">Ver Menú</asp:HyperLink>
	</div>
</asp:Content>
