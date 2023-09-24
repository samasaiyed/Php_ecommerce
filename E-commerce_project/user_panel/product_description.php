<?php include 'connection.php';
include 'connection.php';

    $sql = "select *from product where pid = '".$_GET['pid']."'";
    $res = mysqli_query($conn,$sql);

?>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    
    <title></title>
    <style type="text/css">
      .tab {
  overflow: hidden;
  background-color: white;
  margin-bottom: 30px;
  border-bottom: 1px solid lightgray;
}

/* Style the buttons inside the tab */
.tab button {
  background-color: inherit;
  float: left;
  border: none;
  outline: none;
  cursor: pointer;
  padding: 14px 16px;
  transition: 0.3s;
  font-size: 17px;
}

/* Change background color of buttons on hover */
.tab button:hover {
    border-bottom: 4px solid purple;
  }

/* Create an active/current tablink class */
.tab button.active {
  background-color: purple;
  color: white;
}

/* Style the tab content */
.tabcontent {
  display: none;
  padding: 6px 12px;
  border: 1px solid #ccc;
  border-top: none;
}


    </style>
</head>
<body>

<div class="tab">
  <button class="tablinks" onclick="openCity(event, 'Description')">Description</button>
  <button class="tablinks" onclick="openCity(event, 'Ingredients')">Ingredients</button>
  <button class="tablinks" onclick="openCity(event, 'How to use')">How to use</button>
</div>

<?php while( $row = mysqli_fetch_array($res)){?>
<div id="Description" class="tabcontent">
  <h3>Description</h3>
  <p><?php echo $row['description'];?></p>
</div>

<div id="Ingredients" class="tabcontent">
  <h3>Ingredients</h3>
  <p><?php echo $row['ingredients'];?></p> 
</div>

<div id="How to use" class="tabcontent">
  <h3>How to use</h3>
  <p><?php echo $row['howto'];?></p>
</div>


<?php } ?>
<script>
function openCity(evt, cityName) {
  var i, tabcontent, tablinks;
  tabcontent = document.getElementsByClassName("tabcontent");
  for (i = 0; i < tabcontent.length; i++) {
    tabcontent[i].style.display = "none";
  }
  tablinks = document.getElementsByClassName("tablinks");
  for (i = 0; i < tablinks.length; i++) {
    tablinks[i].className = tablinks[i].className.replace(" active", "");
  }
  document.getElementById(cityName).style.display = "block";
  evt.currentTarget.className += " active";
}


</script>

</body>
</html>