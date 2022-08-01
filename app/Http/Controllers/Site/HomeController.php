<?php

namespace App\Http\Controllers\Site;

use App\Http\Controllers\Controller;
use App\Http\Requests\StoreSite;
use App\Models\AboutUs;
use App\Models\Country;
use App\Models\Service;
use App\Models\Site;
use App\Models\SiteCountry;
use App\Models\SiteType;
use App\Models\Slider;
use Facebook\Facebook;
use FacebookAds\Object\AdAccount;
use FacebookAds\Object\Campaign;
use FacebookAds\Object\AdSet;
use FacebookAds\Object\AdCreative;
use FacebookAds\Object\Ad;
use FacebookAds\Object\AdPreview;
use FacebookAds\Api;
use FacebookAds\Logger\CurlLogger;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\App;
use Illuminate\Support\Facades\Auth;

class HomeController extends Controller
{
    public function index(){
        if(!Auth::check()){
            $data['sliders']  = Slider::all();
            $data['services'] = Service::all();
            $data['about']    = AboutUs::first();
            return view('site.index',compact('data'));
        }
        return redirect('homepage');
    }


    public function homepage(){
        return view('site.HomePage.index');
    }

    public function MySites(){
        $sites = Site::where('user_id',Auth::user()->id)->latest()->get();
        return view('site.my_sites',compact('sites'));
    }

    public function deleteMySite(request $request){
        $site = Site::where([['id',$request->id],['user_id',Auth::user()->id]])->first();
        if($site){
            $site->delete();
            return response()->json(['status' => 200,]);
        }
        else
            return response()->json(['status' => 405,]);
    }

    public function AddSite(){
        $sites = SiteType::orderBy('title_'.App::getLocale(),'ASC')->get();
        $countries = Country::orderBy(App::getLocale().'_name','ASC')->get();
        return view('site.add_site',compact('sites','countries'));
    }

    public function publishMySite(StoreSite $request){
        $site = Site::updateOrCreate([
            'user_id'             => Auth::user()->id,
            'site_type'           => $request->site_type,
            'title'               => $request->title,
            'url'                 => $request->url,
            'total_clicks_limit'  => $request->total_clicks_limit,
            'daily_clicks_limit'  => $request->daily_clicks_limit,
            'points_for_click'    => $request->points_for_click,
        ]);

        foreach ($request->country as $row){
            SiteCountry::create([
                'site_id'    => $site->id,
                'country_id' => $row,
            ]);
        }
        return response()->json([
            'status' => 200,
        ]);
    }

    public function subscription(){
        return view('site.subscription');
    }

    public function buyPoints(){
        return view('site.buy_points');
    }

}
