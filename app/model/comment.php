<?php
namespace app\model;

use think\Model;
// use think\model\concern\SoftDelete;

class Comment extends Model
{
    // use SoftDelete; // 使用软删除
    protected $name = 'comment';

    protected $autoWriteTimestamp = 'datetime';

    // protected $deleteTime = 'delete_time';
    // protected $defaultSoftDelete = null;

    // 定义数据库中的字段才能操作对应的字段数据
    protected $schema = [
        'id' => 'int',
        'article_id'=>'int',
        'nickname'=>'string',
        'create_time'=>'datetime',
        'comment'=>'string',
        'reply_id'=>'int',
    ];

}

