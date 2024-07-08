/* tslint:disable */
/* eslint-disable */
/**
 * Ory APIs
 * Documentation for all public and administrative Ory APIs. Administrative APIs can only be accessed with a valid Personal Access Token. Public APIs are mostly used in browsers. 
 *
 * The version of the OpenAPI document: v1.13.3
 * Contact: support@ory.sh
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

import { mapValues } from '../runtime';
import type { Relationship } from './Relationship';
import {
    RelationshipFromJSON,
    RelationshipFromJSONTyped,
    RelationshipToJSON,
} from './Relationship';

/**
 * Payload for patching a relationship
 * @export
 * @interface RelationshipPatch
 */
export interface RelationshipPatch {
    /**
     * 
     * @type {string}
     * @memberof RelationshipPatch
     */
    action?: RelationshipPatchActionEnum;
    /**
     * 
     * @type {Relationship}
     * @memberof RelationshipPatch
     */
    relation_tuple?: Relationship;
}


/**
 * @export
 */
export const RelationshipPatchActionEnum = {
    Insert: 'insert',
    Delete: 'delete'
} as const;
export type RelationshipPatchActionEnum = typeof RelationshipPatchActionEnum[keyof typeof RelationshipPatchActionEnum];


/**
 * Check if a given object implements the RelationshipPatch interface.
 */
export function instanceOfRelationshipPatch(value: object): value is RelationshipPatch {
    return true;
}

export function RelationshipPatchFromJSON(json: any): RelationshipPatch {
    return RelationshipPatchFromJSONTyped(json, false);
}

export function RelationshipPatchFromJSONTyped(json: any, ignoreDiscriminator: boolean): RelationshipPatch {
    if (json == null) {
        return json;
    }
    return {
        
        'action': json['action'] == null ? undefined : json['action'],
        'relation_tuple': json['relation_tuple'] == null ? undefined : RelationshipFromJSON(json['relation_tuple']),
    };
}

export function RelationshipPatchToJSON(value?: RelationshipPatch | null): any {
    if (value == null) {
        return value;
    }
    return {
        
        'action': value['action'],
        'relation_tuple': RelationshipToJSON(value['relation_tuple']),
    };
}

