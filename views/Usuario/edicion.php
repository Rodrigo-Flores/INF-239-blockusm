<?php

session_start();
include('../InicioyRegistro/conexion.php');
$nuevo_usuario= $_POST['Usuario'];
$nuevo_nombre= $_POST['nombre'];
$nueva_contraseña = $_POST['Clave'];

if (! empty($nuevo_usuario)){

    $id= $_SESSION['Usuario'];
    $_SESSION['Usuario'] = $nuevo_usuario;
    $newid = $_SESSION['Usuario'];

    $consulta="UPDATE usuarios SET Usuario='$newid' WHERE Usuario ='$id'";
    $resultado = mysqli_query($conexion,$consulta);
    header("location: Perfil_main.php");
}



if (! empty($nuevo_nombre)){

    $id= $_SESSION['Usuario'];
    $_SESSION['Nombre_com'] = $nuevo_nombre;
    $newid = $_SESSION['Nombre_com'];

    $consulta="UPDATE usuarios SET Nombre_com='$newid' WHERE Usuario ='$id'";
    $resultado = mysqli_query($conexion,$consulta);
    header("location: Perfil_main.php");
}

if (! empty($nueva_contraseña)){

    $id= $_SESSION['Usuario'];
    $_SESSION['Contraseña'] = $nueva_contraseña;
    $newid = $_SESSION['Contraseña'];

    $consulta="UPDATE usuarios SET Contraseña='$newid' WHERE Usuario ='$id'";
    $resultado = mysqli_query($conexion,$consulta);
    header("location: Perfil_main.php");
}
    



header("location: Perfil_main.php");
