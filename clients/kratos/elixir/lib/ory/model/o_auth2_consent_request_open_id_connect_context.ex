# NOTE: This file is auto generated by OpenAPI Generator 6.6.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Ory.Model.OAuth2ConsentRequestOpenIdConnectContext do
  @moduledoc """
  OAuth2ConsentRequestOpenIDConnectContext struct for OAuth2ConsentRequestOpenIDConnectContext
  """

  @derive [Poison.Encoder]
  defstruct [
    :acr_values,
    :display,
    :id_token_hint_claims,
    :login_hint,
    :ui_locales
  ]

  @type t :: %__MODULE__{
    :acr_values => [String.t] | nil,
    :display => String.t | nil,
    :id_token_hint_claims => %{optional(String.t) => any()} | nil,
    :login_hint => String.t | nil,
    :ui_locales => [String.t] | nil
  }
end

defimpl Poison.Decoder, for: Ory.Model.OAuth2ConsentRequestOpenIdConnectContext do
  def decode(value, _options) do
    value
  end
end

