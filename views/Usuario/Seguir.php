<?php
    session_start();
    include("../InicioyRegistro/conexion.php");

    $id = $_POST['user_id'];
    $user_name = $_POST['user_name'];
    $sesion_id = $_SESSION['id'];
    //if the user click on follow button then insert the user id and the user name in the database else delete the user id and the user name from the database
    if (isset($_POST['follow'])) {
    //add 1 to seguidores
    $query = "UPDATE usuarios SET seguidores = seguidores + 1 WHERE id = $id";
    $result = mysqli_query($conexion, $query);

    //add 1 to siguiendo
    $query2 = "UPDATE usuarios SET seguidos = seguidos + 1 WHERE id = $_SESSION[id]";
    $result2 = mysqli_query($conexion, $query2);

    //upate new value of seguidores for session variable
    $query3 = "SELECT * FROM usuarios WHERE id = $_SESSION[id]";
    $result3 = mysqli_query($conexion, $query3);
    if (mysqli_num_rows($result3) == 1) {
        $row = mysqli_fetch_array($result3);
        $_SESSION['seguidos'] = $row['seguidos'];
    }

    //add follower to table seguidores
    $query4 = "INSERT INTO seguidores (id_usuario_seguidor, id_usuario_seguido) VALUES ($_SESSION[id],$id)";
    $result4 = mysqli_query($conexion, $query4);
    

}else{

    //delete 1 to seguidores
    $query = "UPDATE usuarios SET seguidores = seguidores - 1 WHERE id = $id";
    $result = mysqli_query($conexion, $query);

    //delete 1 to siguiendo
    $query2 = "UPDATE usuarios SET seguidos = seguidos - 1 WHERE id = $_SESSION[id]";
    $result2 = mysqli_query($conexion, $query2);

    //upate new value of seguidores for session variable
    $query3 = "SELECT * FROM usuarios WHERE id = $_SESSION[id]";    
    $result3 = mysqli_query($conexion, $query3);
    if (mysqli_num_rows($result3) == 1) {
        $row = mysqli_fetch_array($result3);
        $_SESSION['seguidos'] = $row['seguidos'];
    }

    //delete follower to table seguidores
    $query4 = "DELETE FROM seguidores WHERE id_usuario_seguidor = $_SESSION[id] AND id_usuario_seguido = $id";
    $result4 = mysqli_query($conexion, $query4);

}
?>
    <div class="container">
    <div class="row">
        <div class="col-md-12">
            <div class="alert alert-success">
                <h1>La pelicula se ha rentado correctamente</h1>
                <a href="../Home/Home.php">Volver a la pagina principal</a>
            </div>
        </div>
    </div>
</div>