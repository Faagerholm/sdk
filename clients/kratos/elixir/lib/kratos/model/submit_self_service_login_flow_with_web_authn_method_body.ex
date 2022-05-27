# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule Kratos.Model.SubmitSelfServiceLoginFlowWithWebAuthnMethodBody do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"csrf_token",
    :"method",
    :"webauthn_login"
  ]

  @type t :: %__MODULE__{
    :"csrf_token" => String.t | nil,
    :"method" => String.t,
    :"webauthn_login" => String.t | nil
  }
end

defimpl Poison.Decoder, for: Kratos.Model.SubmitSelfServiceLoginFlowWithWebAuthnMethodBody do
  def decode(value, _options) do
    value
  end
end

