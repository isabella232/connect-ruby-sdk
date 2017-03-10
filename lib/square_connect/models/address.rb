=begin
#Square Connect API

OpenAPI spec version: 2.0

Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require 'date'

module SquareConnect
  # Represents a physical address.
  class Address
    # The first line of the address.  Fields that start with `address_line` provide the address's most specific details, like street number, street name, and building name. They do *not* provide less specific details like city, state/province, or country (these details are provided in other fields).
    attr_accessor :address_line_1

    # The second line of the address, if any.
    attr_accessor :address_line_2

    # The third line of the address, if any.
    attr_accessor :address_line_3

    # The city or town of the address.
    attr_accessor :locality

    # A civil region within the address's `locality`, if any.
    attr_accessor :sublocality

    # A civil region within the address's `sublocality`, if any.
    attr_accessor :sublocality_2

    # A civil region within the address's `sublocality_2`, if any.
    attr_accessor :sublocality_3

    # A civil entity within the address's country. In the US, this is the state.
    attr_accessor :administrative_district_level_1

    # A civil entity within the address's `administrative_district_level_1`. In the US, this is the county.
    attr_accessor :administrative_district_level_2

    # A civil entity within the address's `administrative_district_level_2`, if any.
    attr_accessor :administrative_district_level_3

    # The address's postal code.
    attr_accessor :postal_code

    # The address's country, in ISO 3166-1-alpha-2 format.
    attr_accessor :country

    # Optional first name when it's representing recipient.
    attr_accessor :first_name

    # Optional last name when it's representing recipient.
    attr_accessor :last_name

    # Optional organization name when it's representing recipient.
    attr_accessor :organization

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
        :'address_line_1' => :'address_line_1',
        :'address_line_2' => :'address_line_2',
        :'address_line_3' => :'address_line_3',
        :'locality' => :'locality',
        :'sublocality' => :'sublocality',
        :'sublocality_2' => :'sublocality_2',
        :'sublocality_3' => :'sublocality_3',
        :'administrative_district_level_1' => :'administrative_district_level_1',
        :'administrative_district_level_2' => :'administrative_district_level_2',
        :'administrative_district_level_3' => :'administrative_district_level_3',
        :'postal_code' => :'postal_code',
        :'country' => :'country',
        :'first_name' => :'first_name',
        :'last_name' => :'last_name',
        :'organization' => :'organization'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'address_line_1' => :'String',
        :'address_line_2' => :'String',
        :'address_line_3' => :'String',
        :'locality' => :'String',
        :'sublocality' => :'String',
        :'sublocality_2' => :'String',
        :'sublocality_3' => :'String',
        :'administrative_district_level_1' => :'String',
        :'administrative_district_level_2' => :'String',
        :'administrative_district_level_3' => :'String',
        :'postal_code' => :'String',
        :'country' => :'String',
        :'first_name' => :'String',
        :'last_name' => :'String',
        :'organization' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'address_line_1')
        self.address_line_1 = attributes[:'address_line_1']
      end

      if attributes.has_key?(:'address_line_2')
        self.address_line_2 = attributes[:'address_line_2']
      end

      if attributes.has_key?(:'address_line_3')
        self.address_line_3 = attributes[:'address_line_3']
      end

      if attributes.has_key?(:'locality')
        self.locality = attributes[:'locality']
      end

      if attributes.has_key?(:'sublocality')
        self.sublocality = attributes[:'sublocality']
      end

      if attributes.has_key?(:'sublocality_2')
        self.sublocality_2 = attributes[:'sublocality_2']
      end

      if attributes.has_key?(:'sublocality_3')
        self.sublocality_3 = attributes[:'sublocality_3']
      end

      if attributes.has_key?(:'administrative_district_level_1')
        self.administrative_district_level_1 = attributes[:'administrative_district_level_1']
      end

      if attributes.has_key?(:'administrative_district_level_2')
        self.administrative_district_level_2 = attributes[:'administrative_district_level_2']
      end

      if attributes.has_key?(:'administrative_district_level_3')
        self.administrative_district_level_3 = attributes[:'administrative_district_level_3']
      end

      if attributes.has_key?(:'postal_code')
        self.postal_code = attributes[:'postal_code']
      end

      if attributes.has_key?(:'country')
        self.country = attributes[:'country']
      end

      if attributes.has_key?(:'first_name')
        self.first_name = attributes[:'first_name']
      end

      if attributes.has_key?(:'last_name')
        self.last_name = attributes[:'last_name']
      end

      if attributes.has_key?(:'organization')
        self.organization = attributes[:'organization']
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
      country_validator = EnumAttributeValidator.new('String', ["ZZ", "AD", "AE", "AF", "AG", "AI", "AL", "AM", "AO", "AQ", "AR", "AS", "AT", "AU", "AW", "AX", "AZ", "BA", "BB", "BD", "BE", "BF", "BG", "BH", "BI", "BJ", "BL", "BM", "BN", "BO", "BQ", "BR", "BS", "BT", "BV", "BW", "BY", "BZ", "CA", "CC", "CD", "CF", "CG", "CH", "CI", "CK", "CL", "CM", "CN", "CO", "CR", "CU", "CV", "CW", "CX", "CY", "CZ", "DE", "DJ", "DK", "DM", "DO", "DZ", "EC", "EE", "EG", "EH", "ER", "ES", "ET", "FI", "FJ", "FK", "FM", "FO", "FR", "GA", "GB", "GD", "GE", "GF", "GG", "GH", "GI", "GL", "GM", "GN", "GP", "GQ", "GR", "GS", "GT", "GU", "GW", "GY", "HK", "HM", "HN", "HR", "HT", "HU", "ID", "IE", "IL", "IM", "IN", "IO", "IQ", "IR", "IS", "IT", "JE", "JM", "JO", "JP", "KE", "KG", "KH", "KI", "KM", "KN", "KP", "KR", "KW", "KY", "KZ", "LA", "LB", "LC", "LI", "LK", "LR", "LS", "LT", "LU", "LV", "LY", "MA", "MC", "MD", "ME", "MF", "MG", "MH", "MK", "ML", "MM", "MN", "MO", "MP", "MQ", "MR", "MS", "MT", "MU", "MV", "MW", "MX", "MY", "MZ", "NA", "NC", "NE", "NF", "NG", "NI", "NL", "NO", "NP", "NR", "NU", "NZ", "OM", "PA", "PE", "PF", "PG", "PH", "PK", "PL", "PM", "PN", "PR", "PS", "PT", "PW", "PY", "QA", "RE", "RO", "RS", "RU", "RW", "SA", "SB", "SC", "SD", "SE", "SG", "SH", "SI", "SJ", "SK", "SL", "SM", "SN", "SO", "SR", "SS", "ST", "SV", "SX", "SY", "SZ", "TC", "TD", "TF", "TG", "TH", "TJ", "TK", "TL", "TM", "TN", "TO", "TR", "TT", "TV", "TW", "TZ", "UA", "UG", "UM", "US", "UY", "UZ", "VA", "VC", "VE", "VG", "VI", "VN", "VU", "WF", "WS", "YE", "YT", "ZA", "ZM", "ZW"])
      return false unless country_validator.valid?(@country)
      return true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] country Object to be assigned
    def country=(country)
      validator = EnumAttributeValidator.new('String', ["ZZ", "AD", "AE", "AF", "AG", "AI", "AL", "AM", "AO", "AQ", "AR", "AS", "AT", "AU", "AW", "AX", "AZ", "BA", "BB", "BD", "BE", "BF", "BG", "BH", "BI", "BJ", "BL", "BM", "BN", "BO", "BQ", "BR", "BS", "BT", "BV", "BW", "BY", "BZ", "CA", "CC", "CD", "CF", "CG", "CH", "CI", "CK", "CL", "CM", "CN", "CO", "CR", "CU", "CV", "CW", "CX", "CY", "CZ", "DE", "DJ", "DK", "DM", "DO", "DZ", "EC", "EE", "EG", "EH", "ER", "ES", "ET", "FI", "FJ", "FK", "FM", "FO", "FR", "GA", "GB", "GD", "GE", "GF", "GG", "GH", "GI", "GL", "GM", "GN", "GP", "GQ", "GR", "GS", "GT", "GU", "GW", "GY", "HK", "HM", "HN", "HR", "HT", "HU", "ID", "IE", "IL", "IM", "IN", "IO", "IQ", "IR", "IS", "IT", "JE", "JM", "JO", "JP", "KE", "KG", "KH", "KI", "KM", "KN", "KP", "KR", "KW", "KY", "KZ", "LA", "LB", "LC", "LI", "LK", "LR", "LS", "LT", "LU", "LV", "LY", "MA", "MC", "MD", "ME", "MF", "MG", "MH", "MK", "ML", "MM", "MN", "MO", "MP", "MQ", "MR", "MS", "MT", "MU", "MV", "MW", "MX", "MY", "MZ", "NA", "NC", "NE", "NF", "NG", "NI", "NL", "NO", "NP", "NR", "NU", "NZ", "OM", "PA", "PE", "PF", "PG", "PH", "PK", "PL", "PM", "PN", "PR", "PS", "PT", "PW", "PY", "QA", "RE", "RO", "RS", "RU", "RW", "SA", "SB", "SC", "SD", "SE", "SG", "SH", "SI", "SJ", "SK", "SL", "SM", "SN", "SO", "SR", "SS", "ST", "SV", "SX", "SY", "SZ", "TC", "TD", "TF", "TG", "TH", "TJ", "TK", "TL", "TM", "TN", "TO", "TR", "TT", "TV", "TW", "TZ", "UA", "UG", "UM", "US", "UY", "UZ", "VA", "VC", "VE", "VG", "VI", "VN", "VU", "WF", "WS", "YE", "YT", "ZA", "ZM", "ZW"])
      unless validator.valid?(country)
        fail ArgumentError, "invalid value for 'country', must be one of #{validator.allowable_values}."
      end
      @country = country
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          address_line_1 == o.address_line_1 &&
          address_line_2 == o.address_line_2 &&
          address_line_3 == o.address_line_3 &&
          locality == o.locality &&
          sublocality == o.sublocality &&
          sublocality_2 == o.sublocality_2 &&
          sublocality_3 == o.sublocality_3 &&
          administrative_district_level_1 == o.administrative_district_level_1 &&
          administrative_district_level_2 == o.administrative_district_level_2 &&
          administrative_district_level_3 == o.administrative_district_level_3 &&
          postal_code == o.postal_code &&
          country == o.country &&
          first_name == o.first_name &&
          last_name == o.last_name &&
          organization == o.organization
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [address_line_1, address_line_2, address_line_3, locality, sublocality, sublocality_2, sublocality_3, administrative_district_level_1, administrative_district_level_2, administrative_district_level_3, postal_code, country, first_name, last_name, organization].hash
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
