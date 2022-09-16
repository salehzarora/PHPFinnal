<?php
$serverName = "localhost";
$dBUsername = "root";
$dBPassword = "";
$dBName = "gym" ;

$conn = mysqli_connect($serverName, $dBUsername, $dBPassword, $dBName); 

include_once 'gymdb.inc.php';
include_once 'functions.inc.php';









// Add Workers

if(isset($_POST['add']))
{

    if(!empty($_POST['userid']) && !empty($_POST['salary']))
    {

    session_start();

    $userid=$_POST["userid"];
    $salary=$_POST["salary"];


    $query = "UPDATE `users` SET `isWorker` = '1' , `Salary`= '$salary' WHERE `users`.`usersId` = '$userid'";

        $run = mysqli_query($conn,$query) or die(mysqli_error());

        if($run){
            header("location: ../addworkers.php?");
            echo "worker add !";
        }
        else{
            echo "something wrong! :(";
        }



    }

}




// off Duty

if(isset($_POST['remove']))
{

    session_start();
    $userid=$_POST["userid"];
    
    $query = "UPDATE `users` SET `isWorker` = NULL , `Salary`= NULL WHERE `users`.`usersId` = '$userid'";

        $run = mysqli_query($conn,$query) or die(mysqli_error());

        if($run){
            header("location: ../addworkers.php?");
            echo "worker removed !";
        }
        else{
            echo "something wrong! :(";
        }



    

}