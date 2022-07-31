@extends('site.layouts.master')
@section('page_name')
    مكاسـب | فيسـبوك
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
        <div class="Home Share">
            <div class="container sectionHight">
                <div class="row  align-items-center">
                    <div class="col-lg-6 col-md-6 col-sm-12">
                        <div><img src="{{asset('assets/site/img')}}/Smiley face-amico.svg" alt=""></div>
                    </div>
                    <div class="col-lg-6 col-md-6 col-sm-12">
                        <div class="shareBox">
                            <h3 class="fs-4 fw-bold TitlePage"> Facebook Share</h3>
                            <h3 class="fs-5 fw-bold TitlePage2">get FREE points by liking, following and etc. other profiles/posts</h3>
                            <p class="fs-6 mt-lg-3 lh-lg">
                                To get free points by sharing other's WebSites click on the "Share" button, then the
                                page will be opened with popUp and after sharing the website the popUp will be closed
                                automatically.
                            </p>
                            <div>
                                <button class="mainButton"><a href="{{route('publishMySite')}}">
                                        Get Facebook Share
                                    </a></button>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
            <div class="container sectionHight2">
                @if($data->count())
                <div class="table">
                    <table class="table-bordered table">
                        <tr>
                            <th>Points</th>
                            <th>Name</th>
                            <th></th>
                            <th></th>
                        </tr>
                        @foreach($data as $row)
                            <tr id="row{{$row->id}}">
                                <td>{{$row->points_for_click}}</td>
                                <td>{{$row->title}}</td>
                                <td>
                                    <div class="text-center">
                                        <button data-url="{{$row->url}}" class="Deletes customBtn myShareBtn">Share</button>
                                    </div>
                                </td>
                                <td>
                                    <div class="text-center">
                                        <button class="Delete customBtn skipBtn" data-url="{{$row->url}}" data-id="{{$row->id}}">skip</button>
                                    </div>
                                </td>
                            </tr>
                        @endforeach
                    </table>
                    {!! $data->links() !!}
                </div>
{{--                        <iframe id="frame" src="">--}}
{{--                        </iframe>--}}
                    <iframe src="" id="frame" style="border:none;overflow:hidden" scrolling="no" frameborder="0" allowfullscreen="true" allow="autoplay; clipboard-write; encrypted-media; picture-in-picture; web-share"></iframe>
                @else
                    @include('site.layouts.empty_data')
                @endif
            </div>
            <style>
                .customBtn{
                    font-size: 18px;
                    display: inline-block;
                    padding: 10px 15px;
                    color: #fff;
                }
                iframe {
                    display: block;       /* iframes are inline by default */
                    border: none;         /* Reset default border */
                    height: 100vh;        /* Viewport-relative units */
                    width: 84vw;
                }
            </style>
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
        var frameOfPage = $("#frame");
        $(".myShareBtn").click(function () {
            var url = $(this).attr('data-url');
            frameOfPage.attr("src", url);
        });

        $(".skipBtn").click(function () {
            var id = $(this).attr('data-id'),
                frameSrc = frameOfPage.attr('src'),
                btnSrc = $(this).attr('data-url');
            $("#row"+id).fadeOut();
            if(frameSrc === btnSrc){
                frameOfPage.attr("src", '');
            }
            toastr.success('تم تخطي المنشور');
        });


    </script>

@endsection
