<?php

namespace app\controller;

use app\BaseController;
use think\facade\View;
use app\validate\User; 
use think\exception\ValidateException;

class Login extends BaseController
{
    public function index()
    {
echo 'da';
        // 验证器
        try {
            validate(User::class)->check([ 
            'name' => 'dasdasd', 
            'age'=>'12',
            'email' => 'thinkphp@qq.com', 
            ]); 
        } catch (ValidateException $e) { 
            // 验证失败 输出错误信息 
            return json($e->getError()); 
        }

/*         try {
            validate(User::class)->batch(true)->check([ 
                'name' => 'dasdasdsa', 
                'email' => 'thinkphp@qq.com', 
            ]);
        } catch (ValidateException $e) { 
            // 验证失败 输出错误信息 
            dump($e->getError()); 
        }  */
        return View::fetch();
    }

    public function login()
    {
        return json('aa');
    }

}
