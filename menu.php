<div class="container">
            <h2>Our Menu</h2>
            <div class="row">
                <?php 
                    
                    $sql = "SELECT * FROM items WHERE rid = $id";
                    $result = query($sql);
                    if(num_rows($result)>0){
                        while($row = fetch_array($result)){
                            $name = $row['name'];
                            $price= $row['price'];
                            $pid = $row['pid'];
                            $image = $row['image'];
                        echo '
                        <div class="col-md-4 col-sm-6 col-xs-6">
                            <div class="thumbnail">
                                <img src="'.$image.'" alt="food" class="img-responsive" style="width:100%;height:250px;">
                                <div class="caption">
                                    <p><b>'.$name.'</b></p>
                                    <p>Rs.'.$price;
                                if(isset($_SESSION['email'])){echo '<button class="btn btn-success btn" id="product" pid="'.$pid.'" style="float:right;"><i class="glyphicon glyphicon-plus"></i> Add to List</button>';}
                        echo'
                        </p>        
                        </div>
                        </div>
                        </div>
                        
                            ';
                            
                    }
                }
                
                ?>
            </div>
            
</div>