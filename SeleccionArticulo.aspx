<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="SeleccionArticulo.aspx.cs" Inherits="TPWebForms_equipo9B.SeleccionArticulo" %>

<%@ Import Namespace="Dominio" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <!-- Bootstrap CSS, asegurate que tu MasterPage tenga esto -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container my-5">
        <div class="text-center mb-4">
            <h1 class="display-4 fw-bold text-primary">¡Nuestros Artículos Top!</h1>
            <p class="lead text-secondary">Elegí lo que más te guste, con imágenes y precios al toque</p>
            <hr class="border-2 border-primary w-50 mx-auto">
        </div>

        <div class="container my-4">
            <h1 class="text-center mb-4">Nuestros Artículos Destacados</h1>
            <div class="row row-cols-1 row-cols-sm-2 row-cols-md-3 g-4">
                <asp:Repeater ID="rptArticulos" runat="server">
                    <ItemTemplate>
                        <div class="col">
                            <div class="card h-100 shadow-sm border-0 rounded-4 overflow-hidden hover-scale">
                                <div class="card-img-top d-flex align-items-center justify-content-center bg-light" style="height: 250px;">
                                    <img src='<%# Eval("PrimeraImagenUrl") %>' class="img-fluid" alt='<%# Eval("nombre") %>' style="object-fit: contain; max-height: 100%; max-width: 100%;">
                                </div>
                                <div class="card-body d-flex flex-column">
                                    <h5 class="card-title"><%# Eval("nombre") %></h5>
                                    <p class="card-text text-truncate"><%# Eval("descripcion") %></p>
                                    <p class="card-text mt-auto fw-bold fs-5"><%# Eval("PrecioFormateado") %></p>
                                    <asp:Button ID="btnSeleccionar" runat="server" Text="Seleccionar" CommandArgument='<%# Eval("id") %>' OnCommand="SeleccionarArticulo" CssClass="btn btn-primary mt-2" />
                                </div>
                            </div>
                        </div>
                    </ItemTemplate>
                </asp:Repeater>
            </div>
        </div>
    </div>

    <style>
        /* Efecto hover para las cards */
        .hover-scale:hover {
            transform: translateY(-5px) scale(1.02);
            transition: all 0.3s ease;
            box-shadow: 0 0.5rem 1rem rgba(0,0,0,0.3) !important;
        }
    </style>

</asp:Content>
