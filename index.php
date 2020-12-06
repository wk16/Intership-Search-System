<!DOCTYPE html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<link rel="stylesheet" type="text/css" href="main.css">
<link href='https://fonts.googleapis.com/css?family=Comfortaa' rel='stylesheet'>
<style>
    body {
        margin: revert;
    }
    .col-md-6 {
        color: #000;
        background: #fff;
        margin: 10px;
        padding: 0px 15px 15px 15px;
        border: 2px solid #aaa;
        border-radius: 10px;
    }
    label {
        font-size: 16px;
    }
    * {
        color: black;
    }
</style>
</head>
<body>
    
    <?php
        error_reporting(-1);
        ini_set('display_errors', 1);
        ini_set('display_startup_errors', 1);
        include 'dbconnect.php';
        include 'skill.php';
        $skills = getSkills();
        $dropdown = '';
        foreach ($skills as $s) {
            $dropdown = $dropdown . '<option value="' . $s . '">' . $s . '</option>';
        }
        $dropdown = $dropdown . '</select>';
    ?>
    
    <h1 style="font-family:'Comfortaa'; color: white; font-size: 42px">intern-port</h1>
    
    <div class="row">
        <div class="col-md-6" id="sign-in" style="flex: 0 0 30%;">
            <br>
            <h1>Sign in</h1><br>
            <form action="main.php" method="GET">
                <label>Your User ID: </label><input type="text" name="uid"><br>
                <br><input type="submit" value="Submit">
            </form> 
        </div>
        
        <div class="col-md-6" id="create-profile" style="flex: 0 0 60%;">
            <br>
            <h1>Create a Profile</h1>
            <form action="main.php" method="GET">
                <label>Name: </label><input type="text" name="name"><br>
                <label>University: </label><input type="text" name="university"><br>
                <label>Degree: </label><input type="text" name="degree"><br>
                <label>Major: </label><input type="text" name="major"><br>
                <label>Year: </label><input type="number" name="year"> (freshman = 1, sophomore = 2, etc.)<br>
                <label>GPA: </label><input type="text" name="GPA"><br>
                <br>
                <b>Skills (enter up to 5):</b><br>
                <?php
                echo '<select name="skill1">' . $dropdown . ' with <input type="number" class="years" min="0" step="1" name="years1"> years experience<br>';
                echo '<select name="skill2">' . $dropdown . ' with <input type="number" class="years" min="0" step="1" name="years2"> years experience<br>';
                echo '<select name="skill3">' . $dropdown . ' with <input type="number" class="years" min="0" step="1" name="years3"> years experience<br>';
                echo '<select name="skill4">' . $dropdown . ' with <input type="number" class="years" min="0" step="1" name="years4"> years experience<br>';
                echo '<select name="skill5">' . $dropdown . ' with <input type="number" class="years" min="0" step="1" name="years5"> years experience<br>';
                ?>
                <br>Are you authorized to work in the US? <input type="checkbox" name="authorized"><br>
                <input type="submit" value="Submit"><br>
            </form>
        </div>
    </div>
    
</body>
</html>