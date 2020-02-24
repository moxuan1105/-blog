<?php
// +----------------------------------------------------------------------
// | ThinkPHP [ WE CAN DO IT JUST THINK ]
// +----------------------------------------------------------------------
// | Copyright (c) 2006~2018 http://thinkphp.cn All rights reserved.
// +----------------------------------------------------------------------
// | Licensed ( http://www.apache.org/licenses/LICENSE-2.0 )
// +----------------------------------------------------------------------
// | Author: liu21st <liu21st@gmail.com>
// +----------------------------------------------------------------------
use think\facade\Route;

// 定义傻逼路由规则
Route::group('index', function () {
    // 定义傻逼路由规则 不定义还不能使用
    // 定义之后变成强制路由模式
    Route::rule('/:id', 'showArticleInfo');
    Route::rule('/', 'index');
    Route::miss('miss');
});

Route::group('admin',function(){
    Route::rule('articleManage', 'Admin/articleManage');
    Route::rule('articleClass', 'Admin/articleClass');
    Route::rule('articleRecycle', 'Admin/articleRecycle');
    Route::rule('articleDraft', 'Admin/articleDraft');
    Route::rule('articleAdd', 'Admin/articleAdd');
    Route::rule('/:articleId', 'Admin/articleEdit');
    Route::rule('hello', 'admin/hello');
    Route::rule('/', 'admin/index');
    Route::miss('admin/miss');
});