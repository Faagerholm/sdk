# NOTE: This file is auto generated by OpenAPI Generator 7.7.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Ory.Api.Relationship do
  @moduledoc """
  API calls for all endpoints tagged `Relationship`.
  """

  alias Ory.Connection
  import Ory.RequestBuilder

  @doc """
  Check the syntax of an OPL file
  The OPL file is expected in the body of the request.

  ### Parameters

  - `connection` (Ory.Connection): Connection to server
  - `opts` (keyword): Optional parameters
    - `:body` (String.t): 

  ### Returns

  - `{:ok, Ory.Model.CheckOplSyntaxResult.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec check_opl_syntax(Tesla.Env.client, keyword()) :: {:ok, Ory.Model.ErrorGeneric.t} | {:ok, Ory.Model.CheckOplSyntaxResult.t} | {:error, Tesla.Env.t}
  def check_opl_syntax(connection, opts \\ []) do
    optional_params = %{
      :body => :body
    }

    request =
      %{}
      |> method(:post)
      |> url("/opl/syntax/check")
      |> add_optional_params(optional_params, opts)
      |> ensure_body()
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, Ory.Model.CheckOplSyntaxResult},
      {400, Ory.Model.ErrorGeneric},
      {:default, Ory.Model.ErrorGeneric}
    ])
  end

  @doc """
  Create a Relationship
  Use this endpoint to create a relationship.

  ### Parameters

  - `connection` (Ory.Connection): Connection to server
  - `opts` (keyword): Optional parameters
    - `:body` (CreateRelationshipBody): 

  ### Returns

  - `{:ok, Ory.Model.Relationship.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec create_relationship(Tesla.Env.client, keyword()) :: {:ok, Ory.Model.ErrorGeneric.t} | {:ok, Ory.Model.Relationship.t} | {:error, Tesla.Env.t}
  def create_relationship(connection, opts \\ []) do
    optional_params = %{
      :body => :body
    }

    request =
      %{}
      |> method(:put)
      |> url("/admin/relation-tuples")
      |> add_optional_params(optional_params, opts)
      |> ensure_body()
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {201, Ory.Model.Relationship},
      {400, Ory.Model.ErrorGeneric},
      {:default, Ory.Model.ErrorGeneric}
    ])
  end

  @doc """
  Delete Relationships
  Use this endpoint to delete relationships

  ### Parameters

  - `connection` (Ory.Connection): Connection to server
  - `opts` (keyword): Optional parameters
    - `:namespace` (String.t): Namespace of the Relationship
    - `:object` (String.t): Object of the Relationship
    - `:relation` (String.t): Relation of the Relationship
    - `:subject_id` (String.t): SubjectID of the Relationship
    - `:"subject_set.namespace"` (String.t): Namespace of the Subject Set
    - `:"subject_set.object"` (String.t): Object of the Subject Set
    - `:"subject_set.relation"` (String.t): Relation of the Subject Set

  ### Returns

  - `{:ok, nil}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec delete_relationships(Tesla.Env.client, keyword()) :: {:ok, nil} | {:ok, Ory.Model.ErrorGeneric.t} | {:error, Tesla.Env.t}
  def delete_relationships(connection, opts \\ []) do
    optional_params = %{
      :namespace => :query,
      :object => :query,
      :relation => :query,
      :subject_id => :query,
      :"subject_set.namespace" => :query,
      :"subject_set.object" => :query,
      :"subject_set.relation" => :query
    }

    request =
      %{}
      |> method(:delete)
      |> url("/admin/relation-tuples")
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {204, false},
      {400, Ory.Model.ErrorGeneric},
      {:default, Ory.Model.ErrorGeneric}
    ])
  end

  @doc """
  Query relationships
  Get all relationships that match the query. Only the namespace field is required.

  ### Parameters

  - `connection` (Ory.Connection): Connection to server
  - `opts` (keyword): Optional parameters
    - `:page_token` (String.t): 
    - `:page_size` (integer()): 
    - `:namespace` (String.t): Namespace of the Relationship
    - `:object` (String.t): Object of the Relationship
    - `:relation` (String.t): Relation of the Relationship
    - `:subject_id` (String.t): SubjectID of the Relationship
    - `:"subject_set.namespace"` (String.t): Namespace of the Subject Set
    - `:"subject_set.object"` (String.t): Object of the Subject Set
    - `:"subject_set.relation"` (String.t): Relation of the Subject Set

  ### Returns

  - `{:ok, Ory.Model.Relationships.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec get_relationships(Tesla.Env.client, keyword()) :: {:ok, Ory.Model.ErrorGeneric.t} | {:ok, Ory.Model.Relationships.t} | {:error, Tesla.Env.t}
  def get_relationships(connection, opts \\ []) do
    optional_params = %{
      :page_token => :query,
      :page_size => :query,
      :namespace => :query,
      :object => :query,
      :relation => :query,
      :subject_id => :query,
      :"subject_set.namespace" => :query,
      :"subject_set.object" => :query,
      :"subject_set.relation" => :query
    }

    request =
      %{}
      |> method(:get)
      |> url("/relation-tuples")
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, Ory.Model.Relationships},
      {404, Ory.Model.ErrorGeneric},
      {:default, Ory.Model.ErrorGeneric}
    ])
  end

  @doc """
  Query namespaces
  Get all namespaces

  ### Parameters

  - `connection` (Ory.Connection): Connection to server
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, Ory.Model.RelationshipNamespaces.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec list_relationship_namespaces(Tesla.Env.client, keyword()) :: {:ok, Ory.Model.ErrorGeneric.t} | {:ok, Ory.Model.RelationshipNamespaces.t} | {:error, Tesla.Env.t}
  def list_relationship_namespaces(connection, _opts \\ []) do
    request =
      %{}
      |> method(:get)
      |> url("/namespaces")
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, Ory.Model.RelationshipNamespaces},
      {:default, Ory.Model.ErrorGeneric}
    ])
  end

  @doc """
  Patch Multiple Relationships
  Use this endpoint to patch one or more relationships.

  ### Parameters

  - `connection` (Ory.Connection): Connection to server
  - `opts` (keyword): Optional parameters
    - `:body` ([Ory.Model.RelationshipPatch.t]): 

  ### Returns

  - `{:ok, nil}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec patch_relationships(Tesla.Env.client, keyword()) :: {:ok, nil} | {:ok, Ory.Model.ErrorGeneric.t} | {:error, Tesla.Env.t}
  def patch_relationships(connection, opts \\ []) do
    optional_params = %{
      :body => :body
    }

    request =
      %{}
      |> method(:patch)
      |> url("/admin/relation-tuples")
      |> add_optional_params(optional_params, opts)
      |> ensure_body()
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {204, false},
      {400, Ory.Model.ErrorGeneric},
      {404, Ory.Model.ErrorGeneric},
      {:default, Ory.Model.ErrorGeneric}
    ])
  end
end
