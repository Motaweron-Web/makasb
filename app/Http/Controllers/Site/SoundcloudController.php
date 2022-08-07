<?php

namespace App\Http\Controllers\Site;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class SoundcloudController extends Controller
{
    public function index($page){
        if($page == "followers"){
            $data = (new \App\Http\Helper\GlobalSelection)->availableRows(18);
            return view('site.SoundCloud.followers', compact('data'));
        }
        elseif($page == "likes"){
            $data = (new \App\Http\Helper\GlobalSelection)->availableRows(17);
            return view('site.SoundCloud.likes', compact('data'));
        }
        elseif($page == "plays"){
            $data = (new \App\Http\Helper\GlobalSelection)->availableRows(19);
            return view('site.SoundCloud.plays', compact('data'));
        }
        else{
            abort(404);
        }
    }
}
