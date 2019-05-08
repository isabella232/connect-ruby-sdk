=begin
#Square Connect API

OpenAPI spec version: 2.0
Contact: developers@squareup.com
Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require 'date'

module SquareConnect
  # The line item being returned in an Order.
  class OrderReturnLineItem
    # Unique identifier for this return line item entry. This is a read-only field.
    attr_accessor :uid

    # `uid` of the LineItem in the original sale Order.
    attr_accessor :source_line_item_uid

    # The name of the line item.
    attr_accessor :name

    # The quantity returned, formatted as a decimal number. For example: `\"3\"`.  Line items with a `quantity_unit` can have non-integer quantities. For example: `\"1.70000\"`.
    attr_accessor :quantity

    # The unit and precision that this return line item's quantity is measured in.
    attr_accessor :quantity_unit

    # The note of the returned line item.
    attr_accessor :note

    # The [CatalogItemVariation](#type-catalogitemvariation) id applied to this returned line item.
    attr_accessor :catalog_object_id

    # The name of the variation applied to this returned line item.
    attr_accessor :variation_name

    # The [CatalogModifier](#type-catalogmodifier)s applied to this line item.
    attr_accessor :return_modifiers

    # A list of taxes applied to this line item. On read or retrieve, this list includes both item-level taxes and any return-level taxes apportioned to this item.
    attr_accessor :return_taxes

    # A list of discounts applied to this line item. On read or retrieve, this list includes both item-level discounts and any return-level discounts apportioned to this item.
    attr_accessor :return_discounts

    # The base price for a single unit of the line item.
    attr_accessor :base_price_money

    # The total price of all item variations returned in this line item. Calculated as `base_price_money` multiplied by `quantity`. Does not include modifiers.
    attr_accessor :variation_total_price_money

    # The gross return amount of money calculated as (item base price + modifiers price) * quantity.
    attr_accessor :gross_return_money

    # The total tax amount of money to return for the line item.
    attr_accessor :total_tax_money

    # The total discount amount of money to return for the line item.
    attr_accessor :total_discount_money

    # The total amount of money to return for this line item.
    attr_accessor :total_money


    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'uid' => :'uid',
        :'source_line_item_uid' => :'source_line_item_uid',
        :'name' => :'name',
        :'quantity' => :'quantity',
        :'quantity_unit' => :'quantity_unit',
        :'note' => :'note',
        :'catalog_object_id' => :'catalog_object_id',
        :'variation_name' => :'variation_name',
        :'return_modifiers' => :'return_modifiers',
        :'return_taxes' => :'return_taxes',
        :'return_discounts' => :'return_discounts',
        :'base_price_money' => :'base_price_money',
        :'variation_total_price_money' => :'variation_total_price_money',
        :'gross_return_money' => :'gross_return_money',
        :'total_tax_money' => :'total_tax_money',
        :'total_discount_money' => :'total_discount_money',
        :'total_money' => :'total_money'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'uid' => :'String',
        :'source_line_item_uid' => :'String',
        :'name' => :'String',
        :'quantity' => :'String',
        :'quantity_unit' => :'OrderQuantityUnit',
        :'note' => :'String',
        :'catalog_object_id' => :'String',
        :'variation_name' => :'String',
        :'return_modifiers' => :'Array<OrderReturnLineItemModifier>',
        :'return_taxes' => :'Array<OrderReturnTax>',
        :'return_discounts' => :'Array<OrderReturnDiscount>',
        :'base_price_money' => :'Money',
        :'variation_total_price_money' => :'Money',
        :'gross_return_money' => :'Money',
        :'total_tax_money' => :'Money',
        :'total_discount_money' => :'Money',
        :'total_money' => :'Money'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'uid')
        self.uid = attributes[:'uid']
      end

      if attributes.has_key?(:'source_line_item_uid')
        self.source_line_item_uid = attributes[:'source_line_item_uid']
      end

      if attributes.has_key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.has_key?(:'quantity')
        self.quantity = attributes[:'quantity']
      end

      if attributes.has_key?(:'quantity_unit')
        self.quantity_unit = attributes[:'quantity_unit']
      end

      if attributes.has_key?(:'note')
        self.note = attributes[:'note']
      end

      if attributes.has_key?(:'catalog_object_id')
        self.catalog_object_id = attributes[:'catalog_object_id']
      end

      if attributes.has_key?(:'variation_name')
        self.variation_name = attributes[:'variation_name']
      end

      if attributes.has_key?(:'return_modifiers')
        if (value = attributes[:'return_modifiers']).is_a?(Array)
          self.return_modifiers = value
        end
      end

      if attributes.has_key?(:'return_taxes')
        if (value = attributes[:'return_taxes']).is_a?(Array)
          self.return_taxes = value
        end
      end

      if attributes.has_key?(:'return_discounts')
        if (value = attributes[:'return_discounts']).is_a?(Array)
          self.return_discounts = value
        end
      end

      if attributes.has_key?(:'base_price_money')
        self.base_price_money = attributes[:'base_price_money']
      end

      if attributes.has_key?(:'variation_total_price_money')
        self.variation_total_price_money = attributes[:'variation_total_price_money']
      end

      if attributes.has_key?(:'gross_return_money')
        self.gross_return_money = attributes[:'gross_return_money']
      end

      if attributes.has_key?(:'total_tax_money')
        self.total_tax_money = attributes[:'total_tax_money']
      end

      if attributes.has_key?(:'total_discount_money')
        self.total_discount_money = attributes[:'total_discount_money']
      end

      if attributes.has_key?(:'total_money')
        self.total_money = attributes[:'total_money']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properies with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if !@uid.nil? && @uid.to_s.length > 60
        invalid_properties.push("invalid value for 'uid', the character length must be smaller than or equal to 60.")
      end

      if !@source_line_item_uid.nil? && @source_line_item_uid.to_s.length > 60
        invalid_properties.push("invalid value for 'source_line_item_uid', the character length must be smaller than or equal to 60.")
      end

      if !@name.nil? && @name.to_s.length > 500
        invalid_properties.push("invalid value for 'name', the character length must be smaller than or equal to 500.")
      end

      if @quantity.nil?
        invalid_properties.push("invalid value for 'quantity', quantity cannot be nil.")
      end

      if @quantity.to_s.length > 12
        invalid_properties.push("invalid value for 'quantity', the character length must be smaller than or equal to 12.")
      end

      if @quantity.to_s.length < 1
        invalid_properties.push("invalid value for 'quantity', the character length must be great than or equal to 1.")
      end

      if !@note.nil? && @note.to_s.length > 500
        invalid_properties.push("invalid value for 'note', the character length must be smaller than or equal to 500.")
      end

      if !@catalog_object_id.nil? && @catalog_object_id.to_s.length > 192
        invalid_properties.push("invalid value for 'catalog_object_id', the character length must be smaller than or equal to 192.")
      end

      if !@variation_name.nil? && @variation_name.to_s.length > 255
        invalid_properties.push("invalid value for 'variation_name', the character length must be smaller than or equal to 255.")
      end

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if !@uid.nil? && @uid.to_s.length > 60
      return false if !@source_line_item_uid.nil? && @source_line_item_uid.to_s.length > 60
      return false if !@name.nil? && @name.to_s.length > 500
      return false if @quantity.nil?
      return false if @quantity.to_s.length > 12
      return false if @quantity.to_s.length < 1
      return false if !@note.nil? && @note.to_s.length > 500
      return false if !@catalog_object_id.nil? && @catalog_object_id.to_s.length > 192
      return false if !@variation_name.nil? && @variation_name.to_s.length > 255
      return true
    end

    # Custom attribute writer method with validation
    # @param [Object] uid Value to be assigned
    def uid=(uid)

      if !uid.nil? && uid.to_s.length > 60
        fail ArgumentError, "invalid value for 'uid', the character length must be smaller than or equal to 60."
      end

      @uid = uid
    end

    # Custom attribute writer method with validation
    # @param [Object] source_line_item_uid Value to be assigned
    def source_line_item_uid=(source_line_item_uid)

      if !source_line_item_uid.nil? && source_line_item_uid.to_s.length > 60
        fail ArgumentError, "invalid value for 'source_line_item_uid', the character length must be smaller than or equal to 60."
      end

      @source_line_item_uid = source_line_item_uid
    end

    # Custom attribute writer method with validation
    # @param [Object] name Value to be assigned
    def name=(name)

      if !name.nil? && name.to_s.length > 500
        fail ArgumentError, "invalid value for 'name', the character length must be smaller than or equal to 500."
      end

      @name = name
    end

    # Custom attribute writer method with validation
    # @param [Object] quantity Value to be assigned
    def quantity=(quantity)
      if quantity.nil?
        fail ArgumentError, "quantity cannot be nil"
      end

      if quantity.to_s.length > 12
        fail ArgumentError, "invalid value for 'quantity', the character length must be smaller than or equal to 12."
      end

      if quantity.to_s.length < 1
        fail ArgumentError, "invalid value for 'quantity', the character length must be great than or equal to 1."
      end

      @quantity = quantity
    end

    # Custom attribute writer method with validation
    # @param [Object] note Value to be assigned
    def note=(note)

      if !note.nil? && note.to_s.length > 500
        fail ArgumentError, "invalid value for 'note', the character length must be smaller than or equal to 500."
      end

      @note = note
    end

    # Custom attribute writer method with validation
    # @param [Object] catalog_object_id Value to be assigned
    def catalog_object_id=(catalog_object_id)

      if !catalog_object_id.nil? && catalog_object_id.to_s.length > 192
        fail ArgumentError, "invalid value for 'catalog_object_id', the character length must be smaller than or equal to 192."
      end

      @catalog_object_id = catalog_object_id
    end

    # Custom attribute writer method with validation
    # @param [Object] variation_name Value to be assigned
    def variation_name=(variation_name)

      if !variation_name.nil? && variation_name.to_s.length > 255
        fail ArgumentError, "invalid value for 'variation_name', the character length must be smaller than or equal to 255."
      end

      @variation_name = variation_name
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          uid == o.uid &&
          source_line_item_uid == o.source_line_item_uid &&
          name == o.name &&
          quantity == o.quantity &&
          quantity_unit == o.quantity_unit &&
          note == o.note &&
          catalog_object_id == o.catalog_object_id &&
          variation_name == o.variation_name &&
          return_modifiers == o.return_modifiers &&
          return_taxes == o.return_taxes &&
          return_discounts == o.return_discounts &&
          base_price_money == o.base_price_money &&
          variation_total_price_money == o.variation_total_price_money &&
          gross_return_money == o.gross_return_money &&
          total_tax_money == o.total_tax_money &&
          total_discount_money == o.total_discount_money &&
          total_money == o.total_money
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [uid, source_line_item_uid, name, quantity, quantity_unit, note, catalog_object_id, variation_name, return_modifiers, return_taxes, return_discounts, base_price_money, variation_total_price_money, gross_return_money, total_tax_money, total_discount_money, total_money].hash
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
