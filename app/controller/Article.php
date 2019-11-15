<?php

namespace app\controller;

use app\BaseController;
use think\Request;
use app\model\Article as ArticleModel;


class Article extends BaseController
{
    public function getList(Request $request)
    {
        $page = (int)$request->get('page')?:1;
        $limit = (int)$request->get('limit')?:1;
        $page = ($page - 1) * $limit;

        $data = ArticleModel::withoutField(['article','delete_time'])->limit($page,$limit)->select();
        $result = [
            'code'=>0,
            'msg'=>$limit,
            'count'=>ArticleModel::count(),
            'data'=>$data
        ];
        return json($result);
    }

    public function add(Request $request)
    {
        $articleModel = new ArticleModel();

        $titleValue = $request->post('title');
 
        $contentValue = $request->post('contentValue');

        $imageValue = $request->post('iamgeValue')?:'/static/blog/images/dva.jpg';

        $articleModel->title = $titleValue;
        $articleModel->article = $contentValue;
        $articleModel->image = $imageValue;

        $result = $articleModel->save();
        return json($result);
    }

    public function delete(Request $request)
    {
        $result = ArticleModel::destroy($request->post('id'));
        return json($result);
    }

    public function read($articleId)
    {
        $article = ArticleModel::find($articleId);
        $article->read +=1;
        $result = $article->isAutoWriteTimestamp(false)->save();
        return $result;
    }
}