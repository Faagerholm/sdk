# NOTE: This file is auto generated by OpenAPI Generator 7.7.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Ory.Model.ProjectApiKey do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :created_at,
    :id,
    :name,
    :owner_id,
    :project_id,
    :updated_at,
    :value
  ]

  @type t :: %__MODULE__{
    :created_at => DateTime.t | nil,
    :id => String.t,
    :name => String.t,
    :owner_id => String.t,
    :project_id => String.t | nil,
    :updated_at => DateTime.t | nil,
    :value => String.t | nil
  }

  alias Ory.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:created_at, :datetime, nil)
     |> Deserializer.deserialize(:updated_at, :datetime, nil)
  end
end

