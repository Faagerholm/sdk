# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule Keto.Model.InlineResponse503 do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"errors"
  ]

  @type t :: %__MODULE__{
    :"errors" => %{optional(String.t) => String.t}
  }
end

defimpl Poison.Decoder, for: Keto.Model.InlineResponse503 do
  def decode(value, _options) do
    value
  end
end

