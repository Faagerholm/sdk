# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule Keto.Model.GetRelationTuplesInternalServerErrorBody do
  @moduledoc """
  GetRelationTuplesInternalServerErrorBody GetRelationTuplesInternalServerErrorBody GetRelationTuplesInternalServerErrorBody get relation tuples internal server error body
  """

  @derive [Poison.Encoder]
  defstruct [
    :"code",
    :"details",
    :"message",
    :"reason",
    :"request",
    :"status"
  ]

  @type t :: %__MODULE__{
    :"code" => integer() | nil,
    :"details" => [map()] | nil,
    :"message" => String.t | nil,
    :"reason" => String.t | nil,
    :"request" => String.t | nil,
    :"status" => String.t | nil
  }
end

defimpl Poison.Decoder, for: Keto.Model.GetRelationTuplesInternalServerErrorBody do
  def decode(value, _options) do
    value
  end
end

