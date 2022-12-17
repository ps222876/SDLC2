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
<main>
    <img id="logo" src="img/logo.jpg" />  
    <nav><br/>
    @foreach ($nieuws as $n)
        @if ($ingelogd)
            <a href='verwijder/{{$n->ID}}'><button>Verwijder</button></a>&nbsp;&nbsp;&nbsp;
        @endif
        <a href='{{$n->ID}}'>{{$n->titel}}</a>
        <br><br>
    @endforeach
    <a href="blog">Nieuwe blog</a>
    @if ($ingelogd)
        <form><button formaction='logout' type='submit'>{{$personeelsNaam}} afmelden</button></form><br/> 
    @endif
    </nav>
    <article>
    <h2 id="titel">{{$item->titel}}</h2>
    <p> {!!$item->inhoud!!} </p>
    </article>
    <div class="clearboth"></div>
    <footer>	  
        Auteur: {{$auteur->voorletter}} {{$auteur->naam}} &nbsp; &copy; 2021 De Campagne
    </footer>
</main>  
</body>
</html>