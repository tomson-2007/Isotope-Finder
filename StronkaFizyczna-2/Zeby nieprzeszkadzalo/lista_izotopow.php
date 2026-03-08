<?php
$conn = mysqli_connect('localhost', 'root', '', 'zastosowania');

if(!$conn) {
    die("Błąd połączenia z bazą danych!" . mysqli_connect_error());
}

$kw1 = "SELECT nazwa FROM pierwiastki;";
$kw2 = "SELECT izotop FROM pierwiastki;";
$kw3 = "SELECT czas_rozpadu FROM pierwiastki;";
$kw4 = "SELECT jednostka FROM pierwiastki;";

$result1 = $conn->query($kw1);
$result2 = $conn->query($kw2);
$result3 = $conn->query($kw3);
$result4 = $conn->query($kw4);
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
            while(($row1 = $result1->fetch_assoc()) && ($row2 = $result2->fetch_assoc()) && ($row3 = $result3->fetch_assoc()) && ($row4 = $result4->fetch_assoc())) {
                    echo "<tr>";
                    echo "<td>" . $row1["nazwa"] . "</td>";
                    echo "<td>" . $row2["izotop"] . "</td>";
                    echo "<td>" . $row3["czas_rozpadu"] . "</td>";
                    echo "<td>" . $row4["jednostka"] . "</td>";
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
$conn -> close();
?>