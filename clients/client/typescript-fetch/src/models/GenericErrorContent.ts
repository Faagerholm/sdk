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
 * Error response
 * @export
 * @interface GenericErrorContent
 */
export interface GenericErrorContent {
    /**
     * Debug contains debug information. This is usually not available and has to be enabled.
     * @type {string}
     * @memberof GenericErrorContent
     */
    debug?: string;
    /**
     * Name is the error name.
     * @type {string}
     * @memberof GenericErrorContent
     */
    error?: string;
    /**
     * Description contains further information on the nature of the error.
     * @type {string}
     * @memberof GenericErrorContent
     */
    error_description?: string;
    /**
     * Message contains the error message.
     * @type {string}
     * @memberof GenericErrorContent
     */
    message?: string;
    /**
     * Code represents the error status code (404, 403, 401, ...).
     * @type {number}
     * @memberof GenericErrorContent
     */
    status_code?: number;
}

/**
 * Check if a given object implements the GenericErrorContent interface.
 */
export function instanceOfGenericErrorContent(value: object): value is GenericErrorContent {
    return true;
}

export function GenericErrorContentFromJSON(json: any): GenericErrorContent {
    return GenericErrorContentFromJSONTyped(json, false);
}

export function GenericErrorContentFromJSONTyped(json: any, ignoreDiscriminator: boolean): GenericErrorContent {
    if (json == null) {
        return json;
    }
    return {
        
        'debug': json['debug'] == null ? undefined : json['debug'],
        'error': json['error'] == null ? undefined : json['error'],
        'error_description': json['error_description'] == null ? undefined : json['error_description'],
        'message': json['message'] == null ? undefined : json['message'],
        'status_code': json['status_code'] == null ? undefined : json['status_code'],
    };
}

export function GenericErrorContentToJSON(value?: GenericErrorContent | null): any {
    if (value == null) {
        return value;
    }
    return {
        
        'debug': value['debug'],
        'error': value['error'],
        'error_description': value['error_description'],
        'message': value['message'],
        'status_code': value['status_code'],
    };
}

