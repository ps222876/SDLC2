const api = 'https://www.rijdendetreinen.nl/feed.json'
//const api = 'http://localhost/proxytreinen.php'


;(async () => {
    let storingen = ''
    let werkzaamheden = ''
    const response = await fetch(api)
    const meldingen = await response.json()
    meldingen.items.forEach(m => {
        const tekst = `<div class="melding"><p>${m.title}</p>${m.content_text}<br/>${datumtijd(m.date_published)}<br/><a target="_blank" href="${m.url}"><button type="button" class="btn btn-info">Meer info</button></a></div>`
        switch(m.id[0]){
            case 'd': storingen += tekst; break;
            default : werkzaamheden += tekst; break;
        }
    })
    console.log(storingen)
    document.getElementById("storingen").innerHTML = storingen
    document.getElementById("werkzaamheden").innerHTML = werkzaamheden
})()

const datumtijd = (dt) => {
    const d = new Date(dt);
    const options = { month: 'long', day: 'numeric', hour: 'numeric', minute: 'numeric' };
    return d.toLocaleString("nl-NL", options)+" uur";        
}

