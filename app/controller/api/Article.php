<?php
namespace app\controller\api;

use app\BaseController;
use think\Request;
use think\facade\View;
use think\facade\Route;
use app\model\Article as ArticleModel;

class Article extends BaseController
{
    public function getList(Request $request)
    {
        $page = (int)$request->get('page');
        $limit = (int)$request->get('limit');
        $page = ($page - 1) * $limit;

        $data = ArticleModel::limit($page,$limit)->select();
        $result = [
            'code'=>0,
            'msg'=>$limit,
            'count'=>ArticleModel::count(),
            'data'=>$data
        ];
        return json($result);
    }
}