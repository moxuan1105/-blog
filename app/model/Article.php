<?php
namespace app\model;

use think\Model;
use think\model\concern\SoftDelete;

class Article extends Model
{
    use SoftDelete; // 使用软删除
    protected $name = 'article';

    protected $autoWriteTimestamp = 'datetime';

    protected $deleteTime = 'delete_time';
    protected $defaultSoftDelete = null;

    protected $pk = 'id';

    // 定义数据库中的字段才能操作对应的字段数据
    // 定义字段后 无法获取自增ID？？？
    // protected $schema = [
    //     'id' => 'int',
    //     'title'=>'string',
    //     'image'=>'string',
    //     'article'=>'string',
    //     'create_time'=>'datetime',
    //     'update_time'=>'datetime',
    //     'delete_time'=>'datetime',
    //     'read'=>'int',
    //     'is_draft'=>'int'
    // ];

}

