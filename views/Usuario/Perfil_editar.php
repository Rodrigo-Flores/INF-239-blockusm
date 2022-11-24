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
    <link rel="stylesheet" href="../../assets/styles/Style_perfiles.css">

    <title>Eliminar cuenta</title>
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

            <img src="../../assets/images/Logo.png" alt="Logo compañia">
            <h2 class=nombre-compañia>BlockbUSM</h2>

        </div>

        <h3>
            <!-- Nombre de la sesion activa-->
            <?php
        echo "Hola !! " . $_SESSION['Usuario'];

        ?>
        </h3>
    </header>



    <!--Menu de usuario-->
    <input type="checkbox" id="btn-menu">
    <div class="container-menu">
        <div class="cont-menu">
            <nav>
                <a href="Perfil_main.php">Ver Perfil </a>
                <a href="../InicioyRegistro/Cerrar_Sesion.php">Cerrar Sesion</a>

            </nav>
        </div>
    </div>



    </nav>
    </div>
    </div>


    <!--CRUD DEL USUARIO-->
    <div class="container">
        <div class=row>
            <ul class="nav justify-content-center">
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="Perfil_main.php">Informacion del perfil</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="Perfil_editar.php">Editar perfil</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="Perfil_eliminar.php">Eliminar Cuenta</a>
                </li>

            </ul>
            <div class="col-md-8 offset-md-3">
                <div class="Logouser mx-auto">
                    <!--Mostrando informacion del perfil-->
                    <form action="edicion.php" method="POST">
                        <h1>Editar perfil</h1>
                        <label>Nombre de usuario</label>
                        <input type="text" name="Usuario" placeholder="<?php echo $_SESSION['Usuario'] ?>">

                        <label>Nombre completo</label>
                        <input type="text" name="nombre" placeholder="<?php echo $_SESSION['Nombre_com'] ?>">


                        <label>Contraseña</label>
                        <input type="text" name=Clave placeholder="<?php echo $_SESSION['Contraseña'] ?>">

                        <button type="submit">Guardar cambios </button>

                    </form>

                </div>
                <!-- ------- -->
            </div>
        </div>
    </div>