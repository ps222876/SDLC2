<!DOCTYPE html>
<html lang="nl"> 
  <head>
    <link rel="stylesheet" href="styles/opmaak.css">
    <title>De Campagne</title>
  </head>

  <body>
  <main>
	<img id="logo" src="img/logo.jpg" /> 
	<nav> &nbsp; </nav>
	<article>
		@if ($ingelogd) 
		<h2 >Welkom {{$personeelsNaam}}</h2> 
			<form method="post" action="blog">	
				@csrf
				<p>Schrijf uw blog</p>
				<div>Title:   </div><textarea cols="50" rows="1" name="titel" autofocus ></textarea><br/>
				<div>Article: </div><textarea cols="50" rows="8" name="artikel"></textarea><br/><br/>
				<button type="submit">OK</button>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<button formaction="{{url('/')}}" type="submit">Annuleren</button><br/><br/>
			</form>	
			<form method="post" action="bestand" enctype="multipart/form-data">
				@csrf
				<p>Upload een afbeelding</p>
				<br/> <input type="file" name="bestand" /><br/><br/>
				<button  type="submit">Uploaden</button> 
			</form>	
			<br/>
		@else    
		<h2 >Welkom </h2> 
			<form method="post" action="login">	
				@csrf              
				<p>Meld u aan om een blog te schrijven</p>
				<div>gebruikersnaam:</div><input type="text"  name="gebruikersnaam" autofocus /><br/>
				<div>wachtwoord: </div><input type="password" name="wachtwoord" /><br/><br/>
				<button type="submit">OK</button>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<button formaction="" type="submit">Annuleren</button><br/><br/>
			</form>
		@endif  
    </article>
	<div class="clearboth"></div>
	<footer>&copy; 2021 De Campagne</footer>
  </main>
  </body>
</html>