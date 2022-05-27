# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule Ory.Model.OpenIdConnectContext do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"acr_values",
    :"display",
    :"id_token_hint_claims",
    :"login_hint",
    :"ui_locales"
  ]

  @type t :: %__MODULE__{
    :"acr_values" => [String.t] | nil,
    :"display" => String.t | nil,
    :"id_token_hint_claims" => map() | nil,
    :"login_hint" => String.t | nil,
    :"ui_locales" => [String.t] | nil
  }
end

defimpl Poison.Decoder, for: Ory.Model.OpenIdConnectContext do
  def decode(value, _options) do
    value
  end
end

