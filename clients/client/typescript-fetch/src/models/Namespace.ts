/* tslint:disable */
/* eslint-disable */
/**
 * Ory APIs
 * Documentation for all public and administrative Ory APIs. Administrative APIs can only be accessed with a valid Personal Access Token. Public APIs are mostly used in browsers. 
 *
 * The version of the OpenAPI document: v1.13.3
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
 * @interface Namespace
 */
export interface Namespace {
    /**
     * Name of the namespace.
     * @type {string}
     * @memberof Namespace
     */
    name?: string;
}

/**
 * Check if a given object implements the Namespace interface.
 */
export function instanceOfNamespace(value: object): value is Namespace {
    return true;
}

export function NamespaceFromJSON(json: any): Namespace {
    return NamespaceFromJSONTyped(json, false);
}

export function NamespaceFromJSONTyped(json: any, ignoreDiscriminator: boolean): Namespace {
    if (json == null) {
        return json;
    }
    return {
        
        'name': json['name'] == null ? undefined : json['name'],
    };
}

export function NamespaceToJSON(value?: Namespace | null): any {
    if (value == null) {
        return value;
    }
    return {
        
        'name': value['name'],
    };
}

