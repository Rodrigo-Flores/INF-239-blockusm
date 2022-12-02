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
        <div class="container-menu">
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
    include("../InicioyRegistro/conexion.php");
    session_start();
    $sesion_id = $_SESSION['id'];
    $id = $_POST['id_usuario'];
    $query = "SELECT * FROM usuarios WHERE id = $id";
    $result = mysqli_query($conexion, $query);
    if (mysqli_num_rows($result) == 1) {
        $row = mysqli_fetch_array($result);
        $user_name = $row['user_name'];
        $nombre = $row['nombre'];
        $seguidores = $row['seguidores'];
        $seguidos = $row['seguidos'];
        $descripcion = $row['descripcion'];

    }
    ?>
    <div class="container col-3">
        <div class="card" style="width: 18rem;">
            <div class="card-body">
                <h5 class="card-title"><?php echo $user_name?> </h5>
                <p class="card-text"><?php echo $descripcion?></p>
            </div>
            <ul class="list-group list-group-flush">
            <li class="list-group-item">Nombre: <?php echo $nombre?></li>
                <li class="list-group-item">Seguidores: <?php echo $seguidores?></li>
                <li class="list-group-item">Seguidos <?php echo $seguidos?></li>
            </ul>
            <form action="Seguir.php" method="post">
                <input type="hidden" name="user_name" value="<?php echo $user_name ?>">
                <input type="hidden" name="user_id" value="<?php echo $id ?>">
                <?php 
                //if the user follow the user, show unfollow button else show follow button
                $query = "SELECT * FROM seguidores WHERE id_usuario_seguidor = $sesion_id AND id_usuario_seguido = $id";
                $result = mysqli_query($conexion, $query);
                if (mysqli_num_rows($result) == 1) {
                    echo '<button type="submit" class="btn btn-danger" name="unfollow">Dejar de seguir</button>';
                }else{
                    echo '<button type="submit" name="follow">Seguir</button>';
                }
                ?>
            </form>
        </div>
    </div>



</body>

</html>