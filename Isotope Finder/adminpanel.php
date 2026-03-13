<?php
$conn = mysqli_connect('localhost', 'root', '', 'zastosowania');

if(!$conn) {
    die('Błąd połączenia z bazą danych :(');
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

# DELETE
if(isset($_POST['delete_user'])){
$id=$_POST['delete_user'];
mysqli_query($conn,"DELETE FROM users WHERE id=$id");
}

if(isset($_POST['delete_pierwiastek'])){
$id=$_POST['delete_pierwiastek'];
mysqli_query($conn,"DELETE FROM pierwiastki WHERE id=$id");
}

if(isset($_POST['delete_efekt'])){
$id=$_POST['delete_efekt'];
mysqli_query($conn,"DELETE FROM efekty WHERE id=$id");
}

if(isset($_POST['delete_admin'])){
$id=$_POST['delete_admin'];
mysqli_query($conn,"DELETE FROM administracja_osoby WHERE id=$id");
mysqli_query($conn,"DELETE FROM administracja_dane WHERE id=$id");
}

// Edit
if(isset($_POST['update_id']) && isset($_POST['table'])){

$id = intval($_POST['update_id']);
$table = $_POST['table'];

if($table == "users"){
    $imie = $_POST['col0'];
    $nazwisko = $_POST['col1'];
    $login = $_POST['col2'];
    $haslo = $_POST['col3'];

    mysqli_query($conn,"UPDATE users 
    SET imie='$imie', nazwisko='$nazwisko', login='$login', haslo='$haslo' 
    WHERE id=$id");
}

if($table == "pierwiastki"){
    $nazwa = $_POST['col0'];
    $izotop = $_POST['col1'];
    $czas = $_POST['col2'];
    $jednostka = $_POST['col3'];

    mysqli_query($conn,"UPDATE pierwiastki 
    SET nazwa='$nazwa', izotop='$izotop', czas_rozpadu='$czas', jednostka='$jednostka'
    WHERE id=$id");
}

if($table == "efekty"){
    $nazwa = $_POST['col0'];
    $zastosowanie = $_POST['col1'];

    mysqli_query($conn,"UPDATE efekty 
    SET nazwa='$nazwa', zastosowanie1='$zastosowanie'
    WHERE id=$id");
}

if($table == "admin"){
    $imie = $_POST['col0'];
    $nazwisko = $_POST['col1'];
    $miasto = $_POST['col2'];
    $ulica = $_POST['col3'];
    $login = $_POST['col4'];
    $haslo = $_POST['col5'];

    mysqli_query($conn,"UPDATE administracja_osoby 
    SET imie='$imie', nazwisko='$nazwisko', miasto='$miasto', ulica='$ulica'
    WHERE id=$id");

    mysqli_query($conn,"UPDATE administracja_dane 
    SET login='$login', haslo='$haslo'
    WHERE id=$id");
}

header("Location: ".$_SERVER['PHP_SELF']);
exit;
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
        <form method="POST" action="jebacphp.php">
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
                </tr>
                ";
                while($row_users = $wynik_users->fetch_assoc()) {
                    echo "<tr data-table='users' id='row".$row_users['id']."'>";
                    echo "<td class='rows'>" . $row_users['id'] . "</td>";
                    echo "<td class='rows'>" . $row_users['imie'] . "</td>";
                    echo "<td class='rows'>" . $row_users['nazwisko'] . "</td>";
                    echo "<td class='rows'>" . $row_users['login'] . "</td>";
                    echo "<td class='rows'>" . $row_users['haslo'] . "</td>";
                    echo "<td><form method='POST'><input type='hidden' name='delete_user' value='".$row_users['id']."'><button type='submit'>Usuń</button></form></td>";
                    echo "<td><button type='button' onclick='editRow(".$row_users['id'].")'>Edytuj</button></td>";
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
                echo "<tr data-table='pierwiastki' id='row".$row_pierwiastki['id']."'>";
                echo "<td class='rows'>" . $row_pierwiastki['id'] . "</td>";
                echo "<td class='rows'>" . $row_pierwiastki['nazwa'] . "</td>";
                echo "<td class='rows'>" . $row_pierwiastki['izotop'] . "</td>";
                echo "<td class='rows'>" . $row_pierwiastki['czas_rozpadu'] . "</td>";
                echo "<td class='rows'>" . $row_pierwiastki['jednostka'] . "</td>";
                echo "<td><form method='POST'><input type='hidden' name='delete_pierwiastek' value='".$row_pierwiastki['id']."'><button type='submit'>Usuń</button></form></td>";
                echo "<td><button type='button' onclick='editRow(".$row_pierwiastki['id'].")'>Edytuj</button></td>";
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
                echo "<tr data-table='efekty' id='row".$row_efekty['id']."'>";
                echo "<td class='rows'>" . $row_efekty['id'] . "</td>";
                echo "<td class='rows'>" . $row_efekty['nazwa'] . "</td>";
                echo "<td class='rows'>" . $row_efekty['zastosowanie1'] . "</td>";
                echo "<td><form method='POST'><input type='hidden' name='delete_efekt' value='".$row_efekty['id']."'><button type='submit'>Usuń</button></form></td>";
                echo "<td><button type='button' onclick='editRow(".$row_efekty['id'].")'>Edytuj</button></td>";
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
                echo "<tr data-table='admin' id='row".$row_admin['id']."'>";
                echo "<td class='rows'>" . $row_admin['id'] . "</td>";
                echo "<td class='rows'>" . $row_admin['imie'] . "</td>";
                echo "<td class='rows'>" . $row_admin['nazwisko'] . "</td>";
                echo "<td class='rows'>" . $row_admin['miasto'] . "</td>";
                echo "<td class='rows'>" . $row_admin['ulica'] . "</td>";
                echo "<td class='rows'>" . $row_admin['login'] . "</td>";
                echo "<td class='rows'>" . $row_admin['haslo'] . "</td>";
                echo "<td><form method='POST'><input type='hidden' name='delete_admin' value='".$row_admin['id']."'><button type='submit'>Usuń</button></form></td>";
                echo "<td><button type='button' onclick='editRow(".$row_admin['id'].")'>Edytuj</button></td>";
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
function editRow(id){

let row = document.getElementById("row"+id);
let cells = row.querySelectorAll("td");

for(let i=1;i<cells.length-2;i++){
let value = cells[i].innerText;
cells[i].innerHTML = "<input value='"+value+"'>";
}

cells[cells.length-1].innerHTML =
"<button onclick='saveRow("+id+")'>Zapisz</button>";

}

function saveRow(id){

let row = document.getElementById("row"+id);
let table = row.dataset.table;

let inputs = row.querySelectorAll("input");

let form = document.createElement("form");
form.method="POST";

form.innerHTML += `<input type="hidden" name="update_id" value="${id}">`;
form.innerHTML += `<input type="hidden" name="table" value="${table}">`;

inputs.forEach((input,index)=>{
form.innerHTML += `<input type="hidden" name="col${index}" value="${input.value}">`;
});

document.body.appendChild(form);
form.submit();

}
</script>
</html>

<?php
$conn->close();
?>