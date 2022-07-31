@extends('site.layouts.master')
@section('page_name')
    مكاسـب | النقاط
@endsection
@section('site_css')
{{--        <link rel="stylesheet" href="{{asset('assets/site/css')}}/bootstrap.min.css"/>--}}
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@8/swiper-bundle.min.css"/>
    <link rel="stylesheet" href="{{asset('assets/site/css')}}/Conis.css"/>
@endsection
@section('content')
    @include('site.layouts.social-navbar')
    <div class="MainPage d-flex">
        @include('site.HomePage.sidebar')
        <div class=" Home buyPointsss">
            <!--  -->
            <div class="buyPointss">
                <div class="container">
                    <div class="row align-items-center">
                        <div class="col-lg-6 col-md-6 col-sm-12">
                            <div>
                                <img src="{{asset('assets/site/img')}}/Coins-rafiki.svg" alt="">
                            </div>
                        </div>
                        <div class="col-lg-6 col-md-6 col-sm-12">
                            <div class="buyPointB">
                                <h3 class="fs-4 fw-bold">
                                    boost Your promotion and save Your time
                                </h3>
                                <p class="fs-6 mt-lg-3  mb-5 lh-base">
                                    You can choose one of the available payment methods and buy points for Social Media.
                                    For every bundle purchased from Payrexx, Trust Payments and PaymentWall, you will receive <span class="number">30%</span> More Points.
                                    Your bought (+Bonus) points will be added to your account automatically after purchase done.
                                    You will receive confirmation email immediately after we will credit your account.
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="mainHeading text-center pb-5">
                        <h1>
                            <span class="red">B</span>
                            <span class="red">U</span>
                            <span class="red">Y</span>
                            <span class="space"></span>
                            <span >P</span>
                            <span >O</span>
                            <span >I</span>
                            <span >N</span>
                            <span >T</span>
                            <span >S</span>
                        </h1>
                    </div>
                </div>
                <div class="buyPointsPackage">
                    <div class="container  mySwiper">
                        <div class="swiper-wrapper">
                            <div class= "swiper-slide">
                                <a href="#">
                                    <div class="buyPointsPackags">
                                        <div class="ObigetTitle ">
                                            <h2 class="Title">1$</h2>
                                        </div>
                                        <div class="Prise PriseHover">
                                            <span class="prise">200</span>
                                            <span class="Week">Points</span>
                                        </div>
                                    </div>
                                </a>
                            </div>
                            <div class=" swiper-slide">
                                <a href="#">
                                    <div class="buyPointsPackags">
                                        <div class="ObigetTitle">
                                            <h2 class="Title">5$</h2>
                                        </div>
                                        <div class="Prise PriseHover">
                                            <span class="prise">1300</span>
                                            <span class="Week">Points</span>
                                        </div>
                                    </div>
                                </a>
                            </div>
                            <div class=" swiper-slide">
                                <a href="#">
                                    <div class="buyPointsPackags">
                                        <div class="ObigetTitle">
                                            <h2 class="Title">10$</h2>
                                        </div>
                                        <div class="Prise PriseHover">
                                            <span class="prise">2000</span>
                                            <span class="Week">Points</span>
                                        </div>
                                    </div>
                                </a>
                            </div>
                            <div class=" swiper-slide">
                                <a href="#">
                                    <div class="buyPointsPackags">
                                        <div class="ObigetTitle">
                                            <h2 class="Title">25$</h2>
                                        </div>
                                        <div class="Prise PriseHover">
                                            <span class="prise">5000</span>
                                            <span class="Week">Points</span>
                                        </div>
                                    </div>
                                </a>
                            </div>
                            <div class=" swiper-slide">
                                <a href="#">
                                    <div class="buyPointsPackags">
                                        <div class="ObigetTitle">
                                            <h2 class="Title">50$</h2>
                                        </div>
                                        <div class="Prise PriseHover">
                                            <span class="prise">9000</span>
                                            <span class="Week">Points</span>
                                        </div>
                                    </div>
                                </a>
                            </div>
                            <div class=" swiper-slide">
                                <a href="#">
                                    <div class="buyPointsPackags">
                                        <div class="ObigetTitle">
                                            <h2 class="Title">75$</h2>
                                        </div>
                                        <div class="Prise PriseHover">
                                            <span class="prise">14000</span>
                                            <span class="Week">Points</span>
                                        </div>
                                    </div>
                                </a>
                            </div>
                            <div class=" swiper-slide">
                                <a href="#">
                                    <div class="buyPointsPackags">
                                        <div class="ObigetTitle">
                                            <h2 class="Title">100$</h2>
                                        </div>
                                        <div class="Prise PriseHover">
                                            <span class="prise">19000</span>
                                            <span class="Week">Points</span>
                                        </div>
                                    </div>
                                </a>
                            </div>
                            <div class=" swiper-slide">
                                <a href="#">
                                    <div class="buyPointsPackags">
                                        <div class="ObigetTitle">
                                            <h2 class="Title">200$</h2>
                                        </div>
                                        <div class="Prise PriseHover">
                                            <span class="prise">38000</span>
                                            <span class="Week">Points</span>
                                        </div>
                                    </div>
                                </a>
                            </div>
                            <div class=" swiper-slide">
                                <a href="#">
                                    <div class="buyPointsPackags">
                                        <div class="ObigetTitle">
                                            <h2 class="Title">400$</h2>
                                        </div>
                                        <div class="Prise PriseHover">
                                            <span class="prise">75000</span>
                                            <span class="Week">Points</span>
                                        </div>
                                    </div>
                                </a>
                            </div>
                            <div class=" swiper-slide">
                                <a href="#">
                                    <div class="buyPointsPackags">
                                        <div class="ObigetTitle">
                                            <h2 class="Title">700$</h2>
                                        </div>
                                        <div class="Prise PriseHover">
                                            <span class="prise">132000</span>
                                            <span class="Week">Points</span>
                                        </div>
                                    </div>
                                </a>
                            </div>
                            <div class=" swiper-slide">
                                <a href="#">
                                    <div class="buyPointsPackags">
                                        <div class="ObigetTitle">
                                            <h2 class="Title">1000$</h2>
                                        </div>
                                        <div class="Prise PriseHover">
                                            <span class="prise">189000</span>
                                            <span class="Week">Points</span>
                                        </div>
                                    </div>
                                </a>
                            </div>
                            <div class=" swiper-slide">
                                <a href="#">
                                    <div class="buyPointsPackags">
                                        <div class="ObigetTitle">
                                            <h2 class="Title">2000$</h2>
                                        </div>
                                        <div class="Prise PriseHover">
                                            <span class="prise">377000</span>
                                            <span class="Week">Points</span>
                                        </div>
                                    </div>
                                </a>
                            </div>

                        </div>

                    </div>
                </div>
            </div>
        </div>

    </div>

@endsection
@section('site_js')
    <script src="https://cdn.jsdelivr.net/npm/swiper@8/swiper-bundle.min.js"></script>
    <script src="{{asset('assets/site/JS')}}/Conis.js"></script>
    <script>
        $("#navbar-toggler").on("click", function () {
            $(".navTop").toggleClass("active")
        })
    </script>
    <script>
        var swiper = new Swiper(".mySwiper", {
            loop: true,
            spaceBetween: 20,
            pagination: {
                el: ".swiper-pagination",
                clickable: true,
            },
            autoplay: {
                delay: 1500,
                disableOnInteraction: false,
            },
            breakpoints: {
                450: {
                    slidesPerView: 1,
                },
                768: {
                    slidesPerView: 2,
                },
                991: {
                    slidesPerView: 3,
                },
            },
        });
    </script>

@endsection
