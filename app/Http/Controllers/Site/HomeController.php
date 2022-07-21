<?php

namespace App\Http\Controllers\Site;

use App\Http\Controllers\Controller;
use App\Models\AboutUs;
use App\Models\Service;
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

class HomeController extends Controller
{
    public function index(){
        $data['sliders']  = Slider::all();
        $data['services'] = Service::all();
        $data['about']    = AboutUs::first();
        return view('site.index',compact('data'));
    }


//    public function test(){
//        $app_secret = '02847be922c45072240be874ed4bbad6';
//        $app_id = '397770562361403';
//
//        try {
//            // Returns a `Facebook\FacebookResponse` object
//            $fb = new Facebook();
//            $response = $fb->get(
//                '/kayan.tech1/posts',
//                'EAAFpxS0SWDsBAMo6zecwZC7hz7wMPvwSzhKsMQ6H30cXwrzNurNwTt9TEtGcgZAIJbkQ2u1BZBH8kkb4pb7fPlnEoJ3Y4dyjAJWCo8eZB8nyPe5Afo3AeFbAK6oBJyfnULIftBfoNqHOAFercDqdbR93y0OhZAQui2z9UqnNvdsI1ZA6gUucZCZB9K1J3l6sJfqmj4cOWq7gSgZDZD'
//            );
//        } catch(Facebook\Exceptions\FacebookResponseException $e) {
//            echo 'Graph returned an error: ' . $e->getMessage();
//            exit;
//        } catch(Facebook\Exceptions\FacebookSDKException $e) {
//            echo 'Facebook SDK returned an error: ' . $e->getMessage();
//            exit;
//        }
//        $graphNode = json_decode($response->getGraphEdge());
//        return $graphNode;
//    }
}
