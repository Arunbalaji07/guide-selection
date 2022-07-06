<?php
    include './header.php';
    include './dbconnect.php';
    
    $name=$regno=$email=$dept=$phno="";

    if($_SERVER["REQUEST_METHOD"]== "POST"){
      #validating name
      $name= test_input($_POST["name"]);
      $checkname=str_replace(" ","",$name);
      if(!preg_match("/^[a-zA-Z]*$/",$checkname)){
        $nameErr="Only letters and white spaces are allowed";
      }
      $regno=test_input($_POST["regno"]);
      $dept=test_input($_POST["dept"]);
      $phno=test_input($_POST["phno"]);
      $guide=test_input($_POST["guide"]);

      if(isset($_POST["submit"])){
        $duplicate=mysqli_query($con,"select * from guide_details where reg_no='$regno'");
        if(mysqli_num_rows($duplicate)>0){
          echo'user already registered';
        }
        else{
          $sql="INSERT INTO guide_details (name,reg_no,department,phone_no,guide_name) VALUES('$name', '$regno', '$dept', '$phno', '$guide')";
          if(mysqli_query($con,$sql)){
            header("Location: redirectpostregistration.php");
          }
          else{
            echo 'error';
          }
        }
      }
      else{
        echo 'connect error';
      }
    }

    function test_input($data){
      $data=trim($data);
      $data=stripslashes($data);
      $data=htmlspecialchars($data);
      return $data;
    }

?>

<!DOCTYPE html>
<html>
  <head>
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <style>
      body,
      html {
        height: 100%;
        font-family: Arial, Helvetica, sans-serif;
      }

      * {
        box-sizing: border-box;
      }

      .bg-img {
        /* The image used */
        background-image: url("./assets/img/homeimage1.jpg");
        width: 100%;
        min-height: 690px;
        padding: 0px;
        /* Center and scale the image nicely */
        /* background-position: center; */
        background-repeat: no-repeat;
        background-size: cover;
        position: relative;
      }

      /* Add styles to the form container */
      .container {
        position: absolute;
        right: 40px;
        margin: 20px;
        max-width: 400px;
        padding: 16px;
        background-color: white;
      }

      /* Full-width input fields */
      input[type="text"],
      input[type="password"],
      select {
        width: 100%;
        padding: 15px;
        margin: 5px 0 22px 0;
        border: none;
        background: #f1f1f1;
      }

      input[type="text"]:focus,
      input[type="password"]:focus,
      select:focus {
        background-color: #ddd;
        outline: none;
      }

      /* Set a style for the submit button */
      .btn {
        background-color: rgba(131, 18, 56, 1);
        color: white;
        padding: 16px 20px;
        border: none;
        cursor: pointer;
        width: 100%;
        opacity: 0.9;
      }

      .btn:hover {
        opacity: 1;
      }
    </style>
  </head>
  <body>
    <!-- <h2>GUIDE SELECTION</h2> -->
    <div class="bg-img">
      <form action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"])?>" class="container" method="post">
        <h2>Guide Selection</h2>

        <label for="name"><b>Name</b></label>
        <input type="text" placeholder="Enter Name" name="name" required />

        <label for="regno"><b>Register Number</b></label>
        <input
          type="text"
          placeholder="Enter Register Number"
          name="regno"
          required
        />

        <label for="dept"><b>Department</b></label>
        <select name="dept" id="dept">
          <option value="" disabled selected>Select Department</option>
          <option value="IT">IT</option>
        </select>

        <label for="phno"><b>Phone Number</b></label>
        <input
          type="text"
          placeholder="Enter Phone Number"
          name="phno"
          required
        />

        <label for="guide"><b>Select Guide</b></label>
        <select name="guide" id="guide">
          <option value="" disabled selected>Select Guide</option>
          <option value="Dr.R.Subhashini">Dr.R.Subhashini</option>
          <option value="Dr.S.Gowri">Dr.S.Gowri</option>
          <option value="Dr.Jabez">Dr Jabez J</option>
          <option value="Dr.Nirmalrani V">Dr.Nirmalrani V</option>
          <option value="Dr.S.Revathy">Dr.S.Revathy</option>
          <option value="Dr.L.Mary Gladence">Dr.L.Mary Gladence</option>
          <option value="Dr.P.Ajitha">Dr P AJITHA</option>
          <option value="Dr.Y.Bevish Jinila">Dr.Y.BEVISH JINILA</option>
          <option value="Dr.P.Jeyanthi">Dr.P.Jeyanthi</option>
          <option value="Dr.R.M.Gomathi">Dr.R.M.Gomathi</option>
          <option value="Dr.Senduru Srinivasulu">Dr.Senduru Srinivasulu</option>
          <option value="Dr.A.Sivasangari">Dr.A.Sivasangari</option>
          <option value="Dr.Brumancia">Brumancia</option>
          <option value="Dr.G.Mathivanan">Dr.G.Mathivanan</option>
          <option value="Dr.R.Jeberson Retna Raj">
            Dr.R.Jeberson Retna Raj
          </option>
        </select>

        <button type="submit" value="submit" name="submit" class="btn">REGISTER</button>
      </form>
    </div>
  </body>
</html>
