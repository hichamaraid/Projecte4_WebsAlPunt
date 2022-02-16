@include('Head')
  <body id="fondo-home">
  @include('Nav')
<div class="img-home">
    <div class="text-img-homee"  >
        <p class="text-stilo" style="font-size: 20px;"><strong>Aprendre Interessadament</strong></p>
        <p class="text-sub-stilo"><strong>Aprèn per part teva, formar-te i poder ser el millor.</strong></p>
        <img src="{{ asset('Images/libro.png')}}" alt="fdf" id="foto-home">
    </div>
</div>




<div class="centrar-text-animado">
  <div class="text">
    <p>Aprendre és </p>
    <p>
      <span class="word wisteria"> divertit.</span>
      <span class="word belize">meravellós.</span>
      <span class="word pomegranate">extraordinari.</span>
      <span class="word green">increïble.</span>
      <span class="word midnight">brillant.</span>
    </p>
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




<div class="max-section-hero-dbl-scroll">
  <div class="scroll-horizontal">
    <div>
      <img src="{{ asset('Images/vue-scroll.jpg')}}" alt="foto" class="iconos-img">
    </div>
    <div>
    <img src="{{ asset('Images/bulma-scroll.png')}}" alt="foto" class="iconos-img">


    </div>
    <div>
    <img src="{{ asset('Images/php-scroll.png')}}" alt="foto" class="iconos-img">

    </div>
    <div>
    <img src="{{ asset('Images/sql-scroll.png')}}" alt="foto" class="iconos-img">

    </div>
    <div>
      <img src="{{ asset('Images/laravel-scroll.png')}}" alt="foto" class="iconos-img">
    </div>
    <div>
    <img src="{{ asset('Images/java.png')}}" alt="foto" class="iconos-img">

  </div>
  </div>
</div>




<section class="section" id="app">
    <div class="container">
      <welcome></welcome>
    </div>
</section>

  @include('Footer')

  </body>
</html>
