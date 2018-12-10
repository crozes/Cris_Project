<?PHP
    $categorie = $_GET["categorie"];

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

    $query = "SELECT * FROM Products p, Categories c, Images i WHERE p.CategoriesId = c.CategoriesId AND p.ImagesId = i.ImagesId AND c.CategoriesName = ".$categorie.";";
    $result = $conn->query($query);
    $card = "";
    /* Requête "Select" retourne un jeu de résultats */
    if ($result->num_rows > 0)
    {
        while($row = $result->fetch_assoc()) {
            $card .= '<div class="card" style="width: 18rem;">
                <img class="card-img-top" src="'.$row["ImagesPath"].'" alt="Card image cap">
                <div class="card-body">
                    <h5 class="card-title text-center">'.$row["ProductsName"].'</h5>
                    <p class="card-text">'.$row["ProductsDescription"].'</p>
                    <span class="badge badge-light">'.$row["ProductsPrice"].'€</span>
                    <a href="#" class="btn btn-outline-secondary">Go ahead !</a>
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

<?php include 'header.php' ?>
<div class="jumbotron jumbotron-fluid">
  <div class="container <?php echo $categorie?>_background">
    <h1 class="display-4"><?php echo $categorie ?></h1>
  </div>
</div>
<div class="container-fluid p-4">
  <div class="row">
    <div class="col-lg">
      <div class="card-deck">
      <div class="card" style="width: 18rem;">
        <?php echo $card ?>
      </div>
    </div>
  </div>
</div>
</body>
</html>