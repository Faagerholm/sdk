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
    /// ClientMoney
    /// </summary>
    [DataContract(Name = "Money")]
    public partial class ClientMoney : IValidatableObject
    {
        /// <summary>
        /// Initializes a new instance of the <see cref="ClientMoney" /> class.
        /// </summary>
        /// <param name="cents">cents.</param>
        /// <param name="varString">varString.</param>
        /// <param name="unit">unit.</param>
        public ClientMoney(long cents = default(long), string varString = default(string), string unit = default(string))
        {
            this.Cents = cents;
            this.String = varString;
            this.Unit = unit;
            this.AdditionalProperties = new Dictionary<string, object>();
        }

        /// <summary>
        /// Gets or Sets Cents
        /// </summary>
        [DataMember(Name = "Cents", EmitDefaultValue = false)]
        public long Cents { get; set; }

        /// <summary>
        /// Gets or Sets String
        /// </summary>
        [DataMember(Name = "String", EmitDefaultValue = false)]
        public string String { get; set; }

        /// <summary>
        /// Gets or Sets Unit
        /// </summary>
        [DataMember(Name = "Unit", EmitDefaultValue = false)]
        public string Unit { get; set; }

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
            sb.Append("class ClientMoney {\n");
            sb.Append("  Cents: ").Append(Cents).Append("\n");
            sb.Append("  String: ").Append(String).Append("\n");
            sb.Append("  Unit: ").Append(Unit).Append("\n");
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
