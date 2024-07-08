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
using System.Collections.Generic;
using System.IO;
using System.Net;

namespace Ory.Client.Client
{
    /// <summary>
    /// A container for generalized request inputs. This type allows consumers to extend the request functionality
    /// by abstracting away from the default (built-in) request framework (e.g. RestSharp).
    /// </summary>
    public class RequestOptions
    {
        /// <summary>
        /// Parameters to be bound to path parts of the Request's URL
        /// </summary>
        public Dictionary<string, string> PathParameters { get; set; }

        /// <summary>
        /// Query parameters to be applied to the request.
        /// Keys may have 1 or more values associated.
        /// </summary>
        public Multimap<string, string> QueryParameters { get; set; }

        /// <summary>
        /// Header parameters to be applied to the request.
        /// Keys may have 1 or more values associated.
        /// </summary>
        public Multimap<string, string> HeaderParameters { get; set; }

        /// <summary>
        /// Form parameters to be sent along with the request.
        /// </summary>
        public Dictionary<string, string> FormParameters { get; set; }

        /// <summary>
        /// File parameters to be sent along with the request.
        /// </summary>
        public Multimap<string, Stream> FileParameters { get; set; }

        /// <summary>
        /// Cookies to be sent along with the request.
        /// </summary>
        public List<Cookie> Cookies { get; set; }

        /// <summary>
        /// Operation associated with the request path.
        /// </summary>
        public string Operation { get; set; }

        /// <summary>
        /// Index associated with the operation.
        /// </summary>
        public int OperationIndex { get; set; }

        /// <summary>
        /// Any data associated with a request body.
        /// </summary>
        public Object Data { get; set; }

        /// <summary>
        /// If request should be authenticated with OAuth.
        /// </summary>
        public bool OAuth { get; set; }

        /// <summary>
        /// Constructs a new instance of <see cref="RequestOptions"/>
        /// </summary>
        public RequestOptions()
        {
            PathParameters = new Dictionary<string, string>();
            QueryParameters = new Multimap<string, string>();
            HeaderParameters = new Multimap<string, string>();
            FormParameters = new Dictionary<string, string>();
            FileParameters = new Multimap<string, Stream>();
            Cookies = new List<Cookie>();
        }
    }
}
