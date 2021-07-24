<?php
include 'camera.php';
$id = $_GET['id'];

$result = mysqli_query($conn, "DELETE FROM camera WHERE id_camera = '{$id}'");

header('location: camera.php');

?>