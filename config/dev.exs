import Config

config :cinder_space,
  cookie_signing_salt: System.fetch_env!("COOKIE_SIGNING_SALT"),
  secret_key_base: System.fetch_env!("SECRET_KEY_BASE")

config :esbuild,
  version: "0.16.4",
  dev: [
    args:
      ~w(js/app.js --bundle --target=es2017 --outdir=../priv/static/assets --external:/fonts/* --external:/images/*),
    cd: Path.expand("../assets", __DIR__),
    env: %{"NODE_PATH" => Path.expand("../deps", __DIR__)}
  ]

config :tailwind,
  version: "3.2.4",
  dev: [
    args: ~w(
      --config=tailwind.config.js
      --input=css/app.css
      --output=../priv/static/assets/app.css
    ),
    cd: Path.expand("../assets", __DIR__)
  ]
