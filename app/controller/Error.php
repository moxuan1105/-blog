<?php
namespace app\controller;

use think\facade\View;

class Error {
    public function __call($method, $args) {
        View::layout(true);
        return View::fetch('error/index');
        // return 'error request!';
    }

    //其他控制器也加上——empty方法
    public function _empty()
    {
        return '找不到当前的方法';
    }
}