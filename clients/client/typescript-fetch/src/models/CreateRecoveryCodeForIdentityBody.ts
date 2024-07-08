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
 * Create Recovery Code for Identity Request Body
 * @export
 * @interface CreateRecoveryCodeForIdentityBody
 */
export interface CreateRecoveryCodeForIdentityBody {
    /**
     * Code Expires In
     * 
     * The recovery code will expire after that amount of time has passed. Defaults to the configuration value of
     * `selfservice.methods.code.config.lifespan`.
     * @type {string}
     * @memberof CreateRecoveryCodeForIdentityBody
     */
    expires_in?: string;
    /**
     * The flow type can either be `api` or `browser`.
     * @type {string}
     * @memberof CreateRecoveryCodeForIdentityBody
     */
    flow_type?: string;
    /**
     * Identity to Recover
     * 
     * The identity's ID you wish to recover.
     * @type {string}
     * @memberof CreateRecoveryCodeForIdentityBody
     */
    identity_id: string;
}

/**
 * Check if a given object implements the CreateRecoveryCodeForIdentityBody interface.
 */
export function instanceOfCreateRecoveryCodeForIdentityBody(value: object): value is CreateRecoveryCodeForIdentityBody {
    if (!('identity_id' in value) || value['identity_id'] === undefined) return false;
    return true;
}

export function CreateRecoveryCodeForIdentityBodyFromJSON(json: any): CreateRecoveryCodeForIdentityBody {
    return CreateRecoveryCodeForIdentityBodyFromJSONTyped(json, false);
}

export function CreateRecoveryCodeForIdentityBodyFromJSONTyped(json: any, ignoreDiscriminator: boolean): CreateRecoveryCodeForIdentityBody {
    if (json == null) {
        return json;
    }
    return {
        
        'expires_in': json['expires_in'] == null ? undefined : json['expires_in'],
        'flow_type': json['flow_type'] == null ? undefined : json['flow_type'],
        'identity_id': json['identity_id'],
    };
}

export function CreateRecoveryCodeForIdentityBodyToJSON(value?: CreateRecoveryCodeForIdentityBody | null): any {
    if (value == null) {
        return value;
    }
    return {
        
        'expires_in': value['expires_in'],
        'flow_type': value['flow_type'],
        'identity_id': value['identity_id'],
    };
}

