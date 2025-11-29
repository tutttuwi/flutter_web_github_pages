# flutter_web_github_pages

flutter web を github pagesにデプロイするサンプル

## セットアップ

```zsh
flutter pub get
```

## 起動

```zsh
flutter run
```

## ビルド

```zsh
make build
```

```Makefile
build:
	# build/web にビルド成果物を生成
	flutter build web
	# build/web の成果物を docs/ にコピー (github pages では docs/ をルートディレクトリとして扱う)
	cp -r build/web/* docs/
	# docs/index.html の base href を /flutter_web_github_pages/ に変更
	sed -i '' 's|<base href="/">|<base href="/flutter_web_github_pages/">|' docs/index.html
```

## github側設定

- setting > page
  - mainブランチのdocsフォルダを公開する設定

