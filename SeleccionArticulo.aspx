<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="SeleccionArticulo.aspx.cs" Inherits="TPWebForms_equipo9B.SeleccionArticulo" %>

<%@ Import Namespace="Dominio" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <!-- Bootstrap CSS, asegurate que tu MasterPage tenga esto -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container my-5">
        <div id="promoCarousel" class="carousel slide mb-4" data-bs-ride="carousel">
            <!-- Indicadores (puntitos) -->
            <div class="carousel-indicators">
                <button type="button" data-bs-target="#promoCarousel" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
                <button type="button" data-bs-target="#promoCarousel" data-bs-slide-to="1" aria-label="Slide 2"></button>
                <button type="button" data-bs-target="#promoCarousel" data-bs-slide-to="2" aria-label="Slide 3"></button>
            </div>

            <!-- Slides -->
            <div class="carousel-inner rounded-3 shadow-sm">
                <div class="carousel-item active">
                    <img src="https://images.fravega.com/f300/293e14b0e380f76898a9ee3ac357e658.jpg.webp" class="d-block w-100" alt="Promo 1">
                </div>
                <div class="carousel-item">
                    <img src="https://images.fravega.com/f300/c4c1481c2ce0011b4252229b4142985d.png.webp" class="d-block w-100" alt="Promo 2">
                </div>
                <div class="carousel-item">
                    <img src="https://images.fravega.com/f300/8692578f55e7068af632f677dd011f6f.png.webp" class="d-block w-100" alt="Promo 3">
                </div>
            </div>

            <!-- Controles (flechas) -->
            <button class="carousel-control-prev" type="button" data-bs-target="#promoCarousel" data-bs-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Anterior</span>
            </button>
            <button class="carousel-control-next" type="button" data-bs-target="#promoCarousel" data-bs-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Siguiente</span>
            </button>
        </div>
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
                                    <p class="card-text text-wrap mb-3"><%# Eval("descripcion") %></p>
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
