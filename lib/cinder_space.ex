defmodule CinderSpace do
  use Cinder, otp_app: :cinder_space

  cinder do
    secret_key_base &Application.fetch_env(:cinder_space, &1)
    cookie_signing_salt &Application.fetch_env(:cinder_space, &1)
    bind_address "::"
  end
end
