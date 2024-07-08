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
    /// ClientProjectEventsDatapoint
    /// </summary>
    [DataContract(Name = "ProjectEventsDatapoint")]
    public partial class ClientProjectEventsDatapoint : IValidatableObject
    {
        /// <summary>
        /// Initializes a new instance of the <see cref="ClientProjectEventsDatapoint" /> class.
        /// </summary>
        [JsonConstructorAttribute]
        protected ClientProjectEventsDatapoint()
        {
            this.AdditionalProperties = new Dictionary<string, object>();
        }
        /// <summary>
        /// Initializes a new instance of the <see cref="ClientProjectEventsDatapoint" /> class.
        /// </summary>
        /// <param name="attributes">Event attributes with details (required).</param>
        /// <param name="name">Name of the event (required).</param>
        /// <param name="timestamp">Time of occurence (required).</param>
        public ClientProjectEventsDatapoint(List<ClientAttribute> attributes = default(List<ClientAttribute>), string name = default(string), DateTime timestamp = default(DateTime))
        {
            // to ensure "attributes" is required (not null)
            if (attributes == null)
            {
                throw new ArgumentNullException("attributes is a required property for ClientProjectEventsDatapoint and cannot be null");
            }
            this.Attributes = attributes;
            // to ensure "name" is required (not null)
            if (name == null)
            {
                throw new ArgumentNullException("name is a required property for ClientProjectEventsDatapoint and cannot be null");
            }
            this.Name = name;
            this.Timestamp = timestamp;
            this.AdditionalProperties = new Dictionary<string, object>();
        }

        /// <summary>
        /// Event attributes with details
        /// </summary>
        /// <value>Event attributes with details</value>
        [DataMember(Name = "attributes", IsRequired = true, EmitDefaultValue = true)]
        public List<ClientAttribute> Attributes { get; set; }

        /// <summary>
        /// Name of the event
        /// </summary>
        /// <value>Name of the event</value>
        [DataMember(Name = "name", IsRequired = true, EmitDefaultValue = true)]
        public string Name { get; set; }

        /// <summary>
        /// Time of occurence
        /// </summary>
        /// <value>Time of occurence</value>
        [DataMember(Name = "timestamp", IsRequired = true, EmitDefaultValue = true)]
        public DateTime Timestamp { get; set; }

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
            sb.Append("class ClientProjectEventsDatapoint {\n");
            sb.Append("  Attributes: ").Append(Attributes).Append("\n");
            sb.Append("  Name: ").Append(Name).Append("\n");
            sb.Append("  Timestamp: ").Append(Timestamp).Append("\n");
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
