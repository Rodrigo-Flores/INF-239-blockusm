<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../../assets/styles/Style_home.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css"
        integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g=="
        crossorigin="anonymous" referrerpolicy="no-referrer" />
    <title>Seguidos</title>
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

        <!--Barra de busqueda-->
        <!-- search bar -->
        <form action="Home.php" method="post">
            <div class="search-box">
                <input class="search-txt" type="text" name="search" placeholder="Buscar">
                <select name="tipo" class="search-txt">
                    <option value="peliculas">Peliculas</option>
                    <option value="usuarios">user_names</option>
                </select>
                <button class="search-btn" type="submit" name="submit-search">
                    <i class="fas fa-search"></i>
                </button>
            </div>
        </form>
    </header>

    <!--Menu de usuario-->
    <input type="checkbox" id="btn-menu">
    <div class="container-menu">
        <div class="cont-menu">
            <nav>
                <a href="../Usuario/Perfil_main.php">Ver Perfil</a>
                <a href="../InicioyRegistro/Cerrar_Sesion.php">Cerrar Sesion</a>
            </nav>
            <label for="btn-menu">✖️</label>
        </div>
    </div>



    <?php
    session_start();
    include("../InicioyRegistro/conexion.php");


    //get the seguidos of the sesion user and show them
    $query = "SELECT * FROM seguidores WHERE id_usuario_seguidor = $_SESSION[id]";
    $result = mysqli_query($conexion, $query);
    if (mysqli_num_rows($result) > 0) {
        while ($row = mysqli_fetch_array($result)) {
            $query2 = "SELECT * FROM usuarios WHERE id = $row[id_usuario_seguido]";
            $result2 = mysqli_query($conexion, $query2);
            if (mysqli_num_rows($result2) == 1) {
                $row2 = mysqli_fetch_array($result2);
    ?>
    <div class="col-sm-3 p-4">
        <div class="card w-100 h-100 p-2">
            <!-- render a image as form -->
            <div class="card-body">
                <h5 class="card-title">
                    <?php echo $row2["user_name"]; ?>
                    </a>
                </h5>
                <p class="card-text">
                    <?php echo $row2["descripcion"]; ?>
                </p>
                <form action="../Usuario/Perfil_Usuarios.php" method="post">
                    <input type="hidden" name="id_usuario" value="<?php echo $row2["id"]; ?>">
                    <input type="submit" name="detail" value="Ver Perfil">
                </form>
            </div>
        </div>
    </div>

    <?php
        } else {
                echo "No hay resultados";
            }
        }
    }

    ?>



</body>

</html>