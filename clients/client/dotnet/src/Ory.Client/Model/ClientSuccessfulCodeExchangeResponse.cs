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
    /// The Response for Registration Flows via API
    /// </summary>
    [DataContract(Name = "successfulCodeExchangeResponse")]
    public partial class ClientSuccessfulCodeExchangeResponse : IValidatableObject
    {
        /// <summary>
        /// Initializes a new instance of the <see cref="ClientSuccessfulCodeExchangeResponse" /> class.
        /// </summary>
        [JsonConstructorAttribute]
        protected ClientSuccessfulCodeExchangeResponse()
        {
            this.AdditionalProperties = new Dictionary<string, object>();
        }
        /// <summary>
        /// Initializes a new instance of the <see cref="ClientSuccessfulCodeExchangeResponse" /> class.
        /// </summary>
        /// <param name="session">session (required).</param>
        /// <param name="sessionToken">The Session Token  A session token is equivalent to a session cookie, but it can be sent in the HTTP Authorization Header:  Authorization: bearer ${session-token}  The session token is only issued for API flows, not for Browser flows!.</param>
        public ClientSuccessfulCodeExchangeResponse(ClientSession session = default(ClientSession), string sessionToken = default(string))
        {
            // to ensure "session" is required (not null)
            if (session == null)
            {
                throw new ArgumentNullException("session is a required property for ClientSuccessfulCodeExchangeResponse and cannot be null");
            }
            this.Session = session;
            this.SessionToken = sessionToken;
            this.AdditionalProperties = new Dictionary<string, object>();
        }

        /// <summary>
        /// Gets or Sets Session
        /// </summary>
        [DataMember(Name = "session", IsRequired = true, EmitDefaultValue = true)]
        public ClientSession Session { get; set; }

        /// <summary>
        /// The Session Token  A session token is equivalent to a session cookie, but it can be sent in the HTTP Authorization Header:  Authorization: bearer ${session-token}  The session token is only issued for API flows, not for Browser flows!
        /// </summary>
        /// <value>The Session Token  A session token is equivalent to a session cookie, but it can be sent in the HTTP Authorization Header:  Authorization: bearer ${session-token}  The session token is only issued for API flows, not for Browser flows!</value>
        [DataMember(Name = "session_token", EmitDefaultValue = false)]
        public string SessionToken { get; set; }

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
            sb.Append("class ClientSuccessfulCodeExchangeResponse {\n");
            sb.Append("  Session: ").Append(Session).Append("\n");
            sb.Append("  SessionToken: ").Append(SessionToken).Append("\n");
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
