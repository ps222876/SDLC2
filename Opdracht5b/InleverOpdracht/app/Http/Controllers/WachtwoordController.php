<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;

class WachtwoordController extends Controller
{
    public function nieuw(Request $request)
    {
        $wachtwoord = $request->input('wachtwoord');
        $hash = Hash::make($wachtwoord);
        session(['hash' => $hash]);
        return view(
            'wachtwoord',
            ['hash' => session('hash', '?'), 'correct' => true]
        );
    }

    public function index(Request $request)
    {
        $wachtwoord = $request->input('wachtwoord');
        $correct = Hash::check($wachtwoord, session('hash', '?'));
        return view(
            'wachtwoord',
            ['hash' => session('hash', '?'), 'correct' => $correct]
        );
    }
}
