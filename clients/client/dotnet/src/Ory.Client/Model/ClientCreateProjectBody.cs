/*
 * Ory APIs
 *
 * Documentation for all public and administrative Ory APIs. Administrative APIs can only be accessed with a valid Personal Access Token. Public APIs are mostly used in browsers. 
 *
 * The version of the OpenAPI document: v1.13.4
 * Contact: support@ory.sh
 * Generated by: https://github.com/openapitools/openapi-generator.git
 */


using System;
using System.Collections;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.IO;
using System.Runtime.Serialization;
using System.Text;
using System.Text.RegularExpressions;
using Newtonsoft.Json;
using Newtonsoft.Json.Converters;
using Newtonsoft.Json.Linq;
using System.ComponentModel.DataAnnotations;
using OpenAPIDateConverter = Ory.Client.Client.OpenAPIDateConverter;

namespace Ory.Client.Model
{
    /// <summary>
    /// Create Project Request Body
    /// </summary>
    [DataContract(Name = "createProjectBody")]
    public partial class ClientCreateProjectBody : IValidatableObject
    {
        /// <summary>
        /// The environment of the project. prod Production stage Staging dev Development
        /// </summary>
        /// <value>The environment of the project. prod Production stage Staging dev Development</value>
        [JsonConverter(typeof(StringEnumConverter))]
        public enum VarEnvironmentEnum
        {
            /// <summary>
            /// Enum Prod for value: prod
            /// </summary>
            [EnumMember(Value = "prod")]
            Prod = 1,

            /// <summary>
            /// Enum Stage for value: stage
            /// </summary>
            [EnumMember(Value = "stage")]
            Stage = 2,

            /// <summary>
            /// Enum Dev for value: dev
            /// </summary>
            [EnumMember(Value = "dev")]
            Dev = 3
        }


        /// <summary>
        /// The environment of the project. prod Production stage Staging dev Development
        /// </summary>
        /// <value>The environment of the project. prod Production stage Staging dev Development</value>
        [DataMember(Name = "environment", IsRequired = true, EmitDefaultValue = true)]
        public VarEnvironmentEnum VarEnvironment { get; set; }
        /// <summary>
        /// Home Region  The home region of the project. This is the region where the project will be created. eu-central EUCentral us-east USEast us-west USWest global Global
        /// </summary>
        /// <value>Home Region  The home region of the project. This is the region where the project will be created. eu-central EUCentral us-east USEast us-west USWest global Global</value>
        [JsonConverter(typeof(StringEnumConverter))]
        public enum HomeRegionEnum
        {
            /// <summary>
            /// Enum EuCentral for value: eu-central
            /// </summary>
            [EnumMember(Value = "eu-central")]
            EuCentral = 1,

            /// <summary>
            /// Enum UsEast for value: us-east
            /// </summary>
            [EnumMember(Value = "us-east")]
            UsEast = 2,

            /// <summary>
            /// Enum UsWest for value: us-west
            /// </summary>
            [EnumMember(Value = "us-west")]
            UsWest = 3,

            /// <summary>
            /// Enum Global for value: global
            /// </summary>
            [EnumMember(Value = "global")]
            Global = 4
        }


        /// <summary>
        /// Home Region  The home region of the project. This is the region where the project will be created. eu-central EUCentral us-east USEast us-west USWest global Global
        /// </summary>
        /// <value>Home Region  The home region of the project. This is the region where the project will be created. eu-central EUCentral us-east USEast us-west USWest global Global</value>
        [DataMember(Name = "home_region", EmitDefaultValue = false)]
        public HomeRegionEnum? HomeRegion { get; set; }
        /// <summary>
        /// Initializes a new instance of the <see cref="ClientCreateProjectBody" /> class.
        /// </summary>
        [JsonConstructorAttribute]
        protected ClientCreateProjectBody()
        {
            this.AdditionalProperties = new Dictionary<string, object>();
        }
        /// <summary>
        /// Initializes a new instance of the <see cref="ClientCreateProjectBody" /> class.
        /// </summary>
        /// <param name="varEnvironment">The environment of the project. prod Production stage Staging dev Development (required).</param>
        /// <param name="homeRegion">Home Region  The home region of the project. This is the region where the project will be created. eu-central EUCentral us-east USEast us-west USWest global Global.</param>
        /// <param name="name">The name of the project to be created (required).</param>
        /// <param name="workspaceId">The workspace to create the project in..</param>
        public ClientCreateProjectBody(VarEnvironmentEnum varEnvironment = default(VarEnvironmentEnum), HomeRegionEnum? homeRegion = default(HomeRegionEnum?), string name = default(string), string workspaceId = default(string))
        {
            this.VarEnvironment = varEnvironment;
            // to ensure "name" is required (not null)
            if (name == null)
            {
                throw new ArgumentNullException("name is a required property for ClientCreateProjectBody and cannot be null");
            }
            this.Name = name;
            this.HomeRegion = homeRegion;
            this.WorkspaceId = workspaceId;
            this.AdditionalProperties = new Dictionary<string, object>();
        }

        /// <summary>
        /// The name of the project to be created
        /// </summary>
        /// <value>The name of the project to be created</value>
        [DataMember(Name = "name", IsRequired = true, EmitDefaultValue = true)]
        public string Name { get; set; }

        /// <summary>
        /// The workspace to create the project in.
        /// </summary>
        /// <value>The workspace to create the project in.</value>
        [DataMember(Name = "workspace_id", EmitDefaultValue = false)]
        public string WorkspaceId { get; set; }

        /// <summary>
        /// Gets or Sets additional properties
        /// </summary>
        [JsonExtensionData]
        public IDictionary<string, object> AdditionalProperties { get; set; }

        /// <summary>
        /// Returns the string presentation of the object
        /// </summary>
        /// <returns>String presentation of the object</returns>
        public override string ToString()
        {
            StringBuilder sb = new StringBuilder();
            sb.Append("class ClientCreateProjectBody {\n");
            sb.Append("  VarEnvironment: ").Append(VarEnvironment).Append("\n");
            sb.Append("  HomeRegion: ").Append(HomeRegion).Append("\n");
            sb.Append("  Name: ").Append(Name).Append("\n");
            sb.Append("  WorkspaceId: ").Append(WorkspaceId).Append("\n");
            sb.Append("  AdditionalProperties: ").Append(AdditionalProperties).Append("\n");
            sb.Append("}\n");
            return sb.ToString();
        }

        /// <summary>
        /// Returns the JSON string presentation of the object
        /// </summary>
        /// <returns>JSON string presentation of the object</returns>
        public virtual string ToJson()
        {
            return Newtonsoft.Json.JsonConvert.SerializeObject(this, Newtonsoft.Json.Formatting.Indented);
        }

        /// <summary>
        /// To validate all properties of the instance
        /// </summary>
        /// <param name="validationContext">Validation context</param>
        /// <returns>Validation Result</returns>
        IEnumerable<ValidationResult> IValidatableObject.Validate(ValidationContext validationContext)
        {
            yield break;
        }
    }

}
