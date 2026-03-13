<?php
$conn = mysqli_connect('localhost', 'root', '', 'zastosowania');

if(!$conn) {
    die("Błąd połączenia z bazą danych!" . mysqli_connect_error());
}

$kw = "SELECT nazwa, izotop, czas_rozpadu, jednostka FROM pierwiastki;";

$result = $conn->query($kw);
?>
<!DOCTYPE html>
<html lang="pl">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Lista izotopów</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <header>
        <h1>Lista izotopów dodanych do wyszukiwarki</h1>
    </header>

    <div class="izotopy" id="izotopy">
        <table>
            <tr>
                <th>Nazwa</th>
                <th>Izotop</th>
                <th>Czas rozpadu</th>
                <th>Jednostka</th>
            </tr>
            <?php
            while($row = $result->fetch_assoc()) {
                    echo "<tr>";
                    echo "<td>" . $row["nazwa"] . "</td>";
                    echo "<td>" . $row["izotop"] . "</td>";
                    echo "<td>" . $row["czas_rozpadu"] . "</td>";
                    echo "<td>" . $row["jednostka"] . "</td>";
                    echo "</tr>";
            }
            ?>
        </table>
    </div>

    <div class="powrot" id="powrot">
        Powrót do wyszukiwarki:<br>
        <a href="index.php">Strona główna</a>
    </div>

    <footer>
    &#128522; &#128513; &#128578; Autor: Tomek D z klasy 4c &#128578; &#128513; &#128522;
    </footer>
</body>
</html>
<?php
$conn->close();
?>