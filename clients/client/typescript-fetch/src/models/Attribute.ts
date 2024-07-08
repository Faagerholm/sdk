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
 * @interface Attribute
 */
export interface Attribute {
    /**
     * 
     * @type {string}
     * @memberof Attribute
     */
    key?: string;
    /**
     * 
     * @type {string}
     * @memberof Attribute
     */
    value?: string;
}

/**
 * Check if a given object implements the Attribute interface.
 */
export function instanceOfAttribute(value: object): value is Attribute {
    return true;
}

export function AttributeFromJSON(json: any): Attribute {
    return AttributeFromJSONTyped(json, false);
}

export function AttributeFromJSONTyped(json: any, ignoreDiscriminator: boolean): Attribute {
    if (json == null) {
        return json;
    }
    return {
        
        'key': json['key'] == null ? undefined : json['key'],
        'value': json['value'] == null ? undefined : json['value'],
    };
}

export function AttributeToJSON(value?: Attribute | null): any {
    if (value == null) {
        return value;
    }
    return {
        
        'key': value['key'],
        'value': value['value'],
    };
}

