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
import type { ProjectServiceOAuth2 } from './ProjectServiceOAuth2';
import {
    ProjectServiceOAuth2FromJSON,
    ProjectServiceOAuth2FromJSONTyped,
    ProjectServiceOAuth2ToJSON,
} from './ProjectServiceOAuth2';
import type { ProjectServicePermission } from './ProjectServicePermission';
import {
    ProjectServicePermissionFromJSON,
    ProjectServicePermissionFromJSONTyped,
    ProjectServicePermissionToJSON,
} from './ProjectServicePermission';
import type { ProjectServiceIdentity } from './ProjectServiceIdentity';
import {
    ProjectServiceIdentityFromJSON,
    ProjectServiceIdentityFromJSONTyped,
    ProjectServiceIdentityToJSON,
} from './ProjectServiceIdentity';

/**
 * 
 * @export
 * @interface ProjectServices
 */
export interface ProjectServices {
    /**
     * 
     * @type {ProjectServiceIdentity}
     * @memberof ProjectServices
     */
    identity?: ProjectServiceIdentity;
    /**
     * 
     * @type {ProjectServiceOAuth2}
     * @memberof ProjectServices
     */
    oauth2?: ProjectServiceOAuth2;
    /**
     * 
     * @type {ProjectServicePermission}
     * @memberof ProjectServices
     */
    permission?: ProjectServicePermission;
}

/**
 * Check if a given object implements the ProjectServices interface.
 */
export function instanceOfProjectServices(value: object): value is ProjectServices {
    return true;
}

export function ProjectServicesFromJSON(json: any): ProjectServices {
    return ProjectServicesFromJSONTyped(json, false);
}

export function ProjectServicesFromJSONTyped(json: any, ignoreDiscriminator: boolean): ProjectServices {
    if (json == null) {
        return json;
    }
    return {
        
        'identity': json['identity'] == null ? undefined : ProjectServiceIdentityFromJSON(json['identity']),
        'oauth2': json['oauth2'] == null ? undefined : ProjectServiceOAuth2FromJSON(json['oauth2']),
        'permission': json['permission'] == null ? undefined : ProjectServicePermissionFromJSON(json['permission']),
    };
}

export function ProjectServicesToJSON(value?: ProjectServices | null): any {
    if (value == null) {
        return value;
    }
    return {
        
        'identity': ProjectServiceIdentityToJSON(value['identity']),
        'oauth2': ProjectServiceOAuth2ToJSON(value['oauth2']),
        'permission': ProjectServicePermissionToJSON(value['permission']),
    };
}

