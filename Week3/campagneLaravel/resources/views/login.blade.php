<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="styles/opmaak.css">
    <title>De Campagne</title>
</head>
<body>
    <form method="post" action="login">	  
        @csrf;             
        <p>Meld u aan om een blog te schrijven</p>
        <div>gebruikersnaam:</div><input type="text"  name="gebruikersnaam" autofocus /><br/>
        <div>wachtwoord: </div><input type="password" name="wachtwoord" /><br/><br/>
        <button type="submit">OK</button>
    </form>    
    <form method="get" action="{{url('/')}}">	               
        <button type="submit">Annuleren</button><br/><br/>
    </form>  
	<footer>&copy; 2021 De Campagne</footer>      
</body>
</html>