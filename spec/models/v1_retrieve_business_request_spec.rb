=begin
#Square Connect API

OpenAPI spec version: 2.0
Contact: developers@squareup.com
Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for SquareConnect::V1RetrieveBusinessRequest
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'V1RetrieveBusinessRequest' do
  before do
    # run before each test
    @instance = SquareConnect::V1RetrieveBusinessRequest.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of V1RetrieveBusinessRequest' do
    it 'should create an instact of V1RetrieveBusinessRequest' do
      expect(@instance).to be_instance_of(SquareConnect::V1RetrieveBusinessRequest)
    end
  end
end
