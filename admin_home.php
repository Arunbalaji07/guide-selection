<?php
    include './dbconnect.php';
    session_start();
    $guide_name=$count="";
    if(!(isset($_SESSION['logged_in']))){
        $message="LOGIN TO CONTINUE!!";
        echo "<script>alert('$message');</script>";
        header("Location: admin_login.php");
        exit();
    }
    $email=isset($_SESSION['email'])?$_SESSION['email']:'';
    if($_SESSION['email']=='gomssrm@gmail.com'){
        header("Location: main_admin_home.php");
        exit();
    }
    if($_SESSION['email']=='subhashini.it@sathyabama.ac.in'){
        $guide_name="Dr.R. Subhashini";
        $sql="SELECT * FROM guide_subhashini";
        $result=mysqli_query($con,$sql);
        $count=$result->num_rows;   
    }
    if($_SESSION['email']=='gowri.it@sathyabama.ac.in'){
        $guide_name="Dr.S.Gowri";
        $sql="SELECT * FROM guide_gowri";
        $result=mysqli_query($con,$sql);
        $count=$result->num_rows;   
    }
    if($_SESSION['email']=='jabezme@gmail.com'){
        $guide_name="Dr.Jabez";
        $sql="SELECT * FROM guide_jabez";
        $result=mysqli_query($con,$sql);
        $count=$result->num_rows;   
    }
    if($_SESSION['email']=='nirmalrani.it@sathyabama.ac.in'){
        $guide_name="Dr.Nirmalrani V";
        $sql="SELECT * FROM guide_nirmalrani";
        $result=mysqli_query($con,$sql);
        $count=$result->num_rows;   
    }
    if($_SESSION['email']=='revathy.it@sathyabama.ac.in'){
        $guide_name="Dr.S.Revathy";
        $sql="SELECT * FROM guide_revathy";
        $result=mysqli_query($con,$sql);
        $count=$result->num_rows;   
    }
    if($_SESSION['email']=='marygladence.it@sathyabama.ac.in'){
        $guide_name="Dr.L.Mary Gladence";
        $sql="SELECT * FROM guide_marygladence";
        $result=mysqli_query($con,$sql);
        $count=$result->num_rows;   
    }
    if($_SESSION['email']=='ajitha.it@sathyabama.ac.in'){
        $guide_name="Dr.P.Ajitha";
        $sql="SELECT * FROM guide_ajitha";
        $result=mysqli_query($con,$sql);
        $count=$result->num_rows;   
    }
    if($_SESSION['email']=='bevishjinila.it@sathyabama.ac.in'){
        $guide_name="Dr.Y.Bevish Jinila";
        $sql="SELECT * FROM guide_bevish";
        $result=mysqli_query($con,$sql);
        $count=$result->num_rows;   
    }
    if($_SESSION['email']=='jeyanthi.it@sathyabama.ac.in'){
        $guide_name="Dr.P.Jeyanthi";
        $sql="SELECT * FROM guide_jeyanthi";
        $result=mysqli_query($con,$sql);
        $count=$result->num_rows;   
    }
    if($_SESSION['email']=='gomathi.it@sathyabama.ac.in'){
        $guide_name="Dr.R.M.Gomathi";
        $sql="SELECT * FROM guide_gomathi";
        $result=mysqli_query($con,$sql);
        $count=$result->num_rows;   
    }
    if($_SESSION['email']=='sendurusrinivasulu.it@sathyabama.ac.in'){
        $guide_name="Dr.Senduru Srinivasulu";
        $sql="SELECT * FROM guide_marygladence";
        $result=mysqli_query($con,$sql);
        $count=$result->num_rows;   
    }
    if($_SESSION['email']=='sivasangari.it@sathyabama.ac.in'){
        $guide_name="Dr.A.Sivasangari";
        $sql="SELECT * FROM guide_sivasangari";
        $result=mysqli_query($con,$sql);
        $count=$result->num_rows;   
    }
    if($_SESSION['email']=='brumancia.it@sathyabama.ac.in'){
        $guide_name="Dr.Brumancia";
        $sql="SELECT * FROM guide_brumancia";
        $result=mysqli_query($con,$sql);
        $count=$result->num_rows;   
    }
    if($_SESSION['email']=='mathivanan.it@sathyabama.ac.in'){
        $guide_name="Dr.G.Mathivanan";
        $sql="SELECT * FROM guide_mathivanan";
        $result=mysqli_query($con,$sql);
        $count=$result->num_rows;   
    }
    if($_SESSION['email']=='jebersonretnaraj.it@sathyabama.ac.in'){
        $guide_name="Dr.R.Jeberson Retna Raj";
        $sql="SELECT * FROM guide_jeberson";
        $result=mysqli_query($con,$sql);
        $count=$result->num_rows;   
    }
    if($_SESSION['email']=='veeramuthu.it@sathyabama.ac.in'){
        $guide_name="Dr.A.Veeramuthu";
        $sql="SELECT * FROM guide_veeramuthu";
        $result=mysqli_query($con,$sql);
        $count=$result->num_rows;   
    }
    
?>
<!DOCTYPE html>
<html>

<head>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <script src="./assets/js/table2excel.js" type="text/javascript">
    </script>

    <style>
        * {
            box-sizing: border-box;
        }

        body {
            margin: 0;
            font-family: Arial, Helvetica, sans-serif;

        }

        .header {
            font-family: "Roboto", sans-serif;
            font-weight: bold;
            overflow: hidden;
            padding: 20px 10px;
            background-color: rgba(131, 18, 56, 1);
        }

        .header a {
            float: left;
            color: black;
            text-align: center;
            padding: 12px;
            text-decoration: none;
            font-size: 17px;
            line-height: 40px;
            border-radius: 4px;
        }

        .header img.logo {
            height: 75px;
            padding-left: 20px;
        }

        .header a.active{
            color: white;
        }

        .header a.active:hover {
            background-color: #ddd;
            color: black;
        }

        .header-right {
            float: right;
        }

        @media screen and (max-width: 500px) {
            .header a {
                float: none;
                display: block;
                text-align: left;
            }

            .header-right {
                float: none;
            }
        }
    </style>
</head>

<body>
    <div class="header">
        <img class="logo" src="./assets/img/sistlogo.jpg" alt="logo" />
        <div class="header-right">
            <a class="active" href="./logout.php">LOGOUT </a>

        </div>
    </div>


    <style>
        body,
        html {
            height: 100%;
            font-family: Arial, Helvetica, sans-serif;
            
        }

        * {
            box-sizing: border-box;
        }

        th,td{
            border-collapse: collapse;
            margin-left: auto; 
            margin-right: auto;
            border:3px solid black;
            text-align: center;
            width:50%;
            padding:20px;
        }
        table{
            border-collapse: collapse;
            margin-left: auto; 
            margin-right: auto;
            border:3px solid black;
            text-align: center;
            width:50%;
        }
        th{
            padding:10px;
        }
        h2{
            margin-left:40px;
        }
        h3{
            text-align: center;
        }
        .open-button {
            background-color: rgba(131, 18, 56, 1);
            font-weight:bold;
            color: white;
            padding: 16px 20px;
            margin: 8px;
            width: 140px;
            right: 20px;
            opacity: 0.9;
            float: right;
            margin-right: 45px;
        }
    </style>
    </head>


    <body>
        <br>
        <button type="submit" name="downloadexcel" id="downloadexcel" class="open-button">Download Excel File</button>
        <h2> Staff Name: <?php echo $guide_name?></h2><br><br>
        <h3> LIST OF STUDENTS</h3>
        <div style="overflow-x:auto;">
            <table class="table" id="table" width=80%>
                <thead>
                    <tr>
                        <th style="width:50%">S.No</th>
                        <th>STUDENT-1 NAME</th>
                        <th>REGISTER NUMBER</th>
                        <th>EMAIL</th>
                        <th>PHONE NUMBER</th>
                        <th>STUDENT-2 NAME</th>
                        <th>REGISTER NUMBER</th>
                        <th>EMAIL</th>
                        <th>PHONE NUMBER</th>
                    </tr>
                </thead>
                <tbody>
                    <?php
                    $i=1;
                    while($count>0){
                        $row=mysqli_fetch_array($result);
                        echo "<tr><td>".$i."</td><td>".$row["student_1_name"]."</td><td>".$row["student_1_reg_no"]."</td><td>".$row["student_1_email"]."</td><td>".$row["student_1_ph_no"]."</td><td>".$row["student_2_name"]."</td><td>".$row["student_2_reg_no"]."</td><td>".$row["student_2_email"]."</td><td>".$row["student_2_ph_no"]."</td></tr>";
                        $count=$count-1;
                        $i=$i+1;
                    }
                
                ?>

                </tbody>
            </table>
        </div>

    </body>

</body>
</body>

</html>
<script>
    document.getElementById('downloadexcel').addEventListener('click',function(){
        var table2excel= new Table2Excel();
        table2excel.export(document.querySelectorAll("#table"));
    });

    if ( window.history.replaceState ) {
    window.history.replaceState( null, null, window.location.href );
    }
</script>