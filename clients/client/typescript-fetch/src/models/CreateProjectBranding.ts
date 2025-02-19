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
import type { ProjectBrandingColors } from './ProjectBrandingColors';
import {
    ProjectBrandingColorsFromJSON,
    ProjectBrandingColorsFromJSONTyped,
    ProjectBrandingColorsToJSON,
} from './ProjectBrandingColors';

/**
 * Create a Project Branding
 * @export
 * @interface CreateProjectBranding
 */
export interface CreateProjectBranding {
    /**
     * 
     * @type {string}
     * @memberof CreateProjectBranding
     */
    favicon_type?: string;
    /**
     * 
     * @type {string}
     * @memberof CreateProjectBranding
     */
    favicon_url?: string;
    /**
     * 
     * @type {string}
     * @memberof CreateProjectBranding
     */
    logo_type?: string;
    /**
     * 
     * @type {string}
     * @memberof CreateProjectBranding
     */
    logo_url?: string;
    /**
     * 
     * @type {string}
     * @memberof CreateProjectBranding
     */
    name?: string;
    /**
     * 
     * @type {ProjectBrandingColors}
     * @memberof CreateProjectBranding
     */
    theme?: ProjectBrandingColors;
}

/**
 * Check if a given object implements the CreateProjectBranding interface.
 */
export function instanceOfCreateProjectBranding(value: object): value is CreateProjectBranding {
    return true;
}

export function CreateProjectBrandingFromJSON(json: any): CreateProjectBranding {
    return CreateProjectBrandingFromJSONTyped(json, false);
}

export function CreateProjectBrandingFromJSONTyped(json: any, ignoreDiscriminator: boolean): CreateProjectBranding {
    if (json == null) {
        return json;
    }
    return {
        
        'favicon_type': json['favicon_type'] == null ? undefined : json['favicon_type'],
        'favicon_url': json['favicon_url'] == null ? undefined : json['favicon_url'],
        'logo_type': json['logo_type'] == null ? undefined : json['logo_type'],
        'logo_url': json['logo_url'] == null ? undefined : json['logo_url'],
        'name': json['name'] == null ? undefined : json['name'],
        'theme': json['theme'] == null ? undefined : ProjectBrandingColorsFromJSON(json['theme']),
    };
}

export function CreateProjectBrandingToJSON(value?: CreateProjectBranding | null): any {
    if (value == null) {
        return value;
    }
    return {
        
        'favicon_type': value['favicon_type'],
        'favicon_url': value['favicon_url'],
        'logo_type': value['logo_type'],
        'logo_url': value['logo_url'],
        'name': value['name'],
        'theme': ProjectBrandingColorsToJSON(value['theme']),
    };
}

