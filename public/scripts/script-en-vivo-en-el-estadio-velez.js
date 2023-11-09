const playlistLi = document.querySelectorAll('.selector');
playlistLi.forEach(button => {
    console.log('hol');
    button.addEventListener('click', () => {
        const src = button.getAttribute('movieurl');
        const poster = button.getAttribute('moviesposter');

        const videoArea = document.getElementById('video-area')
        videoArea.setAttribute('src', src);
        videoArea.setAttribute('poster', poster);
        videoArea.play();
    });
});