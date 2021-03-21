<nav class="navbar navbar-default <?php echo navbar_position; ?>">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="<?php echo location; ?>">FoodOrdering</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav navbar-right">

      <?php if(isset($_SESSION['email'])){
          echo '<li><a href="order_history.php"><span class="glyphicon glyphicon-th-list"></span> My History</a></li>';
        }  ?>
        
        <?php if(isset($_SESSION['email'])){
          echo '
          <li class="dropdown">
            <a class="dropdown-toggle" data-toggle="dropdown" href="#" id="cart_container"><span class="glyphicon glyphicon-shopping-cart"></span> My Cart</a>
            <ul class="dropdown-menu">
              <div class="container" id="cart_product"  style="width:600px;">
                
              </div>
              <div class="container" style="width:450px;">
                <div class="row">
                  <div class="col-md-4"></div>
                  <div class="col-md-4"><a class="btn btn-success" href="cart.php">Edit Cart</a></div>
                  <div class="col-md-4"></div>
                </div>
                
              </div>
            </ul>
          </li>

          ';
        }  ?>
        <?php
        if(!isset($_SESSION['admin']) && !isset($_SESSION['email']) && !isset($_SESSION['rname'])){
        echo '<li><a href="login.php"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>';
        }?>
        <?php
        if(isset($_SESSION['admin']) || isset($_SESSION['rname'])){
          echo '<li><a href="logout.php"><span class="glyphicon glyphicon-log-out"></span> Logout</a></li>';
        }?>
        <?php 
        if(isset($_SESSION['email'])){echo'
          <li class="dropdown">
            <a class="dropdown-toggle" data-toggle="dropdown" href="#">Hi, '.$_SESSION["username"].'
            <span class="caret"></span></a>
            <ul class="dropdown-menu">';
          
              echo'
              <li><a href="logout.php"><span class="glyphicon glyphicon-log-out"></span> Logout</a></li>
            </ul>
          </li>';}?>
      </ul>
    </div>
  </div>
</nav>

