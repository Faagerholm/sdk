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
import type { AttributeFilter } from './AttributeFilter';
import {
    AttributeFilterFromJSON,
    AttributeFilterFromJSONTyped,
    AttributeFilterToJSON,
} from './AttributeFilter';

/**
 * Body of the getProjectEvents endpoint
 * @export
 * @interface GetProjectEventsBody
 */
export interface GetProjectEventsBody {
    /**
     * The event name to query for
     * @type {string}
     * @memberof GetProjectEventsBody
     */
    event_name?: string;
    /**
     * Event attribute filters
     * @type {Array<AttributeFilter>}
     * @memberof GetProjectEventsBody
     */
    filters?: Array<AttributeFilter>;
    /**
     * The start RFC3339 date of the time window
     * @type {Date}
     * @memberof GetProjectEventsBody
     */
    from: Date;
    /**
     * Maximum number of events to return
     * @type {number}
     * @memberof GetProjectEventsBody
     */
    page_size?: number;
    /**
     * Pagination token to fetch next page, empty if first page
     * @type {string}
     * @memberof GetProjectEventsBody
     */
    page_token?: string;
    /**
     * The end RFC3339 date of the time window
     * @type {Date}
     * @memberof GetProjectEventsBody
     */
    to: Date;
}

/**
 * Check if a given object implements the GetProjectEventsBody interface.
 */
export function instanceOfGetProjectEventsBody(value: object): value is GetProjectEventsBody {
    if (!('from' in value) || value['from'] === undefined) return false;
    if (!('to' in value) || value['to'] === undefined) return false;
    return true;
}

export function GetProjectEventsBodyFromJSON(json: any): GetProjectEventsBody {
    return GetProjectEventsBodyFromJSONTyped(json, false);
}

export function GetProjectEventsBodyFromJSONTyped(json: any, ignoreDiscriminator: boolean): GetProjectEventsBody {
    if (json == null) {
        return json;
    }
    return {
        
        'event_name': json['event_name'] == null ? undefined : json['event_name'],
        'filters': json['filters'] == null ? undefined : ((json['filters'] as Array<any>).map(AttributeFilterFromJSON)),
        'from': (new Date(json['from'])),
        'page_size': json['page_size'] == null ? undefined : json['page_size'],
        'page_token': json['page_token'] == null ? undefined : json['page_token'],
        'to': (new Date(json['to'])),
    };
}

export function GetProjectEventsBodyToJSON(value?: GetProjectEventsBody | null): any {
    if (value == null) {
        return value;
    }
    return {
        
        'event_name': value['event_name'],
        'filters': value['filters'] == null ? undefined : ((value['filters'] as Array<any>).map(AttributeFilterToJSON)),
        'from': ((value['from']).toISOString()),
        'page_size': value['page_size'],
        'page_token': value['page_token'],
        'to': ((value['to']).toISOString()),
    };
}

