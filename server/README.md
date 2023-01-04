# Server

## 立ち上げ
  * mix phx.new プロジェクト名

## DBセットアップ
  * mix ecto.setup

## ライブラリインストール
  * mix deps.get

## サーバー起動
  * mix phx.server

## ビルド
mix phx.gen.secret
export SECRET_KEY_BASE=表示されたキー

export DATABASE_URL=ecto://postgres:postgres@postgres/db
mix deps.get --only prod
MIX_ENV=prod mix compile

### asset使わないので不要
MIX_ENV=prod mix assets.deploy

### reactビルド
mix webapp

mix phx.gen.release
MIX_ENV=prod mix release
PHX_HOST=localhost _build/prod/rel/server/bin/server start

## other
Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.

Ready to run in production? Please [check our deployment guides](https://hexdocs.pm/phoenix/deployment.html).

## Learn more

  * Official website: https://www.phoenixframework.org/
  * Guides: https://hexdocs.pm/phoenix/overview.html
  * Docs: https://hexdocs.pm/phoenix
  * Forum: https://elixirforum.com/c/phoenix-forum
  * Source: https://github.com/phoenixframework/phoenix
