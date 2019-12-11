<?php
namespace app\controller;

use app\BaseController;
use think\facade\View;
use think\facade\Route;
use app\controller\Article;
use app\model\Article as ArticleModel;
use think\Request;

class Admin extends BaseController
{
    public function index()
    {
        // 验证是否进行登录操作
        if(!session('?username')){
            return redirect(Route::buildUrl('Login/'));
        }else{
            return View::fetch();
        }
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

    /**
     * 文章管理
     *
     * @return void
     */
    public function articleManage()
    {
        return View::fetch();
    }

    /**
     * 文章分类
     *
     * @return void
     */
    public function articleClass()
    {
        return View::fetch();
    }

    /**
     * 添加文章
     *
     * @return void
     */
    public function articleAdd()
    {
        // 先检测草稿箱中是否存在文件文件 如果存在 取最新的一份
        $articleModel = ArticleModel::field('id')->where('is_draft',1)->order('update_time','desc')->find();

        if(is_null($articleModel)){
            $articleConttroller = new Article($this->app);
            $articleId = (int) $articleConttroller->add();
        }else{
            $articleId = (int) $articleModel->id;
        }
        return redirect((string)url('articleEdit',['articleId'=>$articleId]));
    }

    public function articleEdit(Request $request)
    {
        $articleId = $request->get('articleId');
        $articleModel = ArticleModel::field(['title','article'])->find($articleId);
        $data = [
            'articleId' => $articleId,
            'articleTitle'=>$articleModel->title,
            'article'=>$articleModel->article
        ];
        View::assign('data',$data);
        return View::fetch();
    }

    /**
     * 文章回收站
     *
     * @return void
     */
    public function articleRecycle()
    {
        return View::fetch();
    }

    /**
     * 草稿箱
     *
     * @return void
     */
    public function articleDraft()
    {
        return View::fetch();
    }
}
