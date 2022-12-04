#!/bin/bash

DIR="backups"

cd ~/desktop
desktop=`pwd`

check_backup_exists() {
  if [ ! -d $DIR ];then
    echo "バックアップディレクトリが存在しません"
    mkdir $DIR
    if [ -d $DIR ]; then
      echo "バックアップディレクトリを作成しました"
    else
      echo "バックアップディレクトリの作成に失敗しました"
    fi
  fi
}

move_to_backup() {
  for file in $desktop/*; do
    mv $file ./$DIR
    echo "掃除完了"
  done
}

check_backup_exists
move_to_backup