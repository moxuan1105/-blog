/* 可直接修改部分参数 */
live2d_settings['modelAPI'] = '//107.182.26.97/live2d_api/';
live2d_settings['tipsMessage'] = './assets/waifu-tips.json';
// live2d_settings['hitokotoAPI']  = 'localhost';  

live2d_settings['modelId'] = 1; // 默认模型 ID
live2d_settings['modelTexturesId'] = 87; // 默认材质 ID
live2d_settings['modelStorage'] = true; // 不储存模型 ID
live2d_settings['canCloseLive2d'] = true; // 隐藏 关闭看板娘 按钮
live2d_settings['canTurnToHomePage'] = false; // 隐藏 返回首页 按钮
live2d_settings['waifuSize'] = '300x270'; // 看板娘大小
live2d_settings['waifuTipsSize'] = '200x54'; // 提示框大小
live2d_settings['waifuFontSize'] = '14px'; // 提示框字体
live2d_settings['waifuToolFont'] = '18px'; // 工具栏字体
live2d_settings['waifuToolLine'] = '20px'; // 工具栏行高
live2d_settings['waifuToolTop'] = '-60px'; // 工具栏顶部边距
live2d_settings['waifuDraggable'] = 'axis-x'; // 拖拽样式
live2d_settings['waifuEdgeSide'] = 'right:20';
live2d_settings['waifuMinWidth'] = 'disable';      // 面页小于 指定宽度 隐藏看板娘，例如 'disable'(禁用), '768px'
live2d_settings['aboutPageUrl'] = 'http://localhost'; // 关于页地址, '{URL 网址}'
/* 在 initModel 前添加 */
initModel("./assets/waifu-tips.json?v=1.4.2");

// console.log(live2d_settings);
