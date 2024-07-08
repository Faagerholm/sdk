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
    /// ClientPlan
    /// </summary>
    [DataContract(Name = "Plan")]
    public partial class ClientPlan : IValidatableObject
    {
        /// <summary>
        /// Initializes a new instance of the <see cref="ClientPlan" /> class.
        /// </summary>
        [JsonConstructorAttribute]
        protected ClientPlan()
        {
            this.AdditionalProperties = new Dictionary<string, object>();
        }
        /// <summary>
        /// Initializes a new instance of the <see cref="ClientPlan" /> class.
        /// </summary>
        /// <param name="name">Name is the name of the plan. (required).</param>
        /// <param name="varVersion">Version is the version of the plan. The combination of &#x60;name@version&#x60; must be unique. (required).</param>
        public ClientPlan(string name = default(string), long varVersion = default(long))
        {
            // to ensure "name" is required (not null)
            if (name == null)
            {
                throw new ArgumentNullException("name is a required property for ClientPlan and cannot be null");
            }
            this.Name = name;
            this.VarVersion = varVersion;
            this.AdditionalProperties = new Dictionary<string, object>();
        }

        /// <summary>
        /// Name is the name of the plan.
        /// </summary>
        /// <value>Name is the name of the plan.</value>
        [DataMember(Name = "name", IsRequired = true, EmitDefaultValue = true)]
        public string Name { get; set; }

        /// <summary>
        /// Version is the version of the plan. The combination of &#x60;name@version&#x60; must be unique.
        /// </summary>
        /// <value>Version is the version of the plan. The combination of &#x60;name@version&#x60; must be unique.</value>
        [DataMember(Name = "version", IsRequired = true, EmitDefaultValue = true)]
        public long VarVersion { get; set; }

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
            sb.Append("class ClientPlan {\n");
            sb.Append("  Name: ").Append(Name).Append("\n");
            sb.Append("  VarVersion: ").Append(VarVersion).Append("\n");
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
