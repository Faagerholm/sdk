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
 * Create Identity and Import Password Credentials Configuration
 * @export
 * @interface IdentityWithCredentialsPasswordConfig
 */
export interface IdentityWithCredentialsPasswordConfig {
    /**
     * The hashed password in [PHC format](https://www.ory.sh/docs/kratos/manage-identities/import-user-accounts-identities#hashed-passwords)
     * @type {string}
     * @memberof IdentityWithCredentialsPasswordConfig
     */
    hashed_password?: string;
    /**
     * The password in plain text if no hash is available.
     * @type {string}
     * @memberof IdentityWithCredentialsPasswordConfig
     */
    password?: string;
}

/**
 * Check if a given object implements the IdentityWithCredentialsPasswordConfig interface.
 */
export function instanceOfIdentityWithCredentialsPasswordConfig(value: object): value is IdentityWithCredentialsPasswordConfig {
    return true;
}

export function IdentityWithCredentialsPasswordConfigFromJSON(json: any): IdentityWithCredentialsPasswordConfig {
    return IdentityWithCredentialsPasswordConfigFromJSONTyped(json, false);
}

export function IdentityWithCredentialsPasswordConfigFromJSONTyped(json: any, ignoreDiscriminator: boolean): IdentityWithCredentialsPasswordConfig {
    if (json == null) {
        return json;
    }
    return {
        
        'hashed_password': json['hashed_password'] == null ? undefined : json['hashed_password'],
        'password': json['password'] == null ? undefined : json['password'],
    };
}

export function IdentityWithCredentialsPasswordConfigToJSON(value?: IdentityWithCredentialsPasswordConfig | null): any {
    if (value == null) {
        return value;
    }
    return {
        
        'hashed_password': value['hashed_password'],
        'password': value['password'],
    };
}

