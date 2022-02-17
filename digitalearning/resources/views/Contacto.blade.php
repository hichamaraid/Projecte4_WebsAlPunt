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

<div id="fondo-contacto">
    <p class="titulos-imgs">CONTACTE</p>
</div>

<div id="fondo-form-contact">
<!--<img src="{{ asset('Images/contact.jpg')}}" alt="fdf"> -->

    <form action="" id="form" class="desenfoque" autocomplete="off">
        <div class="form">
            <h1 class="titulo-form">CONTACTE AMB NOSALTRES</h1>
            <div class="grupo">
                <input type="text" name="nombre" required><span class="barra"></span>
                <label for="">Nom i Cognom</label>
            </div>
            <div class="grupo">
                <input type="email" name="mail" required><span class="barra"></span>
                <label for="">Correu electrònic</label>
            </div>
            <div class="grupo">
                <input type="text" name="numero" required><span class="barra"></span>
                <label for="">Telèfon</label>
            </div>
            <div class="grupo">
                <textarea name="tarea" rows="3" cols="20" placeholder="Escriu el teu missatge"></textarea>
            </div>

            <button type="submit" class="botooon">ENVIAR</button>
        </div>

    </form>
</div>

@include('Footer')
    
</body>
</html>