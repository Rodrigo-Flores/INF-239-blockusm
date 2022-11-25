<?php   
    session_start();
    include('../InicioyRegistro/conexion.php');
    $id= $_SESSION['user_name'];
    $consulta="DELETE FROM usuarios where user_name= '$id'";
    $resultado = mysqli_query($conexion,$consulta);
    header("location: ../InicioyRegistro/Index.php");