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
 * Create Project Request Body
 * @export
 * @interface CreateProjectBody
 */
export interface CreateProjectBody {
    /**
     * The environment of the project.
     * prod Production
     * stage Staging
     * dev Development
     * @type {string}
     * @memberof CreateProjectBody
     */
    environment: CreateProjectBodyEnvironmentEnum;
    /**
     * Home Region
     * 
     * The home region of the project. This is the region where the project will be created.
     * eu-central EUCentral
     * us-east USEast
     * us-west USWest
     * us US
     * global Global
     * @type {string}
     * @memberof CreateProjectBody
     */
    home_region?: CreateProjectBodyHomeRegionEnum;
    /**
     * The name of the project to be created
     * @type {string}
     * @memberof CreateProjectBody
     */
    name: string;
    /**
     * The workspace to create the project in.
     * @type {string}
     * @memberof CreateProjectBody
     */
    workspace_id?: string;
}


/**
 * @export
 */
export const CreateProjectBodyEnvironmentEnum = {
    Prod: 'prod',
    Stage: 'stage',
    Dev: 'dev'
} as const;
export type CreateProjectBodyEnvironmentEnum = typeof CreateProjectBodyEnvironmentEnum[keyof typeof CreateProjectBodyEnvironmentEnum];

/**
 * @export
 */
export const CreateProjectBodyHomeRegionEnum = {
    EuCentral: 'eu-central',
    UsEast: 'us-east',
    UsWest: 'us-west',
    Us: 'us',
    Global: 'global'
} as const;
export type CreateProjectBodyHomeRegionEnum = typeof CreateProjectBodyHomeRegionEnum[keyof typeof CreateProjectBodyHomeRegionEnum];


/**
 * Check if a given object implements the CreateProjectBody interface.
 */
export function instanceOfCreateProjectBody(value: object): value is CreateProjectBody {
    if (!('environment' in value) || value['environment'] === undefined) return false;
    if (!('name' in value) || value['name'] === undefined) return false;
    return true;
}

export function CreateProjectBodyFromJSON(json: any): CreateProjectBody {
    return CreateProjectBodyFromJSONTyped(json, false);
}

export function CreateProjectBodyFromJSONTyped(json: any, ignoreDiscriminator: boolean): CreateProjectBody {
    if (json == null) {
        return json;
    }
    return {
        
        'environment': json['environment'],
        'home_region': json['home_region'] == null ? undefined : json['home_region'],
        'name': json['name'],
        'workspace_id': json['workspace_id'] == null ? undefined : json['workspace_id'],
    };
}

export function CreateProjectBodyToJSON(value?: CreateProjectBody | null): any {
    if (value == null) {
        return value;
    }
    return {
        
        'environment': value['environment'],
        'home_region': value['home_region'],
        'name': value['name'],
        'workspace_id': value['workspace_id'],
    };
}

