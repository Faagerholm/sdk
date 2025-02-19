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
 * @interface CreateWorkspaceBody
 */
export interface CreateWorkspaceBody {
    /**
     * The name of the workspace
     * @type {string}
     * @memberof CreateWorkspaceBody
     */
    name: string;
}

/**
 * Check if a given object implements the CreateWorkspaceBody interface.
 */
export function instanceOfCreateWorkspaceBody(value: object): value is CreateWorkspaceBody {
    if (!('name' in value) || value['name'] === undefined) return false;
    return true;
}

export function CreateWorkspaceBodyFromJSON(json: any): CreateWorkspaceBody {
    return CreateWorkspaceBodyFromJSONTyped(json, false);
}

export function CreateWorkspaceBodyFromJSONTyped(json: any, ignoreDiscriminator: boolean): CreateWorkspaceBody {
    if (json == null) {
        return json;
    }
    return {
        
        'name': json['name'],
    };
}

export function CreateWorkspaceBodyToJSON(value?: CreateWorkspaceBody | null): any {
    if (value == null) {
        return value;
    }
    return {
        
        'name': value['name'],
    };
}

