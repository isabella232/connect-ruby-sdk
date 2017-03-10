=begin
Square Connect API

No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: 2.0

Generated by: https://github.com/swagger-api/swagger-codegen.git


=end

require 'spec_helper'
require 'json'

# Unit tests for SquareConnect::LocationApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'LocationApi' do

  let(:accounts) { load_accounts() }
  
  before do
    # run before each test
    @instance = SquareConnect::LocationApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of LocationApi' do
    it 'should create an instact of LocationApi' do
      @instance.should be_a(SquareConnect::LocationApi)
    end
  end

  # unit tests for list_locations
  # ListLocations
  # Provides the details for all of a business&#39;s locations.  Most other Connect API endpoints have a required &#x60;location_id&#x60; path parameter. The &#x60;id&#x60; field of the [&#x60;Location&#x60;](#type-location) objects returned by this endpoint correspond to that &#x60;location_id&#x60; parameter.
  # @param authorization The value to provide in the Authorization header of your request. This value should follow the format &#x60;Bearer YOUR_ACCESS_TOKEN_HERE&#x60;.
  # @param [Hash] opts the optional parameters
  # @return [ListLocationsResponse]
  describe 'list_locations test' do
    context "Sandbox" do
      let(:account) { accounts["US-Prod-Sandbox"] }
      it "should work" do
        access_token = account["access_token"]
        result = @instance.list_locations(access_token)
        locations = result.locations
        expect(locations.length).to be > 0
        expect(locations[0]).to be_an_instance_of(SquareConnect::Location)
        expect(locations[0].id).to eq("CBASEEffqN8pnVNXwoCL0dSGMVAgAQ")
      end
    end
  end

end
