import Config

config :cinder_space,
  cookie_signing_salt: System.fetch_env!("COOKIE_SIGNING_SALT"),
  secret_key_base: System.fetch_env!("SECRET_KEY_BASE")
