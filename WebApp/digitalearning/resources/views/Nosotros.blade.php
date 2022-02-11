<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/app.css">
    <link rel="stylesheet" href="css/estilos.css">
    <title>Document</title>
</head>
<body>
    @include('Nav')

<div id="div-img-nosotros">
    <!--<img src="{{ asset('Images/nosotros.jpg')}}" alt="foto" class="foto-nosotros">-->
    <p class="titulos-imgs">NOSALTRES</p>
</div>

<div class="center-nosotros">
    <div class="efecto-nosotros">
        <h1 class="titulos-nosotros">DigitalEarning</h1>
        <p class="parrafo-nosotros">Hem creat DigitalEarning per a tu perquè t'acompanyi en el teu camí 
            d'aprenentatge. Aprendre cada dia és la nostra millor eina per poder 
            ser una millor versió de nosaltres mateixos, ja que ens permet tenir 
            més coneixements i ser el millor algun dia.
        </p> 
        <img src="{{ asset('Images/inteligente.png')}}" alt="foto" class="foto-nosotros">   
    </div>

    <div class="efecto-nosotros">
        <h1 class="titulos-nosotros">Servicios</h1>
        <p class="parrafo-nosotros">
        hem pensat que els serveis que oferirem seran perquè els nostres clients 
        se sentin còmodes estudiant, tant, que sembli que són a la universitat i 
        no vulguin parar de fer el que més els agradi.
        </p> 
        <img src="{{ asset('Images/servicio.png')}}" alt="foto" class="foto-nosotros">   
    </div>

</div>

@include('Footer')
<script src="js/scrollreveal.js"></script>
    <script src="js/index.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
</body>
</html>