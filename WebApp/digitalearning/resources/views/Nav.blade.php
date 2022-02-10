  <nav class="navbar has-shadow">
    <div class="navbar-brand">
      <a href="{{ route('home') }}" class="navbar-item">
        <img src="{{ asset('Images/logo.png')}}" alt="fdf">
      </a>
    </div>

    <div class="navbar-menu" id="nav-links">
      <div class="navbar-end">
          <a href="{{ route('home') }}" class="navbar-item">INICI</a>
          <a href="{{ route('nosotros') }}" class="navbar-item">NOSALTRES</a>
          <a href="{{ route('contacto') }}" class="navbar-item">CONTACTE</a>
       



          @if (Route::has('login') && Auth::check())
              
                    <a style="background-color: yellow; border-radius:5px; margin-right: 5px;" class="navbar-item" href="{{ url('/home') }}">COMPTE</a>
               
            @elseif (Route::has('login') && !Auth::check())
               
                    <a style="background-color: blue; border-radius:5px; margin-right: 5px; color: white;" class="navbar-item" href="{{ url('/login') }}">LOGIN</a>
                    <a style="background-color: green; border-radius:5px; margin-right: 5px; color: white;" class="navbar-item" href="{{ url('/register') }}">REGISTRAR</a>
            @endif
             
            </div>
      </div>
      
    </div>
  </nav>