=begin
#Ory Kratos API

#Documentation for all public and administrative Ory Kratos APIs. Public and administrative APIs are exposed on different ports. Public APIs can face the public internet without any protection while administrative APIs should never be exposed without prior authorization. To protect the administative API port you should use something like Nginx, Ory Oathkeeper, or any other technology capable of authorizing incoming requests. 

The version of the OpenAPI document: v0.10.1
Contact: hi@ory.sh
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.4.0

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for OryKratosClient::AdminCreateIdentityImportCredentialsOidcConfig
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe OryKratosClient::AdminCreateIdentityImportCredentialsOidcConfig do
  let(:instance) { OryKratosClient::AdminCreateIdentityImportCredentialsOidcConfig.new }

  describe 'test an instance of AdminCreateIdentityImportCredentialsOidcConfig' do
    it 'should create an instance of AdminCreateIdentityImportCredentialsOidcConfig' do
      expect(instance).to be_instance_of(OryKratosClient::AdminCreateIdentityImportCredentialsOidcConfig)
    end
  end
  describe 'test attribute "config"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "providers"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
