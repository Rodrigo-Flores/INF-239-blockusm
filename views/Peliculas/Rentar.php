<?php
session_start();
?>
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
    <title>Perfil Pelicula</title>
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

        <!--Menu de usuario-->
        <input type="checkbox" id="btn-menu">
        <div class="container-menu" style="z-index: 1;">
            <div class="cont-menu">
                <nav>
                    <a href="../Usuario/Perfil_main.php">Ver Perfil</a>
                    <a href="../InicioyRegistro/Cerrar_Sesion.php">Cerrar Sesion</a>
                </nav>
                <label for="btn-menu">✖️</label>
            </div>
        </div>

        <!-- search bar -->
        <form action="../Home/Home.php" method="post">
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

    <body>
        <!-- guardar pelicula en la tabla peliculas_rantadas -->
        <?php
        include("../InicioyRegistro/conexion.php");
        $id_pelicula = $_POST['id_pelicula'];
        $id_usuario = $_SESSION['id'];
        $precio = $_POST['precio'];


        if (isset($_POST['rent'])) {
            $sql = "SELECT * FROM peliculas_rentadas WHERE id_pelicula = '$id_pelicula' AND id_usuario = '$id_usuario'";
            $result = mysqli_query($conexion, $sql);
            $resultCheck = mysqli_num_rows($result);
            if ($resultCheck > 0) {
                $sql = "EXEC rentar_pelicula '$id_pelicula', '$id_usuario'";
                $result = mysqli_query($conexion, $sql);
            } else {
                $sql = "INSERT INTO peliculas_rentadas (id_pelicula, id_usuario, rentada) VALUES ('$id_pelicula', '$id_usuario', 1)";
                $result = mysqli_query($conexion, $sql);
                //add 1 to rentas
                $query3 = "UPDATE peliculas SET veces_rentada = veces_rentada + 1 WHERE id = '$id_pelicula'";
                $result3 = mysqli_query($conexion, $query3);
            }
        } else {
            // $sql = "EXEC devolver_pelicula '$id_pelicula', '$id_usuario'";
            $sql = "DELETE FROM peliculas_rentadas WHERE id_pelicula = '$id_pelicula' AND id_usuario = '$id_usuario'";
            $result = mysqli_query($conexion, $sql);
        }
        ?>
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="alert alert-success">
                        <h1>La pelicula se ha rentado correctamente</h1>
                        <a href="../Home/Home.php">Volver a la pagina principal</a>
                    </div>
                </div>
            </div>
        </div>
    </body>

</html>