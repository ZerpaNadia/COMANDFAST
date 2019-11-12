<%@ Page Title="" Language="C#" MasterPageFile="~/login.Master" AutoEventWireup="true" CodeBehind="Producto.aspx.cs" Inherits="COMANDFAST.Web.Producto1" %>
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
        <asp:TextBox runat="server" name="producto" ID="txtTitulo"  required="true"  placeholder="Título" CssClass="input100" />
	</div>
    <div class="wrap-input100 validate-input">
        <span class="fa fa-user white" aria-hidden="true"></span>
        <asp:TextBox runat="server" name="producto" ID="txtDescripcion"  required="true"  placeholder="Descripción" CssClass="input100" />
    </div>
    <div class="wrap-input100 validate-input">
        <span class="fa fa-user white" aria-hidden="true"></span>
        <asp:TextBox runat="server" name="producto" ID="txtPrecio"  required="true"  placeholder="Precio" CssClass="input100" />		
	</div>
    <div class="wrap-input100 validate-input">
        <span class="fa fa-user white" aria-hidden="true"></span>
        <asp:TextBox runat="server" name="producto" ID="txtStock"  required="true"  placeholder="Cantidad en stock" CssClass="input100" />
    </div>
    <div class="wrap-input100 validate-input">
        <span class="fa fa-unlock white" aria-hidden="true"></span>
        <asp:Label ID="Label2" runat="server" class="input100" Text="Activo" ></asp:Label>
        <asp:Checkbox runat="server" name="producto" ID="chkActivo" TextMode="Activo"  required="true"  autopostback="false" placeholder="Activo" CssClass="input100" />
    </div>
    <div>
        <asp:Label ID="txtError" runat="server" CssClass="text-danger" Text="Error"></asp:Label>
    </div>
    <div class="container-login100-form-btn">
        <asp:Button runat="server" OnClick="CreateProd_Click" Text="Register" CssClass="login100-form-btn" />
    </div><br/>
</asp:Content>
