<?php
namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;

CONST ALLES = array(
	"Ger Willems",
	"Enno Dijkstra",
	"JM Osinga",
	"Jan van Wijngaarden",
	"Wim Reudink",
	"Rico Schaap",
	"Elly Stender",
	"Lieke Visser",
	"Tom Grobben",
	"Piet Terlouw",
	"Kees van Mierlo",
	"Tim Roelens");

class NamenController extends Controller
{
    public $lijst = array();

    public function initdata()
    {
        if (Storage::disk('local')->exists('lijst.txt')) {
            $this->lijst = json_decode(Storage::disk('local')->get('lijst.txt'));
        } else {
            Storage::disk('local')->put('lijst.txt', json_encode(ALLES));
            $this->lijst = ALLES;
        }
    }

    public function savedata()
    {
        Storage::disk('local')->put('lijst.txt', json_encode($this->lijst));
    }

    public function index()
    {
        $this->initdata();
        return response()->json(["namen"=>$this->lijst], 200);
    }

    public function store(Request $request)
    {
       $naam = $request->input('naam');
       $this->initdata();
       array_push($this->lijst, $naam);
       $this->savedata();
    }

    public function show($id)
    {
        $this->initdata();
        if (count($this->lijst) <= 0) return response('{"id":"niet gevonden"}', 404);
        if (filter_var($id, FILTER_VALIDATE_INT) === false) return response('{"id":"incorrect"}', 400);

        if ($id >= count($this->lijst)) $id = count($this->lijst) - 1;
        if ($id < 0 ) $id = 0;
        return response()->json(["id"=>$id, "naam" =>$this->lijst[$id]], 200);
    }

    public function update(Request $request, $id)
    {
        $this->initdata();
        if (count($this->lijst) <= 0) return response('{"id":"niet gevonden"}', 404);
        if (filter_var($id, FILTER_VALIDATE_INT) === false) return response('{"id":"incorrect"}', 400);
        if ($id >= count($this->lijst)) return response('{"id":"niet gevonden"}', 404);
        if ($id < 0 ) return response('{"id":"incorrect"}', 400);

      //  header('Access-Control-Allow-Origin: *');
        $naam = $request->input('naam');
        $this->lijst[$id] = $naam;
        $this->savedata();
    }

    public function destroy($id)
    {
        $this->initdata();
        if ($id < 0 || count($this->lijst) <= $id) return exit_melding(400, "parameter id incorrect");
  
        array_splice($this->lijst, $id, 1);
        Storage::disk('local')->put('lijst.txt', json_encode($this->lijst));
    }
}
