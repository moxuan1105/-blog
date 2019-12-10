<?php
namespace app\controller;

use app\BaseController;
use think\facade\View;
use app\model\Article as ArticleModel;
use app\Request;
use Exception;

// use app\controller\Article;

class Index extends BaseController
{
    public function index()
    {
        $articleInfo = ArticleModel::withoutField(['article','delete_time'])->order(['read'=>'desc','id'])->select();
        View::assign('data',$articleInfo);
        View::layout(true);
        return View::fetch();
    }

    public function showArticleInfo(Request $request){
        $articleId = $request->get('id');
        // 调用其他的控制的函数时  初始化时传入 $this->app
        $articleController =  new Article($this->app);
        try{
            $articleController->read($articleId);
        }catch(Exception $e){
            return $e->getMessage();
        }

        $acticleInfo = ArticleModel::withoutField(['delete_time'])->find($articleId);
        // $commentInfo = $articleController->getComment($articleId);
        View::assign('data',$acticleInfo);
        // View::assign('comment',$commentInfo);
        View::layout(true);
        return View::fetch();      
    }


    public function downloadImages(){
        // 下载方法用不了
        // header("Content-Type:application/octet-stream");
        // header("Accept-Ranges: bytes");
        // header("Content-Disposition: attachment; filename=aaa.jpg");
        return download('upload/images/1c/4d1199812eb27c0eaa35053fa28d41.jpeg','aaa.jpeg');
    }

    //其他控制器也加上——empty方法
    public function miss(){
        View::layout(true);
        return View::fetch();
    }

}   
