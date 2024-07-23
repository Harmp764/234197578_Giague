<!DOCTYPE html>
<html>
<head>
    <title>Simple Form Example</title>
</head>
<body>
    <h2>Enter Your Information</h2>
    <form method="post" action="<?php echo $_SERVER['PHP_SELF']; ?>">
        <label>Name:</label><br>
        <input type="text" name="name"><br><br>
        
        <label>Age:</label><br>
        <input type="text" name="age"><br><br>
        
        <label>Identity:</label><br>
        <input type="text" name="identity"><br><br>
        
        <input type="submit" value="Submit">
    </form>
    
    <?php
    
    if ($_SERVER["REQUEST_METHOD"] == "POST") {
        // Collect and sanitize user input
        $name = htmlspecialchars($_POST['name']);
        $age = htmlspecialchars($_POST['age']);
        $identity = htmlspecialchars($_POST['identity']);
        
       
        echo "<h2>Welcome, $name!</h2>";
        echo "<p>Age: $age</p>";
        echo "<p>Identity: $identity</p>";
    }
    ?>
</body>
</html>
