<?php
session_start();
include('conexion.php');


if (isset($_POST['Usuario']) && isset($_POST['Clave'])) {

    function validate($data)
    {
        $data = trim($data);
        $data = stripslashes($data);
        $data = htmlspecialchars($data);
        return $data;
    }
    $Usuario = validate($_POST['Usuario']);
    $Clave = validate($_POST['Clave']);

    if (empty($Usuario)) {
        header("Location: Index.php?error=El Usuario Es Requerido");
        exit();
    } elseif (empty($Clave)) {
        header("Location: Index.php?error=La clave Es Requerida");
        exit();
    } else {


        $Sql = "SELECT * FROM usuarios WHERE Usuario = '$Usuario' AND Contraseña='$Clave'";
        $result = mysqli_query($conexion, $Sql);

        if (mysqli_num_rows($result) === 1) {
            $row = mysqli_fetch_assoc($result);
            if ($row['Usuario'] === $Usuario && $row['Contraseña'] === $Clave) {
                $_SESSION['Usuario'] = $row['Usuario'];
                $_SESSION['Nombre_com'] = $row['Nombre_com'];
                $_SESSION['Contraseña'] = $row['Contraseña'];
                header("Location: ../Home/Home.php");
                exit();
            } else {
                header("Location: Index.php?error=El usuario o la clave son incorrectas");
                exit();
            }

        } else {
            header("Location: Index.php?error=El usuario o la clave son incorrectas");
            exit();
        }

    }



}
?>