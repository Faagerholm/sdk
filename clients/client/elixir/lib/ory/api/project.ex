# NOTE: This file is auto generated by OpenAPI Generator 6.6.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Ory.Api.Project do
  @moduledoc """
  API calls for all endpoints tagged `Project`.
  """

  alias Ory.Connection
  import Ory.RequestBuilder

  @doc """
  Create a Project
  Creates a new project.

  ### Parameters

  - `connection` (Ory.Connection): Connection to server
  - `opts` (keyword): Optional parameters
    - `:body` (CreateProjectBody): 

  ### Returns

  - `{:ok, Ory.Model.Project.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec create_project(Tesla.Env.client, keyword()) :: {:ok, Ory.Model.Project.t} | {:ok, Ory.Model.ErrorGeneric.t} | {:error, Tesla.Env.t}
  def create_project(connection, opts \\ []) do
    optional_params = %{
      :body => :body
    }

    request =
      %{}
      |> method(:post)
      |> url("/projects")
      |> add_optional_params(optional_params, opts)
      |> ensure_body()
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {201, %Ory.Model.Project{}},
      {401, %Ory.Model.ErrorGeneric{}},
      {403, %Ory.Model.ErrorGeneric{}},
      {404, %Ory.Model.ErrorGeneric{}},
      {:default, %Ory.Model.ErrorGeneric{}}
    ])
  end

  @doc """
  Create project API token
  Create an API token for a project.

  ### Parameters

  - `connection` (Ory.Connection): Connection to server
  - `project` (String.t): The Project ID or Project slug
  - `opts` (keyword): Optional parameters
    - `:body` (CreateProjectApiKeyRequest): 

  ### Returns

  - `{:ok, Ory.Model.ProjectApiKey.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec create_project_api_key(Tesla.Env.client, String.t, keyword()) :: {:ok, Ory.Model.ProjectApiKey.t} | {:ok, Ory.Model.ErrorGeneric.t} | {:error, Tesla.Env.t}
  def create_project_api_key(connection, project, opts \\ []) do
    optional_params = %{
      :body => :body
    }

    request =
      %{}
      |> method(:post)
      |> url("/projects/#{project}/tokens")
      |> add_optional_params(optional_params, opts)
      |> ensure_body()
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {201, %Ory.Model.ProjectApiKey{}},
      {:default, %Ory.Model.ErrorGeneric{}}
    ])
  end

  @doc """
  Delete project API token
  Deletes an API token and immediately removes it.

  ### Parameters

  - `connection` (Ory.Connection): Connection to server
  - `project` (String.t): The Project ID or Project slug
  - `token_id` (String.t): The Token ID
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, nil}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec delete_project_api_key(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, nil} | {:ok, Ory.Model.ErrorGeneric.t} | {:error, Tesla.Env.t}
  def delete_project_api_key(connection, project, token_id, _opts \\ []) do
    request =
      %{}
      |> method(:delete)
      |> url("/projects/#{project}/tokens/#{token_id}")
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {204, false},
      {:default, %Ory.Model.ErrorGeneric{}}
    ])
  end

  @doc """
  Returns the Ory Network Project selected in the Ory Network Console
  Use this API to get your active project in the Ory Network Console UI.

  ### Parameters

  - `connection` (Ory.Connection): Connection to server
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, Ory.Model.ActiveProjectInConsole.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec get_active_project_in_console(Tesla.Env.client, keyword()) :: {:ok, Ory.Model.GenericError.t} | {:ok, Ory.Model.ActiveProjectInConsole.t} | {:error, Tesla.Env.t}
  def get_active_project_in_console(connection, _opts \\ []) do
    request =
      %{}
      |> method(:get)
      |> url("/console/active/project")
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, %Ory.Model.ActiveProjectInConsole{}},
      {401, %Ory.Model.GenericError{}},
      {:default, %Ory.Model.GenericError{}}
    ])
  end

  @doc """
  Get a Project
  Get a projects you have access to by its ID.

  ### Parameters

  - `connection` (Ory.Connection): Connection to server
  - `project_id` (String.t): Project ID  The project's ID.
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, Ory.Model.Project.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec get_project(Tesla.Env.client, String.t, keyword()) :: {:ok, Ory.Model.Project.t} | {:ok, Ory.Model.ErrorGeneric.t} | {:error, Tesla.Env.t}
  def get_project(connection, project_id, _opts \\ []) do
    request =
      %{}
      |> method(:get)
      |> url("/projects/#{project_id}")
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, %Ory.Model.Project{}},
      {401, %Ory.Model.ErrorGeneric{}},
      {403, %Ory.Model.ErrorGeneric{}},
      {404, %Ory.Model.ErrorGeneric{}},
      {:default, %Ory.Model.ErrorGeneric{}}
    ])
  end

  @doc """
  Get all members associated with this project
  This endpoint requires the user to be a member of the project with the role `OWNER` or `DEVELOPER`.

  ### Parameters

  - `connection` (Ory.Connection): Connection to server
  - `project_id` (String.t): Project ID  The project's ID.
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, [%CloudAccount{}, ...]}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec get_project_members(Tesla.Env.client, String.t, keyword()) :: {:ok, Ory.Model.GenericError.t} | {:ok, list(Ory.Model.CloudAccount.t)} | {:error, Tesla.Env.t}
  def get_project_members(connection, project_id, _opts \\ []) do
    request =
      %{}
      |> method(:get)
      |> url("/projects/#{project_id}/members")
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, [%Ory.Model.CloudAccount{}]},
      {401, %Ory.Model.GenericError{}},
      {406, %Ory.Model.GenericError{}},
      {:default, %Ory.Model.GenericError{}}
    ])
  end

  @doc """
  Retrieves project metrics for the specified event type and time range

  ### Parameters

  - `connection` (Ory.Connection): Connection to server
  - `project_id` (String.t): Project ID
  - `event_type` (String.t): The event type to query for
  - `resolution` (String.t): The resolution of the buckets  The minimum resolution is 1 hour.
  - `from` (DateTime.t): The start time of the time window
  - `to` (DateTime.t): The end time of the time window
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, Ory.Model.GetProjectMetricsResponse.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec get_project_metrics(Tesla.Env.client, String.t, String.t, String.t, DateTime.t, DateTime.t, keyword()) :: {:ok, Ory.Model.GetProjectMetricsResponse.t} | {:ok, Ory.Model.GenericError.t} | {:error, Tesla.Env.t}
  def get_project_metrics(connection, project_id, event_type, resolution, from, to, _opts \\ []) do
    request =
      %{}
      |> method(:get)
      |> url("/projects/#{project_id}/metrics")
      |> add_param(:query, :event_type, event_type)
      |> add_param(:query, :resolution, resolution)
      |> add_param(:query, :from, from)
      |> add_param(:query, :to, to)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, %Ory.Model.GetProjectMetricsResponse{}},
      {400, %Ory.Model.GenericError{}},
      {403, %Ory.Model.GenericError{}},
      {:default, %Ory.Model.GenericError{}}
    ])
  end

  @doc """
  List a project's API Tokens
  A list of all the project's API tokens.

  ### Parameters

  - `connection` (Ory.Connection): Connection to server
  - `project` (String.t): The Project ID or Project slug
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, [%ProjectApiKey{}, ...]}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec list_project_api_keys(Tesla.Env.client, String.t, keyword()) :: {:ok, Ory.Model.ErrorGeneric.t} | {:ok, list(Ory.Model.ProjectApiKey.t)} | {:error, Tesla.Env.t}
  def list_project_api_keys(connection, project, _opts \\ []) do
    request =
      %{}
      |> method(:get)
      |> url("/projects/#{project}/tokens")
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, [%Ory.Model.ProjectApiKey{}]},
      {:default, %Ory.Model.ErrorGeneric{}}
    ])
  end

  @doc """
  List All Projects
  Lists all projects you have access to.

  ### Parameters

  - `connection` (Ory.Connection): Connection to server
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, [%ProjectMetadata{}, ...]}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec list_projects(Tesla.Env.client, keyword()) :: {:ok, Ory.Model.ErrorGeneric.t} | {:ok, list(Ory.Model.ProjectMetadata.t)} | {:error, Tesla.Env.t}
  def list_projects(connection, _opts \\ []) do
    request =
      %{}
      |> method(:get)
      |> url("/projects")
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, [%Ory.Model.ProjectMetadata{}]},
      {401, %Ory.Model.ErrorGeneric{}},
      {403, %Ory.Model.ErrorGeneric{}},
      {404, %Ory.Model.ErrorGeneric{}},
      {:default, %Ory.Model.ErrorGeneric{}}
    ])
  end

  @doc """
  Patch an Ory Network Project Configuration
  Deprecated: Use the `patchProjectWithRevision` endpoint instead to specify the exact revision the patch was generated for.  This endpoints allows you to patch individual Ory Network project configuration keys for Ory's services (identity, permission, ...). The configuration format is fully compatible with the open source projects for the respective services (e.g. Ory Kratos for Identity, Ory Keto for Permissions).  This endpoint expects the `version` key to be set in the payload. If it is unset, it will try to import the config as if it is from the most recent version.  If you have an older version of a configuration, you should set the version key in the payload!  While this endpoint is able to process all configuration items related to features (e.g. password reset), it does not support operational configuration items (e.g. port, tracing, logging) otherwise available in the open source.  For configuration items that can not be translated to the Ory Network, this endpoint will return a list of warnings to help you understand which parts of your config could not be processed.

  ### Parameters

  - `connection` (Ory.Connection): Connection to server
  - `project_id` (String.t): Project ID  The project's ID.
  - `opts` (keyword): Optional parameters
    - `:body` ([Ory.Model.JsonPatch.t]): 

  ### Returns

  - `{:ok, Ory.Model.SuccessfulProjectUpdate.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec patch_project(Tesla.Env.client, String.t, keyword()) :: {:ok, Ory.Model.ErrorGeneric.t} | {:ok, Ory.Model.SuccessfulProjectUpdate.t} | {:error, Tesla.Env.t}
  def patch_project(connection, project_id, opts \\ []) do
    optional_params = %{
      :body => :body
    }

    request =
      %{}
      |> method(:patch)
      |> url("/projects/#{project_id}")
      |> add_optional_params(optional_params, opts)
      |> ensure_body()
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, %Ory.Model.SuccessfulProjectUpdate{}},
      {400, %Ory.Model.ErrorGeneric{}},
      {401, %Ory.Model.ErrorGeneric{}},
      {403, %Ory.Model.ErrorGeneric{}},
      {404, %Ory.Model.ErrorGeneric{}},
      {:default, %Ory.Model.ErrorGeneric{}}
    ])
  end

  @doc """
  Irrecoverably purge a project
  !! Use with extreme caution !!  Using this API endpoint you can purge (completely delete) a project and its data. This action can not be undone and will delete ALL your data.  !! Use with extreme caution !!

  ### Parameters

  - `connection` (Ory.Connection): Connection to server
  - `project_id` (String.t): Project ID  The project's ID.
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, nil}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec purge_project(Tesla.Env.client, String.t, keyword()) :: {:ok, nil} | {:ok, Ory.Model.GenericError.t} | {:error, Tesla.Env.t}
  def purge_project(connection, project_id, _opts \\ []) do
    request =
      %{}
      |> method(:delete)
      |> url("/projects/#{project_id}")
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {204, false},
      {401, %Ory.Model.GenericError{}},
      {403, %Ory.Model.GenericError{}},
      {404, %Ory.Model.GenericError{}},
      {:default, %Ory.Model.GenericError{}}
    ])
  end

  @doc """
  Remove a member associated with this project
  This also sets their invite status to `REMOVED`. This endpoint requires the user to be a member of the project with the role `OWNER`.

  ### Parameters

  - `connection` (Ory.Connection): Connection to server
  - `project_id` (String.t): Project ID  The project's ID.
  - `member_id` (String.t): Member ID
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, nil}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec remove_project_member(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, nil} | {:ok, Ory.Model.GenericError.t} | {:error, Tesla.Env.t}
  def remove_project_member(connection, project_id, member_id, _opts \\ []) do
    request =
      %{}
      |> method(:delete)
      |> url("/projects/#{project_id}/members/#{member_id}")
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {204, false},
      {401, %Ory.Model.GenericError{}},
      {406, %Ory.Model.GenericError{}},
      {:default, %Ory.Model.GenericError{}}
    ])
  end

  @doc """
  Sets the Ory Network Project active in the Ory Network Console
  Use this API to set your active project in the Ory Network Console UI.

  ### Parameters

  - `connection` (Ory.Connection): Connection to server
  - `opts` (keyword): Optional parameters
    - `:body` (SetActiveProjectInConsoleBody): 

  ### Returns

  - `{:ok, nil}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec set_active_project_in_console(Tesla.Env.client, keyword()) :: {:ok, nil} | {:ok, Ory.Model.GenericError.t} | {:error, Tesla.Env.t}
  def set_active_project_in_console(connection, opts \\ []) do
    optional_params = %{
      :body => :body
    }

    request =
      %{}
      |> method(:put)
      |> url("/console/active/project")
      |> add_optional_params(optional_params, opts)
      |> ensure_body()
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {204, false},
      {401, %Ory.Model.GenericError{}},
      {:default, %Ory.Model.GenericError{}}
    ])
  end

  @doc """
  Update an Ory Network Project Configuration
  This endpoints allows you to update the Ory Network project configuration for individual services (identity, permission, ...). The configuration is fully compatible with the open source projects for the respective services (e.g. Ory Kratos for Identity, Ory Keto for Permissions).  This endpoint expects the `version` key to be set in the payload. If it is unset, it will try to import the config as if it is from the most recent version.  If you have an older version of a configuration, you should set the version key in the payload!  While this endpoint is able to process all configuration items related to features (e.g. password reset), it does not support operational configuration items (e.g. port, tracing, logging) otherwise available in the open source.  For configuration items that can not be translated to the Ory Network, this endpoint will return a list of warnings to help you understand which parts of your config could not be processed.  Be aware that updating any service's configuration will completely override your current configuration for that service!

  ### Parameters

  - `connection` (Ory.Connection): Connection to server
  - `project_id` (String.t): Project ID  The project's ID.
  - `opts` (keyword): Optional parameters
    - `:body` (SetProject): 

  ### Returns

  - `{:ok, Ory.Model.SuccessfulProjectUpdate.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec set_project(Tesla.Env.client, String.t, keyword()) :: {:ok, Ory.Model.ErrorGeneric.t} | {:ok, Ory.Model.SuccessfulProjectUpdate.t} | {:error, Tesla.Env.t}
  def set_project(connection, project_id, opts \\ []) do
    optional_params = %{
      :body => :body
    }

    request =
      %{}
      |> method(:put)
      |> url("/projects/#{project_id}")
      |> add_optional_params(optional_params, opts)
      |> ensure_body()
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, %Ory.Model.SuccessfulProjectUpdate{}},
      {400, %Ory.Model.ErrorGeneric{}},
      {401, %Ory.Model.ErrorGeneric{}},
      {403, %Ory.Model.ErrorGeneric{}},
      {404, %Ory.Model.ErrorGeneric{}},
      {:default, %Ory.Model.ErrorGeneric{}}
    ])
  end
end
