﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace COMANDFAST.Layer.Data.DTO
{
    public class DTOPedidoProducto
    {
        #region properties

        public int Id { get; set; }

        public int IdPedido { get; set; }

        public int IdProducto { get; set; }

        public int Cantidad { get; set; }

        #endregion

        #region Constructores

        public DTOPedidoProducto()
        {
        }
        #endregion
    }
}