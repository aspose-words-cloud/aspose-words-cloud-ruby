
require 'date'

module RubySDK
 #
 # --------------------------------------------------------------------------------------------------------------------
 # <copyright company="Aspose" file="TableCellFormat.rb">
 #   Copyright (c) 2017 Aspose.Words for Cloud
 # </copyright>
 # <summary>
 #   Permission is hereby granted, free of charge, to any person obtaining a copy
 #  of this software and associated documentation files (the "Software"), to deal
 #  in the Software without restriction, including without limitation the rights
 #  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 #  copies of the Software, and to permit persons to whom the Software is
 #  furnished to do so, subject to the following conditions:
 # 
 #  The above copyright notice and this permission notice shall be included in all
 #  copies or substantial portions of the Software.
 # 
 #  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 #  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 #  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 #  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 #  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 #  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
 #  SOFTWARE.
 # </summary>
 # --------------------------------------------------------------------------------------------------------------------
 #

  # Represents all formatting for a table row.
  class TableCellFormat
    # Link to the document.
    attr_accessor :link

    # Returns or sets the amount of space (in points) to add to the left of the contents of cell.
    attr_accessor :left_padding

    # Returns or sets the amount of space (in points) to add to the right of the contents of cell.
    attr_accessor :right_padding

    # Returns or sets the amount of space (in points) to add above the contents of cell.
    attr_accessor :top_padding

    # Returns or sets the amount of space (in points) to add below the contents of cell.
    attr_accessor :bottom_padding

    # Returns or sets the vertical alignment of text in the cell.
    attr_accessor :vertical_alignment

    # Gets the width of the cell in points.
    attr_accessor :width

    # Returns or sets the preferred width of the cell.
    attr_accessor :preferred_width

    # Specifies how the cell is merged with other cells vertically.
    attr_accessor :vertical_merge

    # Specifies how the cell is merged horizontally with other cells in the row.
    attr_accessor :horizontal_merge

    # Returns or sets the orientation of text in a table cell.
    attr_accessor :orientation

    # If true, fits text in the cell, compressing each paragraph to the width of the cell.
    attr_accessor :fit_text

    # If true, wrap text for the cell.
    attr_accessor :wrap_text

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
        :'link' => :'link',
        :'left_padding' => :'LeftPadding',
        :'right_padding' => :'RightPadding',
        :'top_padding' => :'TopPadding',
        :'bottom_padding' => :'BottomPadding',
        :'vertical_alignment' => :'VerticalAlignment',
        :'width' => :'Width',
        :'preferred_width' => :'PreferredWidth',
        :'vertical_merge' => :'VerticalMerge',
        :'horizontal_merge' => :'HorizontalMerge',
        :'orientation' => :'Orientation',
        :'fit_text' => :'FitText',
        :'wrap_text' => :'WrapText'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'link' => :'WordsApiLink',
        :'left_padding' => :'Float',
        :'right_padding' => :'Float',
        :'top_padding' => :'Float',
        :'bottom_padding' => :'Float',
        :'vertical_alignment' => :'String',
        :'width' => :'Float',
        :'preferred_width' => :'PreferredWidth',
        :'vertical_merge' => :'String',
        :'horizontal_merge' => :'String',
        :'orientation' => :'String',
        :'fit_text' => :'BOOLEAN',
        :'wrap_text' => :'BOOLEAN'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'link')
        self.link = attributes[:'link']
      end

      if attributes.has_key?(:'LeftPadding')
        self.left_padding = attributes[:'LeftPadding']
      end

      if attributes.has_key?(:'RightPadding')
        self.right_padding = attributes[:'RightPadding']
      end

      if attributes.has_key?(:'TopPadding')
        self.top_padding = attributes[:'TopPadding']
      end

      if attributes.has_key?(:'BottomPadding')
        self.bottom_padding = attributes[:'BottomPadding']
      end

      if attributes.has_key?(:'VerticalAlignment')
        self.vertical_alignment = attributes[:'VerticalAlignment']
      end

      if attributes.has_key?(:'Width')
        self.width = attributes[:'Width']
      end

      if attributes.has_key?(:'PreferredWidth')
        self.preferred_width = attributes[:'PreferredWidth']
      end

      if attributes.has_key?(:'VerticalMerge')
        self.vertical_merge = attributes[:'VerticalMerge']
      end

      if attributes.has_key?(:'HorizontalMerge')
        self.horizontal_merge = attributes[:'HorizontalMerge']
      end

      if attributes.has_key?(:'Orientation')
        self.orientation = attributes[:'Orientation']
      end

      if attributes.has_key?(:'FitText')
        self.fit_text = attributes[:'FitText']
      end

      if attributes.has_key?(:'WrapText')
        self.wrap_text = attributes[:'WrapText']
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
      vertical_alignment_validator = EnumAttributeValidator.new('String', ["Top", "Center", "Bottom"])
      return false unless vertical_alignment_validator.valid?(@vertical_alignment)
      vertical_merge_validator = EnumAttributeValidator.new('String', ["None", "First", "Previous"])
      return false unless vertical_merge_validator.valid?(@vertical_merge)
      horizontal_merge_validator = EnumAttributeValidator.new('String', ["None", "First", "Previous"])
      return false unless horizontal_merge_validator.valid?(@horizontal_merge)
      orientation_validator = EnumAttributeValidator.new('String', ["Horizontal", "Downward", "Upward", "HorizontalRotatedFarEast", "VerticalFarEast", "VerticalRotatedFarEast"])
      return false unless orientation_validator.valid?(@orientation)
      return true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] vertical_alignment Object to be assigned
    def vertical_alignment=(vertical_alignment)
      validator = EnumAttributeValidator.new('String', ["Top", "Center", "Bottom"])
      unless validator.valid?(vertical_alignment)
        fail ArgumentError, "invalid value for 'vertical_alignment', must be one of #{validator.allowable_values}."
      end
      @vertical_alignment = vertical_alignment
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] vertical_merge Object to be assigned
    def vertical_merge=(vertical_merge)
      validator = EnumAttributeValidator.new('String', ["None", "First", "Previous"])
      unless validator.valid?(vertical_merge)
        fail ArgumentError, "invalid value for 'vertical_merge', must be one of #{validator.allowable_values}."
      end
      @vertical_merge = vertical_merge
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] horizontal_merge Object to be assigned
    def horizontal_merge=(horizontal_merge)
      validator = EnumAttributeValidator.new('String', ["None", "First", "Previous"])
      unless validator.valid?(horizontal_merge)
        fail ArgumentError, "invalid value for 'horizontal_merge', must be one of #{validator.allowable_values}."
      end
      @horizontal_merge = horizontal_merge
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] orientation Object to be assigned
    def orientation=(orientation)
      validator = EnumAttributeValidator.new('String', ["Horizontal", "Downward", "Upward", "HorizontalRotatedFarEast", "VerticalFarEast", "VerticalRotatedFarEast"])
      unless validator.valid?(orientation)
        fail ArgumentError, "invalid value for 'orientation', must be one of #{validator.allowable_values}."
      end
      @orientation = orientation
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          link == o.link &&
          left_padding == o.left_padding &&
          right_padding == o.right_padding &&
          top_padding == o.top_padding &&
          bottom_padding == o.bottom_padding &&
          vertical_alignment == o.vertical_alignment &&
          width == o.width &&
          preferred_width == o.preferred_width &&
          vertical_merge == o.vertical_merge &&
          horizontal_merge == o.horizontal_merge &&
          orientation == o.orientation &&
          fit_text == o.fit_text &&
          wrap_text == o.wrap_text
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [link, left_padding, right_padding, top_padding, bottom_padding, vertical_alignment, width, preferred_width, vertical_merge, horizontal_merge, orientation, fit_text, wrap_text].hash
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
        temp_model = RubySDK.const_get(type).new
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
