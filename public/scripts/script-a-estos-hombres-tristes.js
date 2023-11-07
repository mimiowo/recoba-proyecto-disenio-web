const verLetraButtons = document.querySelectorAll('.ver-letra');
verLetraButtons.forEach(button => {
    button.addEventListener('click', () => {
        const targetId = button.getAttribute('data-target');
        const target = document.getElementById(targetId);
        if (target) {
            if (target.style.display === 'block') {
                target.style.display = 'none';
                button.textContent = 'Ver Letra';
            } else {
                target.style.display = 'block';
                button.textContent = 'Ocultar Letra'
            }
        }
    });
});