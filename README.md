# Just Test Repository

このリポジトリはjust（コマンドランナー）を試すためのテストリポジトリです。RustプロジェクトとしてCargoと統合されています。

## プロジェクト構成

```
just_test/
├── Cargo.toml          # Rustプロジェクト設定
├── src/
│   ├── main.rs         # メインプログラム
│   └── config.rs       # 設定プログラム
├── tests/
│   └── integration_test.rs  # 統合テスト
├── justfile            # メインのjustfile（Cargo統合）
├── justfile2           # PowerShell用justfile
└── mise.toml           # mise設定
```

## 必要なもの

- [just](https://github.com/casey/just) - コマンドランナー
- [Rust](https://rustup.rs/) - Rustツールチェーン（Cargo含む）
- [mise](https://mise.jdx.dev/) - ツールバージョン管理（オプション）

## justfileの実行例

### justfile - Cargo統合済みRustプロジェクト用

```bash
# 利用可能なコマンド一覧を表示
just

# デバッグモードでビルド
just build

# リリースモードでビルド
just build-release

# メインプログラムを実行
just run-main

# 設定プログラムを実行  
just run-config

# 指定したターゲットを実行
just run main    # または just run config

# テスト実行
just test

# コードフォーマット
just fmt

# コードチェック
just check

# linting
just clippy

# ビルド成果物をクリーンアップ
just clean
```

### justfile2 - PowerShell用Hello World

```bash
# Hello, world! を出力（PowerShell環境）
just --justfile justfile2 hello
```

## 開発環境セットアップ

1. Rustツールチェーンのインストール：
   ```bash
   # mise使用の場合
   mise install
   
   # 直接インストールの場合
   curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
   ```

2. ビルドと実行：
   ```bash
   just build        # ビルド
   just run-main     # メインプログラム実行
   just run-config   # 設定プログラム実行
   just test         # テスト実行
   ```

## 特徴

- **Cargo統合**: モダンなRustプロジェクト構造を採用
- **複数バイナリ**: main、config の2つのバイナリをサポート
- **テスト統合**: `cargo test` を使った統合テスト
- **開発ツール**: フォーマット、チェック、linting をサポート
- **クロスプラットフォーム**: Linux、macOS、Windows対応