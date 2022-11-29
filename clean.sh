#!/bin/bash

DIR="backups"

cd ~/desktop

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

check_backup_exists
