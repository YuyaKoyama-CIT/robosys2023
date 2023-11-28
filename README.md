# robosys2023
![test](https://github.com/YuyaKoyama-CIT/robosys2023/actions/workflows/test.yml/badge.svg)

このリポジトリはロボットシステム学の学習のため制作したものです。

計算をするための足し算、引き算、掛け算、sinの計算をするためのコマンドを制作しました。

## インストール方法

このリポジトリをクローンして使用

```
git clone git@github.com:YuyaKoyama-CIT/robosys2023.git
```

## コマンド
### plus

標準入力から読み込んだ数字を足す。

実行例

```
$ seq 5 | ./plus
15
```
### minus

標準入力から読み込んだ数字を引く。

実行例
```
$ seq 5 | ./minus
-15
```
### mul

標準入力から読み込んだ数字を掛ける。

実行例
```
$ seq 5 | ./mul
120
```
### sin

標準入力から読み込んだ値のsin値を計算する

実行例
```
seq 5 | ./plus | ./sin
0.25881904510252074
```

## 必要なソフトウェア

* python
	* テスト済み :Ver.3.7~3.10

## テスト環境

*Ubuntu 22.04.3 LTS

## 著作権・ライセンス

* このソフトウェアパッケージは，3条項BSDライセンスの下，再頒布および使用が許可されます．

  * © 2023 Yuya Koyama

  * このパッケージのコードは，下記のスライド（CC-BY-SA 4.0 by Ryuichi Ueda）のものを，本人の許可を得て自身の著作としたものです．
	* [ryuichiueda/my_slides robosys_2022 lesson4.md](https://github.com/ryuichiueda/my_slides/blob/master/robosys_2022/lesson4.md)
  * © 2023 Ryuichi Ueda
