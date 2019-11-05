<?php
namespace app\controller;

use app\BaseController;
use think\facade\View;
use think\facade\Route;

class Index extends BaseController
{
    public function index()
    {

        // return '<style type="text/css">*{ padding: 0; margin: 0; } div{ padding: 4px 48px;} a{color:#2E5CD5;cursor: pointer;text-decoration: none} a:hover{text-decoration:underline; } body{ background: #fff; font-family: "Century Gothic","Microsoft yahei"; color: #333;font-size:18px;} h1{ font-size: 100px; font-weight: normal; margin-bottom: 12px; } p{ line-height: 1.6em; font-size: 42px }</style><div style="padding: 24px 48px;"> <h1>:) </h1><p> ThinkPHP V6<br/><span style="font-size:30px">&emsp;13载初心不改 - 你值得信赖的PHP框架</span></p></div><script type="text/javascript" src="https://tajs.qq.com/stats?sId=64890268" charset="UTF-8"></script><script type="text/javascript" src="https://e.topthink.com/Public/static/client.js"></script><think id="eab4b9f840753f8e7"></think>';
        return View::fetch();
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
        if(1){
            return redirect(Route::buildUrl('Login/', ['id'=>5]));
        }else{
            return json('adasd');
        }
    }
}
