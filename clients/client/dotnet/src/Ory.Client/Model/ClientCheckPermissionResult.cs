/*
 * Ory APIs
 *
 * Documentation for all public and administrative Ory APIs. Administrative APIs can only be accessed with a valid Personal Access Token. Public APIs are mostly used in browsers. 
 *
 * The version of the OpenAPI document: v1.14.1
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
    /// The content of the allowed field is mirrored in the HTTP status code.
    /// </summary>
    [DataContract(Name = "checkPermissionResult")]
    public partial class ClientCheckPermissionResult : IValidatableObject
    {
        /// <summary>
        /// Initializes a new instance of the <see cref="ClientCheckPermissionResult" /> class.
        /// </summary>
        [JsonConstructorAttribute]
        protected ClientCheckPermissionResult()
        {
            this.AdditionalProperties = new Dictionary<string, object>();
        }
        /// <summary>
        /// Initializes a new instance of the <see cref="ClientCheckPermissionResult" /> class.
        /// </summary>
        /// <param name="allowed">whether the relation tuple is allowed (required).</param>
        public ClientCheckPermissionResult(bool allowed = default(bool))
        {
            this.Allowed = allowed;
            this.AdditionalProperties = new Dictionary<string, object>();
        }

        /// <summary>
        /// whether the relation tuple is allowed
        /// </summary>
        /// <value>whether the relation tuple is allowed</value>
        [DataMember(Name = "allowed", IsRequired = true, EmitDefaultValue = true)]
        public bool Allowed { get; set; }

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
            sb.Append("class ClientCheckPermissionResult {\n");
            sb.Append("  Allowed: ").Append(Allowed).Append("\n");
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
