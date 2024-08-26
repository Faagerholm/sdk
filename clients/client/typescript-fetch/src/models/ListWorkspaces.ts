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
import type { Workspace } from './Workspace';
import {
    WorkspaceFromJSON,
    WorkspaceFromJSONTyped,
    WorkspaceToJSON,
} from './Workspace';

/**
 * 
 * @export
 * @interface ListWorkspaces
 */
export interface ListWorkspaces {
    /**
     * 
     * @type {boolean}
     * @memberof ListWorkspaces
     */
    has_next_page: boolean;
    /**
     * 
     * @type {string}
     * @memberof ListWorkspaces
     */
    next_page_token: string;
    /**
     * 
     * @type {Array<Workspace>}
     * @memberof ListWorkspaces
     */
    workspaces: Array<Workspace>;
}

/**
 * Check if a given object implements the ListWorkspaces interface.
 */
export function instanceOfListWorkspaces(value: object): value is ListWorkspaces {
    if (!('has_next_page' in value) || value['has_next_page'] === undefined) return false;
    if (!('next_page_token' in value) || value['next_page_token'] === undefined) return false;
    if (!('workspaces' in value) || value['workspaces'] === undefined) return false;
    return true;
}

export function ListWorkspacesFromJSON(json: any): ListWorkspaces {
    return ListWorkspacesFromJSONTyped(json, false);
}

export function ListWorkspacesFromJSONTyped(json: any, ignoreDiscriminator: boolean): ListWorkspaces {
    if (json == null) {
        return json;
    }
    return {
        
        'has_next_page': json['has_next_page'],
        'next_page_token': json['next_page_token'],
        'workspaces': ((json['workspaces'] as Array<any>).map(WorkspaceFromJSON)),
    };
}

export function ListWorkspacesToJSON(value?: ListWorkspaces | null): any {
    if (value == null) {
        return value;
    }
    return {
        
        'has_next_page': value['has_next_page'],
        'next_page_token': value['next_page_token'],
        'workspaces': ((value['workspaces'] as Array<any>).map(WorkspaceToJSON)),
    };
}

