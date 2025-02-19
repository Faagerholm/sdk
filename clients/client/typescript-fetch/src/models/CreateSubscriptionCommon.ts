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
 * @interface CreateSubscriptionCommon
 */
export interface CreateSubscriptionCommon {
    /**
     * 
     * usd USD
     * eur Euro
     * @type {string}
     * @memberof CreateSubscriptionCommon
     */
    currency?: CreateSubscriptionCommonCurrencyEnum;
    /**
     * 
     * monthly Monthly
     * yearly Yearly
     * @type {string}
     * @memberof CreateSubscriptionCommon
     */
    interval: CreateSubscriptionCommonIntervalEnum;
    /**
     * 
     * @type {string}
     * @memberof CreateSubscriptionCommon
     */
    plan: string;
    /**
     * 
     * @type {string}
     * @memberof CreateSubscriptionCommon
     */
    return_to?: string;
}


/**
 * @export
 */
export const CreateSubscriptionCommonCurrencyEnum = {
    Usd: 'usd',
    Eur: 'eur'
} as const;
export type CreateSubscriptionCommonCurrencyEnum = typeof CreateSubscriptionCommonCurrencyEnum[keyof typeof CreateSubscriptionCommonCurrencyEnum];

/**
 * @export
 */
export const CreateSubscriptionCommonIntervalEnum = {
    Monthly: 'monthly',
    Yearly: 'yearly'
} as const;
export type CreateSubscriptionCommonIntervalEnum = typeof CreateSubscriptionCommonIntervalEnum[keyof typeof CreateSubscriptionCommonIntervalEnum];


/**
 * Check if a given object implements the CreateSubscriptionCommon interface.
 */
export function instanceOfCreateSubscriptionCommon(value: object): value is CreateSubscriptionCommon {
    if (!('interval' in value) || value['interval'] === undefined) return false;
    if (!('plan' in value) || value['plan'] === undefined) return false;
    return true;
}

export function CreateSubscriptionCommonFromJSON(json: any): CreateSubscriptionCommon {
    return CreateSubscriptionCommonFromJSONTyped(json, false);
}

export function CreateSubscriptionCommonFromJSONTyped(json: any, ignoreDiscriminator: boolean): CreateSubscriptionCommon {
    if (json == null) {
        return json;
    }
    return {
        
        'currency': json['currency'] == null ? undefined : json['currency'],
        'interval': json['interval'],
        'plan': json['plan'],
        'return_to': json['return_to'] == null ? undefined : json['return_to'],
    };
}

export function CreateSubscriptionCommonToJSON(value?: CreateSubscriptionCommon | null): any {
    if (value == null) {
        return value;
    }
    return {
        
        'currency': value['currency'],
        'interval': value['interval'],
        'plan': value['plan'],
        'return_to': value['return_to'],
    };
}

