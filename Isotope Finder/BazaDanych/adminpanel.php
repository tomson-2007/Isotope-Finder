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

$kw_admin = "SELECT administracja_osoby.id, administracja_osoby.imie, administracja_osoby.nazwisko, administracja_osoby.miasto, administracja_osoby.ulica, administracja_dane.login, administracja_dane.haslo FROM administracja_osoby JOIN administracja_dane ON administracja_osoby.id = administracja_dane.id;";
$wynik_admin = mysqli_query($conn, $kw_admin);

// Buttons

$remove_button = "
<form method='POST'>
<input type='hidden' name='delete_id' value='%id%'>
<button type='submit' class='remove_button' id='remove_button'>Delete</button>
</form>";

$edit_button = "<button type='button' class='edit_button' id='edit_button' onclick='mamdoscphp()'>Edytuj</button>";

# DELETE
if(isset($_POST['delete_id'])){

$id = $_POST['delete_id'];

mysqli_query($conn,"DELETE FROM users WHERE id=$id");
}

if(isset($_POST['delete_id'])){

    $id = $_POST['delete_id'];
    
    mysqli_query($conn,"DELETE FROM efekty WHERE id=$id");
}

if(isset($_POST['delete_id'])){

    $id = $_POST['delete_id'];
    
    mysqli_query($conn,"DELETE FROM pierwiastki WHERE id=$id");
}

if(isset($_POST['delete_id'])){

    $id = $_POST['delete_id'];
    
    mysqli_query($conn,"DELETE FROM administracja_osoby WHERE id=$id");
}

if(isset($_POST['delete_id'])){

    $id = $_POST['delete_id'];
    
    mysqli_query($conn,"DELETE FROM administracja_dane WHERE id=$id");
}
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
        <table id="data">
        <?php
        if(isset($_POST['edycja_uzytkownikow'])) {
            echo "
                <tr>
                <th>ID</th>
                <th>Imię</th>
                <th>Nazwisko</th>
                <th>Login</th>
                <th>Hasło</th>
                <th colspan=2>Przyciski</th>
                </tr>";
            while($row_users = $wynik_users->fetch_assoc()) {
                $button1 = str_replace("%id%", $row_users['id'], $remove_button);
                $button2 = str_replace("%id%", $row_users['id'], $edit_button);

                echo "<tr>";
                echo "<td class='rows'>" . $row_users['id'] . "</td>";
                echo "<td class='rows'>" . $row_users['imie'] . "</td>";
                echo "<td class='rows'>" . $row_users['nazwisko'] . "</td>";
                echo "<td class='rows'>" . $row_users['login'] . "</td>";
                echo "<td class='rows'>" . $row_users['haslo'] . "</td>";
                echo "<td class='rows'>" . $button1 . "</td>";
                echo "<td class='rows'>" . $button2 . "</td>";
                echo "</tr>";
            }
        } elseif(isset($_POST['edycja_danymi'])) {
            echo "
                <tr>
                <th>ID</th>
                <th>Nazwa pierwiastka</th>
                <th>Izotop</th>
                <th>Czas rozpadu</th>
                <th>Jednostka</th>
                <th colspan=2>Przyciski</th>
                </tr>";
            while($row_pierwiastki = $wynik_pierwiastki->fetch_assoc()) {
                $button1 = str_replace("%id%", $row_pierwiastki['id'], $remove_button);
                $button2 = str_replace("%id%", $row_pierwiastki['id'], $edit_button);

                echo "<tr>";
                echo "<td class='rows'>" . $row_pierwiastki['id'] . "</td>";
                echo "<td class='rows'>" . $row_pierwiastki['nazwa'] . "</td>";
                echo "<td class='rows'>" . $row_pierwiastki['izotop'] . "</td>";
                echo "<td class='rows'>" . $row_pierwiastki['czas_rozpadu'] . "</td>";
                echo "<td class='rows'>" . $row_pierwiastki['jednostka'] . "</td>";
                echo "<td class='rows'>" . $button1 . "</td>";
                echo "<td class='rows'>" . $button2 . "</td>";
                echo "</tr>";
            }
        } elseif(isset($_POST['edycja_zastosowaniami'])) {
            echo "
                <tr>
                <th>ID</th>
                <th>Nazwa pierwiastka</th>
                <th>Zastosowanie</th>
                <th colspan=2>Przyciski</th>
                </tr>";
            while($row_efekty = $wynik_efekty->fetch_assoc()) {
                $button1 = str_replace("%id%", $row_efekty['id'], $remove_button);
                $button2 = str_replace("%id%", $row_efekty['id'], $edit_button);

                echo "<tr>";
                echo "<td class='rows'>" . $row_efekty['id'] . "</td>";
                echo "<td class='rows'>" . $row_efekty['nazwa'] . "</td>";
                echo "<td class='rows'>" . $row_efekty['zastosowanie1'] . "</td>";
                echo "<td class='rows'>" . $button1 . "</td>";
                echo "<td class='rows'>" . $button2 . "</td>";
                echo "</tr>";
            }
        } elseif(isset($_POST['edycja_administracji'])) {
            echo "
                <tr>
                <th>ID</th>
                <th>Imię</th>
                <th>Nazwisko</th>
                <th>Miasto</th>
                <th>Ulica</th>
                <th>Login</th>
                <th>Hasło</th>
                <th colspan=2>Przyciski</th>
                </tr>";
            while($row_admin = $wynik_admin->fetch_assoc()) {
                $button1 = str_replace("%id%", $row_admin['id'], $remove_button);
                $button2 = str_replace("%id%", $row_admin['id'], $edit_button);
                echo "<tr>";
                echo "<td class='rows'>" . $row_admin['id'] . "</td>";
                echo "<td class='rows'>" . $row_admin['imie'] . "</td>";
                echo "<td class='rows'>" . $row_admin['nazwisko'] . "</td>";
                echo "<td class='rows'>" . $row_admin['miasto'] . "</td>";
                echo "<td class='rows'>" . $row_admin['ulica'] . "</td>";
                echo "<td class='rows'>" . $row_admin['login'] . "</td>";
                echo "<td class='rows'>" . $row_admin['haslo'] . "</td>";
                echo "<td class='rows'>" . $button1 . "</td>";
                echo "<td class='rows'>" . $button2 . "</td>";
                echo "</tr>";
            }
        }
        ?>
        </table>
    </section>
    
    <section id="powrot" class="powrot">
        Powrót do logowania:<br><br>
        <a href="adminpanel_logowanie.php">Powrót do strony logowania</a>
    </section>
</body>
<script>
    function mamdoscphp() {
        let row = document.getElementsByClassName("rows");

        let name = row.querySelector(".rows").innerText;

        row.querySelector(".name").innerHTML = '<input type="text" name="imie"'+name+'">';
    }
</script>
</html>

<?php
$conn->close();
?>