# ------------------------------------------------------------------------------------
# <copyright company="Aspose" file="watermark_data_text.rb">
#   Copyright (c) 2024 Aspose.Words for Cloud
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

  # Class for insert watermark text request building.
  class WatermarkDataText
    # Gets or sets font color. The default value is System.Drawing.Color.Silver.
    attr_accessor :color

    # Gets or sets font family name. The default value is "Calibri".
    attr_accessor :font_family

    # Gets or sets a font size. The default value is 0 - auto.
    # Valid values range from 0 to 65.5 inclusive. Auto font size means that the watermark will be scaled to its max width and max height relative to the page margins.
    attr_accessor :font_size

    # Gets or sets a boolean value which is responsible for opacity of the watermark. The default value is true.
    attr_accessor :is_semitrasparent

    # Gets or sets layout of the watermark. The default value is Aspose.Words.WatermarkLayout.Diagonal.
    attr_accessor :layout

    # Gets or sets the watermark text.
    attr_accessor :text

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
        :'color' => :'Color',
        :'font_family' => :'FontFamily',
        :'font_size' => :'FontSize',
        :'is_semitrasparent' => :'IsSemitrasparent',
        :'layout' => :'Layout',
        :'text' => :'Text'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'color' => :'XmlColor',
        :'font_family' => :'String',
        :'font_size' => :'Float',
        :'is_semitrasparent' => :'BOOLEAN',
        :'layout' => :'String',
        :'text' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.key?(:'Color')
        self.color = attributes[:'Color']
      end

      if attributes.key?(:'FontFamily')
        self.font_family = attributes[:'FontFamily']
      end

      if attributes.key?(:'FontSize')
        self.font_size = attributes[:'FontSize']
      end

      if attributes.key?(:'IsSemitrasparent')
        self.is_semitrasparent = attributes[:'IsSemitrasparent']
      end

      if attributes.key?(:'Layout')
        self.layout = attributes[:'Layout']
      end

      if attributes.key?(:'Text')
        self.text = attributes[:'Text']
      end
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      layout_validator = EnumAttributeValidator.new('String', ["Horizontal", "Diagonal"])
      return false unless layout_validator.valid?(@layout)

      return true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] layout Object to be assigned
    def layout=(layout)
      validator = EnumAttributeValidator.new('String', ["Horizontal", "Diagonal"])
      if layout.to_i == 0
        unless validator.valid?(layout)
          raise ArgumentError, "invalid value for 'layout', must be one of #{validator.allowable_values}."
        end
        @layout = layout
      else
        @layout = validator.allowable_values[layout.to_i]
      end
    end


    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(other)
      return true if self.equal?(other)
      self.class == other.class &&
          color == other.color &&
          font_family == other.font_family &&
          font_size == other.font_size &&
          is_semitrasparent == other.is_semitrasparent &&
          layout == other.layout &&
          text == other.text
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(other)
      self == other
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [color, font_family, font_size, is_semitrasparent, layout, text].hash
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
        if value[:'$type']
            type = value[:'$type'][0..-4]
        end

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

    def collectFilesContent(resultFilesContent)
    end

    def validate()
      raise ArgumentError, 'Property text in WatermarkDataText is required.' if self.text.nil?
      unless self.color.nil?
          self.color.validate
      end

    end

  end
end
