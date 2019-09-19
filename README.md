# nerves_training

このリポジトリには[Nerves](https://nerves-project.org/) の実行環境を Vagrant + Ubuntu 18.04で構築するためのファイル一式を保存しています。

セットアップの手順は[こちらの記事](https://qiita.com/takasehideki/items/88dda57758051d45fcf9)を前提としています。

## 必要なもの

各ツールのバージョンは動作確認時のものです。
また動作確認はmacOS 10.14.6で行なっています。

- Vagrant 2.2.5
- Virtualbox 6.0.12

## vagrant boxの構築

```
vagrant up --provision
```

## vagrant upすると起こること

- vagrantによってubutu linuxのVMが起動します
- Ansibleによってプロビジョニングが開始されます
    - aptパッケージのインストール
    - fwupのインストール
    - asdfのインストール
    - .bashrcにasdf用の設定を追加
    - asdfを使ってErlang & Elixirのビルド

最後のErlang & Elixirのビルドには時間がかかるのでVagrantfileを修正してVMに与えるメモリやCPUを増やしたほうがいいかもしれません。