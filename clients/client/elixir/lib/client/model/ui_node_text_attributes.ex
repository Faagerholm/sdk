# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule Client.Model.UiNodeTextAttributes do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"id",
    :"node_type",
    :"text"
  ]

  @type t :: %__MODULE__{
    :"id" => String.t,
    :"node_type" => String.t,
    :"text" => Client.Model.UiText.t
  }
end

defimpl Poison.Decoder, for: Client.Model.UiNodeTextAttributes do
  import Client.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"text", :struct, Client.Model.UiText, options)
  end
end

