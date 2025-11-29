#-------------------------------------------------------------------------
# Makefile for Flutter project
#-------------------------------------------------------------------------
# 依存関係を管理、プロジェクトをビルド、テストを実行、コード分析を行うコマンドを提供します。
# プロジェクトのニーズに合わせてカスタマイズできます。
#-------------------------------------------------------------------------
# 変数
#-------------------------------------------------------------------------
# Makefileと同階層にあるディレクトリにコマンドと同じファイル名が存在する場合のバッティングを防止するための変数
.PHONY: setup build build_ios build_android compile build_runner build_runner_watch test test_unit test_widget test_integration doc analyze
#-------------------------------------------------------------------------

build:
	# build/web にビルド成果物を生成
	flutter build web
	# build/web の成果物を docs/ にコピー (github pages では docs/ をルートディレクトリとして扱う)
	cp -r build/web/* docs/
	# docs/index.html の base href を /flutter_web_github_pages/ に変更
	sed -i '' 's|<base href="/">|<base href="/flutter_web_github_pages/">|' docs/index.html
