<?php
namespace app\controller;

use app\BaseController;
use app\Request;
use think\facade\Filesystem;

class Upload extends BaseController
{
    public function images(Request $request)
    {
        $file = $request->file('file');
        $savename = Filesystem::disk('public')->putFile('images', $file);
        return json([
            'code'=>0,
            'msg'=>'',
            'data'=>[
                'src'=>'/update/'.$savename
            ]
        ]);
    }
} 