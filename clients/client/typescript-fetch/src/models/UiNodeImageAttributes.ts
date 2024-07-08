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
/**
 * 
 * @export
 * @interface UiNodeImageAttributes
 */
export interface UiNodeImageAttributes {
    /**
     * Height of the image
     * @type {number}
     * @memberof UiNodeImageAttributes
     */
    height: number;
    /**
     * A unique identifier
     * @type {string}
     * @memberof UiNodeImageAttributes
     */
    id: string;
    /**
     * NodeType represents this node's types. It is a mirror of `node.type` and
     * is primarily used to allow compatibility with OpenAPI 3.0.  In this struct it technically always is "img".
     * text Text
     * input Input
     * img Image
     * a Anchor
     * script Script
     * @type {string}
     * @memberof UiNodeImageAttributes
     */
    node_type: UiNodeImageAttributesNodeTypeEnum;
    /**
     * The image's source URL.
     * 
     * format: uri
     * @type {string}
     * @memberof UiNodeImageAttributes
     */
    src: string;
    /**
     * Width of the image
     * @type {number}
     * @memberof UiNodeImageAttributes
     */
    width: number;
}


/**
 * @export
 */
export const UiNodeImageAttributesNodeTypeEnum = {
    Text: 'text',
    Input: 'input',
    Img: 'img',
    A: 'a',
    Script: 'script'
} as const;
export type UiNodeImageAttributesNodeTypeEnum = typeof UiNodeImageAttributesNodeTypeEnum[keyof typeof UiNodeImageAttributesNodeTypeEnum];


/**
 * Check if a given object implements the UiNodeImageAttributes interface.
 */
export function instanceOfUiNodeImageAttributes(value: object): value is UiNodeImageAttributes {
    if (!('height' in value) || value['height'] === undefined) return false;
    if (!('id' in value) || value['id'] === undefined) return false;
    if (!('node_type' in value) || value['node_type'] === undefined) return false;
    if (!('src' in value) || value['src'] === undefined) return false;
    if (!('width' in value) || value['width'] === undefined) return false;
    return true;
}

export function UiNodeImageAttributesFromJSON(json: any): UiNodeImageAttributes {
    return UiNodeImageAttributesFromJSONTyped(json, false);
}

export function UiNodeImageAttributesFromJSONTyped(json: any, ignoreDiscriminator: boolean): UiNodeImageAttributes {
    if (json == null) {
        return json;
    }
    return {
        
        'height': json['height'],
        'id': json['id'],
        'node_type': json['node_type'],
        'src': json['src'],
        'width': json['width'],
    };
}

export function UiNodeImageAttributesToJSON(value?: UiNodeImageAttributes | null): any {
    if (value == null) {
        return value;
    }
    return {
        
        'height': value['height'],
        'id': value['id'],
        'node_type': value['node_type'],
        'src': value['src'],
        'width': value['width'],
    };
}

