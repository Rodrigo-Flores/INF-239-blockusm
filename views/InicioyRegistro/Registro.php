<?php
session_start();
include('conexion.php');

if (isset($_POST['nombre']) && isset($_POST['Usuario']) && isset($_POST['Clave'])) {

    function validate($data)
    {
        $data = trim($data);
        $data = stripslashes($data);
        $data = htmlspecialchars($data);
        return $data;
    }
    $Nombre = validate($_POST['nombre']);
    $Usuario = validate($_POST['Usuario']);
    $Clave = validate($_POST['Clave']);


    if (empty($Nombre)) {
        header("Location: Index_registro.php?error=El nombre Es Requerido");
        exit();
    } elseif (empty($Usuario)) {
        header("Location: Index_registro.php?error=El Usuario Es Requerido");
        exit();
    } elseif (empty($Clave)) {
        header("Location: Index_registro.php?error=La clave Es Requerida");
        exit();
    } else {
        $consulta = "INSERT INTO usuarios(Usuario, Nombre_com, Contraseña) VALUES ('$Usuario','$Nombre','$Clave')";
        $resultado = mysqli_query($conexion, $consulta);
        if ($resultado) {
            header("Location: Index_registro.php?exito=Cuenta correctamente registrada");
        }
    }

}

?>