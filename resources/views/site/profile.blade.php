@extends('site.layouts.master')
@section('page_name')
    مكاسـب | حسابي
@endsection
@section('site_css')
    {{--            <link rel="stylesheet" href="{{asset('assets/site/css')}}/bootstrap.min.css"/>--}}
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@8/swiper-bundle.min.css"/>
    @if(\Illuminate\Support\Facades\App::getLocale() == 'en')
        <link rel="stylesheet" href="{{asset('assets/site/css')}}/Conis.css"/>
    @else
        <link rel="stylesheet" href="{{asset('assets/site/css')}}/conis_ar.css"/>
    @endif
@endsection
@section('content')
    @include('site.layouts.social-navbar')
    <div class="MainPage d-flex">
        @include('site.layouts.sidebar')
        <div class="Home profile">
            <div class="card">
                <div class="iconProfile">
                    <a class="active" href="#" data-show="Basic"><i class="fa-solid fa-user"></i></a>
                    <a href="#" data-show="ChangePassword"><i class="fa-solid fa-lock"></i></a>
                    <a href="#" data-show="DeleteEmail"><i class="fa-solid fa-trash"></i></a>
                </div>

                <div class="Bro">
                    <div class="card-body active" id="Basic">
                        <h4 class="card-title TitleBasic">Basic Information</h4>
                        <div class="row form-row">
                            <div class="col-md-12">
                                <div class="form-group">
                                    <div class="change-avatar">
                                        <div class="profile-img"><img src="{{asset('assets/site')}}/img/pic1.png" alt="User" class="hoverZoomLink">
                                        </div>
                                        <div class="upload-img">
                                            <div class="change-photo-btn"><span><i class="fa fa-upload"></i> Upload
                                                    Photo</span><input type="file" class="upload"></div><small
                                                class="form-text text-muted">Allowed JPG, GIF or PNG. Max size of
                                                2MB</small>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6 col-sm-6">
                                <div class="form-group"><label>Username <span class="text-danger">*</span></label><input
                                        type="text"  id="Username" class="form-control"  disabled></div>
                            </div>
                            <div class="col-md-6 col-sm-6">
                                <div class="form-group"><label>Email <span class="text-danger">*</span></label><input
                                        type="email" class="form-control" id="Email" disabled></div>
                            </div>
                            <div class="col-md-6 col-sm-6">
                                <div class="form-group"><label>First Name <span class="text-danger">*</span></label><input
                                        type="text" class="form-control">
                                </div>
                            </div>
                            <div class="col-md-6 col-sm-6">
                                <div class="form-group"><label>Last Name <span class="text-danger">*</span></label><input
                                        type="text" class="form-control">
                                </div>
                            </div>
                            <div class="col-md-6 col-sm-6">
                                <div class="form-group"><label>New Email <span class="text-danger">*</span></label><input
                                        type="email" class="form-control">
                                </div>
                            </div>
                            <div class="col-md-6 col-sm-6">
                                <div class="form-group"><label>Confirm Email <span
                                            class="text-danger">*</span></label><input type="email" class="form-control">
                                </div>
                            </div>
                            <div class="mt-2">
                                <button class="mainButton"><a href="#">save change</a></button>
                            </div>
                        </div>
                    </div>
                    <div class="card-body" id="ChangePassword">
                        <h4 class="card-title TitleBasic">Change Password</h4>
                        <div class="row form-row">
                            <div class="col-md-12">
                                <div class="form-group"><label>Old Password <span class="text-danger">*</span></label><input
                                        type="password" class="form-control">
                                </div>
                            </div>
                            <div class="col-md-12">
                                <div class="form-group"><label>New Password <span class="text-danger">*</span></label><input
                                        type="password" class="form-control">
                                </div>
                            </div>
                            <div class="col-md-12">
                                <div class="form-group"><label>Confirm Password <span
                                            class="text-danger">*</span></label><input type="password" class="form-control">
                                </div>
                            </div>
                            <div class="mt-2">
                                <button class="mainButton"><a href="#">save change</a></button>
                            </div>
                        </div>
                    </div>
                    <div class="card-body" id="DeleteEmail">
                        <h4 class="card-title TitleBasic">DeleteEmail</h4>
                        <div class="row form-row">
                            <div class="col-md-12">
                                <p class="lh-lg">
                                    By clicking on this button your account will be deleted and all your data added will be
                                    blocked and will be hidden for everyone. The data(links, accounts and etc.) in this account
                                    can't be added by other user or transferred to another account. Anytime you can reactivate
                                    your account by registering with the same email address. Note: After reactivation all points
                                    on your account will be erased.
                            </div>

                        </div>
                        <div class="mt-2">
                            <button class="mainButton"><a href="#">Delete</a></button>
                        </div>
                    </div>
                </div>
            </div>
            <div class="">

            </div>
        </div>
    </div>
    <br>
    <br>
    <br>
    <br>
    <br>
@endsection
@section('site_js')
    <script src="https://cdn.jsdelivr.net/npm/swiper@8/swiper-bundle.min.js"></script>
    <script src="{{asset('assets/site/JS')}}/Conis.js"></script>
    @include('site.CustomScripts.handleViewScript')
@endsection

