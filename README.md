# Readme

## はじめに
このアプリは、自分自身がプログラミング学習を継続するうえで有益だったと感じたことを、アプリの機能として落とし込んだものです。具体的には、以下の2つの機能を搭載しています。

- **学習記録**（5分間勉強したら、ボタンを押して記録する。）
- **デイトラ受講生をフォローできる機能**（コース・地域で受講生を絞り込むことが可能）

## アプリ概要

### ① 学習記録
- ボタンを押すと学習日が記録され、合計日数と継続日数が表示される。
- 勉強した日はカレンダー上に緑色で表示される。
- <video src="https://github.com/user-attachments/assets/82d637c0-4c79-46d1-89fe-a6846a214024" controls></video>

### ② プロフィール編集
- 通常のプロフィールに加え、デイトラ受講コースを選択可能

- <video src="https://github.com/user-attachments/assets/f9d6eaa0-0d80-47d6-b981-e31de248a6fa" controls></video>

### ③ 検索機能 + フォロー機能
- デイトラ受講生の中から、受講コースおよび地域で検索可能。
- 気になった受講生をフォローできる。
- <video src="https://github.com/user-attachments/assets/401ab215-f8aa-4435-82a2-6160fadf012b" controls></video>

## 動作環境

```
macOS Sequoia 15.3.1
ruby 3.4.2
Rails 8.0.1
node v14.15.0
Yarn 1.22.22
Bundler version 2.6.2
psql (PostgreSQL) 14.15 (Homebrew)
```

## 動作確認について

### 新しいユーザーとしてサインアップする場合  

  1. サーバーを起動します。  

      ```sh
      $ bin/rails server
      ```

  2. `http://localhost:3000/users/sign_up` に移動し、サインアップしてください。

### 既にアプリを使用している既存のユーザーとしてログインする場合  

  1. 以下のコマンドを実行してください。10人分の user データが追加されます。

      ```sh
      $ rails db:seed
      ```

      user の情報は以下のとおりです。  
      - **email**: `test1@test.com`  
      - **password**: `password`  

      なお、email アドレスは `test1@test.com`、`test2@test.com` 〜 `test10@test.com` の順番で作成されます。パスワードはすべて同じです。

  2. サーバーを起動します。  

      ```sh
      $ bin/rails server
      ```

  3. ブラウザで `http://localhost:3000/` に移動します。

  4. 「1.」で作成した user の **email**・**password** でログインします。

#### ※備考
- 追加するユーザー数、学習記録の日付は修正可能です。
- 詳しくは `db/seeds.rb` をご確認ください。

## 実装・修正予定の機能

- [ ] ツイート機能の追加
- [ ] プロフィールのアバター表示追加
- [ ] カレンダーの一部英語表示の修正
- [ ] プロフィール検索時、検索条件が残るように修正
- [ ] 生年月日の選択肢の修正（現在は2月31日などが入力可能）
- [ ] **Haml ファイル化**
