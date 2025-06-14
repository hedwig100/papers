#!/bin/sh
set -eu

IS_COLORFUL_TEMPLATE=0
TARGET_PATH="$1"

# 引数を処理
if [ "$1" = "-c" ]; then
    IS_COLORFUL_TEMPLATE=1
    TARGET_PATH="$2"
else
    TARGET_PATH="$1"
fi

if [ -z "$TARGET_PATH" ]; then
    echo "使い方: $0 [-c] パス"
    exit 1
fi

# $TARGET_PATHの親ディレクトリを作成
DIR_PATH="$(dirname "$TARGET_PATH")"
FILE_NAME="$(basename "$TARGET_PATH")"

if [ ! -d "$DIR_PATH" ]; then
    PARENT_DIR="$(dirname "$DIR_PATH")"
    mkdir -p "$PARENT_DIR"
    cp -r ./templates "$DIR_PATH"
    rm -f "$DIR_PATH/template.tex" "$DIR_PATH/colorful_template.tex"
fi

# $TARGET_PATH.texを作成
if [ $IS_COLORFUL_TEMPLATE -eq 1 ]; then
    TEMPLATE_SRC="./templates/colorful_template.tex"
else
    TEMPLATE_SRC="./templates/template.tex"
fi

if [ ! -e "$TARGET_PATH.tex" ]; then
    cp "$TEMPLATE_SRC" "$TARGET_PATH.tex"
    echo "ファイル $TARGET_PATH.tex を作成しました。"
else
    echo "ファイル $TARGET_PATH.tex は既に存在するため、上書きしません。"
fi

# img/$TARGET_PATHを作成
IMG_PATH="$DIR_PATH/img/$FILE_NAME"
mkdir -p "$IMG_PATH"