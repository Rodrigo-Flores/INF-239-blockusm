<?php

session_start();
include('../InicioyRegistro/conexion.php');
$nuevo_usuario= $_POST['user_name'];
$nuevo_nombre= $_POST['nombre'];
$nueva_contraseña = $_POST['password'];
$nuevo_seguidos = $_SESSION['seguidos'];
$nuevo_seguidores = $_SESSION['seguidores'];
$nuevo_descripcion = $_POST['descripcion'];

if (! empty($nuevo_usuario)){

    $id= $_SESSION['user_name'];
    $_SESSION['user_name'] = $nuevo_usuario;
    $newid = $_SESSION['user_name'];

    $consulta="UPDATE usuarios SET user_name='$newid' WHERE user_name ='$id'";
    $resultado = mysqli_query($conexion,$consulta);
    header("location: Perfil_main.php");
}



if (! empty($nuevo_nombre)){

    $id= $_SESSION['user_name'];
    $_SESSION['nombre'] = $nuevo_nombre;
    $newid = $_SESSION['nombre'];

    $consulta="UPDATE usuarios SET nombre='$newid' WHERE user_name ='$id'";
    $resultado = mysqli_query($conexion,$consulta);
    header("location: Perfil_main.php");
}

if (! empty($nueva_contraseña)){

    $id= $_SESSION['user_name'];
    $_SESSION['password'] = $nueva_contraseña;
    $newid = $_SESSION['password'];

    $consulta="UPDATE usuarios SET password='$newid' WHERE user_name ='$id'";
    $resultado = mysqli_query($conexion,$consulta);
    header("location: Perfil_main.php");
}

if (! empty($nuevo_seguidos)){

    $id= $_SESSION['user_name'];
    $_SESSION['seguidos'] = $nuevo_seguidos;
    $newid = $_SESSION['seguidos'];

    $consulta="UPDATE usuarios SET seguidos='$newid' WHERE user_name ='$id'";
    $resultado = mysqli_query($conexion,$consulta);
    header("location: Perfil_main.php");
}

if (! empty($nuevo_seguidores)){

    $id= $_SESSION['user_name'];
    $_SESSION['seguidores'] = $nuevo_seguidores;
    $newid = $_SESSION['seguidores'];

    $consulta="UPDATE usuarios SET seguidores='$newid' WHERE user_name ='$id'";
    $resultado = mysqli_query($conexion,$consulta);
    header("location: Perfil_main.php");
}

if (! empty($nuevo_descripcion)){

    $id= $_SESSION['user_name'];
    $_SESSION['descripcion'] = $nuevo_descripcion;
    $newid = $_SESSION['descripcion'];

    $consulta="UPDATE usuarios SET descripcion='$newid' WHERE user_name ='$id'";
    $resultado = mysqli_query($conexion,$consulta);
    header("location: Perfil_main.php");
}



header("location: Perfil_main.php");
