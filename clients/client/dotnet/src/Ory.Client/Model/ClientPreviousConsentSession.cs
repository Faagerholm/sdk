/*
 * Ory APIs
 *
 * Documentation for all public and administrative Ory APIs. Administrative APIs can only be accessed with a valid Personal Access Token. Public APIs are mostly used in browsers. 
 *
 * The version of the OpenAPI document: v0.2.0-alpha.40
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
    /// The response used to return used consent requests same as HandledLoginRequest, just with consent_request exposed as json
    /// </summary>
    [DataContract(Name = "PreviousConsentSession")]
    public partial class ClientPreviousConsentSession : IEquatable<ClientPreviousConsentSession>, IValidatableObject
    {
        /// <summary>
        /// Initializes a new instance of the <see cref="ClientPreviousConsentSession" /> class.
        /// </summary>
        /// <param name="consentRequest">consentRequest.</param>
        /// <param name="grantAccessTokenAudience">grantAccessTokenAudience.</param>
        /// <param name="grantScope">grantScope.</param>
        /// <param name="handledAt">handledAt.</param>
        /// <param name="remember">Remember, if set to true, tells ORY Hydra to remember this consent authorization and reuse it if the same client asks the same user for the same, or a subset of, scope..</param>
        /// <param name="rememberFor">RememberFor sets how long the consent authorization should be remembered for in seconds. If set to &#x60;0&#x60;, the authorization will be remembered indefinitely..</param>
        /// <param name="session">session.</param>
        public ClientPreviousConsentSession(ClientConsentRequest consentRequest = default(ClientConsentRequest), List<string> grantAccessTokenAudience = default(List<string>), List<string> grantScope = default(List<string>), DateTime handledAt = default(DateTime), bool remember = default(bool), long rememberFor = default(long), ClientConsentRequestSession session = default(ClientConsentRequestSession))
        {
            this.ConsentRequest = consentRequest;
            this.GrantAccessTokenAudience = grantAccessTokenAudience;
            this.GrantScope = grantScope;
            this.HandledAt = handledAt;
            this.Remember = remember;
            this.RememberFor = rememberFor;
            this.Session = session;
            this.AdditionalProperties = new Dictionary<string, object>();
        }

        /// <summary>
        /// Gets or Sets ConsentRequest
        /// </summary>
        [DataMember(Name = "consent_request", EmitDefaultValue = false)]
        public ClientConsentRequest ConsentRequest { get; set; }

        /// <summary>
        /// Gets or Sets GrantAccessTokenAudience
        /// </summary>
        [DataMember(Name = "grant_access_token_audience", EmitDefaultValue = false)]
        public List<string> GrantAccessTokenAudience { get; set; }

        /// <summary>
        /// Gets or Sets GrantScope
        /// </summary>
        [DataMember(Name = "grant_scope", EmitDefaultValue = false)]
        public List<string> GrantScope { get; set; }

        /// <summary>
        /// Gets or Sets HandledAt
        /// </summary>
        [DataMember(Name = "handled_at", EmitDefaultValue = false)]
        public DateTime HandledAt { get; set; }

        /// <summary>
        /// Remember, if set to true, tells ORY Hydra to remember this consent authorization and reuse it if the same client asks the same user for the same, or a subset of, scope.
        /// </summary>
        /// <value>Remember, if set to true, tells ORY Hydra to remember this consent authorization and reuse it if the same client asks the same user for the same, or a subset of, scope.</value>
        [DataMember(Name = "remember", EmitDefaultValue = true)]
        public bool Remember { get; set; }

        /// <summary>
        /// RememberFor sets how long the consent authorization should be remembered for in seconds. If set to &#x60;0&#x60;, the authorization will be remembered indefinitely.
        /// </summary>
        /// <value>RememberFor sets how long the consent authorization should be remembered for in seconds. If set to &#x60;0&#x60;, the authorization will be remembered indefinitely.</value>
        [DataMember(Name = "remember_for", EmitDefaultValue = false)]
        public long RememberFor { get; set; }

        /// <summary>
        /// Gets or Sets Session
        /// </summary>
        [DataMember(Name = "session", EmitDefaultValue = false)]
        public ClientConsentRequestSession Session { get; set; }

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
            sb.Append("class ClientPreviousConsentSession {\n");
            sb.Append("  ConsentRequest: ").Append(ConsentRequest).Append("\n");
            sb.Append("  GrantAccessTokenAudience: ").Append(GrantAccessTokenAudience).Append("\n");
            sb.Append("  GrantScope: ").Append(GrantScope).Append("\n");
            sb.Append("  HandledAt: ").Append(HandledAt).Append("\n");
            sb.Append("  Remember: ").Append(Remember).Append("\n");
            sb.Append("  RememberFor: ").Append(RememberFor).Append("\n");
            sb.Append("  Session: ").Append(Session).Append("\n");
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
        /// Returns true if objects are equal
        /// </summary>
        /// <param name="input">Object to be compared</param>
        /// <returns>Boolean</returns>
        public override bool Equals(object input)
        {
            return this.Equals(input as ClientPreviousConsentSession);
        }

        /// <summary>
        /// Returns true if ClientPreviousConsentSession instances are equal
        /// </summary>
        /// <param name="input">Instance of ClientPreviousConsentSession to be compared</param>
        /// <returns>Boolean</returns>
        public bool Equals(ClientPreviousConsentSession input)
        {
            if (input == null)
            {
                return false;
            }
            return 
                (
                    this.ConsentRequest == input.ConsentRequest ||
                    (this.ConsentRequest != null &&
                    this.ConsentRequest.Equals(input.ConsentRequest))
                ) && 
                (
                    this.GrantAccessTokenAudience == input.GrantAccessTokenAudience ||
                    this.GrantAccessTokenAudience != null &&
                    input.GrantAccessTokenAudience != null &&
                    this.GrantAccessTokenAudience.SequenceEqual(input.GrantAccessTokenAudience)
                ) && 
                (
                    this.GrantScope == input.GrantScope ||
                    this.GrantScope != null &&
                    input.GrantScope != null &&
                    this.GrantScope.SequenceEqual(input.GrantScope)
                ) && 
                (
                    this.HandledAt == input.HandledAt ||
                    (this.HandledAt != null &&
                    this.HandledAt.Equals(input.HandledAt))
                ) && 
                (
                    this.Remember == input.Remember ||
                    this.Remember.Equals(input.Remember)
                ) && 
                (
                    this.RememberFor == input.RememberFor ||
                    this.RememberFor.Equals(input.RememberFor)
                ) && 
                (
                    this.Session == input.Session ||
                    (this.Session != null &&
                    this.Session.Equals(input.Session))
                )
                && (this.AdditionalProperties.Count == input.AdditionalProperties.Count && !this.AdditionalProperties.Except(input.AdditionalProperties).Any());
        }

        /// <summary>
        /// Gets the hash code
        /// </summary>
        /// <returns>Hash code</returns>
        public override int GetHashCode()
        {
            unchecked // Overflow is fine, just wrap
            {
                int hashCode = 41;
                if (this.ConsentRequest != null)
                {
                    hashCode = (hashCode * 59) + this.ConsentRequest.GetHashCode();
                }
                if (this.GrantAccessTokenAudience != null)
                {
                    hashCode = (hashCode * 59) + this.GrantAccessTokenAudience.GetHashCode();
                }
                if (this.GrantScope != null)
                {
                    hashCode = (hashCode * 59) + this.GrantScope.GetHashCode();
                }
                if (this.HandledAt != null)
                {
                    hashCode = (hashCode * 59) + this.HandledAt.GetHashCode();
                }
                hashCode = (hashCode * 59) + this.Remember.GetHashCode();
                hashCode = (hashCode * 59) + this.RememberFor.GetHashCode();
                if (this.Session != null)
                {
                    hashCode = (hashCode * 59) + this.Session.GetHashCode();
                }
                if (this.AdditionalProperties != null)
                {
                    hashCode = (hashCode * 59) + this.AdditionalProperties.GetHashCode();
                }
                return hashCode;
            }
        }

        /// <summary>
        /// To validate all properties of the instance
        /// </summary>
        /// <param name="validationContext">Validation context</param>
        /// <returns>Validation Result</returns>
        public IEnumerable<System.ComponentModel.DataAnnotations.ValidationResult> Validate(ValidationContext validationContext)
        {
            yield break;
        }
    }

}
