# NOTE: This file is auto generated by OpenAPI Generator 7.7.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Ory.Model.Money do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :Cents,
    :String,
    :Unit
  ]

  @type t :: %__MODULE__{
    :Cents => integer() | nil,
    :String => String.t | nil,
    :Unit => String.t | nil
  }

  def decode(value) do
    value
  end
end

