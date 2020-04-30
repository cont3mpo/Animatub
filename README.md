# Animatub
YouTube a Gif para Linux y macOS (YouTube to Gif for Linux and macOS)
<ul>
<li>animatub.sh - Animatub selecciona una parte predeterminada de un video de YouTube para luego convertirlo a Gif animado de alta calidad.</li>
</ul>

Funcionamiento: <code>./animatub.sh https://youtu.be/qwerty 00:01:00 5</code>

El ejemplo: de https://youtu.be/qwerty, a partir del minuto 1, extraerá 5 segundos para crear el gif animado. Los gifs usan resolución de 480px de ancho (respetando la relación de aspecto del video), y se guardan con el mismo nombre del video. Pongan los comandos en ese orden.

Animatub requiere de FFmpeg, youtube-dl, y convert (incluido en imagemagick) para encodear el video a Gif. Instalar requerimientos con <a href="http://brew.sh/index_es.html">Homebrew</a> en macOS.
