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
 * Update Registration Flow with Password Method
 * @export
 * @interface UpdateRegistrationFlowWithPasswordMethod
 */
export interface UpdateRegistrationFlowWithPasswordMethod {
    /**
     * The CSRF Token
     * @type {string}
     * @memberof UpdateRegistrationFlowWithPasswordMethod
     */
    csrf_token?: string;
    /**
     * Method to use
     * 
     * This field must be set to `password` when using the password method.
     * @type {string}
     * @memberof UpdateRegistrationFlowWithPasswordMethod
     */
    method: string;
    /**
     * Password to sign the user up with
     * @type {string}
     * @memberof UpdateRegistrationFlowWithPasswordMethod
     */
    password: string;
    /**
     * The identity's traits
     * @type {object}
     * @memberof UpdateRegistrationFlowWithPasswordMethod
     */
    traits: object;
    /**
     * Transient data to pass along to any webhooks
     * @type {object}
     * @memberof UpdateRegistrationFlowWithPasswordMethod
     */
    transient_payload?: object;
}

/**
 * Check if a given object implements the UpdateRegistrationFlowWithPasswordMethod interface.
 */
export function instanceOfUpdateRegistrationFlowWithPasswordMethod(value: object): value is UpdateRegistrationFlowWithPasswordMethod {
    if (!('method' in value) || value['method'] === undefined) return false;
    if (!('password' in value) || value['password'] === undefined) return false;
    if (!('traits' in value) || value['traits'] === undefined) return false;
    return true;
}

export function UpdateRegistrationFlowWithPasswordMethodFromJSON(json: any): UpdateRegistrationFlowWithPasswordMethod {
    return UpdateRegistrationFlowWithPasswordMethodFromJSONTyped(json, false);
}

export function UpdateRegistrationFlowWithPasswordMethodFromJSONTyped(json: any, ignoreDiscriminator: boolean): UpdateRegistrationFlowWithPasswordMethod {
    if (json == null) {
        return json;
    }
    return {
        
        'csrf_token': json['csrf_token'] == null ? undefined : json['csrf_token'],
        'method': json['method'],
        'password': json['password'],
        'traits': json['traits'],
        'transient_payload': json['transient_payload'] == null ? undefined : json['transient_payload'],
    };
}

export function UpdateRegistrationFlowWithPasswordMethodToJSON(value?: UpdateRegistrationFlowWithPasswordMethod | null): any {
    if (value == null) {
        return value;
    }
    return {
        
        'csrf_token': value['csrf_token'],
        'method': value['method'],
        'password': value['password'],
        'traits': value['traits'],
        'transient_payload': value['transient_payload'],
    };
}

