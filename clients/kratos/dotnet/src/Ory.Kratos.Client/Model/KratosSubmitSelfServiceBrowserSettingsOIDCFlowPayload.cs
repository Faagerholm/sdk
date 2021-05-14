/*
 * Ory Kratos API
 *
 * Documentation for all public and administrative Ory Kratos APIs. Public and administrative APIs are exposed on different ports. Public APIs can face the public internet without any protection while administrative APIs should never be exposed without prior authorization. To protect the administative API port you should use something like Nginx, Ory Oathkeeper, or any other technology capable of authorizing incoming requests. 
 *
 * The version of the OpenAPI document: v0.6.2-alpha.1
 * Contact: hi@ory.sh
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
using OpenAPIDateConverter = Ory.Kratos.Client.Client.OpenAPIDateConverter;

namespace Ory.Kratos.Client.Model
{
    /// <summary>
    /// KratosSubmitSelfServiceBrowserSettingsOIDCFlowPayload
    /// </summary>
    [DataContract(Name = "submitSelfServiceBrowserSettingsOIDCFlowPayload")]
    public partial class KratosSubmitSelfServiceBrowserSettingsOIDCFlowPayload : IEquatable<KratosSubmitSelfServiceBrowserSettingsOIDCFlowPayload>, IValidatableObject
    {
        /// <summary>
        /// Initializes a new instance of the <see cref="KratosSubmitSelfServiceBrowserSettingsOIDCFlowPayload" /> class.
        /// </summary>
        /// <param name="flow">Flow ID is the flow&#39;s ID.  in: query.</param>
        /// <param name="link">Link this provider  Either this or &#x60;unlink&#x60; must be set.  type: string in: body.</param>
        /// <param name="unlink">Unlink this provider  Either this or &#x60;link&#x60; must be set.  type: string in: body.</param>
        public KratosSubmitSelfServiceBrowserSettingsOIDCFlowPayload(string flow = default(string), string link = default(string), string unlink = default(string))
        {
            this.Flow = flow;
            this.Link = link;
            this.Unlink = unlink;
            this.AdditionalProperties = new Dictionary<string, object>();
        }

        /// <summary>
        /// Flow ID is the flow&#39;s ID.  in: query
        /// </summary>
        /// <value>Flow ID is the flow&#39;s ID.  in: query</value>
        [DataMember(Name = "flow", EmitDefaultValue = false)]
        public string Flow { get; set; }

        /// <summary>
        /// Link this provider  Either this or &#x60;unlink&#x60; must be set.  type: string in: body
        /// </summary>
        /// <value>Link this provider  Either this or &#x60;unlink&#x60; must be set.  type: string in: body</value>
        [DataMember(Name = "link", EmitDefaultValue = false)]
        public string Link { get; set; }

        /// <summary>
        /// Unlink this provider  Either this or &#x60;link&#x60; must be set.  type: string in: body
        /// </summary>
        /// <value>Unlink this provider  Either this or &#x60;link&#x60; must be set.  type: string in: body</value>
        [DataMember(Name = "unlink", EmitDefaultValue = false)]
        public string Unlink { get; set; }

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
            var sb = new StringBuilder();
            sb.Append("class KratosSubmitSelfServiceBrowserSettingsOIDCFlowPayload {\n");
            sb.Append("  Flow: ").Append(Flow).Append("\n");
            sb.Append("  Link: ").Append(Link).Append("\n");
            sb.Append("  Unlink: ").Append(Unlink).Append("\n");
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
            return this.Equals(input as KratosSubmitSelfServiceBrowserSettingsOIDCFlowPayload);
        }

        /// <summary>
        /// Returns true if KratosSubmitSelfServiceBrowserSettingsOIDCFlowPayload instances are equal
        /// </summary>
        /// <param name="input">Instance of KratosSubmitSelfServiceBrowserSettingsOIDCFlowPayload to be compared</param>
        /// <returns>Boolean</returns>
        public bool Equals(KratosSubmitSelfServiceBrowserSettingsOIDCFlowPayload input)
        {
            if (input == null)
                return false;

            return 
                (
                    this.Flow == input.Flow ||
                    (this.Flow != null &&
                    this.Flow.Equals(input.Flow))
                ) && 
                (
                    this.Link == input.Link ||
                    (this.Link != null &&
                    this.Link.Equals(input.Link))
                ) && 
                (
                    this.Unlink == input.Unlink ||
                    (this.Unlink != null &&
                    this.Unlink.Equals(input.Unlink))
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
                if (this.Flow != null)
                    hashCode = hashCode * 59 + this.Flow.GetHashCode();
                if (this.Link != null)
                    hashCode = hashCode * 59 + this.Link.GetHashCode();
                if (this.Unlink != null)
                    hashCode = hashCode * 59 + this.Unlink.GetHashCode();
                if (this.AdditionalProperties != null)
                    hashCode = hashCode * 59 + this.AdditionalProperties.GetHashCode();
                return hashCode;
            }
        }

        /// <summary>
        /// To validate all properties of the instance
        /// </summary>
        /// <param name="validationContext">Validation context</param>
        /// <returns>Validation Result</returns>
        IEnumerable<System.ComponentModel.DataAnnotations.ValidationResult> IValidatableObject.Validate(ValidationContext validationContext)
        {
            yield break;
        }
    }

}
