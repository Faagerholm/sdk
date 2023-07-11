# NOTE: This file is auto generated by OpenAPI Generator 6.6.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Ory.Model.SuccessfulProjectUpdate do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :project,
    :warnings
  ]

  @type t :: %__MODULE__{
    :project => Ory.Model.Project.t,
    :warnings => [Ory.Model.Warning.t]
  }
end

defimpl Poison.Decoder, for: Ory.Model.SuccessfulProjectUpdate do
  import Ory.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:project, :struct, Ory.Model.Project, options)
    |> deserialize(:warnings, :list, Ory.Model.Warning, options)
  end
end

