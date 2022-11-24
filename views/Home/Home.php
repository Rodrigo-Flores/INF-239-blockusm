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
    <title>Home</title>
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

        <!--Barra de busqueda-->
        <!-- search bar -->
        <form action="Home.php" method="post">
            <div class="search-box">
                <input class="search-txt" type="text" name="search" placeholder="Buscar">
                <select name="tipo" class="search-txt">
                    <option value="peliculas">Peliculas</option>
                    <option value="usuarios">Usuarios</option>
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

    <!--select by cases in select value peliculas or Usuarios-->
    <?php
    include("../InicioyRegistro/conexion.php");
    if (isset($_POST["tipo"])) {
        if ($_POST["tipo"] == "peliculas") {
            include("../InicioyRegistro/conexion.php");
            $query = "SELECT * FROM peliculas WHERE original_title LIKE '%" . $_POST['search'] . "%'";
            $result = mysqli_query($conexion, $query);
            if (mysqli_num_rows($result) > 0) {
                while ($row = mysqli_fetch_array($result)) {
            ?>
            <div class="card">
                <div class="card-body">
                    <h5 class="card-title">
                        <?php echo $row["original_title"]; ?>
                    </h5>
                    <p class="card-text">
                        <?php echo $row["overview"]; ?>
                    </p>
                </div>
            </div>
            <?php
                }
            }
        } else {
            $query = "SELECT * FROM usuarios WHERE Usuario LIKE '%{$_POST['search']}%' OR Nombre_com LIKE '%{$_POST['search']}%'";
            $result = mysqli_query($conexion, $query);
            $queryResult = mysqli_num_rows($result);
            if ($queryResult > 0) {
                while ($row = mysqli_fetch_assoc($result)) {
                    echo "<div class='card'>
                    <div class='container'>
                        <h4><b>{$row['Nombre_com']}</b></h4>
                        <p>{$row['Usuario']}</p>
                    </div>
                </div>";
                }
            } else {
                echo "No hay resultados";
            }
        }
    }
    ?>

    <!-- refactor this piece of code to get tops movies -->
    <?php
    // include("../InicioyRegistro/conexion.php");
    // $result = mysqli_query($conexion, "SELECT * FROM peliculas");
    
    // echo "<div class='container'>";
    // echo "<div class='row'>";
    // echo "<table class='table table-bordered table-striped'>";
    // echo "<tr>";
    // echo "<th>TITULO</th>";
    // echo "<th>DESCRIPCION</th>";
    
    // echo "</tr>";
    // while ($row = mysqli_fetch_array($result)) {
    //     echo "<tr>";
    //     echo "<td>" . $row['original_title'] . "</td>";
    //     echo "<td>" . $row['overview'] . "</td>";
    //     echo "</tr>";
    // }
    // echo "</table>";
    // echo "</div>";
    // echo "</div>";
    ?>

</body>

</html>