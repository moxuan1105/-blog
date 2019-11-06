<?php

namespace app\controller;

use app\BaseController;
use think\facade\View;
use app\model\User;
use think\facade\Route; //路由
use think\facade\Session; //Session
use think\Request; // 请求
use app\validate\User as UserValidate; // 验证
use think\exception\ValidateException; // 验证异常报错

class Login extends BaseController
{
    public function index(Request $request)
    {
        // 验证器
        // try {
        //     validate(User::class)->check([ 
        //     'name' => 'dasdasd', 
        //     'age'=>'12',
        //     'email' => 'thinkphp@qq.com', 
        //     ]); 
        // } catch (ValidateException $e) { 
        //     // 验证失败 输出错误信息 
        //     return json($e->getError()); 
        // }
        // try {
        //     validate(User::class)->batch(true)->check([ 
        //         'name' => 'dasdasdsa', 
        //         'email' => 'thinkphp@qq.com', 
        //     ]);
        // } catch (ValidateException $e) { 
        //     // 验证失败 输出错误信息 
        //     dump($e->getError()); 
        // } 
        // $token = $request->buildToken(); 
        // View::assign('token', $token);
        return View::fetch();
    }

    public function login(Request $request)
    {

        $msg = true;
        $username = $request->post('username');
        $password = $request->post('password');
        try {
            validate(UserValidate::class)->check([ 
                'name' => $username,
            ]); 
        } catch (ValidateException $e) {
            // throw $th;
            return json($e->getError()); 
        }

        $userId = User::where('username',$username)->value('id');

        if(is_null($userId)){
            $msg = "请检查账号或密码！";
        }else{
            $passwordHash = User::where($userId)->value('password_hash');
            $result = password_verify($password,$passwordHash);
            if(!$result){
                $msg = "请检查账号或密码！";
            }else{
                $nickname = User::where('id',$userId)->value('nickname');
                Session::set('username',$username);
                Session::set('nickname',$nickname);
            }
        }
        return json($msg);
    }

    public function logout()
    {
        Session::clear();
        return redirect(Route::buildUrl('Login/'));
    }

}
