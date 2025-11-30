# robosys2025
ロボットシステム学用のリポジトリ

# year_conv
西暦と和暦を相互に変換するコマンドです。標準入出力を使用しているため、パイプライン処理に組み込めます。

## 機能
・**西暦 → 和暦**: 数字を入力すると、和暦を出力します。(2025 → 令和7年)

・**和暦 → 西暦**: 元号と数字の組み合わせを入力すると、西暦を出力します。(令和7 or R7 →　2025)

## インストール方法
リポジトリをクローンし、実行権限を与えてください。
```bash
$ git clone https://github.com/kantahira/robosys2025
$ cd robosys2025
$ chmod +x year_conv
```

## 使い方
・**西暦から和暦変換**

　西暦（数字のみ）を入力します。
```bash
$ echo 2025 | ./year_conv
令和7年
```
・**和暦から西暦へ変換**

　元号と年数を入力します。アルファベット（R, H, S, T, M）にも対応しています。
```bash
$ echo 令和5 | ./year_conv
2023

$ echo S60 | ./year_conv
1985
```
・**テキストファイルからまとめて変換も可能です**
```bash
$ cat years.txt
2024
R1
1990
$ ./year_conv < years.txt
令和6年
2019
平成2年
```

## 必要な環境
・Python 3.7 以上

・Linux環境

## テスト環境
・Ubuntu 24.04 LTS

## ライセンスと著作権
・このソフトウェアパッケージは，3条項BSDライセンスの下，再頒布および使用が許可されます。

・© 2025 Kanta Hirazawa

## 参考文献
* 労働基準監督署：和暦西暦早見表
  https://jsite.mhlw.go.jp/fukushima-roudoukyoku/content/contents/Book1.pdf
* Python 3.x ドキュメント: re — 正規表現操作
  https://docs.python.org/ja/3/library/re.html
