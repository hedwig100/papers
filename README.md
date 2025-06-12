# Papers

[論文情報まとめたNotionページへのリンク](https://alive-tablecloth-bd3.notion.site/1dd66bd63a2d801ca424ec2170d1ed9d)

## インストール

1. Texのインストール
- macなら
```
brew install --cask mactex-no-gui 
```
- windowsなら手動で[ここ](https://texwiki.texjp.org/?TeX%20Live%2FWindows)とかみてインストール

2. VSCodeの設定
拡張機能[Latex Workshop](https://marketplace.visualstudio.com/items?itemName=James-Yu.latex-workshop)をインストール

あとはこのレポジトリのlatexmkrcがよしなにやってくれて`**.tex`ファイルをVSCodeで保存するたびにコンパイルが走って`**.tex/out/`が自動で作られて、そこにコンパイルしたpdfが出力されます.

## 運用

- 現状は分野ごとに`template`フォルダを丸ごとコピーして利用.
- 現状`template.tex`をコピーして、新しいファイルを作って書いてます.
- `colorful_template.tex` は見た目いい感じだけど、なぜか写真が入らないので使ってないです(使えるようにしたい). 

## Papers

### LLM
- [Break the Sequential Dependency of LLM Inference Using
LOOKAHEAD DECODING](llm/lookahead_decoding.pdf)

### DB
- [An Empirical Evaluation of Columnar Storage
Formats](db/columnar_storage_formats.pdf)