# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule Client.Model.InlineResponse2001 do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"version"
  ]

  @type t :: %__MODULE__{
    :"version" => String.t
  }
end

defimpl Poison.Decoder, for: Client.Model.InlineResponse2001 do
  def decode(value, _options) do
    value
  end
end

