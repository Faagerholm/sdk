# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule Ory.Model.PluginConfigUser do
  @moduledoc """
  PluginConfigUser plugin config user
  """

  @derive [Poison.Encoder]
  defstruct [
    :"GID",
    :"UID"
  ]

  @type t :: %__MODULE__{
    :"GID" => integer() | nil,
    :"UID" => integer() | nil
  }
end

defimpl Poison.Decoder, for: Ory.Model.PluginConfigUser do
  def decode(value, _options) do
    value
  end
end

