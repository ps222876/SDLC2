<?php
function datumtijd ($dt){
  return strftime("%e %B %H:%M", strtotime($dt))." uur";
}

$json = file_get_contents('https://www.rijdendetreinen.nl/feed.json');
$meldingen = json_decode($json, true);

$storingen = '';
$werkzaamheden = '';
foreach ($meldingen["items"] as $m) {
  $tekst = '<div class="melding"><p>'.$m["title"].'</p>'.$m["content_text"].'<br/>'.datumtijd($m["date_published"]).'<br/><a target="_blank" href="'.$m["url"].'"><button type="button" class="btn btn-info">Meer info</button></a></div>';
  switch ($m["id"][0]){
    case  'd': $storingen .= $tekst; break;
    default  : $werkzaamheden .= $tekst; break;
  }
}

?>

<!DOCTYPE html>                                              <!-- weerradar  -->
<html lang="nl"> 
<head> 
  <title>Rijdende Treinen </title> 
  <meta charset=utf-8" /> 
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">  
  <link rel="stylesheet" href="rijdendetreinen.css">  
</head> 

<body> 
    <div class="container" > 
        <h1>Rijdende treinen</h1>
        <h2>Storingen</h2>
        <div id="storingen"><?php echo $storingen?></div>
        <h2>Werkzaamheden</h2>
        <div id="werkzaamheden"><?php echo $werkzaamheden?></div>
    </div>
</body> 
</html>
