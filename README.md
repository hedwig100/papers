# Papers

## インストール

1. Texのインストール
    - macなら
    ```
    brew install --cask mactex-no-gui 
    ```
    - windowsなら手動で[ここ](https://texwiki.texjp.org/?TeX%20Live%2FWindows)とかみてインストール

2. VSCodeの設定
    拡張機能[Latex Workshop](https://marketplace.visualstudio.com/items?itemName=James-Yu.latex-workshop)をインストール

あとはこのレポジトリのlatexmkrcがよしなにやってくれて`dir/**.tex`ファイルをVSCodeで保存するたびにコンパイルが走って`dir/out/`が自動で作られて、そこにコンパイルしたpdfが出力されます.

## 運用

- 現状は分野ごとに`template`フォルダを丸ごとコピーして利用.
- 現状`template.tex`もしくは`colorful_template.tex`をコピーして、新しいファイルを作って書いてます.
- 論文のpdfも一緒にレポジトリに入れています.

- 一応`./prepare.sh [-c] <dir>/<filename>`とすると`<dir>`ディレクトリを勝手に作ってくれて、`<filename>.tex, img/<filename>/`を作成するスクリプト`prepare.sh`もあります.

## Papers

[論文情報まとめたNotionページへのリンク](https://alive-tablecloth-bd3.notion.site/1dd66bd63a2d801ca424ec2170d1ed9d)

### LLM
- [Break the Sequential Dependency of LLM Inference Using
LOOKAHEAD DECODING](llm/lookahead_decoding.pdf)
- [Text-to-SQL Empowered by Large Language Models: A
Benchmark Evaluation](llm/text2sql-with-llm.pdf)

### DB
- [An Empirical Evaluation of Columnar Storage
Formats](db/columnar_storage_formats.pdf)