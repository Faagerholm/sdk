# NOTE: This file is auto generated by OpenAPI Generator 7.7.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Ory.Model.SuccessfulProjectUpdate do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :project,
    :warnings
  ]

  @type t :: %__MODULE__{
    :project => Ory.Model.Project.t,
    :warnings => [Ory.Model.Warning.t]
  }

  alias Ory.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:project, :struct, Ory.Model.Project)
     |> Deserializer.deserialize(:warnings, :list, Ory.Model.Warning)
  end
end

