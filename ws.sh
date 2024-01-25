#!/bin/bash
# ==============根据实际修改如下两个环境变量==============
export HBUILDER_DIR=/Applications/HBuilderX.app/Contents/HBuilderX
export WEIXIN_DEV_DIR=/Applications/wechatwebdevtools.app
# ==============注意变量尾部不要带斜杠==============

export UNI_INPUT_DIR=$(pwd)
export UNI_OUTPUT_DIR=$UNI_INPUT_DIR/unpackage/dist/dev/mp-weixin
export VITE_ROOT_DIR=$UNI_INPUT_DIR

export UNI_CLI_CONTEXT=$HBUILDER_DIR/plugins/uniapp-cli-vite
export UNI_HBUILDERX_PLUGINS=$HBUILDER_DIR/plugins
export UNI_NPM_DIR=$HBUILDER_DIR/plugins/npm
export UNI_NODE_DIR=$HBUILDER_DIR/plugins/node

export UNI_COMPILER_VERSION_TYPE=r
export UNI_NODE_ENV=development
export UNI_UTS_PLATFORM=mp-weixin
export UNI_HBUILDERX_LANGID=zh_CN
export UNI_PLATFORM=mp-weixin
export VITE_USER_NODE_ENV=development
export NODE_ENV=development
export NODE_SKIP_PLATFORM_CHECK=1

export NODE="$UNI_NODE_DIR/node"

cd "$UNI_CLI_CONTEXT" || exit
clear

open -a "$WEIXIN_DEV_DIR" --args -o "$UNI_OUTPUT_DIR"

"$NODE" --max-old-space-size=2048 --no-warnings "$UNI_NPM_DIR/node_modules/npm/bin/npm-cli.js" run dev:weixin
