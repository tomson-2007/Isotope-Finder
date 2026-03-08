<?php
$conn = mysqli_connect('localhost', 'root', '', 'zastosowania');

if(!$conn) {
    die("Błąd połączenia z bazą danych :(");
}
// Kwerendy dla tabeli users

$kw_users = "SELECT id, imie, nazwisko, login, haslo FROM users;";
$wynik_users = mysqli_query($conn, $kw_users);

// Kwerendy dla tabeli pierwiastki

$kw_pierwiastki = "SELECT id, nazwa, izotop, czas_rozpadu, jednostka FROM pierwiastki;";
$wynik_pierwiastki = mysqli_query($conn, $kw_pierwiastki);

// Kwerendy dla tabeli efekty

$kw_efekty = "SELECT id, nazwa, zastosowanie1 FROM efekty;";
$wynik_efekty = mysqli_query($conn, $kw_efekty);

// Kwerendy dla uzytkownikow administracji

$kw_admin = "SELECT administracja_osoby.id, administracja_osoby.imie, administracja_osoby.nazwisko, administracja_osoby.miasto, administracja_osoby.ulica, administracja_dane.login, administracja_dane.haslo FROM administracja_osoby JOIN administracja_dane;";
$wynik_admin = mysqli_query($conn, $kw_admin);
?>

<!DOCTYPE html>
<html lang="pl">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin panel</title>
    <link rel="stylesheet" href="adminpanel.css">
</head>
<body>
    <header><h1>Admin panel</h1></header>

    <section id="zakladki" class="zakladki">
        <form method="POST" action="adminpanel.php">
            <table>
                <tr>
                    <td><button type="submit" id="edycja_uzytkownikow" name="edycja_uzytkownikow" class="edycja_uzytkownikow">Edycja użytkowników</button></td>
                    <td><button type="submit" id="edycja_danymi" name="edycja_danymi" class="edycja_danymi">Edycja danymi</button></td>
                    <td><button type="submit" id="edycja_zastosowaniami" name="edycja_zastosowaniami" class="edycja_zastosowaniami">Edycja zastosowaniami</button></td>
                    <td><button type="submit" id="edycja_administracji" name="edycja_administracji" class="edycja_administracji">Edycja administratorami</button></td>
                </tr>
            </table>
        </form>
    </section>

    <section id="edity">
        <table>
        <?php
        if(isset($_POST['edycja_uzytkownikow'])) {
            while($row_users = $wynik_users->fetch_assoc()) {
                echo "<tr>";
                echo "<td>" . $row_users['id'] . "</td>";
                echo "<td>" . $row_users['imie'] . "</td>";
                echo "<td>" . $row_users['nazwisko'] . "</td>";
                echo "<td>" . $row_users['login'] . "</td>";
                echo "<td>" . $row_users['haslo'] . "</td>";
                echo "<td>" . $remove_button . "</td>";
                echo "<td>" . $edit_button . "</td>";
                echo "</tr>";
            }
        } elseif(isset($_POST['edycja_danymi'])) {
            while($row_pierwiastki = $wynik_pierwiastki->fetch_assoc()) {
                echo "<tr>";
                echo "<td>" . $row_pierwiastki['id'] . "</td>";
                echo "<td>" . $row_pierwiastki['nazwa'] . "</td>";
                echo "<td>" . $row_pierwiastki['izotop'] . "</td>";
                echo "<td>" . $row_pierwiastki['czas_rozpadu'] . "</td>";
                echo "<td>" . $row_pierwiastki['jednostka'] . "</td>";
                echo "<td>" . $remove_button . "</td>";
                echo "<td>" . $edit_button . "</td>";
                echo "</tr>";
            }
        } elseif(isset($_POST['edycja_zastosowaniami'])) {
            while($row_efekty = $wynik_efekty->fetch_assoc()) {
                echo "<tr>";
                echo "<td>" . $row_efekty['id'] . "</td>";
                echo "<td>" . $row_efekty['nazwa'] . "</td>";
                echo "<td>" . $row_efekty['zastosowanie1'] . "</td>";
                echo "<td>" . $remove_button . "</td>";
                echo "<td>" . $edit_button . "</td>";
                echo "</tr>";
            }
        } elseif(isset($_POST['edycja_administracji'])) {
            while($row_admin = $wynik_admin->fetch_assoc()) {
                echo "<tr>";
                echo "<td>" . $row_admin['id'] . "</td>";
                echo "<td>" . $row_admin['imie'] . "</td>";
                echo "<td>" . $row_admin['nazwisko'] . "</td>";
                echo "<td>" . $row_admin['miasto'] . "</td>";
                echo "<td>" . $row_admin['ulica'] . "</td>";
                echo "<td>" . $row_admin['login'] . "</td>";
                echo "<td>" . $row_admin['haslo'] . "</td>";
                echo "</tr>";
            }
        }
        ?>
        </table>
    </section>
</body>
</html>

<?php
$conn->close();
?>