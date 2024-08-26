/* tslint:disable */
/* eslint-disable */
/**
 * Ory APIs
 * Documentation for all public and administrative Ory APIs. Administrative APIs can only be accessed with a valid Personal Access Token. Public APIs are mostly used in browsers. 
 *
 * The version of the OpenAPI document: v1.14.4
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
 * @interface CreateProjectApiKeyRequest
 */
export interface CreateProjectApiKeyRequest {
    /**
     * The Token Name
     * 
     * A descriptive name for the token.
     * 
     * in: body
     * @type {string}
     * @memberof CreateProjectApiKeyRequest
     */
    name: string;
}

/**
 * Check if a given object implements the CreateProjectApiKeyRequest interface.
 */
export function instanceOfCreateProjectApiKeyRequest(value: object): value is CreateProjectApiKeyRequest {
    if (!('name' in value) || value['name'] === undefined) return false;
    return true;
}

export function CreateProjectApiKeyRequestFromJSON(json: any): CreateProjectApiKeyRequest {
    return CreateProjectApiKeyRequestFromJSONTyped(json, false);
}

export function CreateProjectApiKeyRequestFromJSONTyped(json: any, ignoreDiscriminator: boolean): CreateProjectApiKeyRequest {
    if (json == null) {
        return json;
    }
    return {
        
        'name': json['name'],
    };
}

export function CreateProjectApiKeyRequestToJSON(value?: CreateProjectApiKeyRequest | null): any {
    if (value == null) {
        return value;
    }
    return {
        
        'name': value['name'],
    };
}

