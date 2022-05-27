# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule Client.Model.CloudAccount do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"email",
    :"id",
    :"name"
  ]

  @type t :: %__MODULE__{
    :"email" => String.t | nil,
    :"id" => String.t | nil,
    :"name" => String.t | nil
  }
end

defimpl Poison.Decoder, for: Client.Model.CloudAccount do
  def decode(value, _options) do
    value
  end
end

