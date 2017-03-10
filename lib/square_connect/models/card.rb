=begin
#Square Connect API

OpenAPI spec version: 2.0

Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require 'date'

module SquareConnect
  # Represents the non-confidential details of a credit card.
  class Card
    # The card's unique ID, if any.
    attr_accessor :id

    # The card's brand (such as `VISA`). See [CardBrand](#type-cardbrand) for all possible values.
    attr_accessor :card_brand

    # The last 4 digits of the card's number.
    attr_accessor :last_4

    # The month of the card's expiration date. This value is always between `1` and `12`, inclusive.
    attr_accessor :exp_month

    # The four-digit year of the card's expiration date.
    attr_accessor :exp_year

    # The cardholder name. This value is present only if this object represents a customer's card on file.
    attr_accessor :cardholder_name

    # The card's billing address. This value is present only if this object represents a customer's card on file.
    attr_accessor :billing_address

    class EnumAttributeValidator
      attr_reader :datatype
      attr_reader :allowable_values

      def initialize(datatype, allowable_values)
        @allowable_values = allowable_values.map do |value|
          case datatype.to_s
          when /Integer/i
            value.to_i
          when /Float/i
            value.to_f
          else
            value
          end
        end
      end

      def valid?(value)
        !value || allowable_values.include?(value)
      end
    end

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'id' => :'id',
        :'card_brand' => :'card_brand',
        :'last_4' => :'last_4',
        :'exp_month' => :'exp_month',
        :'exp_year' => :'exp_year',
        :'cardholder_name' => :'cardholder_name',
        :'billing_address' => :'billing_address'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'id' => :'String',
        :'card_brand' => :'String',
        :'last_4' => :'String',
        :'exp_month' => :'Integer',
        :'exp_year' => :'Integer',
        :'cardholder_name' => :'String',
        :'billing_address' => :'Address'
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

      if attributes.has_key?(:'card_brand')
        self.card_brand = attributes[:'card_brand']
      end

      if attributes.has_key?(:'last_4')
        self.last_4 = attributes[:'last_4']
      end

      if attributes.has_key?(:'exp_month')
        self.exp_month = attributes[:'exp_month']
      end

      if attributes.has_key?(:'exp_year')
        self.exp_year = attributes[:'exp_year']
      end

      if attributes.has_key?(:'cardholder_name')
        self.cardholder_name = attributes[:'cardholder_name']
      end

      if attributes.has_key?(:'billing_address')
        self.billing_address = attributes[:'billing_address']
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
      card_brand_validator = EnumAttributeValidator.new('String', ["OTHER_BRAND", "VISA", "MASTERCARD", "AMERICAN_EXPRESS", "DISCOVER", "DISCOVER_DINERS", "JCB", "CHINA_UNIONPAY", "SQUARE_GIFT_CARD"])
      return false unless card_brand_validator.valid?(@card_brand)
      return true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] card_brand Object to be assigned
    def card_brand=(card_brand)
      validator = EnumAttributeValidator.new('String', ["OTHER_BRAND", "VISA", "MASTERCARD", "AMERICAN_EXPRESS", "DISCOVER", "DISCOVER_DINERS", "JCB", "CHINA_UNIONPAY", "SQUARE_GIFT_CARD"])
      unless validator.valid?(card_brand)
        fail ArgumentError, "invalid value for 'card_brand', must be one of #{validator.allowable_values}."
      end
      @card_brand = card_brand
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          card_brand == o.card_brand &&
          last_4 == o.last_4 &&
          exp_month == o.exp_month &&
          exp_year == o.exp_year &&
          cardholder_name == o.cardholder_name &&
          billing_address == o.billing_address
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [id, card_brand, last_4, exp_month, exp_year, cardholder_name, billing_address].hash
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
