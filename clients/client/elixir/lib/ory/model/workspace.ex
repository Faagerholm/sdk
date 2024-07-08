# NOTE: This file is auto generated by OpenAPI Generator 7.7.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Ory.Model.Workspace do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :created_at,
    :id,
    :name,
    :subscription_id,
    :subscription_plan,
    :updated_at
  ]

  @type t :: %__MODULE__{
    :created_at => DateTime.t,
    :id => String.t,
    :name => String.t,
    :subscription_id => String.t | nil,
    :subscription_plan => String.t | nil,
    :updated_at => DateTime.t
  }

  alias Ory.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:created_at, :datetime, nil)
     |> Deserializer.deserialize(:updated_at, :datetime, nil)
  end
end

