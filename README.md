# year_conv
[![test](https://github.com/kantahira/robosys2025/actions/workflows/test.yml/badge.svg)](https://github.com/kantahira/robosys2025/actions/workflows/test.yml)

西暦と和暦を相互に変換するコマンドです。

## 機能
- **西暦 → 和暦**: 数字を入力すると、和暦を出力します。(2025 → 令和7年)

- **和暦 → 西暦**: 元号と数字の組み合わせを入力すると、西暦を出力します。(R7 → 2025)

- **明治までの元号に対応しています**

## インストール方法
リポジトリをクローンし、実行権限を与えてください。
```bash
git clone https://github.com/kantahira/robosys2025
cd robosys2025
chmod +x year_conv
```

## 使い方
- **西暦から和暦変換**

西暦（数字のみ）を入力します。
```bash
$ echo 2025 | ./year_conv
令和7年
```
- **和暦から西暦へ変換**

元号と年数を入力します。元号はアルファベット（R, H, S, T, M）で入力してください。
```bash
$ echo r5 | ./year_conv
2023
```

## 必要な環境
- Python 3.7, 3.8, 3.9, 3.10, 3.11, 3.12
- Linux環境

## ライセンスと著作権
- このソフトウェアパッケージは、3条項BSDライセンスの下、再頒布および使用が許可されます。
- このパッケージのコードの一部は、下記のスライド (CC-BY-SA 4.0 by Ryuichi Ueda) のものを、本人の許可を得て自身の著作としたものです。　
  - [ryuichiueda/slides_marp/robosys_2025](https://github.com/ryuichiueda/slides_marp/tree/master/robosys2025)
- © 2025 Kanta Hirazawa

## 参考文献
**著書**
- 独習Python第二版
