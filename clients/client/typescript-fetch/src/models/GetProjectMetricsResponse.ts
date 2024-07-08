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
import type { MetricsDatapoint } from './MetricsDatapoint';
import {
    MetricsDatapointFromJSON,
    MetricsDatapointFromJSONTyped,
    MetricsDatapointToJSON,
} from './MetricsDatapoint';

/**
 * Response of the getMetrics endpoint
 * @export
 * @interface GetProjectMetricsResponse
 */
export interface GetProjectMetricsResponse {
    /**
     * The list of data points.
     * @type {Array<MetricsDatapoint>}
     * @memberof GetProjectMetricsResponse
     */
    readonly data: Array<MetricsDatapoint>;
}

/**
 * Check if a given object implements the GetProjectMetricsResponse interface.
 */
export function instanceOfGetProjectMetricsResponse(value: object): value is GetProjectMetricsResponse {
    if (!('data' in value) || value['data'] === undefined) return false;
    return true;
}

export function GetProjectMetricsResponseFromJSON(json: any): GetProjectMetricsResponse {
    return GetProjectMetricsResponseFromJSONTyped(json, false);
}

export function GetProjectMetricsResponseFromJSONTyped(json: any, ignoreDiscriminator: boolean): GetProjectMetricsResponse {
    if (json == null) {
        return json;
    }
    return {
        
        'data': ((json['data'] as Array<any>).map(MetricsDatapointFromJSON)),
    };
}

export function GetProjectMetricsResponseToJSON(value?: Omit<GetProjectMetricsResponse, 'data'> | null): any {
    if (value == null) {
        return value;
    }
    return {
        
    };
}

