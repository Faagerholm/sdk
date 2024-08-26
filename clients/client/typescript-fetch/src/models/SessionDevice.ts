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
 * Device corresponding to a Session
 * @export
 * @interface SessionDevice
 */
export interface SessionDevice {
    /**
     * Device record ID
     * @type {string}
     * @memberof SessionDevice
     */
    id: string;
    /**
     * IPAddress of the client
     * @type {string}
     * @memberof SessionDevice
     */
    ip_address?: string;
    /**
     * Geo Location corresponding to the IP Address
     * @type {string}
     * @memberof SessionDevice
     */
    location?: string;
    /**
     * UserAgent of the client
     * @type {string}
     * @memberof SessionDevice
     */
    user_agent?: string;
}

/**
 * Check if a given object implements the SessionDevice interface.
 */
export function instanceOfSessionDevice(value: object): value is SessionDevice {
    if (!('id' in value) || value['id'] === undefined) return false;
    return true;
}

export function SessionDeviceFromJSON(json: any): SessionDevice {
    return SessionDeviceFromJSONTyped(json, false);
}

export function SessionDeviceFromJSONTyped(json: any, ignoreDiscriminator: boolean): SessionDevice {
    if (json == null) {
        return json;
    }
    return {
        
        'id': json['id'],
        'ip_address': json['ip_address'] == null ? undefined : json['ip_address'],
        'location': json['location'] == null ? undefined : json['location'],
        'user_agent': json['user_agent'] == null ? undefined : json['user_agent'],
    };
}

export function SessionDeviceToJSON(value?: SessionDevice | null): any {
    if (value == null) {
        return value;
    }
    return {
        
        'id': value['id'],
        'ip_address': value['ip_address'],
        'location': value['location'],
        'user_agent': value['user_agent'],
    };
}

