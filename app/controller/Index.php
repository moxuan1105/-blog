<?php
namespace app\controller;

use app\BaseController;
use think\facade\View;
use app\model\Article as ArticleModel;
use app\Request;
use Exception;
use think\Response;

// use app\controller\Article;

class Index extends BaseController
{
    public function index()
    {
        $articleInfo = ArticleModel::withoutField(['article','delete_time'])->where('is_draft','0')->order(['read'=>'desc','id'])->select();
        View::assign('data',$articleInfo);
        View::layout(true);
        return View::fetch();
    }

    public function showArticleInfo(Request $request){
        $articleId = $request->param('id');
        // 调用其他的控制的函数时  初始化时传入 $this->app
        $articleController =  new Article($this->app);
        try{
            $articleController->read($articleId);
        }catch(Exception $e){
            // 返回一个错误空白页
            View::layout(true);
            return View::fetch('error');
            
        }
        $acticleInfo = ArticleModel::withoutField(['delete_time'])->find($articleId);
        // $commentInfo = $articleController->getComment($articleId);
        View::assign('data',$acticleInfo);
        // View::assign('comment',$commentInfo);
        View::layout(true);
        return View::fetch();      
    }

    public function whisper(){
        View::layout(true);
        return View::fetch();
    }

    //其他控制器也加上——empty方法
    public function miss(){
        View::layout(true);
        return View::fetch();
    }
}   
