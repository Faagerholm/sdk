# NOTE: This file is auto generated by OpenAPI Generator 7.7.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Ory.Model.AcceptOAuth2ConsentRequestSession do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :access_token,
    :id_token
  ]

  @type t :: %__MODULE__{
    :access_token => any() | nil,
    :id_token => any() | nil
  }

  def decode(value) do
    value
  end
end

