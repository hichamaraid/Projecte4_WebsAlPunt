<!-- 
 <nav class="navbar has-shadow">
    <div class="navbar-brand">
      <a href="{{ route('welcome') }}" class="navbar-item">
        <img src="{{ asset('Images/logo.png')}}" alt="logo">
        <button class="btn-navb"><i class="fa fa-bars"></i></button>
      </a>
    </div>

    <div class="navbar-menu" id="nav-links">
      <div class="navbar-end">
          <a style="background: transparent;" href="{{ route('welcome') }}" class="navbar-item">INICI</a>
          <a style="background: transparent;" href="{{ route('nosotros') }}" class="navbar-item">NOSALTRES</a>
          <a style="background: transparent;" href="{{ route('contacto') }}" class="navbar-item">CONTACTE</a>
    -->   






    <header>
        <nav>
            <div class="logo-section">
                <a class="logo">DigitalEarning</a>
                <button class="hb-button"><i class="fas fa-bars"></i></button>
            </div>
            <ul>
                <li><a href="{{ route('welcome') }}">INICI </a></li>
                <li><a href="{{ route('nosotros') }}">NOSALTRES</a></li>
                <li><a href="{{ route('contacto') }}">CONTACTE</a></li>
            
        













          @if (Route::has('login') && Auth::check())
              
                   <li > <a style="background-color: yellow; border-radius:5px; margin-right: 5px; " class="navbar-item" href="{{ url('/home') }}"><b style="color: black;">COMPTE</b> </a></li>
               
            @elseif (Route::has('login') && !Auth::check())
               
                  <li>  <a style="background-color: blue; border-radius:5px; margin-right: 5px; color: white;" class="navbar-item" href="{{ url('/login') }}">LOGIN</a></li>
                  <li>  <a style="background-color: green; border-radius:5px; margin-right: 5px; color: white;" class="navbar-item" href="{{ url('/register') }}">REGISTRAR</a></li>
            @endif
            </ul>
            </div>
      </div>
      
    </div>
    </header>

  </nav>