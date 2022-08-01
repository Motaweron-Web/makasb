<?php

namespace App\Http\Controllers\Site;

use App\Http\Controllers\Controller;
use App\Http\Helper\GlobalSelection;
use App\Models\Site;
use App\Models\SiteInfo;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class FacebookController extends Controller
{

    public function facebookShare()
    {
        // Show Only Rows That doesn't reach to today's limit and user didn't watch it yet
        // and needed clicks more than 0
        $data = (new \App\Http\Helper\GlobalSelection)->availableRows(25);
        return view('site.facebook.facebookShare', compact('data'));
    }

    public function facebookFollowers()
    {
        $data = (new \App\Http\Helper\GlobalSelection)->availableRows(26);
        return view('site.facebook.facebook-followers', compact('data'));
    }

    public function facebookPostLike()
    {
        $data = (new \App\Http\Helper\GlobalSelection)->availableRows(27);
        return view('site.facebook.facebook-post-like', compact('data'));
    }

    public function facebookPostShare(){
        $data = (new \App\Http\Helper\GlobalSelection)->availableRows(24);
        return view('site.facebook.facebookPostShare', compact('data'));
    }

    public function checkUserView(request $request)
    {
        $site = Site::find($request->site_id);
        SiteInfo::create([
            'site_id' => $request->site_id,
            'user_id' => Auth::guard('user')->id(),
        ]);
        $site->decrement('needed_clicks', 1);
        User::find(Auth::guard('user')->id())->increment('balance', $site->points_for_click);
        User::find($site->user_id)->decrement('balance', $site->points_for_click);
        return response()->json([
            'status' => 200,
            'row_id' => $site->id,
            'btn_src' => $site->url,
            'points' => $site->points_for_click,
        ]);
    }

}
