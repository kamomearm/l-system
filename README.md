# L-SYSTEM by Haskell

L-SYSTEMの文字列を受けとりパースし、実行する

A, B, C,... etcなど、アルファベット大文字小文字を自由に追加可能

再帰の回数の指定可能

アルファベットは1ステップ前進、+は視点の向きを左回転、-は視点の向きを右させる命令

## 例 コッホ曲線
Aの置換方法: A -> A + A - - A + A

回転する角度: 60

再帰する回数: 1

与えられる式: A

A を一回置換し、A + A - - A + A として実行
