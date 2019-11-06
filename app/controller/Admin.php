<?php
namespace app\controller;

use app\BaseController;
use think\facade\View;
use think\facade\Route;
use app\model\User;

class Index extends BaseController
{
    public function index()
    {
        // 验证是否进行登录操作
        if(!session('?username')){
            return redirect(Route::buildUrl('Login/'));
        }else{
            return View::fetch();
        }
    }

    /**
     * 憨批地方被写进了路由中
     *
     * @param string $name
     * @return void
     */
    public function hello($name = 'ThinkPHP6')
    {
        View::assign('name',$name); 
        View::assign('email','thinkphp@qq.com'); // 或者批量赋值 
        // View::assign([ 'name' => 'ThinkPHP', 'email' => 'thinkphp@qq.com' ]); // 模板输出 
        return View::fetch();
    }


    // 重定向需要带上 return
    public function test(){
        if(!session('?username')){
            // return error('您没有登陆',Route::buildUrl('Login/'));
            return redirect(Route::buildUrl('Login/'));
        }
    }

    public function testModel(){
        $user = User::select();
        return json($user);
    }
}
