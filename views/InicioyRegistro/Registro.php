<?php
session_start();
include('conexion.php');

if (isset($_POST['nombre']) && isset($_POST['user_name']) && isset($_POST['Clave'])) {

    function validate($data)
    {
        $data = trim($data);
        $data = stripslashes($data);
        $data = htmlspecialchars($data);
        return $data;
    }
    $Nombre = validate($_POST['nombre']);
    $user_name = validate($_POST['user_name']);
    $Clave = validate($_POST['Clave']);


    if (empty($Nombre)) {
        header("Location: Index_registro.php?error=El nombre Es Requerido");
        exit();
    } elseif (empty($user_name)) {
        header("Location: Index_registro.php?error=El user_name Es Requerido");
        exit();
    } elseif (empty($Clave)) {
        header("Location: Index_registro.php?error=La clave Es Requerida");
        exit();
    } else {
        $consulta = "INSERT INTO usuarios(user_name, nombre, password) VALUES ('$user_name','$Nombre','$Clave')";
        $resultado = mysqli_query($conexion, $consulta);
        if ($resultado) {
            header("Location: Index_registro.php?exito=Cuenta correctamente registrada");
        }
    }

}

?>