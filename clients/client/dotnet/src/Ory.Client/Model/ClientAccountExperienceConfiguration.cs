/*
 * Ory APIs
 *
 * Documentation for all public and administrative Ory APIs. Administrative APIs can only be accessed with a valid Personal Access Token. Public APIs are mostly used in browsers. 
 *
 * The version of the OpenAPI document: v1.13.3
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
    /// ClientAccountExperienceConfiguration
    /// </summary>
    [DataContract(Name = "accountExperienceConfiguration")]
    public partial class ClientAccountExperienceConfiguration : IValidatableObject
    {
        /// <summary>
        /// Initializes a new instance of the <see cref="ClientAccountExperienceConfiguration" /> class.
        /// </summary>
        /// <param name="accountExperienceThemeStylesheet">accountExperienceThemeStylesheet.</param>
        /// <param name="kratosSelfserviceFlowsRecoveryEnabled">kratosSelfserviceFlowsRecoveryEnabled.</param>
        /// <param name="kratosSelfserviceFlowsRegistrationEnabled">kratosSelfserviceFlowsRegistrationEnabled.</param>
        /// <param name="kratosSelfserviceFlowsVerificationEnabled">kratosSelfserviceFlowsVerificationEnabled.</param>
        /// <param name="organizationMap">organizationMap.</param>
        public ClientAccountExperienceConfiguration(string accountExperienceThemeStylesheet = default(string), bool kratosSelfserviceFlowsRecoveryEnabled = default(bool), bool kratosSelfserviceFlowsRegistrationEnabled = default(bool), bool kratosSelfserviceFlowsVerificationEnabled = default(bool), Dictionary<string, string> organizationMap = default(Dictionary<string, string>))
        {
            this.AccountExperienceThemeStylesheet = accountExperienceThemeStylesheet;
            this.KratosSelfserviceFlowsRecoveryEnabled = kratosSelfserviceFlowsRecoveryEnabled;
            this.KratosSelfserviceFlowsRegistrationEnabled = kratosSelfserviceFlowsRegistrationEnabled;
            this.KratosSelfserviceFlowsVerificationEnabled = kratosSelfserviceFlowsVerificationEnabled;
            this.OrganizationMap = organizationMap;
            this.AdditionalProperties = new Dictionary<string, object>();
        }

        /// <summary>
        /// Gets or Sets AccountExperienceThemeStylesheet
        /// </summary>
        [DataMember(Name = "account_experience_theme_stylesheet", EmitDefaultValue = false)]
        public string AccountExperienceThemeStylesheet { get; set; }

        /// <summary>
        /// Gets or Sets KratosSelfserviceFlowsRecoveryEnabled
        /// </summary>
        [DataMember(Name = "kratos_selfservice_flows_recovery_enabled", EmitDefaultValue = true)]
        public bool KratosSelfserviceFlowsRecoveryEnabled { get; set; }

        /// <summary>
        /// Gets or Sets KratosSelfserviceFlowsRegistrationEnabled
        /// </summary>
        [DataMember(Name = "kratos_selfservice_flows_registration_enabled", EmitDefaultValue = true)]
        public bool KratosSelfserviceFlowsRegistrationEnabled { get; set; }

        /// <summary>
        /// Gets or Sets KratosSelfserviceFlowsVerificationEnabled
        /// </summary>
        [DataMember(Name = "kratos_selfservice_flows_verification_enabled", EmitDefaultValue = true)]
        public bool KratosSelfserviceFlowsVerificationEnabled { get; set; }

        /// <summary>
        /// Gets or Sets OrganizationMap
        /// </summary>
        [DataMember(Name = "organization_map", EmitDefaultValue = false)]
        public Dictionary<string, string> OrganizationMap { get; set; }

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
            sb.Append("class ClientAccountExperienceConfiguration {\n");
            sb.Append("  AccountExperienceThemeStylesheet: ").Append(AccountExperienceThemeStylesheet).Append("\n");
            sb.Append("  KratosSelfserviceFlowsRecoveryEnabled: ").Append(KratosSelfserviceFlowsRecoveryEnabled).Append("\n");
            sb.Append("  KratosSelfserviceFlowsRegistrationEnabled: ").Append(KratosSelfserviceFlowsRegistrationEnabled).Append("\n");
            sb.Append("  KratosSelfserviceFlowsVerificationEnabled: ").Append(KratosSelfserviceFlowsVerificationEnabled).Append("\n");
            sb.Append("  OrganizationMap: ").Append(OrganizationMap).Append("\n");
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
