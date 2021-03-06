=begin
#Square Connect API

OpenAPI spec version: 2.0
Contact: developers@squareup.com
Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require 'date'

module SquareConnect
  # Defines the fields that are included in the response body of a request to the **RetrieveBusiness** endpoint.
  class V1Merchant
    # The merchant account's unique identifier.
    attr_accessor :id

    # The name associated with the merchant account.
    attr_accessor :name

    # The email address associated with the merchant account.
    attr_accessor :email

    # Indicates whether the merchant account corresponds to a single-location account (LOCATION) or a business account (BUSINESS). This value is almost always LOCATION. See [V1MerchantAccountType](#type-v1merchantaccounttype) for possible values
    attr_accessor :account_type

    # Capabilities that are enabled for the merchant's Square account. Capabilities that are not listed in this array are not enabled for the account.
    attr_accessor :account_capabilities

    # The country associated with the merchant account, in ISO 3166-1-alpha-2 format.
    attr_accessor :country_code

    # The language associated with the merchant account, in BCP 47 format.
    attr_accessor :language_code

    # The currency associated with the merchant account, in ISO 4217 format. For example, the currency code for US dollars is USD.
    attr_accessor :currency_code

    # The name of the merchant's business.
    attr_accessor :business_name

    # The address of the merchant's business.
    attr_accessor :business_address

    # The phone number of the merchant's business.
    attr_accessor :business_phone

    # The type of business operated by the merchant. See [V1MerchantBusinessType](#type-v1merchantbusinesstype) for possible values
    attr_accessor :business_type

    # The merchant's shipping address.
    attr_accessor :shipping_address

    # Additional information for a single-location account specified by its associated business account, if it has one.
    attr_accessor :location_details

    # The URL of the merchant's online store.
    attr_accessor :market_url


    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'id' => :'id',
        :'name' => :'name',
        :'email' => :'email',
        :'account_type' => :'account_type',
        :'account_capabilities' => :'account_capabilities',
        :'country_code' => :'country_code',
        :'language_code' => :'language_code',
        :'currency_code' => :'currency_code',
        :'business_name' => :'business_name',
        :'business_address' => :'business_address',
        :'business_phone' => :'business_phone',
        :'business_type' => :'business_type',
        :'shipping_address' => :'shipping_address',
        :'location_details' => :'location_details',
        :'market_url' => :'market_url'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'id' => :'String',
        :'name' => :'String',
        :'email' => :'String',
        :'account_type' => :'String',
        :'account_capabilities' => :'Array<String>',
        :'country_code' => :'String',
        :'language_code' => :'String',
        :'currency_code' => :'String',
        :'business_name' => :'String',
        :'business_address' => :'Address',
        :'business_phone' => :'V1PhoneNumber',
        :'business_type' => :'String',
        :'shipping_address' => :'Address',
        :'location_details' => :'V1MerchantLocationDetails',
        :'market_url' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.has_key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.has_key?(:'email')
        self.email = attributes[:'email']
      end

      if attributes.has_key?(:'account_type')
        self.account_type = attributes[:'account_type']
      end

      if attributes.has_key?(:'account_capabilities')
        if (value = attributes[:'account_capabilities']).is_a?(Array)
          self.account_capabilities = value
        end
      end

      if attributes.has_key?(:'country_code')
        self.country_code = attributes[:'country_code']
      end

      if attributes.has_key?(:'language_code')
        self.language_code = attributes[:'language_code']
      end

      if attributes.has_key?(:'currency_code')
        self.currency_code = attributes[:'currency_code']
      end

      if attributes.has_key?(:'business_name')
        self.business_name = attributes[:'business_name']
      end

      if attributes.has_key?(:'business_address')
        self.business_address = attributes[:'business_address']
      end

      if attributes.has_key?(:'business_phone')
        self.business_phone = attributes[:'business_phone']
      end

      if attributes.has_key?(:'business_type')
        self.business_type = attributes[:'business_type']
      end

      if attributes.has_key?(:'shipping_address')
        self.shipping_address = attributes[:'shipping_address']
      end

      if attributes.has_key?(:'location_details')
        self.location_details = attributes[:'location_details']
      end

      if attributes.has_key?(:'market_url')
        self.market_url = attributes[:'market_url']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properies with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          name == o.name &&
          email == o.email &&
          account_type == o.account_type &&
          account_capabilities == o.account_capabilities &&
          country_code == o.country_code &&
          language_code == o.language_code &&
          currency_code == o.currency_code &&
          business_name == o.business_name &&
          business_address == o.business_address &&
          business_phone == o.business_phone &&
          business_type == o.business_type &&
          shipping_address == o.shipping_address &&
          location_details == o.location_details &&
          market_url == o.market_url
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [id, name, email, account_type, account_capabilities, country_code, language_code, currency_code, business_name, business_address, business_phone, business_type, shipping_address, location_details, market_url].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.swagger_types.each_pair do |key, type|
        if type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map{ |v| _deserialize($1, v) } )
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end # or else data not found in attributes(hash), not an issue as the data can be optional
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :DateTime
        DateTime.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :BOOLEAN
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        temp_model = SquareConnect.const_get(type).new
        temp_model.build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        next if value.nil?
        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map{ |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end

  end

end
