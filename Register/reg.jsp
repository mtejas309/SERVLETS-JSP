<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Register</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #yellow;
        margin: 0;
        padding: 0;
        display: flex;
        flex-direction: column;
        align-items: center;
        justify-content: center;
        height: 100vh;
    }

    h1 {
            font-size: 40px;
    color: #ee4844;
    text-align: center;
    margin-bottom: 30px;
    text-shadow: 20px 15px 14px rgba(0, 0, 0, 0.3);
    }

    form {
        background-color: #0dae9c;
    border-radius: 60px;
    box-shadow: 20px 3px 20px 5px rgba(0, 0, 0, 0.2);
    padding: 30px;
    width: 430px;
    }

    label {
        display: block;
        font-weight: NORMAL;
        margin-bottom: 10px;
        color: BLACK;
    }

    input[type="text"],
    input[type="password"],
    input[type="submit"],
    select {
        width: 100%;
        padding: 10px;
        margin-bottom: 20px;
        border: 1px solid #ccc;
        border-radius: 5px;
        color: #333;
    }

    input[type="radio"] {
        margin-right: 5px;
        vertical-align: middle;
    }

    .radio-label {
        display: inline-block;
        font-weight: normal;
        color: WHITE;
    }

    input[type="submit"] {
        background-color: #ff5733;
        color: #fff;
        border: none;
        cursor: pointer;
        transition: background-color 0.3s;
        box-shadow: 0 5px 10px rgba(0, 0, 0, 0.3); /* Button shadow */
    }

    input[type="submit"]:hover {
        background-color: #ff814a;
    }
    h1 {
        font-size: 32px; 
        color: #ff5733; 
        text-align: center;
        margin-bottom: 20px;
        text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.3); 
    }
    
</style>

</head>
<body>

<h1>Register for Health and Fitness Classes</h1>
<form method="get" action="register">
    Name: <input type="text" name="name" placeholder="name"><br/><br/>
    Email: <input type="text" name="email" placeholder="email"><br/><br/>
    Password: <input type="password" name="pass" placeholder="password"><br/><br/>
    Gender:
    <label for="male" class="radio-label">
        <input type="radio" name="gender" value="male" id="male">
        Male
    </label>

    <label for="female" class="radio-label">
        <input type="radio" name="gender" value="female" id="female">
        Female
    </label><br/><br/>

    <label for="city">City:</label>
    <select id="city" name="city">
     <option></option>
        <option value="BANGALORE">BANGALORE</option>
        <option value="MUMBAI">MUMBAI</option>
        <option value="CHENNAI">CHENNAI</option>
        <option value="KOCHI">KOCHI</option>
    </select>
    <br/><br/>
    <input type="submit" value="Submit">
</form>

</body>
</html>
