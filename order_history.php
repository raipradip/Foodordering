<?php 
    define('location','index.php');
    define('navbar_position','');
    include('includes/header.php');

    $email = $_SESSION['email'];

    echo '
        <div class="container">
            <table class="table">
                <tr class="bg-primary">
                    <th>Item</th>
                    <th>Restaurant</th>
                    <th>Quantity</th>
                    <th>Price</th>
                    <th>Total</th>
                    <th>Date Purchased</th>
                </tr>         

    ';

    $sql = "SELECT * FROM purchase WHERE email = '$email'";
    $result=query($sql);
    if(num_rows($result)>0){
        while($row = fetch_array($result)){
            $pname = $row['pname'];
            $rname = $row['rname'];
            $qty = $row['qty'];
            $price = $row['price'];
            $total = $row['total'];
            $date_purchase = $row['date_purchase'];
            
            echo '
                <tr>
                    <td>'.$pname.'</td>
                    <td>'.$rname.'</td>
                    <td>'.$qty.'</td>
                    <td>'.$price.'</td>
                    <td>'.$total.'</td>
                    <td>'.$date_purchase.'</td>
                </tr>
            ';

        }
    }
    echo '</table></div>';
?>
<?php include("./script.php");
    include('includes/footer.php');
?>