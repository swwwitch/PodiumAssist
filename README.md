# PodiumAssist
PodiumAssist for macOS — official downloads and release notes


## ソースコード


PodiumAssistのソースコードです。[PodiumAssistの説明・変更履歴](PodiumAssist/Development/README.md)を参照してください。

## 構成とビルド

- `PodiumAssist/`：アプリ本体のソース、リソース、既存のビルドスクリプト・テスト。
- `Shared/`：このスナップショットに対応する共通部品とビルド補助。ほかのアプリのソースは含みません。
- 元の相対パスを保つため、アプリのフォルダーとSharedを同じ階層に置いています。

macOS、XcodeのCommand Line Tools、Python 3が必要です。配布ビルドには署名証明書など、各アプリの説明に記載した準備が必要です。Sparkleは既存スクリプトでチェックサムを検証して取得します。

```sh
./build.sh
```

ルートのbuild.shは既存のビルド経路を呼び出します。標準では`SKIP_DEPLOY=1 NO_DEPLOY=1`で実行し、インストール先のアプリを置き換えません。ビルド・署名が成功した場合だけ、その成果物を確認してください。今回のリポジトリ分割ではアプリの再ビルド・起動・配布は未確認です。

## 元の履歴

[ソースの出所と今回の変更](SOURCE-ORIGIN.md)に元コミットと検証範囲を記載しています。配布済みバイナリとソースの更新は別に管理しています。


## 3.3.19 (build 99) - 2026-11-01

Shift+Up/Down adjusts timer times by ten minutes. Automatic zoom uses logical screen height / 500 as minimum and twice that as maximum. Zoom controls safely reveal System Settings sliders and verify saved factors. Updated flat icon.
