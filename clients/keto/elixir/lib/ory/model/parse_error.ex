# NOTE: This file is auto generated by OpenAPI Generator 6.6.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Ory.Model.ParseError do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :end,
    :message,
    :start
  ]

  @type t :: %__MODULE__{
    :end => Ory.Model.SourcePosition.t | nil,
    :message => String.t | nil,
    :start => Ory.Model.SourcePosition.t | nil
  }
end

defimpl Poison.Decoder, for: Ory.Model.ParseError do
  import Ory.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:end, :struct, Ory.Model.SourcePosition, options)
    |> deserialize(:start, :struct, Ory.Model.SourcePosition, options)
  end
end

