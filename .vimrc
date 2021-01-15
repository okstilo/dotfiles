" setting
" 文字コードをUFT-8に設定
set fenc=utf-8

" バックアップファイルを作らない
set nobackup

" スワップファイルを作らない
set noswapfile

" 編集中のファイルが変更されたら自動で読み直す
set autoread

" バッファが編集中でもその他のファイルを開けるように
set hidden

" 入力中のコマンドをステータスに表示する
set showcmd

" 新しい行のインデントを現在行と同じにする
set autoindent

" vi互換をオフする
set nocompatible

" 挿入モードでバックスペースで削除できるようにする
set backspace=indent,eol,start

" 全角文字専用の設定
set ambiwidth=double

" タブの代わりに空白文字を指定する
set expandtab

" タブ幅の設定
set tabstop=2

" インクリメンタルサーチを行う
set incsearch

" 行番号を表示する
set number

" 閉括弧が入力された時、対応する括弧を強調する
set showmatch

" 新しい行を作った時に高度な自動インデントを行う
set smarttab

" カラー設定:
colorscheme elflord
syntax on
