/*
 * Ory APIs
 *
 * Documentation for all public and administrative Ory APIs. Administrative APIs can only be accessed with a valid Personal Access Token. Public APIs are mostly used in browsers. 
 *
 * The version of the OpenAPI document: v1.14.2
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
    /// ClientIdentityCredentialsPassword
    /// </summary>
    [DataContract(Name = "identityCredentialsPassword")]
    public partial class ClientIdentityCredentialsPassword : IValidatableObject
    {
        /// <summary>
        /// Initializes a new instance of the <see cref="ClientIdentityCredentialsPassword" /> class.
        /// </summary>
        /// <param name="hashedPassword">HashedPassword is a hash-representation of the password..</param>
        /// <param name="usePasswordMigrationHook">UsePasswordMigrationHook is set to true if the password should be migrated using the password migration hook. If set, and the HashedPassword is empty, a webhook will be called during login to migrate the password..</param>
        public ClientIdentityCredentialsPassword(string hashedPassword = default(string), bool usePasswordMigrationHook = default(bool))
        {
            this.HashedPassword = hashedPassword;
            this.UsePasswordMigrationHook = usePasswordMigrationHook;
            this.AdditionalProperties = new Dictionary<string, object>();
        }

        /// <summary>
        /// HashedPassword is a hash-representation of the password.
        /// </summary>
        /// <value>HashedPassword is a hash-representation of the password.</value>
        [DataMember(Name = "hashed_password", EmitDefaultValue = false)]
        public string HashedPassword { get; set; }

        /// <summary>
        /// UsePasswordMigrationHook is set to true if the password should be migrated using the password migration hook. If set, and the HashedPassword is empty, a webhook will be called during login to migrate the password.
        /// </summary>
        /// <value>UsePasswordMigrationHook is set to true if the password should be migrated using the password migration hook. If set, and the HashedPassword is empty, a webhook will be called during login to migrate the password.</value>
        [DataMember(Name = "use_password_migration_hook", EmitDefaultValue = true)]
        public bool UsePasswordMigrationHook { get; set; }

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
            sb.Append("class ClientIdentityCredentialsPassword {\n");
            sb.Append("  HashedPassword: ").Append(HashedPassword).Append("\n");
            sb.Append("  UsePasswordMigrationHook: ").Append(UsePasswordMigrationHook).Append("\n");
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
