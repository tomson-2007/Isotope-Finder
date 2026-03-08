<?php
$conn = mysqli_connect('localhost', 'root', '', 'zastosowania');

if(!$conn) {
    die("Błąd połączenia z bazą danych :(");
}

if(isset($_GET['id'])) {
    $id = $_GET['id'];

    $stmt = $conn->prepare("DELETE FROM users WHERE id = ?");
    $stmt->bind_param("i", $id);
    $stmt->execute();
    $stmt->close();
}
header("Location: adminpanel.php");

$conn->close();
?>