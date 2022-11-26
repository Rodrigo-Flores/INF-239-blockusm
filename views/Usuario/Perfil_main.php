<?php
session_start();
?>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
  <link rel="stylesheet" href="../../assets/styles/Style_home.css">
  <title>Perfil del usuario</title>
</head>

<body>


  <!--Creando cabezera de la pagina-->
  <header>
    <!--Cambiar esto para que al clikear al foto vuelva a la pagina principal-->
    <div class="Logo">

      <!--Menu de usuario-->
      <div class="btn-menu">
        <label for="btn-menu">☰</label>
      </div>

      <a href="../Home/home.php"><img src="../../assets/images/Logo.png" alt="Logo compañia"></a>
      <h2 class=nombre-compañia>BlockbUSM</h2>

    </div>

  </header>

  <!--Menu de usuario-->
  <input type="checkbox" id="btn-menu">
  <div class="container-menu" style="z-index: 1">
    <div class="cont-menu">
      <nav>
        <a href="Perfil_main.php">Ver Perfil </a>
        <a href="../InicioyRegistro/Cerrar_Sesion.php">Cerrar Sesion</a>

      </nav>
      <label for="btn-menu">✖️</label>
    </div>
  </div>


  <!--CRUD DEL USUARIO-->

  <ul class="nav justify-content-center">
    <li class="nav-item">
      <a class="nav-link active" aria-current="page" href="#">Informacion del perfil</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="Perfil_editar.php">Editar perfil</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="Perfil_eliminar.php">Eliminar Cuenta</a>
    </li>
  </ul>

  <!--center div with bootstrap-->
  <div class="container col-3">
    <!--- show user as a bootstrap card-->
    <div class="card" style="z-index: 0;">
      <img class="card-img-top mx-auto mt-1" src="../../assets/images/user_icon.jpeg" style="height: em; width: 7em;"
        alt="Card image cap">
      <div class="card-body">
        <h5 class="card-title
        ">Informacion del perfil</h5>
        <p class="card-text">Nombre:
          <?php echo $_SESSION['nombre']; ?>
        </p>
        <p class="card-text">Nombre de Usuario:
          <?php echo $_SESSION['user_name']; ?>
        </p>
        <p class="card-text">Seguidores:
          <?php echo $_SESSION['seguidores']; ?>
        </p>
        <p class="card-text">Seguidos:
          <?php echo $_SESSION['seguidos']; ?>
        </p>
        <p class="card-text">Descripcion:
          <?php echo $_SESSION['descripcion']; ?>
      </div>

</body>

</html>