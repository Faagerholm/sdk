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
    /// Update Login Flow with Passkey Method
    /// </summary>
    [DataContract(Name = "updateLoginFlowWithPasskeyMethod")]
    public partial class ClientUpdateLoginFlowWithPasskeyMethod : IValidatableObject
    {
        /// <summary>
        /// Initializes a new instance of the <see cref="ClientUpdateLoginFlowWithPasskeyMethod" /> class.
        /// </summary>
        [JsonConstructorAttribute]
        protected ClientUpdateLoginFlowWithPasskeyMethod()
        {
            this.AdditionalProperties = new Dictionary<string, object>();
        }
        /// <summary>
        /// Initializes a new instance of the <see cref="ClientUpdateLoginFlowWithPasskeyMethod" /> class.
        /// </summary>
        /// <param name="csrfToken">Sending the anti-csrf token is only required for browser login flows..</param>
        /// <param name="method">Method should be set to \&quot;passkey\&quot; when logging in using the Passkey strategy. (required).</param>
        /// <param name="passkeyLogin">Login a WebAuthn Security Key  This must contain the ID of the WebAuthN connection..</param>
        public ClientUpdateLoginFlowWithPasskeyMethod(string csrfToken = default(string), string method = default(string), string passkeyLogin = default(string))
        {
            // to ensure "method" is required (not null)
            if (method == null)
            {
                throw new ArgumentNullException("method is a required property for ClientUpdateLoginFlowWithPasskeyMethod and cannot be null");
            }
            this.Method = method;
            this.CsrfToken = csrfToken;
            this.PasskeyLogin = passkeyLogin;
            this.AdditionalProperties = new Dictionary<string, object>();
        }

        /// <summary>
        /// Sending the anti-csrf token is only required for browser login flows.
        /// </summary>
        /// <value>Sending the anti-csrf token is only required for browser login flows.</value>
        [DataMember(Name = "csrf_token", EmitDefaultValue = false)]
        public string CsrfToken { get; set; }

        /// <summary>
        /// Method should be set to \&quot;passkey\&quot; when logging in using the Passkey strategy.
        /// </summary>
        /// <value>Method should be set to \&quot;passkey\&quot; when logging in using the Passkey strategy.</value>
        [DataMember(Name = "method", IsRequired = true, EmitDefaultValue = true)]
        public string Method { get; set; }

        /// <summary>
        /// Login a WebAuthn Security Key  This must contain the ID of the WebAuthN connection.
        /// </summary>
        /// <value>Login a WebAuthn Security Key  This must contain the ID of the WebAuthN connection.</value>
        [DataMember(Name = "passkey_login", EmitDefaultValue = false)]
        public string PasskeyLogin { get; set; }

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
            sb.Append("class ClientUpdateLoginFlowWithPasskeyMethod {\n");
            sb.Append("  CsrfToken: ").Append(CsrfToken).Append("\n");
            sb.Append("  Method: ").Append(Method).Append("\n");
            sb.Append("  PasskeyLogin: ").Append(PasskeyLogin).Append("\n");
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
