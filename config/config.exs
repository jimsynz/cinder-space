import Config

config :git_ops,
  mix_project: Mix.Project.get!(),
  changelog_file: "CHANGELOG.md",
  repository_url: "https://cloud.harton.nz/cinder/cinder_space",
  manage_mix_version?: true,
  version_tag_prefix: "v",
  manage_readme_version: "README.md"

# import_config "#{config_env()}.exs"
