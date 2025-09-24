
window.addEventListener('DOMContentLoaded', () => {
    const card = document.querySelector('.card');
    const titulo = document.querySelector('#tituloVoucher');
    const subTitulo = document.querySelector('#subTituloVoucher');

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



    // Hr se dibuja
    setTimeout(() => {
        hr.style.width = '100%';
    }, 1200);

    // Nota final aparece
    setTimeout(() => {
        nota.style.opacity = '1';
    }, 1500);
});
