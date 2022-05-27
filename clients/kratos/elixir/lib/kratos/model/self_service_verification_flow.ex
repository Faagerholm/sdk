# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule Kratos.Model.SelfServiceVerificationFlow do
  @moduledoc """
  Used to verify an out-of-band communication channel such as an email address or a phone number.  For more information head over to: https://www.ory.sh/docs/kratos/selfservice/flows/verify-email-account-activation
  """

  @derive [Poison.Encoder]
  defstruct [
    :"active",
    :"expires_at",
    :"id",
    :"issued_at",
    :"request_url",
    :"return_to",
    :"state",
    :"type",
    :"ui"
  ]

  @type t :: %__MODULE__{
    :"active" => String.t | nil,
    :"expires_at" => DateTime.t | nil,
    :"id" => String.t,
    :"issued_at" => DateTime.t | nil,
    :"request_url" => String.t | nil,
    :"return_to" => String.t | nil,
    :"state" => Kratos.Model.SelfServiceVerificationFlowState.t,
    :"type" => String.t,
    :"ui" => Kratos.Model.UiContainer.t
  }
end

defimpl Poison.Decoder, for: Kratos.Model.SelfServiceVerificationFlow do
  import Kratos.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"state", :struct, Kratos.Model.SelfServiceVerificationFlowState, options)
    |> deserialize(:"ui", :struct, Kratos.Model.UiContainer, options)
  end
end

