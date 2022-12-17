<?php
namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Gebruiker;
use App\Models\Personeel;

class LoginController extends Controller
{
    public function login(Request $request){
        $gebruikersnaam = $request->input('gebruikersnaam');
        $wachtwoord = $request->input('wachtwoord');
        $gebruiker = Gebruiker::where('gebruikersnaam', $gebruikersnaam)->where('wachtwoord', md5($wachtwoord))->first();
        if ($gebruiker != null){
            session(['ingelogd' => true]);
            session(['personeelsID' => $gebruiker->personeelsID]);
            session(['gebruikersID' => $gebruiker->ID]);
            session(['personeelsNaam' =>  Personeel::find($gebruiker->ID)->naam]);
        }
        else {
            session()->invalidate();
        }
        return view('blog', ['ingelogd' => session('ingelogd', false), 'personeelsNaam' => session('personeelsNaam', 'nop')]);
    }

    public function logout(){
        session()->invalidate();
        return redirect('/');
    }  
}
