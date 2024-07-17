/* tslint:disable */
/* eslint-disable */
/**
 * Ory APIs
 * Documentation for all public and administrative Ory APIs. Administrative APIs can only be accessed with a valid Personal Access Token. Public APIs are mostly used in browsers. 
 *
 * The version of the OpenAPI document: v1.14.1
 * Contact: support@ory.sh
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

import { mapValues } from '../runtime';
/**
 * Credentials represents a specific credential type
 * @export
 * @interface IdentityCredentials
 */
export interface IdentityCredentials {
    /**
     * 
     * @type {object}
     * @memberof IdentityCredentials
     */
    config?: object;
    /**
     * CreatedAt is a helper struct field for gobuffalo.pop.
     * @type {Date}
     * @memberof IdentityCredentials
     */
    created_at?: Date;
    /**
     * Identifiers represents a list of unique identifiers this credential type matches.
     * @type {Array<string>}
     * @memberof IdentityCredentials
     */
    identifiers?: Array<string>;
    /**
     * Type discriminates between different types of credentials.
     * password CredentialsTypePassword
     * oidc CredentialsTypeOIDC
     * totp CredentialsTypeTOTP
     * lookup_secret CredentialsTypeLookup
     * webauthn CredentialsTypeWebAuthn
     * code CredentialsTypeCodeAuth
     * passkey CredentialsTypePasskey
     * profile CredentialsTypeProfile
     * link_recovery CredentialsTypeRecoveryLink  CredentialsTypeRecoveryLink is a special credential type linked to the link strategy (recovery flow).  It is not used within the credentials object itself.
     * code_recovery CredentialsTypeRecoveryCode
     * @type {string}
     * @memberof IdentityCredentials
     */
    type?: IdentityCredentialsTypeEnum;
    /**
     * UpdatedAt is a helper struct field for gobuffalo.pop.
     * @type {Date}
     * @memberof IdentityCredentials
     */
    updated_at?: Date;
    /**
     * Version refers to the version of the credential. Useful when changing the config schema.
     * @type {number}
     * @memberof IdentityCredentials
     */
    version?: number;
}


/**
 * @export
 */
export const IdentityCredentialsTypeEnum = {
    Password: 'password',
    Oidc: 'oidc',
    Totp: 'totp',
    LookupSecret: 'lookup_secret',
    Webauthn: 'webauthn',
    Code: 'code',
    Passkey: 'passkey',
    Profile: 'profile',
    LinkRecovery: 'link_recovery',
    CodeRecovery: 'code_recovery'
} as const;
export type IdentityCredentialsTypeEnum = typeof IdentityCredentialsTypeEnum[keyof typeof IdentityCredentialsTypeEnum];


/**
 * Check if a given object implements the IdentityCredentials interface.
 */
export function instanceOfIdentityCredentials(value: object): value is IdentityCredentials {
    return true;
}

export function IdentityCredentialsFromJSON(json: any): IdentityCredentials {
    return IdentityCredentialsFromJSONTyped(json, false);
}

export function IdentityCredentialsFromJSONTyped(json: any, ignoreDiscriminator: boolean): IdentityCredentials {
    if (json == null) {
        return json;
    }
    return {
        
        'config': json['config'] == null ? undefined : json['config'],
        'created_at': json['created_at'] == null ? undefined : (new Date(json['created_at'])),
        'identifiers': json['identifiers'] == null ? undefined : json['identifiers'],
        'type': json['type'] == null ? undefined : json['type'],
        'updated_at': json['updated_at'] == null ? undefined : (new Date(json['updated_at'])),
        'version': json['version'] == null ? undefined : json['version'],
    };
}

export function IdentityCredentialsToJSON(value?: IdentityCredentials | null): any {
    if (value == null) {
        return value;
    }
    return {
        
        'config': value['config'],
        'created_at': value['created_at'] == null ? undefined : ((value['created_at']).toISOString()),
        'identifiers': value['identifiers'],
        'type': value['type'],
        'updated_at': value['updated_at'] == null ? undefined : ((value['updated_at']).toISOString()),
        'version': value['version'],
    };
}

