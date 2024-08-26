/*
 * Ory APIs
 *
 * Documentation for all public and administrative Ory APIs. Administrative APIs can only be accessed with a valid Personal Access Token. Public APIs are mostly used in browsers. 
 *
 * The version of the OpenAPI document: v1.14.4
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
    /// ClientIdentityWithCredentialsOidcConfig
    /// </summary>
    [DataContract(Name = "identityWithCredentialsOidcConfig")]
    public partial class ClientIdentityWithCredentialsOidcConfig : IValidatableObject
    {
        /// <summary>
        /// Initializes a new instance of the <see cref="ClientIdentityWithCredentialsOidcConfig" /> class.
        /// </summary>
        /// <param name="config">config.</param>
        /// <param name="providers">A list of OpenID Connect Providers.</param>
        public ClientIdentityWithCredentialsOidcConfig(ClientIdentityWithCredentialsPasswordConfig config = default(ClientIdentityWithCredentialsPasswordConfig), List<ClientIdentityWithCredentialsOidcConfigProvider> providers = default(List<ClientIdentityWithCredentialsOidcConfigProvider>))
        {
            this.Config = config;
            this.Providers = providers;
            this.AdditionalProperties = new Dictionary<string, object>();
        }

        /// <summary>
        /// Gets or Sets Config
        /// </summary>
        [DataMember(Name = "config", EmitDefaultValue = false)]
        public ClientIdentityWithCredentialsPasswordConfig Config { get; set; }

        /// <summary>
        /// A list of OpenID Connect Providers
        /// </summary>
        /// <value>A list of OpenID Connect Providers</value>
        [DataMember(Name = "providers", EmitDefaultValue = false)]
        public List<ClientIdentityWithCredentialsOidcConfigProvider> Providers { get; set; }

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
            sb.Append("class ClientIdentityWithCredentialsOidcConfig {\n");
            sb.Append("  Config: ").Append(Config).Append("\n");
            sb.Append("  Providers: ").Append(Providers).Append("\n");
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
