<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="TPWebForms_equipo9B.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div class="d-flex justify-content-center align-items-center" style="min-height: calc(100vh - 120px); padding: 20px;">
    <div class="card shadow-lg" 
         style="border-radius: 20px; max-width: 480px; width: 100%; overflow: hidden;
                opacity:0; transform:translateY(30px); transition: all 0.6s ease;">

        <!-- Banner superior -->
        <div class="p-4 text-center" style="background:#5d0ec0; color:#fff;">
            <h2 id="tituloVoucher" 
                style="color:#fff; text-transform:uppercase; margin-bottom:0.5rem; opacity:0; transform:scale(0.9); transition: all 0.5s ease;">
                Intercambiar Voucher
            </h2>
            <small style="color:#fff; opacity:0; transition: opacity 0.5s ease 0.5s;" id="subTituloVoucher">
                ¡Ingresa tu código para recibir tu descuento!
            </small>
        </div>

        <div class="p-4">

            <!-- Mensaje de feedback -->
            <asp:Label ID="lblMensaje" runat="server" CssClass="d-block text-center mb-3 fw-bold" Text=""></asp:Label>

            <!-- Input voucher centrado y con foco violeta -->
            <div class="mb-3" style="display:flex; justify-content:center;">
                <asp:TextBox 
                    ID="txtVoucher" 
                    runat="server" 
                    Placeholder="Ingresa tu código de voucher" 
                    style="width:100%; max-width:380px; border-radius:5px; border:1px solid #ccc; padding:0.6rem; font-size:1rem; transition: all 0.3s ease;"
                    onfocus="this.style.borderColor='#5d0ec0'; this.style.boxShadow='0 0 8px rgba(93,14,192,0.4)';" 
                    onblur="this.style.borderColor='#ccc'; this.style.boxShadow='none';"
                ></asp:TextBox>
            </div>
            <small class="d-block text-center mb-4" style="color:#6c757d;">Recibiste este código con tu compra.</small>

            <!-- Botón centrado -->
            <div style="display:flex; justify-content:center; margin-bottom:1rem;">
                <asp:Button 
                    ID="btnIntercambiar" 
                    runat="server" 
                    Text="Canjear" 
                    OnClick="btnIntercambiar_Click"
                    style="background-color:#5d0ec0; color:#fff; border:none; border-radius:5px; padding:0.8rem 2.2rem; font-size:1rem; cursor:pointer; transition: all 0.2s ease;"
                    onmouseover="this.style.backgroundColor='#4a0b90';"
                    onmouseout="this.style.backgroundColor='#5d0ec0';"
                />
            </div>

            <!-- Separador -->
            <hr style="border-top: 2px dashed #5d0ec0; width:0; transition: width 0.6s ease;" id="hrSeparator">

            <!-- Nota adicional -->
            <p class="text-center" style="color:#6c757d; font-size:0.9rem; margin-top:0.5rem; opacity:0; transition: opacity 0.5s ease;" id="notaFinal">
                Verifica tu código antes de continuar.
            </p>
        </div>
    </div>
</div>

<script>
    window.addEventListener('DOMContentLoaded', () => {
        const card = document.querySelector('.card');
        const titulo = document.querySelector('#tituloVoucher');
        const subTitulo = document.querySelector('#subTituloVoucher');
        const button = document.querySelector('#<%= btnIntercambiar.ClientID %>');
        const hr = document.querySelector('#hrSeparator');
        const nota = document.querySelector('#notaFinal');

        // Animación entrada card
        setTimeout(() => {
            card.style.opacity = '1';
            card.style.transform = 'translateY(0)';
        }, 100);

        // Título aparece con zoom
        setTimeout(() => {
            titulo.style.opacity = '1';
            titulo.style.transform = 'scale(1)';
        }, 400);

        // Subtítulo fade
        setTimeout(() => {
            subTitulo.style.opacity = '1';
        }, 700);

        // Botón micro-pop
        setTimeout(() => {
            button.style.transform = 'scale(0.95)';
            button.style.transition = 'transform 0.3s ease';
            button.style.transform = 'scale(1)';
        }, 1000);

        // Hr se dibuja
        setTimeout(() => {
            hr.style.width = '100%';
        }, 1200);

        // Nota final aparece
        setTimeout(() => {
            nota.style.opacity = '1';
        }, 1500);
    });
</script>

</asp:Content>
