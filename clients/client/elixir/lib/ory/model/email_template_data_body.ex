# NOTE: This file is auto generated by OpenAPI Generator 7.7.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Ory.Model.EmailTemplateDataBody do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :html,
    :plaintext
  ]

  @type t :: %__MODULE__{
    :html => String.t,
    :plaintext => String.t
  }

  def decode(value) do
    value
  end
end

