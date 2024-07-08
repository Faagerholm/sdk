# NOTE: This file is auto generated by OpenAPI Generator 7.7.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Ory.Model.GenericErrorContent do
  @moduledoc """
  Error response
  """

  @derive Jason.Encoder
  defstruct [
    :debug,
    :error,
    :error_description,
    :message,
    :status_code
  ]

  @type t :: %__MODULE__{
    :debug => String.t | nil,
    :error => String.t | nil,
    :error_description => String.t | nil,
    :message => String.t | nil,
    :status_code => integer() | nil
  }

  def decode(value) do
    value
  end
end

