# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule Kratos.Model.SubmitSelfServiceRegistrationFlowBody do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"csrf_token",
    :"method",
    :"password",
    :"traits",
    :"provider"
  ]

  @type t :: %__MODULE__{
    :"csrf_token" => String.t | nil,
    :"method" => String.t,
    :"password" => String.t,
    :"traits" => map(),
    :"provider" => String.t
  }
end

defimpl Poison.Decoder, for: Kratos.Model.SubmitSelfServiceRegistrationFlowBody do
  def decode(value, _options) do
    value
  end
end

