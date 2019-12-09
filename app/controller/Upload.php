<?php
namespace app\controller;

use app\BaseController;
use app\Request;
use think\facade\Filesystem;
use think\exception\ValidateException;

class Upload extends BaseController
{
    public function images(Request $request)
    {
        // 变量名需要先定义才能使用
        $code = (int)1;
        $file = $request->file(); 
        $savename =null;
        $msg = 'fail';
        $url = null;
        try {
            // 验证上传的图片 
            // 验证规则  
            // 是否是上传的文件| 文件大小不能超过400K| 文件后缀名名为 jpg,jpeg|图片
            validate([
                'file'=>'file|fileSize:409600|fileExt:jpg,jpeg,png|image'
            ])->check($file); 
            $savename = Filesystem::putFile('images', $file['editormd-image-file'],'md5');
            $url = $request->domain()."/upload/".$savename;
            $url = str_replace('\\','/',$url);
            $msg = 'success';
        } catch (ValidateException $e) { 
            $msg = $e->getMessage(); 
            $code =(int) 0;
        }

        return json([
            'success'=>$code,
            'message'=>$msg,
            'url' => $url
        ]);
    }
} 