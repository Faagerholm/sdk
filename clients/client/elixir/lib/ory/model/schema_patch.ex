# NOTE: This file is auto generated by OpenAPI Generator 7.7.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Ory.Model.SchemaPatch do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :data,
    :name
  ]

  @type t :: %__MODULE__{
    :data => map(),
    :name => String.t
  }

  def decode(value) do
    value
  end
end

