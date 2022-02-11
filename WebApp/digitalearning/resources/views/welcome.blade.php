<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="css/app.css">
    <link rel="stylesheet" href="css/estilos.css">
    <title>DIGITALEARNING</title>
  </head>
  <body id="fondo-home">
  @include('Nav')
<div class="img-home">
    <div class="text-img-homee">
        <p class="text-stilo"><strong>Aprendre Interessadament</strong></p>
        <p class="text-sub-stilo"><strong>Aprèn per part teva, formar-te i poder ser el millor.</strong></p>
        <img src="{{ asset('Images/libro.png')}}" alt="fdf" id="foto-home">
    </div>
</div>

<div class="flex-home">
    <div class="flex-one">
      <h1 class="titulos"><strong>DigitalEarning</strong></h1>
      <p class="text-home">Vols continuar formant-te i continuar aprenent cada dia més i més? Ets al lloc perfecte per millorar les teves habilitats i coneixements.</p>
    </div>

    <div class="flex-two">
      <img src="{{ asset('Images/aprender.png')}}" alt="foto" class="fotos-home">
    </div>
</div>

<div class="flex-home-two">
    <div class="flex-three">
      <img src="{{ asset('Images/persona-estudiando.png')}}" alt="foto" class="fotos-home-two">
    </div>

    <div class="flex-four">
      <h1 class="titulos"><strong> Transforma la teva vida mitjançant els estudis per ser el millor del món!</strong></h1>
      <p class="text-home">Persones que volen aprendre, com tu, volen tenir una nova aventura estudiant.</p>
    </div>
</div>

<div class="linea-iconos">
  <img src="{{ asset('Images/piton.png')}}" alt="foto" class="iconos-img">
  <img src="{{ asset('Images/js.png')}}" alt="foto" class="iconos-img">
  <img src="{{ asset('Images/php.png')}}" alt="foto" class="iconos-img">
  <img src="{{ asset('Images/java.png')}}" alt="foto" class="iconos-img">
  <img src="{{ asset('Images/mysql.png')}}" alt="foto" class="iconos-img">
  <img src="{{ asset('Images/tres-puntos.png')}}" alt="foto" class="iconos-img">
</div>


<div class="scroll-horizontal">
  <div>
    <img src="{{ asset('Images/bulma-scroll.png')}}" alt="foto" class="iconos-img">
  </div>
  <div>
    <img src="{{ asset('Images/sql-scroll.png')}}" alt="foto" class="iconos-img">
  </div>
  <div>
    <img src="{{ asset('Images/java.png')}}" alt="foto" class="iconos-img">
  </div>
  <div>
    <img src="{{ asset('Images/php-scroll.png')}}" alt="foto" class="iconos-img">
  </div>
  <div>
    <img src="{{ asset('Images/laravel-scroll.png')}}" alt="foto" class="iconos-img">
  </div>
  <div>
    <img src="{{ asset('Images/vue-scroll.png')}}" alt="foto" class="iconos-img">
  </div>

</div>








  @include('Footer')
  </body>
</html>


            
            
            
            
            
            
            
            
            
         
