<?php

namespace app\controller;

use app\BaseController;
use think\Request;

class Article extends BaseController
{
    public function add(Request $request)
    {
        return json($request->param());
    }
}