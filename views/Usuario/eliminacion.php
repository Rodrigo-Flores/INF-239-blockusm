<?php   
    session_start();
    include('../InicioyRegistro/conexion.php');
    $id= $_SESSION['Usuario'];
    $consulta="DELETE FROM usuarios where Usuario= '$id'";
    $resultado = mysqli_query($conexion,$consulta);
    header("location: ../InicioyRegistro/Index.php");