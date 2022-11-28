#!/bin/bash

DIR="backps"

cd ~/desktop
if [ ! -d $DIR ];then
  echo "バックアップディレクトリが存在しません"
  mkdir $DIR
  if [ -d $DIR ]; then
    echo "バックアップディレクトリを作成しました"
  else
    echo "バックアップディレクトリの作成に失敗しました"
  fi
fi