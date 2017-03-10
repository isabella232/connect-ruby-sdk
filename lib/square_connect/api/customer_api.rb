=begin
#Square Connect API

OpenAPI spec version: 2.0

Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require "uri"

module SquareConnect
  class CustomerApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # CreateCustomer
    # Creates a new customer for a business, which can have associated cards on file.  You must provide __at least one__ of the following values in your request to this endpoint:  - `given_name` - `family_name` - `company_name` - `email_address` - `phone_number`  This endpoint does not accept an idempotency key. If you accidentally create a duplicate customer, you can delete it with the [DeleteCustomer](#endpoint-deletecustomer) endpoint.
    # @param authorization The value to provide in the Authorization header of your request. This value should follow the format &#x60;Bearer YOUR_ACCESS_TOKEN_HERE&#x60;.
    # @param body An object containing the fields to POST for the request.  See the corresponding object definition for field details.
    # @param [Hash] opts the optional parameters
    # @return [CreateCustomerResponse]
    def create_customer(authorization, body, opts = {})
      data, _status_code, _headers = create_customer_with_http_info(authorization, body, opts)
      return data
    end

    # CreateCustomer
    # Creates a new customer for a business, which can have associated cards on file.  You must provide __at least one__ of the following values in your request to this endpoint:  - &#x60;given_name&#x60; - &#x60;family_name&#x60; - &#x60;company_name&#x60; - &#x60;email_address&#x60; - &#x60;phone_number&#x60;  This endpoint does not accept an idempotency key. If you accidentally create a duplicate customer, you can delete it with the [DeleteCustomer](#endpoint-deletecustomer) endpoint.
    # @param authorization The value to provide in the Authorization header of your request. This value should follow the format &#x60;Bearer YOUR_ACCESS_TOKEN_HERE&#x60;.
    # @param body An object containing the fields to POST for the request.  See the corresponding object definition for field details.
    # @param [Hash] opts the optional parameters
    # @return [Array<(CreateCustomerResponse, Fixnum, Hash)>] CreateCustomerResponse data, response status code and response headers
    def create_customer_with_http_info(authorization, body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CustomerApi.create_customer ..."
      end
      # verify the required parameter 'authorization' is set
      fail ArgumentError, "Missing the required parameter 'authorization' when calling CustomerApi.create_customer" if authorization.nil?
      # verify the required parameter 'body' is set
      fail ArgumentError, "Missing the required parameter 'body' when calling CustomerApi.create_customer" if body.nil?
      # resource path
      local_var_path = "/v2/customers".sub('{format}','json')

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      header_params[:'Authorization'] = authorization

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(body)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'CreateCustomerResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CustomerApi#create_customer\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # DeleteCustomer
    # Deletes a customer from a business, along with any linked cards on file.
    # @param authorization The value to provide in the Authorization header of your request. This value should follow the format &#x60;Bearer YOUR_ACCESS_TOKEN_HERE&#x60;.
    # @param customer_id The ID of the customer to delete.
    # @param [Hash] opts the optional parameters
    # @return [DeleteCustomerResponse]
    def delete_customer(authorization, customer_id, opts = {})
      data, _status_code, _headers = delete_customer_with_http_info(authorization, customer_id, opts)
      return data
    end

    # DeleteCustomer
    # Deletes a customer from a business, along with any linked cards on file.
    # @param authorization The value to provide in the Authorization header of your request. This value should follow the format &#x60;Bearer YOUR_ACCESS_TOKEN_HERE&#x60;.
    # @param customer_id The ID of the customer to delete.
    # @param [Hash] opts the optional parameters
    # @return [Array<(DeleteCustomerResponse, Fixnum, Hash)>] DeleteCustomerResponse data, response status code and response headers
    def delete_customer_with_http_info(authorization, customer_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CustomerApi.delete_customer ..."
      end
      # verify the required parameter 'authorization' is set
      fail ArgumentError, "Missing the required parameter 'authorization' when calling CustomerApi.delete_customer" if authorization.nil?
      # verify the required parameter 'customer_id' is set
      fail ArgumentError, "Missing the required parameter 'customer_id' when calling CustomerApi.delete_customer" if customer_id.nil?
      # resource path
      local_var_path = "/v2/customers/{customer_id}".sub('{format}','json').sub('{' + 'customer_id' + '}', customer_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      header_params[:'Authorization'] = authorization

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'DeleteCustomerResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CustomerApi#delete_customer\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # ListCustomers
    # Lists a business's customers.
    # @param authorization The value to provide in the Authorization header of your request. This value should follow the format &#x60;Bearer YOUR_ACCESS_TOKEN_HERE&#x60;.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :cursor A pagination cursor returned by a previous call to this endpoint. Provide this to retrieve the next set of results for your original query.  See [Paginating results](#paginatingresults) for more information.
    # @return [ListCustomersResponse]
    def list_customers(authorization, opts = {})
      data, _status_code, _headers = list_customers_with_http_info(authorization, opts)
      return data
    end

    # ListCustomers
    # Lists a business&#39;s customers.
    # @param authorization The value to provide in the Authorization header of your request. This value should follow the format &#x60;Bearer YOUR_ACCESS_TOKEN_HERE&#x60;.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :cursor A pagination cursor returned by a previous call to this endpoint. Provide this to retrieve the next set of results for your original query.  See [Paginating results](#paginatingresults) for more information.
    # @return [Array<(ListCustomersResponse, Fixnum, Hash)>] ListCustomersResponse data, response status code and response headers
    def list_customers_with_http_info(authorization, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CustomerApi.list_customers ..."
      end
      # verify the required parameter 'authorization' is set
      fail ArgumentError, "Missing the required parameter 'authorization' when calling CustomerApi.list_customers" if authorization.nil?
      # resource path
      local_var_path = "/v2/customers".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'cursor'] = opts[:'cursor'] if !opts[:'cursor'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      header_params[:'Authorization'] = authorization

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'ListCustomersResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CustomerApi#list_customers\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # RetrieveCustomer
    # Returns details for a single customer.
    # @param authorization The value to provide in the Authorization header of your request. This value should follow the format &#x60;Bearer YOUR_ACCESS_TOKEN_HERE&#x60;.
    # @param customer_id The ID of the customer to retrieve.
    # @param [Hash] opts the optional parameters
    # @return [RetrieveCustomerResponse]
    def retrieve_customer(authorization, customer_id, opts = {})
      data, _status_code, _headers = retrieve_customer_with_http_info(authorization, customer_id, opts)
      return data
    end

    # RetrieveCustomer
    # Returns details for a single customer.
    # @param authorization The value to provide in the Authorization header of your request. This value should follow the format &#x60;Bearer YOUR_ACCESS_TOKEN_HERE&#x60;.
    # @param customer_id The ID of the customer to retrieve.
    # @param [Hash] opts the optional parameters
    # @return [Array<(RetrieveCustomerResponse, Fixnum, Hash)>] RetrieveCustomerResponse data, response status code and response headers
    def retrieve_customer_with_http_info(authorization, customer_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CustomerApi.retrieve_customer ..."
      end
      # verify the required parameter 'authorization' is set
      fail ArgumentError, "Missing the required parameter 'authorization' when calling CustomerApi.retrieve_customer" if authorization.nil?
      # verify the required parameter 'customer_id' is set
      fail ArgumentError, "Missing the required parameter 'customer_id' when calling CustomerApi.retrieve_customer" if customer_id.nil?
      # resource path
      local_var_path = "/v2/customers/{customer_id}".sub('{format}','json').sub('{' + 'customer_id' + '}', customer_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      header_params[:'Authorization'] = authorization

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'RetrieveCustomerResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CustomerApi#retrieve_customer\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # UpdateCustomer
    # Updates the details of an existing customer.  You cannot edit a customer's cards on file with this endpoint. To make changes to a card on file, you must delete the existing card on file with the [DeleteCustomerCard](#endpoint-deletecustomercard) endpoint, then create a new one with the [CreateCustomerCard](#endpoint-createcustomercard) endpoint.
    # @param authorization The value to provide in the Authorization header of your request. This value should follow the format &#x60;Bearer YOUR_ACCESS_TOKEN_HERE&#x60;.
    # @param customer_id The ID of the customer to update.
    # @param body An object containing the fields to POST for the request.  See the corresponding object definition for field details.
    # @param [Hash] opts the optional parameters
    # @return [UpdateCustomerResponse]
    def update_customer(authorization, customer_id, body, opts = {})
      data, _status_code, _headers = update_customer_with_http_info(authorization, customer_id, body, opts)
      return data
    end

    # UpdateCustomer
    # Updates the details of an existing customer.  You cannot edit a customer&#39;s cards on file with this endpoint. To make changes to a card on file, you must delete the existing card on file with the [DeleteCustomerCard](#endpoint-deletecustomercard) endpoint, then create a new one with the [CreateCustomerCard](#endpoint-createcustomercard) endpoint.
    # @param authorization The value to provide in the Authorization header of your request. This value should follow the format &#x60;Bearer YOUR_ACCESS_TOKEN_HERE&#x60;.
    # @param customer_id The ID of the customer to update.
    # @param body An object containing the fields to POST for the request.  See the corresponding object definition for field details.
    # @param [Hash] opts the optional parameters
    # @return [Array<(UpdateCustomerResponse, Fixnum, Hash)>] UpdateCustomerResponse data, response status code and response headers
    def update_customer_with_http_info(authorization, customer_id, body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CustomerApi.update_customer ..."
      end
      # verify the required parameter 'authorization' is set
      fail ArgumentError, "Missing the required parameter 'authorization' when calling CustomerApi.update_customer" if authorization.nil?
      # verify the required parameter 'customer_id' is set
      fail ArgumentError, "Missing the required parameter 'customer_id' when calling CustomerApi.update_customer" if customer_id.nil?
      # verify the required parameter 'body' is set
      fail ArgumentError, "Missing the required parameter 'body' when calling CustomerApi.update_customer" if body.nil?
      # resource path
      local_var_path = "/v2/customers/{customer_id}".sub('{format}','json').sub('{' + 'customer_id' + '}', customer_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      header_params[:'Authorization'] = authorization

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(body)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'UpdateCustomerResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CustomerApi#update_customer\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
