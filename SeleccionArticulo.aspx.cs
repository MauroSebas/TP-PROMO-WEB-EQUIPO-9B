using Dominio;
using Negocio;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TPWebForms_equipo9B
{
    public partial class SeleccionArticulo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ArticuloNegocio negocio = new ArticuloNegocio();
                List<Articulo> lista = negocio.lista();
                rptArticulos.DataSource = lista;
                rptArticulos.DataBind();
            }
        }

        protected void SeleccionarArticulo(object sender, CommandEventArgs e)
        {
            int idArticulo = Convert.ToInt32(e.CommandArgument);
            // Guardás el artículo seleccionado en Session o ViewState
            Session["ArticuloSeleccionado"] = idArticulo;
            // Redireccionás a la página de registro del cliente
            Response.Redirect("RegistroCliente.aspx");
        }
    }
}