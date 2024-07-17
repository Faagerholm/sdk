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
import type { AcceptOAuth2ConsentRequestSession } from './AcceptOAuth2ConsentRequestSession';
import {
    AcceptOAuth2ConsentRequestSessionFromJSON,
    AcceptOAuth2ConsentRequestSessionFromJSONTyped,
    AcceptOAuth2ConsentRequestSessionToJSON,
} from './AcceptOAuth2ConsentRequestSession';

/**
 * 
 * @export
 * @interface AcceptOAuth2ConsentRequest
 */
export interface AcceptOAuth2ConsentRequest {
    /**
     * 
     * @type {object}
     * @memberof AcceptOAuth2ConsentRequest
     */
    context?: object;
    /**
     * 
     * @type {Array<string>}
     * @memberof AcceptOAuth2ConsentRequest
     */
    grant_access_token_audience?: Array<string>;
    /**
     * 
     * @type {Array<string>}
     * @memberof AcceptOAuth2ConsentRequest
     */
    grant_scope?: Array<string>;
    /**
     * 
     * @type {Date}
     * @memberof AcceptOAuth2ConsentRequest
     */
    handled_at?: Date;
    /**
     * Remember, if set to true, tells ORY Hydra to remember this consent authorization and reuse it if the same
     * client asks the same user for the same, or a subset of, scope.
     * @type {boolean}
     * @memberof AcceptOAuth2ConsentRequest
     */
    remember?: boolean;
    /**
     * RememberFor sets how long the consent authorization should be remembered for in seconds. If set to `0`, the
     * authorization will be remembered indefinitely.
     * @type {number}
     * @memberof AcceptOAuth2ConsentRequest
     */
    remember_for?: number;
    /**
     * 
     * @type {AcceptOAuth2ConsentRequestSession}
     * @memberof AcceptOAuth2ConsentRequest
     */
    session?: AcceptOAuth2ConsentRequestSession;
}

/**
 * Check if a given object implements the AcceptOAuth2ConsentRequest interface.
 */
export function instanceOfAcceptOAuth2ConsentRequest(value: object): value is AcceptOAuth2ConsentRequest {
    return true;
}

export function AcceptOAuth2ConsentRequestFromJSON(json: any): AcceptOAuth2ConsentRequest {
    return AcceptOAuth2ConsentRequestFromJSONTyped(json, false);
}

export function AcceptOAuth2ConsentRequestFromJSONTyped(json: any, ignoreDiscriminator: boolean): AcceptOAuth2ConsentRequest {
    if (json == null) {
        return json;
    }
    return {
        
        'context': json['context'] == null ? undefined : json['context'],
        'grant_access_token_audience': json['grant_access_token_audience'] == null ? undefined : json['grant_access_token_audience'],
        'grant_scope': json['grant_scope'] == null ? undefined : json['grant_scope'],
        'handled_at': json['handled_at'] == null ? undefined : (new Date(json['handled_at'])),
        'remember': json['remember'] == null ? undefined : json['remember'],
        'remember_for': json['remember_for'] == null ? undefined : json['remember_for'],
        'session': json['session'] == null ? undefined : AcceptOAuth2ConsentRequestSessionFromJSON(json['session']),
    };
}

export function AcceptOAuth2ConsentRequestToJSON(value?: AcceptOAuth2ConsentRequest | null): any {
    if (value == null) {
        return value;
    }
    return {
        
        'context': value['context'],
        'grant_access_token_audience': value['grant_access_token_audience'],
        'grant_scope': value['grant_scope'],
        'handled_at': value['handled_at'] == null ? undefined : ((value['handled_at']).toISOString()),
        'remember': value['remember'],
        'remember_for': value['remember_for'],
        'session': AcceptOAuth2ConsentRequestSessionToJSON(value['session']),
    };
}

