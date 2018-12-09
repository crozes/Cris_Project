<?php
$servername = "localhost:8889";
$username = "root";
$password = "root";
$dbname = "myStore";
// Create connection
$conn = new mysqli($servername, $username, $password,$dbname);
// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}
else{
  //echo "OK";
}

$query = "SELECT * FROM Categories c, Images i WHERE c.ImagesId = i.ImagesId;";
$result = $conn->query($query);
$card = "";
/* Requête "Select" retourne un jeu de résultats */
if ($result->num_rows > 0)
{
  while($row = $result->fetch_assoc()) {
    $card .= '<div class="card" style="width: 18rem;">
          <img class="card-img-top" src="'.$row["ImagesPath"].'" alt="Card image cap">
          <div class="card-body">
            <h5 class="card-title">'.$row["CategoriesName"].'</h5>
            <p class="card-text">'.$row["CategoriesDescription"].'</p>
            <a href="produs.php?categorie='.$row["CategoriesName"].'" class="btn btn-primary">Go ahead !</a>
          </div>
        </div>';
  }
}
else
{
  echo "Error";
}
mysqli_close($conn)
?>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Store</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" type="text/css" media="screen" href="css/bootstrap.css" />
    <link rel="stylesheet" type="text/css" media="screen" href="cssFa/fontawesome-free-5.5.0-web/css/all.css" />
    <script src="js/bootstrap.js"></script>
</head>
<body>
<?php include 'header.php' ?>
<div class="container-fluid p-4">
  <div class="row">
    <div class="col-lg">
      <div class="card-deck">
        <?php echo $card?>
      </div>
    </div>
  </div>
</div>
</body>
</html>