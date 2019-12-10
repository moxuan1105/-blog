<?php
namespace app\controller;

use app\BaseController;
use think\facade\View;
use think\facade\Route;
use app\controller\Article;
use app\Request;

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
        $articleConttroller = new Article($this->app);
        $articleId = $articleConttroller->add();
        // View::assign('articleId',$articleId);
        // return View::fetch();
        return Route::buildUrl('articleEdit',['aaa' => $articleId]);
        return url('articleEdit',['articleId' => $articleId]);
    }

    public function articleEdit(Request $request)
    {
        $articleId = $request->get('articleId');
        
        View::assign('articleId',$articleId);
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
