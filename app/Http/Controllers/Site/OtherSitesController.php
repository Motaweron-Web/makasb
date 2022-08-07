<?php

namespace App\Http\Controllers\Site;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class OtherSitesController extends Controller
{
    public function index($page){
        if($page == "redditUpvotes"){
            $data = (new \App\Http\Helper\GlobalSelection)->availableRows(29);
            return view('site.OtherSites.redditUpvotes', compact('data'));
        }
        elseif($page == "redditMembers"){
            $data = (new \App\Http\Helper\GlobalSelection)->availableRows(30);
            return view('site.OtherSites.redditMembers', compact('data'));
        }
        elseif($page == "telegram"){
            $data = (new \App\Http\Helper\GlobalSelection)->availableRows(28);
            return view('site.OtherSites.telegram', compact('data'));
        }
        elseif($page == "pinterestSave"){
            $data = (new \App\Http\Helper\GlobalSelection)->availableRows(14);
            return view('site.OtherSites.pinterestSave', compact('data'));
        }
        elseif($page == "pinterestFollowers"){
            $data = (new \App\Http\Helper\GlobalSelection)->availableRows(15);
            return view('site.OtherSites.pinterestFollowers', compact('data'));
        }
        elseif($page == "vkontakteGroups"){
            $data = (new \App\Http\Helper\GlobalSelection)->availableRows(20);
            return view('site.OtherSites.vkontakteGroups', compact('data'));
        }
        elseif($page == "vkontaktePages"){
            $data = (new \App\Http\Helper\GlobalSelection)->availableRows(21);
            return view('site.OtherSites.vkontaktePages', compact('data'));
        }
        elseif($page == "okGroup"){
            $data = (new \App\Http\Helper\GlobalSelection)->availableRows(22);
            return view('site.OtherSites.okGroup', compact('data'));
        }
        elseif($page == "Reverbnation"){
            $data = (new \App\Http\Helper\GlobalSelection)->availableRows(23);
            return view('site.OtherSites.Reverbnation', compact('data'));
        }
        else{
            abort(404);
        }
    }
}
