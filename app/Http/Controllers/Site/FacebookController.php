<?php

namespace App\Http\Controllers\Site;

use App\Http\Controllers\Controller;
use App\Models\Site;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class FacebookController extends Controller
{

    public function facebookShare()
    {
        $preventedIds = Site::AvailableRows()->pluck('id');
        return $preventedIds;
        $sites = Site::where([['user_id', '<>', Auth::id()], ['site_type', 25], ['needed_clicks', '>', 0]])->orderBy('id','DESC')->paginate(5);
        return $sites;
        return view('site.facebook.facebookShare', compact('data'));
    }

}
