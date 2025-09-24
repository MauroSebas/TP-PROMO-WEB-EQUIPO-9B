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
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnIntercambiar_Click(object sender, EventArgs e)
        {
            string voucherIngresado = txtVoucher.Text.Trim();

            if (string.IsNullOrEmpty(voucherIngresado))
            {
                lblMensaje.Text = "Por favor ingresa un código de voucher.";
                lblMensaje.CssClass = "d-block text-center text-danger mb-3 fw-bold";
                return;
            }

            VoucherNegocio negocio = new VoucherNegocio();
            Vouncher voucher = negocio.ValidarVoucher(voucherIngresado);

            if (voucher == null)
            {
                lblMensaje.Text = "El voucher ingresado no existe.";
                lblMensaje.CssClass = "d-block text-center text-danger mb-3 fw-bold";
                return;
            }

            if (!voucher.SePuedeCanjear)
            {
                lblMensaje.Text = "El voucher ya fue canjeado.";
                lblMensaje.CssClass = "d-block text-center text-danger mb-3 fw-bold";
                return;
            }

            
            Session["Voucher"] = voucher;

            if (voucher.Cliente != null)
            {
                Session["Cliente"] = voucher.Cliente;
            }
            else
            {
                Session["Cliente"] = new Cliente(); 
            }

            Response.Redirect("~/SeleccionArticulo.aspx");
        }
    }
}