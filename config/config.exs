import Config

config :git_ops,
  mix_project: Mix.Project.get!(),
  changelog_file: "CHANGELOG.md",
  repository_url: "https://cloud.harton.nz/cinder/cinder_space",
  manage_mix_version?: true,
  version_tag_prefix: "v",
  manage_readme_version: "README.md"

config :cinder_space,
  cookie_signing_salt: "FAKE_COOKIE_SIGNING_SALT",
  secret_key_base: "FAKE_SECRET_KEY_BASE"

config :esbuild, :version, "0.17.11"

import_config "#{config_env()}.exs"
