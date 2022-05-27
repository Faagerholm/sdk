# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule Client.Model.IsOwnerForProjectBySlug do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"ProjectSlug",
    :"Subject"
  ]

  @type t :: %__MODULE__{
    :"ProjectSlug" => String.t,
    :"Subject" => String.t
  }
end

defimpl Poison.Decoder, for: Client.Model.IsOwnerForProjectBySlug do
  def decode(value, _options) do
    value
  end
end

