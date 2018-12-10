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

    $query = "SELECT * FROM Products p, Categories c, Images i WHERE p.CategoriesId = c.CategoriesId AND p.ImagesId = i.ImagesId AND c.CategoriesName LIKE '".$categorie."';";
    $result = $conn->query($query);
    $card = "";
    $descCat = "";
    /* Requête "Select" retourne un jeu de résultats */
    if ($result->num_rows > 0)
    {
        while($row = $result->fetch_assoc()) {
            $card .= '<div class="card" style="width: 18rem;">
                        <img class="card-img-top" src="'.$row["ImagesPath"].'" alt="Card image cap">
                        <div class="card-body">
                            <h5 class="card-title text-center">'.$row["ProductsName"].'</h5>
                            <p class="card-text">'.$row["ProductsDescription"].'</p>
                        </div>
                        <div class="card-footer text-muted text-center">
                            <h2 class="text-center"><span class="badge badge-danger">'.$row["ProductsPrice"].' €</span></h2>
                            <a href="#" id="'.$row["ProductsId"].'" class="btn btn-outline-dark" onclick="addPanier()">Add in my cart</a>
                        </div>
                      </div>';
            $descCat = $row["CategoriesDescription"];
        }
    }
    else
    {
    echo "Error";
    }

    mysqli_close($conn)
?>

<?php include 'header.php' ?>
<div class="jumbotron jumbotron-fluid test">
  <div class="BackgrounGlob <?php echo $categorie?>_background"></div>
  <div class="container">
    <h1 class="display-4"><?php echo $categorie ?></h1>
    <h5><?php echo $descCat ?></h5>
  </div>
</div>
<div class="container-fluid p-4">
  <div class="row">
    <div class="col-lg">
      <div class="card-deck">
        <?php echo $card ?>
      </div>
    </div>
  </div>
</div>
</body>
<script type="text/javascript">
    function addPanier(){ 
        var test = parseInt($('#cart-number').text());
        test += 1;
        $('#cart-number').text(test);
    }
</script>
</html>