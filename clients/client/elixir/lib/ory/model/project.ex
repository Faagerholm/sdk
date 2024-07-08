# NOTE: This file is auto generated by OpenAPI Generator 7.7.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Ory.Model.Project do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :cors_admin,
    :cors_public,
    :environment,
    :home_region,
    :id,
    :name,
    :revision_id,
    :services,
    :slug,
    :state,
    :workspace_id
  ]

  @type t :: %__MODULE__{
    :cors_admin => Ory.Model.ProjectCors.t | nil,
    :cors_public => Ory.Model.ProjectCors.t | nil,
    :environment => String.t,
    :home_region => String.t,
    :id => String.t,
    :name => String.t,
    :revision_id => String.t,
    :services => Ory.Model.ProjectServices.t,
    :slug => String.t,
    :state => String.t,
    :workspace_id => String.t | nil
  }

  alias Ory.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:cors_admin, :struct, Ory.Model.ProjectCors)
     |> Deserializer.deserialize(:cors_public, :struct, Ory.Model.ProjectCors)
     |> Deserializer.deserialize(:services, :struct, Ory.Model.ProjectServices)
  end
end

