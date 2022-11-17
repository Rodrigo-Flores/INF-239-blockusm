<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../ArchivosCSS/Style_home.css">
    <link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css"
      integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g=="
      crossorigin="anonymous"
      referrerpolicy="no-referrer"
    />
    <title>Home</title>
</head>
<body>

<!--Creando cabezera de la pagina--> 
<header>
    <!--Cambiar esto para que al clikear al foto vuelva a la pagina principal--> 
    <div class = "Logo">

    <!--Menu de usuario-->
    <div class="btn-menu">
			<label for="btn-menu">☰</label>
	</div>

        <img src="../Imagenes/Logo.png" alt="Logo compañia">
        <h2 class= nombre-compañia>BlockbUSM</h2>

    </div>

    <!--Barra de busqueda-->
    <div class=Barra-busqueda>
        <input type="text" placeholder = "Buscar usuario o pelicula">

        <div class="btn">
        <i class="fas fa-search icon"></i>

        </div>

    </div>

</header>

<!--Menu de usuario-->
<input type="checkbox" id="btn-menu">
<div class="container-menu">
	<div class="cont-menu">
		<nav>
        <a href="../InicioyRegistro/Cerrar_Sesion.php">Cerrar Sesion</a>
		</nav>
		<label for="btn-menu">✖️</label>
	</div>
</div>


</body>
</html>