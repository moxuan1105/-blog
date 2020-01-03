<?php

namespace app\controller;

use app\BaseController;

class Test extends BaseController{

    /**
     * 升级功能
     *
     * @return void
     */
    public function testCmdExec(){
        $a = exec('git pull github master',$output,$status);
        $data = [$a,$output,$status];
        $data = $this->str2utf8($data);
        return $data[$status];
    }



    function str2utf8 ($str) {
        if(is_array($str)){
            foreach ($str as $key => $value) {
                # code...
                $str[$key] = $this->str2utf8($value);
            }
        }else{
            $current_encode = mb_detect_encoding($str, array("ASCII","GB2312","GBK",'BIG5','UTF-8')); 
            $str = mb_convert_encoding($str, 'UTF-8', $current_encode);
        }
        return $str;
    }

}