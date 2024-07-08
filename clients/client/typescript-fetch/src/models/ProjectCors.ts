/* tslint:disable */
/* eslint-disable */
/**
 * Ory APIs
 * Documentation for all public and administrative Ory APIs. Administrative APIs can only be accessed with a valid Personal Access Token. Public APIs are mostly used in browsers. 
 *
 * The version of the OpenAPI document: v1.13.4
 * Contact: support@ory.sh
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

import { mapValues } from '../runtime';
/**
 * 
 * @export
 * @interface ProjectCors
 */
export interface ProjectCors {
    /**
     * Whether CORS is enabled for this endpoint.
     * @type {boolean}
     * @memberof ProjectCors
     */
    enabled?: boolean;
    /**
     * The allowed origins. Use `*` to allow all origins. A wildcard can also be used in the subdomain, i.e. `https://*.example.com` will allow all origins on all subdomains of `example.com`.
     * @type {Array<string>}
     * @memberof ProjectCors
     */
    origins?: Array<string>;
}

/**
 * Check if a given object implements the ProjectCors interface.
 */
export function instanceOfProjectCors(value: object): value is ProjectCors {
    return true;
}

export function ProjectCorsFromJSON(json: any): ProjectCors {
    return ProjectCorsFromJSONTyped(json, false);
}

export function ProjectCorsFromJSONTyped(json: any, ignoreDiscriminator: boolean): ProjectCors {
    if (json == null) {
        return json;
    }
    return {
        
        'enabled': json['enabled'] == null ? undefined : json['enabled'],
        'origins': json['origins'] == null ? undefined : json['origins'],
    };
}

export function ProjectCorsToJSON(value?: ProjectCors | null): any {
    if (value == null) {
        return value;
    }
    return {
        
        'enabled': value['enabled'],
        'origins': value['origins'],
    };
}

