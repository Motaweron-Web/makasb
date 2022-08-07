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
 @php
        $user=auth()->user();


 @endphp



                <div class="Bro">
                    <form method="post" action="{{route('admin.edit.myProfile')}}" enctype="multipart/form-data">
                        @csrf
                    <div class="card-body active" id="Basic">
                        <h4 class="card-title TitleBasic">Basic Information</h4>
                        <div class="row form-row">
                            <div class="col-md-12">
                                <div class="form-group">
                                    <div class="change-avatar">
                                        <div class="profile-img"><img src="{{asset(''.$user->image)}}" alt="User" class="hoverZoomLink">
                                        </div>
                                        <div class="upload-img">
                                            <div class="change-photo-btn"><span><i class="fa fa-upload"></i> Upload
                                                    Photo</span><input type="file" name="image" class="upload"></div><small
                                                class="form-text text-muted">Allowed JPG, GIF or PNG. Max size of
                                                2MB</small>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6 col-sm-6">
                                <div class="form-group"><label>Username <span class="text-danger">*</span></label><input
                                        type="text"  id="Username" required name="user_name" value="{{$user->user_name}}" class="form-control"  ></div>
                            </div>
                            <div class="col-md-6 col-sm-6">
                                <div class="form-group"><label>Email <span class="text-danger">*</span></label><input
                                        type="email" class="form-control" required  name="email" value="{{$user->email}}" id="Email" ></div>
                            </div>

                            <div class="col-md-6 col-sm-6">
                                <div class="form-group"><label>Balance <span class="text-danger">*</span></label><input
                                        type="email" class="form-control" value="{{$user->balance}}" disabled>
                                </div>
                            </div>
                            <div class="col-md-6 col-sm-6">
                                <div class="form-group"><label>Join Date <span
                                            class="text-danger" >*</span></label><input type="email" class="form-control" value="{{$user->created_at->diffForHumans()}}" disabled>
                                </div>
                            </div>
                            <div class="mt-2">
                                <button type="submit" class="mainButton submitButton">save change</button>
                            </div>
                            <style>
                                .submitButton{
                                    font-size: 18px;
                                    display: inline-block;
                                    padding: 10px 15px;
                                    color: var(--blue-main);
                                }
                                .submitButton:hover{
                                    color: white;;
                                }

                            </style>
                        </div>
                    </div>
                    </form>
                    <div class="card-body" id="ChangePassword">
                        <h4 class="card-title TitleBasic">Change Password</h4>
                        <div class="row form-row">

                            <div class="col-md-12">
                                <div class="form-group"><label>New Password <span class="text-danger">*</span></label><input
                                      id="newPassword"  type="password" class="form-control">
                                </div>
                            </div>
                            <div class="col-md-12">
                                <div class="form-group"><label>Confirm Password <span
                                            class="text-danger">*</span></label><input   id="confirmPassword"  type="password" class="form-control">
                                </div>
                            </div>
                            <div class="mt-2">
                                <button class="mainButton submitButton" onclick="changePassword()" id="changePassword">save change</button>
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
                            <a href="{{route('admin.deleteMyProfile')}}" class="mainButton submitButton">Delete</a>
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

        <script>

            function changePassword(){

                var newPassword=$('#newPassword').val();
                var confirmPassword=$('#confirmPassword').val();

                if(newPassword==null || confirmPassword==null) {
                    toastr.error('يرجي ادخال جميع الحقول');
                }
                else {
                    if(newPassword==confirmPassword){


                        if(newPassword.length<6){
                            toastr.error('الحد الادني لكلمة المرور ستة احرف');

                        }
                        else {


                            $.ajax({
                                type:'POST',
                                url:"{{route('admin.edit.myPassword')}}",
                                data:{
                                    password:newPassword,
                                    password_confirmation:confirmPassword
                                },

                                success:function(res){
                                    if(res['status']==true)
                                    {

                                        toastr.success('تمت تعديل كلمة المرور بنجاح')


                                    }
                                    else if(res['status']==422) {
                                        var errors = $.parseJSON(data.responseText);
                                        $.each(errors, function (key, value) {
                                            if ($.isPlainObject(value)) {
                                                $.each(value, function (key, value) {
                                                    toastr.error(value, 'خطأ');
                                                });
                                            }
                                        })

                                    }
                                    else
                                        location.reload();

                                },
                                error: function(data){
                                    location.reload();
                                }
                            });






                        }

                    }
                    else {
                        toastr.error('كلمة المرور غير متطابقة');

                    }
                }
            }


    </script>


    @include('site.CustomScripts.handleViewScript')
@endsection

