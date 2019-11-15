<?php
namespace app\controller;

use think\facade\View;

class Error {
    public function __call($method, $args) {
        View::layout(true);
        return View::fetch('error/index');
        // return 'error request!';
    }
}