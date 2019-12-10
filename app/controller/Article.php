<?php

namespace app\controller;

use app\BaseController;
use think\Request;
use app\model\Article as ArticleModel;
use app\model\Comment as CommentModel;


class Article extends BaseController
{
    /**
     * 获取文章列表 不包括删除过的文章
     *
     * @param Request $request
     * @return void
     */
    public function getList(Request $request)
    {
        $page = (int)$request->get('page')?:1;
        $limit = (int)$request->get('limit')?:1;
        $page = ($page - 1) * $limit;

        $data = ArticleModel::withoutField(['article','delete_time'])->where('is_draft','0')->order('update_time','desc')->limit($page,$limit)->select();
        $result = [
            'code'=>0,
            'msg'=>$limit,
            'count'=>ArticleModel::count(),
            'data'=>$data
        ];
        return json($result);
    }

    /**
     * 添加新文章
     *
     * @return void
     */
    public function add()
    {
        $articleModel = new ArticleModel();

        $imageValue = '/static/blog/images/dva.jpg';

        $articleModel->title = date('Y-m-d H:i:s',time());
        // $articleModel->article = $contentValue;
        $articleModel->image = $imageValue;

        $articleModel->save();

        $articleId = $articleModel->id;
        return json($articleId);
    }

    /**
     * 更新文章
     *
     * @param Request $request
     * @return void
     */
    public function update(Request $request)
    {
        $articleId = $request->post('articleId');

        $articleModel = ArticleModel::find($articleId);

        $titleValue = $request->post('title');
 
        $contentValue = $request->post('contentValue');

        $draft = $request->post('draft');

        $articleModel->title = $titleValue;
        $articleModel->article = $contentValue;
        $articleModel->is_draft = $draft;

        return json($articleModel->save());
    }

    /**
     * 删除文章 把文章放入回收站
     *
     * @param Request $request
     * @return void
     */
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

    /**
     * 添加评论
     *
     * @param Request $request
     * @return void
     */
    public function commentAdd(Request $request)
    {
        $commentModel = new CommentModel();

        $commentValue = $request->post('comment');
        
        $nicknameValue = $request->post('nickname');
         
        $articleId = $request->post('articleId');

        $commentModel->comment = $commentValue;

        $commentModel->nickname = $nicknameValue;

        $commentModel->article_id = $articleId;

        $result = $commentModel->save();

        return json($result);
    }

    /**
     * 获取评论
     *
     * @param int $articleId
     * @return void
     */
    public function getComment(Request $request)
    {
        $articleId = $request->get('articleId');
        $commentModel = new CommentModel();
        $commentResult = $commentModel->where('article_id',$articleId)->select();
        $commentResult = ['list'=>$commentResult];
        return json($commentResult);
        // return $commentResult;
    }

    /**
     * 文章回收站
     *
     * @return void
     */
    public function getRecycleList(Request $request)
    {
        $page = (int)$request->get('page')?:1;
        $limit = (int)$request->get('limit')?:20;
        $page = ($page - 1) * $limit;

        $data = ArticleModel::onlyTrashed(['article','delete_time'])->where('is_draft','0')->order('id','desc')->limit($page,$limit)->select();

        $result = [
            'code'=>0,
            'msg'=>$limit,
            'count'=>ArticleModel::count(),
            'data'=>$data
        ];
        return json($result);
    }

    /**
     * 文章恢复
     *
     * @param Request $request
     * @return void
     */
    public function restore(Request $request){
        $acticleId = (int) $request->post('articleId');  

        $acticle = ArticleModel::onlyTrashed()->find($acticleId); 
        
        return json($acticle->restore());
    }

    /**
     * 获取草稿箱文章
     *
     * @param Request $request
     * @return void
     */
    public function getDraftList(Request $request){
        $page = (int)$request->get('page')?:1;
        $limit = (int)$request->get('limit')?:20;
        $page = ($page - 1) * $limit;

        $data = ArticleModel::withoutField(['article','delete_time'])->where('is_draft','1')->order('id','desc')->limit($page,$limit)->select();

        $result = [
            'code'=>0,
            'msg'=>$limit,
            'count'=>ArticleModel::count(),
            'data'=>$data
        ];
        return json($result);
    }
}