# uniapp-mac
HBuilderX 在 MacOS 频频吞噬内存,比如[这里](https://ask.dcloud.net.cn/question/184154?item_id=264560&rf=false) 此外，比起成熟的WebStorm、VSCode而言，体验更无须多言。从[这里](https://juejin.cn/post/7233572338968526903) 搬了这个脚本来，现实中使用UniApp的场景也不多，算是备忘。
# Usage
1. 修改 ws.sh 中的 HBUILDER_DIR和WEIXIN_DEV_DIR两个路径，路径的末尾不要带斜杠；
2. 编辑HbuilderX安装目录下的plugins\uniapp-cli-vite\package.json文件，在scripts 节点下增加一行:"dev:weixin": "uni -p mp-weixin"
3. 配置Webstorm, 设置-插件：安装WeChat mini program support, 设置-语言和框架-WeChat Mini Program：小程序支持 => 启用
4. 打开终端， ./ws.sh