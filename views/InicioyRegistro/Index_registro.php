<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link rel="stylesheet" type="text/css" href="../../assets/styles/Style_registro.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css"
        integrity="sha512-xh6O/CkQoPOWDdYTDqeRdPCVd1SpvCA9XXcUnZS2FmJNp1coAFzvtCN9BmamE+4aHK8yyUHUSCcJHgXloTyT2A=="
        crossorigin="anonymous" referrerpolicy="no-referrer" />
    <title>Registro de usuario</title>
</head>

<body>

    <form action="Registro.php" method="POST">
        <h1>Registro</h1>
        <hr>
        <?php
    if (isset($_GET['error'])) {
    ?>
        <p class="error">
            <?php
        echo $_GET['error']
                    ?>

        </p>
        <?php
    }

    if (isset($_GET['exito'])) {
        ?>
        <p class="exito">
            <?php
        echo $_GET['exito']
                    ?>

        </p>
        <?php
    }
        ?>

        <label>Nombre</label>
        <input type="text" name="nombre" placeholder="Nombre y apellido">


        <label>Nombre de usuario</label>
        <input type="text" name="Usuario" placeholder="Nombre a mostrar">

        <label>Contraseña</label>
        <input type="text" name=Clave placeholder="Clave de usuario">

        <button type="submit">Registrarse</button>

        <a href="Index.php">ya tiene cuenta? Inicie sesion</a>
    </form>
</body>

</html>