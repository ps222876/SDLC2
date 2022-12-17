<?php
namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Nieuws;
use App\Models\Personeel;

class CampagneController extends Controller
{

    /**   Haal nieuwsberichten op en toon deze.
        * @method index  
        * @var nieuws krijgt alle nieuwsberichten
        * @var item krijgt geselecteerde nieuwsbericht (of default de eerste)
        * @var auteur krijgt geselecteerde auteur
        * @var ingelogd krijgt sessiewaarde ingelogd
        * @var personeelsNaam krijgt sessiewaarde personeelsNaam
        * @param  id (default null)
        * @return view nieuws
     */

    public function index($id = null){
        $nieuws = Nieuws::all();
        $item = ($id == null) ? Nieuws::first() : Nieuws::find($id);
        $auteur = Personeel::select('naam', 'voorletter')->where('ID', $item->gebruikersID)->first();
        $ingelogd = session("ingelogd", false);
        $personeelsNaam = session('personeelsNaam', 'niemand');
        return view('nieuws', ['nieuws' => $nieuws, 'item' => $item, 'auteur' => $auteur, 'ingelogd' => $ingelogd, 'personeelsNaam' => $personeelsNaam]);
    }

    /**   Toon de pagina voor de blog schrijver
        * @method blog  
        * @var 
        * @param  
        * @return view blog
     */

    public function blog(){
        return view('blog', ['ingelogd' => session('ingelogd', false), 'personeelsNaam' => session('personeelsNaam', 'nop')]);
    }

    /**   Voeg een nieuwe blog toe aan de database
        * @method nieuw  
        * @var 
        * @param  request data
        * @return 
     */

    public function nieuw(Request $request){
        if (session('ingelogd')){
            $nieuws = new Nieuws();
            $nieuws->gebruikersID = session('gebruikersID', null);
            $nieuws->titel        = $request->titel;
            $nieuws->inhoud       = $request->artikel;
            $nieuws->save();
        }
        return redirect('/');
    }

    /**   Verwijder een blog uit de database
        * @method verwijder  
        * @var 
        * @param  id van de blog
        * @return 
     */

    public function verwijder($id){
        Nieuws::destroy($id);
        return redirect('/');
    }

    /**   Sla bestand op in de img map
        * @method bestand  
        * @var 
        * @param  request data
        * @return 
     */

    public function bestand(Request $request){
        $request->validate([
            'bestand' => 'required|mimes:csv,txt,png,jpg,jpeg,php,pdf,html,htm'
        ]);
        $naam = $request->bestand->getClientOriginalName();
        $request->bestand->move(public_path('img'), $naam);
        return redirect('/');
   }    
}
