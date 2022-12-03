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

    <?php
    session_start();
    include("../InicioyRegistro/conexion.php");
    $sesion_id = $_SESSION['id'];

    //sort the reviews of followed users and show them
    $query = "SELECT * FROM peliculas_resenias WHERE id_usuario IN (SELECT id_usuario_seguido FROM seguidores WHERE id_usuario_seguidor = $sesion_id) ORDER BY id DESC;";
    $result = mysqli_query($conexion, $query);
    if (mysqli_num_rows($result) > 0) {
        while ($row = mysqli_fetch_array($result)) {
            //select the name of the user who made the review
            $query2 = "SELECT user_name FROM usuarios WHERE id = $row[id_usuario];";
            $result2 = mysqli_query($conexion, $query2);
            $row2 = mysqli_fetch_array($result2);
            $user_name = $row2['user_name'];

            //select the name of the movie
            $query3 = "SELECT titulo FROM peliculas WHERE id = $row[id_pelicula];";
            $result3 = mysqli_query($conexion, $query3);
            $row3 = mysqli_fetch_array($result3);
            $nombre_pelicula = $row3['titulo'];

            echo "<div class='card'>
                    <div class='container'>
                        <h3><b>{$nombre_pelicula}</b></h3>
                        <h4>de: {$user_name}</h4>
                        <p>reseña: {$row['resenia']}</p>
                        <p>calificacion: {$row['calificacion']}</p>
                    </div>
                </div>";

        }
    }

    ?>
</body>

</html>