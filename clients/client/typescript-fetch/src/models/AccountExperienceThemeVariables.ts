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
 * @interface AccountExperienceThemeVariables
 */
export interface AccountExperienceThemeVariables {
    /**
     * 
     * @type {string}
     * @memberof AccountExperienceThemeVariables
     */
    accent?: string;
    /**
     * 
     * @type {string}
     * @memberof AccountExperienceThemeVariables
     */
    bg_default?: string;
    /**
     * 
     * @type {string}
     * @memberof AccountExperienceThemeVariables
     */
    border_radius_branding?: string;
    /**
     * 
     * @type {string}
     * @memberof AccountExperienceThemeVariables
     */
    border_radius_buttons?: string;
    /**
     * 
     * @type {string}
     * @memberof AccountExperienceThemeVariables
     */
    border_radius_cards?: string;
    /**
     * 
     * @type {string}
     * @memberof AccountExperienceThemeVariables
     */
    border_radius_forms?: string;
    /**
     * 
     * @type {string}
     * @memberof AccountExperienceThemeVariables
     */
    border_radius_general?: string;
    /**
     * 
     * @type {string}
     * @memberof AccountExperienceThemeVariables
     */
    button_primary_bg_default?: string;
    /**
     * 
     * @type {string}
     * @memberof AccountExperienceThemeVariables
     */
    button_primary_bg_disabled?: string;
    /**
     * 
     * @type {string}
     * @memberof AccountExperienceThemeVariables
     */
    button_primary_bg_hover?: string;
    /**
     * 
     * @type {string}
     * @memberof AccountExperienceThemeVariables
     */
    button_primary_border_default?: string;
    /**
     * 
     * @type {string}
     * @memberof AccountExperienceThemeVariables
     */
    button_primary_border_disabled?: string;
    /**
     * 
     * @type {string}
     * @memberof AccountExperienceThemeVariables
     */
    button_primary_border_hover?: string;
    /**
     * 
     * @type {string}
     * @memberof AccountExperienceThemeVariables
     */
    button_primary_fg_default?: string;
    /**
     * 
     * @type {string}
     * @memberof AccountExperienceThemeVariables
     */
    button_primary_fg_disabled?: string;
    /**
     * 
     * @type {string}
     * @memberof AccountExperienceThemeVariables
     */
    button_primary_fg_hover?: string;
    /**
     * 
     * @type {string}
     * @memberof AccountExperienceThemeVariables
     */
    button_secondary_bg_default?: string;
    /**
     * 
     * @type {string}
     * @memberof AccountExperienceThemeVariables
     */
    button_secondary_bg_disabled?: string;
    /**
     * 
     * @type {string}
     * @memberof AccountExperienceThemeVariables
     */
    button_secondary_bg_hover?: string;
    /**
     * 
     * @type {string}
     * @memberof AccountExperienceThemeVariables
     */
    button_secondary_border_default?: string;
    /**
     * 
     * @type {string}
     * @memberof AccountExperienceThemeVariables
     */
    button_secondary_border_disabled?: string;
    /**
     * 
     * @type {string}
     * @memberof AccountExperienceThemeVariables
     */
    button_secondary_border_hover?: string;
    /**
     * 
     * @type {string}
     * @memberof AccountExperienceThemeVariables
     */
    button_secondary_fg_default?: string;
    /**
     * 
     * @type {string}
     * @memberof AccountExperienceThemeVariables
     */
    button_secondary_fg_disabled?: string;
    /**
     * 
     * @type {string}
     * @memberof AccountExperienceThemeVariables
     */
    button_secondary_fg_hover?: string;
    /**
     * 
     * @type {string}
     * @memberof AccountExperienceThemeVariables
     */
    button_social_bg_default?: string;
    /**
     * 
     * @type {string}
     * @memberof AccountExperienceThemeVariables
     */
    button_social_bg_disabled?: string;
    /**
     * 
     * @type {string}
     * @memberof AccountExperienceThemeVariables
     */
    button_social_bg_hover?: string;
    /**
     * 
     * @type {string}
     * @memberof AccountExperienceThemeVariables
     */
    button_social_bg_provider?: string;
    /**
     * 
     * @type {string}
     * @memberof AccountExperienceThemeVariables
     */
    button_social_border_default?: string;
    /**
     * 
     * @type {string}
     * @memberof AccountExperienceThemeVariables
     */
    button_social_border_disabled?: string;
    /**
     * 
     * @type {string}
     * @memberof AccountExperienceThemeVariables
     */
    button_social_border_hover?: string;
    /**
     * 
     * @type {string}
     * @memberof AccountExperienceThemeVariables
     */
    button_social_border_provider?: string;
    /**
     * 
     * @type {string}
     * @memberof AccountExperienceThemeVariables
     */
    button_social_fg_default?: string;
    /**
     * 
     * @type {string}
     * @memberof AccountExperienceThemeVariables
     */
    button_social_fg_disabled?: string;
    /**
     * 
     * @type {string}
     * @memberof AccountExperienceThemeVariables
     */
    button_social_fg_hover?: string;
    /**
     * 
     * @type {string}
     * @memberof AccountExperienceThemeVariables
     */
    button_social_fg_provider?: string;
    /**
     * 
     * @type {Date}
     * @memberof AccountExperienceThemeVariables
     */
    created_at?: Date;
    /**
     * 
     * @type {string}
     * @memberof AccountExperienceThemeVariables
     */
    dialog_bg_default?: string;
    /**
     * 
     * @type {string}
     * @memberof AccountExperienceThemeVariables
     */
    dialog_bg_subtle?: string;
    /**
     * 
     * @type {string}
     * @memberof AccountExperienceThemeVariables
     */
    dialog_border_default?: string;
    /**
     * 
     * @type {string}
     * @memberof AccountExperienceThemeVariables
     */
    dialog_fg_default?: string;
    /**
     * 
     * @type {string}
     * @memberof AccountExperienceThemeVariables
     */
    dialog_fg_mute?: string;
    /**
     * 
     * @type {string}
     * @memberof AccountExperienceThemeVariables
     */
    dialog_fg_subtle?: string;
    /**
     * 
     * @type {string}
     * @memberof AccountExperienceThemeVariables
     */
    forms_bg_default?: string;
    /**
     * 
     * @type {string}
     * @memberof AccountExperienceThemeVariables
     */
    forms_bg_disabled?: string;
    /**
     * 
     * @type {string}
     * @memberof AccountExperienceThemeVariables
     */
    forms_bg_hover?: string;
    /**
     * 
     * @type {string}
     * @memberof AccountExperienceThemeVariables
     */
    forms_border_default?: string;
    /**
     * 
     * @type {string}
     * @memberof AccountExperienceThemeVariables
     */
    forms_border_disabled?: string;
    /**
     * 
     * @type {string}
     * @memberof AccountExperienceThemeVariables
     */
    forms_border_error?: string;
    /**
     * 
     * @type {string}
     * @memberof AccountExperienceThemeVariables
     */
    forms_border_focus?: string;
    /**
     * 
     * @type {string}
     * @memberof AccountExperienceThemeVariables
     */
    forms_border_hover?: string;
    /**
     * 
     * @type {string}
     * @memberof AccountExperienceThemeVariables
     */
    forms_border_success?: string;
    /**
     * 
     * @type {string}
     * @memberof AccountExperienceThemeVariables
     */
    forms_border_warn?: string;
    /**
     * 
     * @type {string}
     * @memberof AccountExperienceThemeVariables
     */
    forms_checkbox_bg_checked?: string;
    /**
     * 
     * @type {string}
     * @memberof AccountExperienceThemeVariables
     */
    forms_checkbox_bg_default?: string;
    /**
     * 
     * @type {string}
     * @memberof AccountExperienceThemeVariables
     */
    forms_checkbox_border_checked?: string;
    /**
     * 
     * @type {string}
     * @memberof AccountExperienceThemeVariables
     */
    forms_checkbox_border_default?: string;
    /**
     * 
     * @type {string}
     * @memberof AccountExperienceThemeVariables
     */
    forms_checkbox_fg_checked?: string;
    /**
     * 
     * @type {string}
     * @memberof AccountExperienceThemeVariables
     */
    forms_checkbox_fg_default?: string;
    /**
     * 
     * @type {string}
     * @memberof AccountExperienceThemeVariables
     */
    forms_fg_default?: string;
    /**
     * 
     * @type {string}
     * @memberof AccountExperienceThemeVariables
     */
    forms_fg_error?: string;
    /**
     * 
     * @type {string}
     * @memberof AccountExperienceThemeVariables
     */
    forms_fg_mute?: string;
    /**
     * 
     * @type {string}
     * @memberof AccountExperienceThemeVariables
     */
    forms_fg_subtle?: string;
    /**
     * 
     * @type {string}
     * @memberof AccountExperienceThemeVariables
     */
    forms_fg_success?: string;
    /**
     * 
     * @type {string}
     * @memberof AccountExperienceThemeVariables
     */
    forms_fg_warn?: string;
    /**
     * 
     * @type {string}
     * @memberof AccountExperienceThemeVariables
     */
    forms_radio_bg_checked?: string;
    /**
     * 
     * @type {string}
     * @memberof AccountExperienceThemeVariables
     */
    forms_radio_bg_default?: string;
    /**
     * 
     * @type {string}
     * @memberof AccountExperienceThemeVariables
     */
    forms_radio_border_checked?: string;
    /**
     * 
     * @type {string}
     * @memberof AccountExperienceThemeVariables
     */
    forms_radio_border_default?: string;
    /**
     * 
     * @type {string}
     * @memberof AccountExperienceThemeVariables
     */
    forms_radio_fg_checked?: string;
    /**
     * 
     * @type {string}
     * @memberof AccountExperienceThemeVariables
     */
    forms_radio_fg_default?: string;
    /**
     * 
     * @type {string}
     * @memberof AccountExperienceThemeVariables
     */
    forms_toggle_bg_checked?: string;
    /**
     * 
     * @type {string}
     * @memberof AccountExperienceThemeVariables
     */
    forms_toggle_bg_default?: string;
    /**
     * 
     * @type {string}
     * @memberof AccountExperienceThemeVariables
     */
    forms_toggle_border_checked?: string;
    /**
     * 
     * @type {string}
     * @memberof AccountExperienceThemeVariables
     */
    forms_toggle_border_default?: string;
    /**
     * 
     * @type {string}
     * @memberof AccountExperienceThemeVariables
     */
    forms_toggle_fg_checked?: string;
    /**
     * 
     * @type {string}
     * @memberof AccountExperienceThemeVariables
     */
    forms_toggle_fg_default?: string;
    /**
     * 
     * @type {string}
     * @memberof AccountExperienceThemeVariables
     */
    id?: string;
    /**
     * 
     * @type {string}
     * @memberof AccountExperienceThemeVariables
     */
    links_link_default?: string;
    /**
     * 
     * @type {string}
     * @memberof AccountExperienceThemeVariables
     */
    links_link_disabled?: string;
    /**
     * 
     * @type {string}
     * @memberof AccountExperienceThemeVariables
     */
    links_link_hover?: string;
    /**
     * 
     * @type {string}
     * @memberof AccountExperienceThemeVariables
     */
    links_link_inverted_default?: string;
    /**
     * 
     * @type {string}
     * @memberof AccountExperienceThemeVariables
     */
    links_link_inverted_hover?: string;
    /**
     * 
     * @type {string}
     * @memberof AccountExperienceThemeVariables
     */
    links_link_mute_default?: string;
    /**
     * 
     * @type {string}
     * @memberof AccountExperienceThemeVariables
     */
    links_link_mute_hover?: string;
    /**
     * 
     * @type {string}
     * @memberof AccountExperienceThemeVariables
     */
    syntax_syntax?: string;
    /**
     * 
     * @type {string}
     * @memberof AccountExperienceThemeVariables
     */
    syntax_syntax_key?: string;
    /**
     * 
     * @type {string}
     * @memberof AccountExperienceThemeVariables
     */
    syntax_syntax_num?: string;
    /**
     * 
     * @type {string}
     * @memberof AccountExperienceThemeVariables
     */
    syntax_syntax_value?: string;
    /**
     * 
     * @type {Date}
     * @memberof AccountExperienceThemeVariables
     */
    updated_at?: Date;
}

/**
 * Check if a given object implements the AccountExperienceThemeVariables interface.
 */
export function instanceOfAccountExperienceThemeVariables(value: object): value is AccountExperienceThemeVariables {
    return true;
}

export function AccountExperienceThemeVariablesFromJSON(json: any): AccountExperienceThemeVariables {
    return AccountExperienceThemeVariablesFromJSONTyped(json, false);
}

export function AccountExperienceThemeVariablesFromJSONTyped(json: any, ignoreDiscriminator: boolean): AccountExperienceThemeVariables {
    if (json == null) {
        return json;
    }
    return {
        
        'accent': json['accent'] == null ? undefined : json['accent'],
        'bg_default': json['bg-default'] == null ? undefined : json['bg-default'],
        'border_radius_branding': json['border-radius-branding'] == null ? undefined : json['border-radius-branding'],
        'border_radius_buttons': json['border-radius-buttons'] == null ? undefined : json['border-radius-buttons'],
        'border_radius_cards': json['border-radius-cards'] == null ? undefined : json['border-radius-cards'],
        'border_radius_forms': json['border-radius-forms'] == null ? undefined : json['border-radius-forms'],
        'border_radius_general': json['border-radius-general'] == null ? undefined : json['border-radius-general'],
        'button_primary_bg_default': json['button-primary-bg-default'] == null ? undefined : json['button-primary-bg-default'],
        'button_primary_bg_disabled': json['button-primary-bg-disabled'] == null ? undefined : json['button-primary-bg-disabled'],
        'button_primary_bg_hover': json['button-primary-bg-hover'] == null ? undefined : json['button-primary-bg-hover'],
        'button_primary_border_default': json['button-primary-border-default'] == null ? undefined : json['button-primary-border-default'],
        'button_primary_border_disabled': json['button-primary-border-disabled'] == null ? undefined : json['button-primary-border-disabled'],
        'button_primary_border_hover': json['button-primary-border-hover'] == null ? undefined : json['button-primary-border-hover'],
        'button_primary_fg_default': json['button-primary-fg-default'] == null ? undefined : json['button-primary-fg-default'],
        'button_primary_fg_disabled': json['button-primary-fg-disabled'] == null ? undefined : json['button-primary-fg-disabled'],
        'button_primary_fg_hover': json['button-primary-fg-hover'] == null ? undefined : json['button-primary-fg-hover'],
        'button_secondary_bg_default': json['button-secondary-bg-default'] == null ? undefined : json['button-secondary-bg-default'],
        'button_secondary_bg_disabled': json['button-secondary-bg-disabled'] == null ? undefined : json['button-secondary-bg-disabled'],
        'button_secondary_bg_hover': json['button-secondary-bg-hover'] == null ? undefined : json['button-secondary-bg-hover'],
        'button_secondary_border_default': json['button-secondary-border-default'] == null ? undefined : json['button-secondary-border-default'],
        'button_secondary_border_disabled': json['button-secondary-border-disabled'] == null ? undefined : json['button-secondary-border-disabled'],
        'button_secondary_border_hover': json['button-secondary-border-hover'] == null ? undefined : json['button-secondary-border-hover'],
        'button_secondary_fg_default': json['button-secondary-fg-default'] == null ? undefined : json['button-secondary-fg-default'],
        'button_secondary_fg_disabled': json['button-secondary-fg-disabled'] == null ? undefined : json['button-secondary-fg-disabled'],
        'button_secondary_fg_hover': json['button-secondary-fg-hover'] == null ? undefined : json['button-secondary-fg-hover'],
        'button_social_bg_default': json['button-social-bg-default'] == null ? undefined : json['button-social-bg-default'],
        'button_social_bg_disabled': json['button-social-bg-disabled'] == null ? undefined : json['button-social-bg-disabled'],
        'button_social_bg_hover': json['button-social-bg-hover'] == null ? undefined : json['button-social-bg-hover'],
        'button_social_bg_provider': json['button-social-bg-provider'] == null ? undefined : json['button-social-bg-provider'],
        'button_social_border_default': json['button-social-border-default'] == null ? undefined : json['button-social-border-default'],
        'button_social_border_disabled': json['button-social-border-disabled'] == null ? undefined : json['button-social-border-disabled'],
        'button_social_border_hover': json['button-social-border-hover'] == null ? undefined : json['button-social-border-hover'],
        'button_social_border_provider': json['button-social-border-provider'] == null ? undefined : json['button-social-border-provider'],
        'button_social_fg_default': json['button-social-fg-default'] == null ? undefined : json['button-social-fg-default'],
        'button_social_fg_disabled': json['button-social-fg-disabled'] == null ? undefined : json['button-social-fg-disabled'],
        'button_social_fg_hover': json['button-social-fg-hover'] == null ? undefined : json['button-social-fg-hover'],
        'button_social_fg_provider': json['button-social-fg-provider'] == null ? undefined : json['button-social-fg-provider'],
        'created_at': json['created_at'] == null ? undefined : (new Date(json['created_at'])),
        'dialog_bg_default': json['dialog-bg-default'] == null ? undefined : json['dialog-bg-default'],
        'dialog_bg_subtle': json['dialog-bg-subtle'] == null ? undefined : json['dialog-bg-subtle'],
        'dialog_border_default': json['dialog-border-default'] == null ? undefined : json['dialog-border-default'],
        'dialog_fg_default': json['dialog-fg-default'] == null ? undefined : json['dialog-fg-default'],
        'dialog_fg_mute': json['dialog-fg-mute'] == null ? undefined : json['dialog-fg-mute'],
        'dialog_fg_subtle': json['dialog-fg-subtle'] == null ? undefined : json['dialog-fg-subtle'],
        'forms_bg_default': json['forms-bg-default'] == null ? undefined : json['forms-bg-default'],
        'forms_bg_disabled': json['forms-bg-disabled'] == null ? undefined : json['forms-bg-disabled'],
        'forms_bg_hover': json['forms-bg-hover'] == null ? undefined : json['forms-bg-hover'],
        'forms_border_default': json['forms-border-default'] == null ? undefined : json['forms-border-default'],
        'forms_border_disabled': json['forms-border-disabled'] == null ? undefined : json['forms-border-disabled'],
        'forms_border_error': json['forms-border-error'] == null ? undefined : json['forms-border-error'],
        'forms_border_focus': json['forms-border-focus'] == null ? undefined : json['forms-border-focus'],
        'forms_border_hover': json['forms-border-hover'] == null ? undefined : json['forms-border-hover'],
        'forms_border_success': json['forms-border-success'] == null ? undefined : json['forms-border-success'],
        'forms_border_warn': json['forms-border-warn'] == null ? undefined : json['forms-border-warn'],
        'forms_checkbox_bg_checked': json['forms-checkbox-bg-checked'] == null ? undefined : json['forms-checkbox-bg-checked'],
        'forms_checkbox_bg_default': json['forms-checkbox-bg-default'] == null ? undefined : json['forms-checkbox-bg-default'],
        'forms_checkbox_border_checked': json['forms-checkbox-border-checked'] == null ? undefined : json['forms-checkbox-border-checked'],
        'forms_checkbox_border_default': json['forms-checkbox-border-default'] == null ? undefined : json['forms-checkbox-border-default'],
        'forms_checkbox_fg_checked': json['forms-checkbox-fg-checked'] == null ? undefined : json['forms-checkbox-fg-checked'],
        'forms_checkbox_fg_default': json['forms-checkbox-fg-default'] == null ? undefined : json['forms-checkbox-fg-default'],
        'forms_fg_default': json['forms-fg-default'] == null ? undefined : json['forms-fg-default'],
        'forms_fg_error': json['forms-fg-error'] == null ? undefined : json['forms-fg-error'],
        'forms_fg_mute': json['forms-fg-mute'] == null ? undefined : json['forms-fg-mute'],
        'forms_fg_subtle': json['forms-fg-subtle'] == null ? undefined : json['forms-fg-subtle'],
        'forms_fg_success': json['forms-fg-success'] == null ? undefined : json['forms-fg-success'],
        'forms_fg_warn': json['forms-fg-warn'] == null ? undefined : json['forms-fg-warn'],
        'forms_radio_bg_checked': json['forms-radio-bg-checked'] == null ? undefined : json['forms-radio-bg-checked'],
        'forms_radio_bg_default': json['forms-radio-bg-default'] == null ? undefined : json['forms-radio-bg-default'],
        'forms_radio_border_checked': json['forms-radio-border-checked'] == null ? undefined : json['forms-radio-border-checked'],
        'forms_radio_border_default': json['forms-radio-border-default'] == null ? undefined : json['forms-radio-border-default'],
        'forms_radio_fg_checked': json['forms-radio-fg-checked'] == null ? undefined : json['forms-radio-fg-checked'],
        'forms_radio_fg_default': json['forms-radio-fg-default'] == null ? undefined : json['forms-radio-fg-default'],
        'forms_toggle_bg_checked': json['forms-toggle-bg-checked'] == null ? undefined : json['forms-toggle-bg-checked'],
        'forms_toggle_bg_default': json['forms-toggle-bg-default'] == null ? undefined : json['forms-toggle-bg-default'],
        'forms_toggle_border_checked': json['forms-toggle-border-checked'] == null ? undefined : json['forms-toggle-border-checked'],
        'forms_toggle_border_default': json['forms-toggle-border-default'] == null ? undefined : json['forms-toggle-border-default'],
        'forms_toggle_fg_checked': json['forms-toggle-fg-checked'] == null ? undefined : json['forms-toggle-fg-checked'],
        'forms_toggle_fg_default': json['forms-toggle-fg-default'] == null ? undefined : json['forms-toggle-fg-default'],
        'id': json['id'] == null ? undefined : json['id'],
        'links_link_default': json['links-link-default'] == null ? undefined : json['links-link-default'],
        'links_link_disabled': json['links-link-disabled'] == null ? undefined : json['links-link-disabled'],
        'links_link_hover': json['links-link-hover'] == null ? undefined : json['links-link-hover'],
        'links_link_inverted_default': json['links-link-inverted-default'] == null ? undefined : json['links-link-inverted-default'],
        'links_link_inverted_hover': json['links-link-inverted-hover'] == null ? undefined : json['links-link-inverted-hover'],
        'links_link_mute_default': json['links-link-mute-default'] == null ? undefined : json['links-link-mute-default'],
        'links_link_mute_hover': json['links-link-mute-hover'] == null ? undefined : json['links-link-mute-hover'],
        'syntax_syntax': json['syntax-syntax'] == null ? undefined : json['syntax-syntax'],
        'syntax_syntax_key': json['syntax-syntax-key'] == null ? undefined : json['syntax-syntax-key'],
        'syntax_syntax_num': json['syntax-syntax-num'] == null ? undefined : json['syntax-syntax-num'],
        'syntax_syntax_value': json['syntax-syntax-value'] == null ? undefined : json['syntax-syntax-value'],
        'updated_at': json['updated_at'] == null ? undefined : (new Date(json['updated_at'])),
    };
}

export function AccountExperienceThemeVariablesToJSON(value?: AccountExperienceThemeVariables | null): any {
    if (value == null) {
        return value;
    }
    return {
        
        'accent': value['accent'],
        'bg-default': value['bg_default'],
        'border-radius-branding': value['border_radius_branding'],
        'border-radius-buttons': value['border_radius_buttons'],
        'border-radius-cards': value['border_radius_cards'],
        'border-radius-forms': value['border_radius_forms'],
        'border-radius-general': value['border_radius_general'],
        'button-primary-bg-default': value['button_primary_bg_default'],
        'button-primary-bg-disabled': value['button_primary_bg_disabled'],
        'button-primary-bg-hover': value['button_primary_bg_hover'],
        'button-primary-border-default': value['button_primary_border_default'],
        'button-primary-border-disabled': value['button_primary_border_disabled'],
        'button-primary-border-hover': value['button_primary_border_hover'],
        'button-primary-fg-default': value['button_primary_fg_default'],
        'button-primary-fg-disabled': value['button_primary_fg_disabled'],
        'button-primary-fg-hover': value['button_primary_fg_hover'],
        'button-secondary-bg-default': value['button_secondary_bg_default'],
        'button-secondary-bg-disabled': value['button_secondary_bg_disabled'],
        'button-secondary-bg-hover': value['button_secondary_bg_hover'],
        'button-secondary-border-default': value['button_secondary_border_default'],
        'button-secondary-border-disabled': value['button_secondary_border_disabled'],
        'button-secondary-border-hover': value['button_secondary_border_hover'],
        'button-secondary-fg-default': value['button_secondary_fg_default'],
        'button-secondary-fg-disabled': value['button_secondary_fg_disabled'],
        'button-secondary-fg-hover': value['button_secondary_fg_hover'],
        'button-social-bg-default': value['button_social_bg_default'],
        'button-social-bg-disabled': value['button_social_bg_disabled'],
        'button-social-bg-hover': value['button_social_bg_hover'],
        'button-social-bg-provider': value['button_social_bg_provider'],
        'button-social-border-default': value['button_social_border_default'],
        'button-social-border-disabled': value['button_social_border_disabled'],
        'button-social-border-hover': value['button_social_border_hover'],
        'button-social-border-provider': value['button_social_border_provider'],
        'button-social-fg-default': value['button_social_fg_default'],
        'button-social-fg-disabled': value['button_social_fg_disabled'],
        'button-social-fg-hover': value['button_social_fg_hover'],
        'button-social-fg-provider': value['button_social_fg_provider'],
        'created_at': value['created_at'] == null ? undefined : ((value['created_at']).toISOString()),
        'dialog-bg-default': value['dialog_bg_default'],
        'dialog-bg-subtle': value['dialog_bg_subtle'],
        'dialog-border-default': value['dialog_border_default'],
        'dialog-fg-default': value['dialog_fg_default'],
        'dialog-fg-mute': value['dialog_fg_mute'],
        'dialog-fg-subtle': value['dialog_fg_subtle'],
        'forms-bg-default': value['forms_bg_default'],
        'forms-bg-disabled': value['forms_bg_disabled'],
        'forms-bg-hover': value['forms_bg_hover'],
        'forms-border-default': value['forms_border_default'],
        'forms-border-disabled': value['forms_border_disabled'],
        'forms-border-error': value['forms_border_error'],
        'forms-border-focus': value['forms_border_focus'],
        'forms-border-hover': value['forms_border_hover'],
        'forms-border-success': value['forms_border_success'],
        'forms-border-warn': value['forms_border_warn'],
        'forms-checkbox-bg-checked': value['forms_checkbox_bg_checked'],
        'forms-checkbox-bg-default': value['forms_checkbox_bg_default'],
        'forms-checkbox-border-checked': value['forms_checkbox_border_checked'],
        'forms-checkbox-border-default': value['forms_checkbox_border_default'],
        'forms-checkbox-fg-checked': value['forms_checkbox_fg_checked'],
        'forms-checkbox-fg-default': value['forms_checkbox_fg_default'],
        'forms-fg-default': value['forms_fg_default'],
        'forms-fg-error': value['forms_fg_error'],
        'forms-fg-mute': value['forms_fg_mute'],
        'forms-fg-subtle': value['forms_fg_subtle'],
        'forms-fg-success': value['forms_fg_success'],
        'forms-fg-warn': value['forms_fg_warn'],
        'forms-radio-bg-checked': value['forms_radio_bg_checked'],
        'forms-radio-bg-default': value['forms_radio_bg_default'],
        'forms-radio-border-checked': value['forms_radio_border_checked'],
        'forms-radio-border-default': value['forms_radio_border_default'],
        'forms-radio-fg-checked': value['forms_radio_fg_checked'],
        'forms-radio-fg-default': value['forms_radio_fg_default'],
        'forms-toggle-bg-checked': value['forms_toggle_bg_checked'],
        'forms-toggle-bg-default': value['forms_toggle_bg_default'],
        'forms-toggle-border-checked': value['forms_toggle_border_checked'],
        'forms-toggle-border-default': value['forms_toggle_border_default'],
        'forms-toggle-fg-checked': value['forms_toggle_fg_checked'],
        'forms-toggle-fg-default': value['forms_toggle_fg_default'],
        'id': value['id'],
        'links-link-default': value['links_link_default'],
        'links-link-disabled': value['links_link_disabled'],
        'links-link-hover': value['links_link_hover'],
        'links-link-inverted-default': value['links_link_inverted_default'],
        'links-link-inverted-hover': value['links_link_inverted_hover'],
        'links-link-mute-default': value['links_link_mute_default'],
        'links-link-mute-hover': value['links_link_mute_hover'],
        'syntax-syntax': value['syntax_syntax'],
        'syntax-syntax-key': value['syntax_syntax_key'],
        'syntax-syntax-num': value['syntax_syntax_num'],
        'syntax-syntax-value': value['syntax_syntax_value'],
        'updated_at': value['updated_at'] == null ? undefined : ((value['updated_at']).toISOString()),
    };
}

