# NOTE: This file is auto generated by OpenAPI Generator 7.7.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Ory.Model.ErrorBrowserLocationChangeRequired do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :error,
    :redirect_browser_to
  ]

  @type t :: %__MODULE__{
    :error => Ory.Model.ErrorGeneric.t | nil,
    :redirect_browser_to => String.t | nil
  }

  alias Ory.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:error, :struct, Ory.Model.ErrorGeneric)
  end
end

