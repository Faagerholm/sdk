# NOTE: This file is auto generated by OpenAPI Generator 7.7.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Ory.Model.UpdateRegistrationFlowBody do
  @moduledoc """
  Update Registration Request Body
  """

  @derive Jason.Encoder
  defstruct [
    :csrf_token,
    :method,
    :password,
    :traits,
    :transient_payload,
    :id_token,
    :id_token_nonce,
    :provider,
    :upstream_parameters,
    :webauthn_register,
    :webauthn_register_displayname,
    :code,
    :resend,
    :passkey_register
  ]

  @type t :: %__MODULE__{
    :csrf_token => String.t | nil,
    :method => String.t,
    :password => String.t,
    :traits => map(),
    :transient_payload => map() | nil,
    :id_token => String.t | nil,
    :id_token_nonce => String.t | nil,
    :provider => String.t,
    :upstream_parameters => map() | nil,
    :webauthn_register => String.t | nil,
    :webauthn_register_displayname => String.t | nil,
    :code => String.t | nil,
    :resend => String.t | nil,
    :passkey_register => String.t | nil
  }

  def decode(value) do
    value
  end
end

