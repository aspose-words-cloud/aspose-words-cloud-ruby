# ------------------------------------------------------------------------------------
# <copyright company="Aspose" file="string_format_data.rb">
#   Copyright (c) 2021 Aspose.Words for Cloud
# </copyright>
# <summary>
#  Permission is hereby granted, free of charge, to any person obtaining a copy
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
# ------------------------------------------------------------------------------------

require 'date'

module AsposeWordsCloud

  # Allows to specify System.Drawing.StringFormat options.
  class StringFormatData
    # Gets or sets horizontal alignment of the string.
    attr_accessor :alignment

    # Gets or sets the System.Drawing.StringFormatFlags enumeration, that contains formatting information.
    attr_accessor :format_flags

    # Gets or sets the System.Drawing.Text.HotkeyPrefix object for this System.Drawing.StringFormat object.
    attr_accessor :hotkey_prefix

    # Gets or sets the vertical alignment of the string.
    attr_accessor :line_alignment

    # Gets or sets the System.Drawing.StringTrimming enumeration for this System.Drawing.StringFormat object.
    attr_accessor :trimming

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
        :'alignment' => :'Alignment',
        :'format_flags' => :'FormatFlags',
        :'hotkey_prefix' => :'HotkeyPrefix',
        :'line_alignment' => :'LineAlignment',
        :'trimming' => :'Trimming'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'alignment' => :'String',
        :'format_flags' => :'String',
        :'hotkey_prefix' => :'String',
        :'line_alignment' => :'String',
        :'trimming' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.key?(:'Alignment')
        self.alignment = attributes[:'Alignment']
      end

      if attributes.key?(:'FormatFlags')
        self.format_flags = attributes[:'FormatFlags']
      end

      if attributes.key?(:'HotkeyPrefix')
        self.hotkey_prefix = attributes[:'HotkeyPrefix']
      end

      if attributes.key?(:'LineAlignment')
        self.line_alignment = attributes[:'LineAlignment']
      end

      if attributes.key?(:'Trimming')
        self.trimming = attributes[:'Trimming']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properies with the reasons
    def list_invalid_properties
      invalid_properties = []
      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      alignment_validator = EnumAttributeValidator.new('String', ["Near", "Center", "Far"])
      return false unless alignment_validator.valid?(@alignment)
      format_flags_validator = EnumAttributeValidator.new('String', ["DirectionRightToLeft", "DirectionVertical", "FitBlackBox", "DisplayFormatControl", "NoFontFallback", "MeasureTrailingSpaces", "NoWrap", "LineLimit", "NoClip"])
      return false unless format_flags_validator.valid?(@format_flags)
      hotkey_prefix_validator = EnumAttributeValidator.new('String', ["None", "Show", "Hide"])
      return false unless hotkey_prefix_validator.valid?(@hotkey_prefix)
      line_alignment_validator = EnumAttributeValidator.new('String', ["Near", "Center", "Far"])
      return false unless line_alignment_validator.valid?(@line_alignment)
      trimming_validator = EnumAttributeValidator.new('String', ["None", "Character", "Word", "EllipsisCharacter", "EllipsisWord", "EllipsisPath"])
      return false unless trimming_validator.valid?(@trimming)

      return true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] alignment Object to be assigned
    def alignment=(alignment)
      validator = EnumAttributeValidator.new('String', ["Near", "Center", "Far"])
      if alignment.to_i == 0
        unless validator.valid?(alignment)
          raise ArgumentError, "invalid value for 'alignment', must be one of #{validator.allowable_values}."
        end
        @alignment = alignment
      else
        @alignment = validator.allowable_values[alignment.to_i]
      end
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] format_flags Object to be assigned
    def format_flags=(format_flags)
      validator = EnumAttributeValidator.new('String', ["DirectionRightToLeft", "DirectionVertical", "FitBlackBox", "DisplayFormatControl", "NoFontFallback", "MeasureTrailingSpaces", "NoWrap", "LineLimit", "NoClip"])
      if format_flags.to_i == 0
        unless validator.valid?(format_flags)
          raise ArgumentError, "invalid value for 'format_flags', must be one of #{validator.allowable_values}."
        end
        @format_flags = format_flags
      else
        @format_flags = validator.allowable_values[format_flags.to_i]
      end
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] hotkey_prefix Object to be assigned
    def hotkey_prefix=(hotkey_prefix)
      validator = EnumAttributeValidator.new('String', ["None", "Show", "Hide"])
      if hotkey_prefix.to_i == 0
        unless validator.valid?(hotkey_prefix)
          raise ArgumentError, "invalid value for 'hotkey_prefix', must be one of #{validator.allowable_values}."
        end
        @hotkey_prefix = hotkey_prefix
      else
        @hotkey_prefix = validator.allowable_values[hotkey_prefix.to_i]
      end
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] line_alignment Object to be assigned
    def line_alignment=(line_alignment)
      validator = EnumAttributeValidator.new('String', ["Near", "Center", "Far"])
      if line_alignment.to_i == 0
        unless validator.valid?(line_alignment)
          raise ArgumentError, "invalid value for 'line_alignment', must be one of #{validator.allowable_values}."
        end
        @line_alignment = line_alignment
      else
        @line_alignment = validator.allowable_values[line_alignment.to_i]
      end
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] trimming Object to be assigned
    def trimming=(trimming)
      validator = EnumAttributeValidator.new('String', ["None", "Character", "Word", "EllipsisCharacter", "EllipsisWord", "EllipsisPath"])
      if trimming.to_i == 0
        unless validator.valid?(trimming)
          raise ArgumentError, "invalid value for 'trimming', must be one of #{validator.allowable_values}."
        end
        @trimming = trimming
      else
        @trimming = validator.allowable_values[trimming.to_i]
      end
    end


    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(other)
      return true if self.equal?(other)
      self.class == other.class &&
          alignment == other.alignment &&
          format_flags == other.format_flags &&
          hotkey_prefix == other.hotkey_prefix &&
          line_alignment == other.line_alignment &&
          trimming == other.trimming
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(other)
      self == other
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [alignment, format_flags, hotkey_prefix, line_alignment, trimming].hash
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
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end
        # or else data not found in attributes(hash), not an issue as the data can be optional
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
        Time.at(/\d/.match(value)[0].to_f).to_datetime
      when :Date
        Time.at(/\d/.match(value)[0].to_f).to_date
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
      else
      # model
        temp_model = AsposeWordsCloud.const_get(type).new
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
        value.compact.map { |v| _to_hash(v) }
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
