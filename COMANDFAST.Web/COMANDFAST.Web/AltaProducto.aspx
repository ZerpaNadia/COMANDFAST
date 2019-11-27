<%@ Page Title="" Language="C#" MasterPageFile="~/Tablero.Master" AutoEventWireup="true" CodeBehind="AltaProducto.aspx.cs" Inherits="COMANDFAST.Web.AltaProducto" %>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- Main content  -->
    <section class="content">
      <div class="row">
        <div class="col-md-12">
            <div class="card card-success">
              <div class="card-header">
                <h3 class="card-title">Alta Productos</h3>
              </div>
              <!-- /.card-header -->
              <div class="card-body">
                <form role="form" runat=server>
                  <div class="row">
                    <div class="col-sm-12">
                      <!-- text input -->
                      <div class="form-group">
                        <label>Nombre</label>
                        <!--<input type="text" class="form-control" placeholder="Nombre del producto"> -->
						<asp:TextBox runat="server" name="producto" ID="txtTitulo"  required="true"  placeholder="Nombre del producto" class="form-control" />
                      </div>
                    </div>
                  </div>
                  <div class="row">
                    <div class="col-sm-12">
                      <!-- textarea -->
                      <div class="form-group">
                        <label>Descripci&oacuten</label>
                        <!--<textarea class="form-control" rows="3" placeholder="Descripcion del producto"></textarea> -->
						<asp:TextBox runat="server" name="producto" ID="txtDescripcion"  required="true"  placeholder="Descripcion del producto" class="form-control" />
                      </div>
                    </div>
                  </div>
                  <div class="row">
                    <div class="col-sm-4">
                      <!-- select -->
                      <div class="form-group">
                        <label>Tipo</label>
                        <select class="form-control">
                          <option>Entrada</option>
                          <option>Principal</option>
                          <option>Postre</option>
                          <option>Bebida</option>
                        </select>
                        <select id="Select1" runat="server" name="D1">

                        </select>
                      </div>
                    </div>
                  </div>
					<div class="row">
                    <div class="col-sm-12">
                      <!-- textarea -->
                      <div class="form-group">
                        <label>Stock</label>
                        <!--<textarea class="form-control" rows="3" placeholder="Descripcion del producto"></textarea> -->
						<asp:TextBox runat="server" name="producto" ID="txtStock"  required="true"  placeholder="Cantidad en stock" class="form-control" />
                      </div>
                    </div>
                  </div>
				  <div>
					<asp:Label ID="txtError" runat="server" class="form-control" Text="Error"></asp:Label>
				  </div>
                  <div class="row">
					<div class="col-sm-12">
						<div class="input-group">
							<div class="input-group-prepend">
								<span class="input-group-text">$</span>
								<asp:TextBox runat="server" name="producto" ID="txtPrecio"  required="true"  placeholder="Precio" class="form-control" />
							</div>
							<!-- <input type="number" class="form-control"> -->
						</div>
					</div> 
				   </div> 

					<br/>
                  <!-- input states -->
                  <div class="row">
                    <div class="col-sm-6">
                      <!-- checkbox -->
                      <div class="form-group">
                        <div class="form-check">
                          <!-- <input class="form-check-input" type="checkbox"> -->
                            <asp:Checkbox runat="server" name="producto" ID="chkActivo" TextMode="Activo"  required="true"  autopostback="false" placeholder="Activo" class="form-check-input" />
                          <label class="form-check-label">Habilitado</label>
						  
                        </div>
                      </div>
                    </div> 
                  </div>
                  <!-- <button type="submit" class="btn btn-success">Grabar</button> -->
				  <asp:Button runat="server" OnClick="CreateProd_Click" Text="Grabar" class="btn btn-success" />
                </form>
              </div>
              <!-- /.card-body -->
            </div>		
        </div>
        <!-- /.col-->
      </div>
      <!-- ./row -->
    </section>
    <!-- /.content -->
    
<!-- jQuery -->
<script src="Assets/admin/plugins/js/jquery.min.js"></script>
<!-- Bootstrap 4 -->
<script src="Assets/admin/plugins/js/bootstrap.bundle.min.js"></script>
<!-- AdminLTE App -->
<script src="Assets/admin/dist/js/adminlte.min.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="Assets/admin/dist/js/demo.js"></script>
<!-- Summernote -->
<script src="Assets/admin/plugins/js/summernote-bs4.min.js"></script>
<script>
  $(function () {
    // Summernote
    $('.textarea').summernote()
  })
</script>

    </asp:Content>