<%@ Page Title="" Language="C#" MasterPageFile="~/login.Master" AutoEventWireup="true" CodeBehind="Registro.aspx.cs" Inherits="COMANDFAST.Web.Registro1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .Background {
        background-color:Gray;
        filter:alpha(opacity=40);
        opacity:0.4;
    }
    .Pnl {
        position:absolute;
        top:25%;
        left:37%;
        width:300px;
        height:100px;
        text-align:center;
        background-color:White;
        border:solid 3px black;
    }
    </style>
    <script type="text/javascript">
        function fondoGris() {
            $('.container-login100').addClass('Background');
        }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <span class="login100-form-title p-b-34 p-t-27">
		<b style="color:#ff8c00;">C</b>OMAND <b style="color:#ff8c00;">F</b>AST
	</span><br/><br/>
    <div class="wrap-input100 validate-input">
        <span class="fa fa-envelope white" aria-hidden="true"></span>
        <asp:TextBox runat="server" name="username" ID="txtEmail" TextMode="Email"  required="true"  placeholder="Email" CssClass="input100" />
	</div>
    <div class="wrap-input100 validate-input">
        <span class="fa fa-user white" aria-hidden="true"></span>
        <asp:TextBox runat="server" name="username" ID="txtUsuario"  required="true"  placeholder="Usuario" CssClass="input100" />
    </div>
    <div class="wrap-input100 validate-input">
        <span class="fa fa-user white" aria-hidden="true"></span>
        <asp:TextBox runat="server" name="username" ID="txtNombre"  required="true"  placeholder="Nombre" CssClass="input100" />		
	</div>
    <div class="wrap-input100 validate-input">
        <span class="fa fa-user white" aria-hidden="true"></span>
        <asp:TextBox runat="server" name="username" ID="txtApellido"  required="true"  placeholder="Apellido" CssClass="input100" />
    </div>
    <div class="wrap-input100 validate-input">
        <span class="fa fa-unlock white" aria-hidden="true"></span>
        <asp:TextBox runat="server" name="username" ID="txtPassword" TextMode="Password"  required="true"  placeholder="Contraseña" CssClass="input100" />
    </div>
    <div class="wrap-input100 validate-input">
        <span class="fa fa-unlock white" aria-hidden="true"></span>
        <asp:TextBox runat="server" name="username" ID="ConfirmPassword" TextMode="Password" required="true"  placeholder="Confirmar Contraseña" CssClass="input100" />
    </div>
    <div>
        <asp:CompareValidator runat="server" ControlToCompare="txtPassword" ControlToValidate="ConfirmPassword"
                    CssClass="text-danger" Display="Dynamic" ErrorMessage="* La contraseña ingresada deben coincidir." /> 
        <asp:Label ID="txtError" runat="server" CssClass="text-danger" Text="Error"></asp:Label>
    </div><br/>
    <div class="container-login100-form-btn">
        <asp:Button runat="server" OnClick="CreateUser_Click" Text="Registrar" CssClass="login100-form-btn" />
    </div><br/>
</asp:Content>
