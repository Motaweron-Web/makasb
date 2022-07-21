<?php

namespace App\Http\Controllers\Site;

use App\Http\Controllers\Controller;
use App\Models\User;
use App\Traits\PhotoTrait;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;

class AuthController extends Controller
{
    use PhotoTrait;
    public function register(){
        if (Auth::guard('user')->check()) {
            return 'u r login';
        }
        else
            return view('site.Auth.register');
    }

    public function UserRegistration(request $request){
        $request->validate([
            'user_name'             => 'required|max:255',
            'email'                 => 'required|max:255|email|unique:users,email',
            'password'              => 'required|confirmed|max:255|min:6',
            'password_confirmation' => 'required',
        ],[
            'user_name.required' => 'Please Enter Your User Name',
            'email.required'     => 'Please Enter Your Email',
            'email.unique'       => 'This Email is Used Before',
            'password.required'  => 'Please Enter A Password',
            'password.confirmed' => 'Password Confirmation Should Be Same As Password',
        ]);
        $data = $request->only('user_name','email','password');
        $data['password'] = Hash::make($request->password);
        $user = User::create($data);
        if ($user){
            Auth::guard('user')->login($user);
            return 'u r login';
        }
        else{
            toastError('هناك خطأ ما ...');
            return view('site.Auth.register');
        }
    }

    public function logout(){
        user()->logout();
        toastr()->info('تم تسجيل الخروج');
        return redirect('login');
    }

    public function login(){
        if (Auth::guard('user')->check()) {
            return 'u r login';
        }
        return redirect('/');
    }

    public function postLogin(request $request){
        $request->validate([
            'email'    => 'required',
            'password' => 'required'
        ],[
            'email'    => 'يرجي ادخال الايميل',
            'password' => 'يرجي ادخال كلمة المرور',
        ]);
        $status = ($request->has('rememberMe')) ? 'true' : 'false';
        if (Auth::guard('user')->attempt($request->only('email','password'),$status)){
            return 'u r login';
        }
        return $request;
    }
}
