<?php
session_start();
$_SESSION['message'] = '';
    $link = mysqli_connect("localhost","root","","finarisa_birc_form") or die("database not found");

if(isset($_POST["submit"])){
    $name= mysqli_real_escape_string($link, $_POST["name"]);
    $surname= mysqli_real_escape_string($link, $_POST["surname"]);
    $other_names= mysqli_real_escape_string($link, $_POST["other_names"]);
    $address= mysqli_real_escape_string($link, $_POST["address"]);
    $number= mysqli_real_escape_string($link, $_POST["number"]);
    $email= mysqli_real_escape_string($link, $_POST["email"]);
    $gender= mysqli_real_escape_string($link, $_POST["gender"]);
    $status= mysqli_real_escape_string($link, $_POST["status"]);
    $date= mysqli_real_escape_string($link, $_POST["date"]);
    $state= mysqli_real_escape_string($link, $_POST["state"]);
    $town= mysqli_real_escape_string($link, $_POST["town"]);
    $qualification= mysqli_real_escape_string($link, $_POST["qualification"]);
    $other_qualification= mysqli_real_escape_string($link, $_POST["other_qualification"]);
    $skills= mysqli_real_escape_string($link, $_POST["skills"]);
    $company= mysqli_real_escape_string($link, $_POST["company"]);
    $duration= mysqli_real_escape_string($link, $_POST["duration"]);
    $job= mysqli_real_escape_string($link, $_POST["job"]);
    $images = $_FILES['images']['name'];
    $images_tmp = $_FILES['images']['tmp_name'];
    
    move_uploaded_file($images_tmp, "images/$images");
    
    $insert = "INSERT INTO maxwell(name,surname,other_names,address,number,email,gender,status,date,state,town,qualification,other_qualification,skills,company,duration,job,file) values('$name','$surname','$other_names','$address','$number','$email','$gender','$status','$date','$state','$town','$qualification','$other_qualification','$skills','$company','$duration','$job','$images')";
    
    $run_insert = mysqli_query($link, $insert);
    
    if($run_insert){
    echo 'Upload Successful';
    }
    else {
        echo 'Not Successful';
    }
   
    
}

?>
    <!DOCTYPE HTML>
    <html lang="en">

    <head>
        <link rel="stylesheet" href="form.css" type="text/css">
        <title>Birc Form</title>
        <meta charset="UTF-8" />
    </head>

    <body>

        <br>
        <br>
        <form action="" method="post" enctype="multipart/form-data">
            <h1><span><img src="birclogo.JPG"></span>Curriculum Vitae Form</h1>
            <hr>
            <br>
            <table>
                <tr>
                    <td>
                        <h3>Details</h3>
                        <hr>
                    </td>
                </tr>
                <tr>
                    <td><label><b>First Name:</b></label></td>
                    <td><input type="text" name="name"></td>
                </tr>
                <tr>
                    <td><label><b>Surname:</b></label></td>
                    <td><input type="text" name="surname"></td>
                </tr>
                <tr>
                    <td><label><b>Other:</b></label></td>
                    <td><input type="text" name="other_names"></td>
                </tr>
                <tr>
                    <td> <label><b>Address:</b></label></td>
                    <td><input type="text" name="address"></td>
                </tr>
                <tr>
                    <td><label><b>Phone:</b></label></td>
                    <td><input type="text" name="number"></td>
                </tr>
                <tr>
                    <td><label><b>Email:</b></label></td>
                    <td><input type="email" placeholder="Enter Email" name="email" required>
                </tr>
                <tr>
                    <td>
                        <h3>Profile</h3>
                        <hr>
                    </td>
                </tr>
                <tr>
                    <td><label><b>Gender:</b></label></td>
                    <td><input type="radio" name="gender" value="male"> Male <input type="radio" name="gender" value="female"> Female </td>
                </tr>
                <tr>
                    <td><label><b>Marital Status:</b></label></td>
                    <td><input type="radio" name="status" value="single"> Single <input type="radio" name="status" value="married"> Married<br></tr>
                <tr>
                    <td><label><b>Date of birth:</b></label></td>
                    <td><input type="date" name="date"></td>
                </tr>
                <tr>
                    <td><label><b>State of Origin:</b></label></td>
                    <td><input type="text" name="state"></td>
                </tr>
                <tr>
                    <td><label><b>Home Town:</b></label></td>
                    <td><input type="text" name="town"></td>
                </tr>
                <tr>
                    <td>
                        <h3><b>Qualification</b></h3>
                        <hr>
                    </td>
                </tr>
                <tr>
                    <td>
                        <select name="qualification">
                       <option value = "WAEC">WAEC</option>
                       <option value = "OHD">OND</option>
                       <option value = "HND">HND</option>
                       <option value = "B.Tech">B.Tech</option>
                       <option value = "BSc">BSc</option>
                       <option value = "MSc">MSc</option>
                       <option value = "PHD">PHD</option>
                     </select>
                    </td>
                </tr>
                <tr>
                    <td><label><b>Other Qualification</b></label></td>
                    <td><input type="text" name="other_qualification"></td>
                </tr>
                <tr>
                    <td><label><b>Skills and Abilities:</b></label></td>
                    <td><input type="text" name="skills"></td>
                </tr>
                <tr>
                    <td>
                        <h3>Work Experiences</h3>
                        <hr>
                    </td>
                </tr>
                <tr>
                    <td><label><b>Company:</b></label></td>
                    <td><input type="text" name="company"></td>
                </tr>
                <tr>
                    <td><label><b>Duration:</b></label></td>
                    <td><input type="text" name="duration"></td>
                </tr>
                <tr>
                    <td><label><b>Job Description:</b></label></td>
                    <td><input type="text" name="job">
                    </td>
                </tr>
                <tr>
                    <td><label><b>Upload file:</b></label></td>
                    <td><input type="file" name="images" accept="image/*" required></td>

                </tr>
                <tr>
                    <td><input type="submit" value="submit" name="submit"></td>
                </tr>
            </table>
            <br>
            <hr>
            <br>
        </form>


    </body>

    </html>
