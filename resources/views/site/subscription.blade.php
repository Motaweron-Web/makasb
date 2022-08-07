@extends('site.layouts.master')
@section('page_name')
    مكاسـب | الاشتراكات
@endsection
@section('site_css')
    {{--    <link rel="stylesheet" href="{{asset('assets/site/css')}}/bootstrap.min.css"/>--}}
    @if(\Illuminate\Support\Facades\App::getLocale() == 'en')
        <link rel="stylesheet" href="{{asset('assets/site/css')}}/Conis.css"/>
    @else
        <link rel="stylesheet" href="{{asset('assets/site/css')}}/conis_ar.css"/>
    @endif
@endsection
@section('content')
    @include('site.layouts.social-navbar')
    <div class="MainPage d-flex">
        @include('site.HomePage.sidebar')
        <div class=" Home ">
            <div class="Subscription">
                <div class="mainHeading text-center">
                    <h1>
                        <span class="red">S</span>
                        <span class="red">U</span>
                        <span class="red">B</span>
                        <span class="red">S</span>
                        <span class="red">C</span>
                        <span class="red">R</span>
                        <span class="red">I</span>
                        <span class="red">P</span>
                        <span class="red">T</span>
                        <span class="red">I</span>
                        <span class="red">O</span>
                        <span class="red">N</span>
                    </h1>
                </div>
                <div
                    id="carouselExampleDark"
                    class="carousel carousel-dark slide container"
                    data-bs-ride="carousel"
                >
                    <div class="carousel-indicators">
                        <button
                            type="button"
                            class="active"
                            data-bs-target="#carouselExampleDark"
                            data-bs-slide-to="0"
                            aria-current="true"
                            aria-label="Slide 1"
                        ></button>
                        <button
                            type="button"
                            data-bs-target="#carouselExampleDark"
                            data-bs-slide-to="1"
                            aria-label="Slide 2"
                        ></button>
                        <button
                            type="button"
                            data-bs-target="#carouselExampleDark"
                            data-bs-slide-to="2"
                            aria-label="Slide 3"
                        ></button>
                        <button
                            type="button"
                            data-bs-target="#carouselExampleDark"
                            data-bs-slide-to="3"
                            aria-label="Slide 4"
                        ></button>
                    </div>
                    <div class="carousel-inner">
                        <div
                            class="row carousel-item active align-items-center justify-content-center"
                            data-bs-interval="30000"
                        >
                            <div class="col-lg-6 col-md-6 col-sm-12 mb-5">
                                <img src="{{asset('assets/site/img')}}/Business Plan-cuate.svg" alt="" />
                            </div>
                            <div class="col-md-6 col-sm-12 homeInfo">
                                <h1 class="fs-4 fw-bold">
                                    What is a subscription and how does it work?
                                </h1>
                                <p class="fs-6 mt-lg-3  mb-5 lh-base conisP">
                                    The concept of the subscription is getting unlimited points
                                    during the subscription period and simultaneously promoting
                                    some amount of links depending on your subscription package.
                                    <span class="Note"
                                    >Note Once your initial subscription period is expired, your
                      subscription will be automatically renewed. You can cancel
                      the automatic billing any time. Depending on the payment
                      method you will be charged fixed time period (exmpl. for
                      Credit Cards it's one year), then if you want you can
                      subscribe again. You can subscribe to a plan with more
                      features or cancel it any time (downgrade is not supported
                      here).
                    </span>
                                </p>
                            </div>
                        </div>
                        <!--  -->
                        <div
                            class="row carousel-item align-items-center justify-content-center"
                            data-bs-interval="20000"
                        >
                            <div class="col-lg-6 col-md-6 col-sm-12 mb-5">
                                <img src="{{asset('assets/site/img')}}/Finance leaders-rafiki.svg" alt="" />
                            </div>
                            <div class="col-md-6 col-sm-12 homeInfo">
                                <h1 class="fs-4 fw-bold">
                                    What is a simultaneous links count?
                                </h1>
                                <p class="fs-6 mt-lg-3 lh-base  mb-5 conisP">
                                    It means that you can add unlimited links, but you can promote
                                    only restricted amount of links at the same time for all
                                    packs.
                                </p>
                            </div>
                        </div>
                        <!--  -->
                        <div
                            class="row carousel-item align-items-center justify-content-center"
                            data-bs-interval="10000"
                        >
                            <div class="col-lg-6 col-md-6 col-sm-12 mb-5">
                                <img src="{{asset('assets/site/img')}}/Finance leaders-pana.svg" alt="" />
                            </div>
                            <div class="col-md-6 col-sm-12 homeInfo">
                                <h1 class="fs-4 fw-bold">
                                    What is unlimited bought points count?
                                </h1>
                                <p class="fs-6 mt-lg-3 lh-base  mb-5 conisP">
                                    During the subscription period you can forget about points
                                    count, because you will have unlimited points. You can
                                    continue to get free points and participate in an affiliate
                                    programm. After the end of the subscription period you can use
                                    them as usual. During the subscription period you can't use
                                    your points for other links.
                                </p>
                            </div>
                        </div>
                        <div
                            class="row carousel-item align-items-center justify-content-center"
                            data-bs-interval="10000"
                        >
                            <div class="col-lg-6 col-md-6 col-sm-12 mb-5">
                                <img src="{{asset('assets/site/img')}}/Credit assesment-pana.svg" alt="" />
                            </div>
                            <div class="col-md-6 col-sm-12 homeInfo">
                                <h1 class="fs-4 fw-bold">
                                    Under which CPC will my links be displayed?
                                </h1>
                                <p class="fs-6 mt-lg-3 lh-base conisP">
                                    The CPC for all links, during the subscription period, will be
                                    displayed 50. It will give you a maximum performance for your
                                    campaigns.
                                </p>
                            </div>
                        </div>
                    </div>
                    <button
                        class="carousel-control-prev"
                        type="button"
                        data-bs-target="#carouselExampleDark"
                        data-bs-slide="prev"
                    ></button>
                    <button
                        class="carousel-control-next"
                        type="button"
                        data-bs-target="#carouselExampleDark"
                        data-bs-slide="next"
                    ></button>
                </div>
                <section class="section  tables">
                    <div class="container">

                        <div class="row">
                            <div class="col-lg-4 col-md-6 col-sm-12">
                                <div class="tableBox">
                                    <div class="tableBoxTop">
                                        <div class="ObigetTitle">
                                            <h2 class="Title">SILVER</h2>
                                        </div>
                                        <div class="Prise">
                                            <span class="prise"><sup class="doller">$</sup>159<sub class="Nextprise text-white-50">$199</sub></span>
                                            <span class="Week">/Week</span>
                                        </div>
                                    </div>
                                    <div class="tableBoxDown">
                                        <h4>Simultaneous Active Links Count <span>3</span></h4>
                                        <h4>Bought Points Count <span>unlimited</span></h4>
                                        <h4>Billing Period <span>weekly</span></h4>

                                    </div>
                                    <div class="text-center mb-3">
                                        <button class="mainButton"><a href="">Buy Now</a></button>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-4 col-md-6 col-sm-12">
                                <div class="tableBox">
                                    <div class="tableBoxTop">
                                        <div class="ObigetTitle">
                                            <h2 class="Title">GOLD</h2>
                                        </div>
                                        <div class="Prise">
                                            <span class="prise"><sup class="doller">$</sup>459<sub class="Nextprise text-white-50">$499</sub></span>
                                            <span class="Week">/Week</span>
                                        </div>
                                    </div>
                                    <div class="tableBoxDown">
                                        <h4>Simultaneous Active Links Count <span>10</span></h4>
                                        <h4>Bought Points Count <span>unlimited</span></h4>
                                        <h4>Billing Period <span>weekly</span></h4>

                                    </div>
                                    <div class="text-center mb-3">
                                        <button class="mainButton"><a href="">Buy Now</a></button>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-4 col-md-6 col-sm-12">
                                <div class="tableBox">
                                    <div class="tableBoxTop">
                                        <div class="ObigetTitle">
                                            <h2 class="Title">PLATINUM</h2>
                                        </div>
                                        <div class="Prise">
                                            <span class="prise"><sup class="doller">$</sup>959<sub class="Nextprise text-white-50">$999</sub></span>
                                            <span class="Week">/Week</span>
                                        </div>
                                    </div>
                                    <div class="tableBoxDown">
                                        <h4>Simultaneous Active Links Count <span>25</span></h4>
                                        <h4>Bought Points Count <span>unlimited</span></h4>
                                        <h4>Billing Period <span>weekly</span></h4>

                                    </div>
                                    <div class="text-center mb-3">
                                        <button class="mainButton"><a href="">Buy Now</a></button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </section>
            </div>
        </div>

    </div>
    <br>
@endsection
@section('site_js')
    <script src="{{asset('assets/site/JS')}}/Conis.js"></script>
    <script>
        $("#navbar-toggler").on("click", function () {
            $(".navTop").toggleClass("active")
        })
    </script>
@endsection
