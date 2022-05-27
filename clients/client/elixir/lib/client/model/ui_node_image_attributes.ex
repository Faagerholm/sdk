# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule Client.Model.UiNodeImageAttributes do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"height",
    :"id",
    :"node_type",
    :"src",
    :"width"
  ]

  @type t :: %__MODULE__{
    :"height" => integer() | nil,
    :"id" => String.t,
    :"node_type" => String.t,
    :"src" => String.t,
    :"width" => integer() | nil
  }
end

defimpl Poison.Decoder, for: Client.Model.UiNodeImageAttributes do
  def decode(value, _options) do
    value
  end
end

