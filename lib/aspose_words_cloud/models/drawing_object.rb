
require 'date'

module AsposeWordsCloud
 #
 # --------------------------------------------------------------------------------------------------------------------
 # <copyright company="Aspose" file="DrawingObject.rb">
 #   Copyright (c) 2019 Aspose.Words for Cloud
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

  # Represents Drawing Object DTO.
  class DrawingObject
    attr_accessor :link

    # Gets or sets node id.
    attr_accessor :node_id

    # Gets or sets height of the drawing object in points.
    attr_accessor :height

    attr_accessor :image_data_link

    # Gets or sets distance in points from the origin to the left side of the image.             
    attr_accessor :left

    attr_accessor :ole_data_link

    # Gets or sets specifies where the distance to the image is measured from.             
    attr_accessor :relative_horizontal_position

    # Gets or sets specifies where the distance to the image measured from.
    attr_accessor :relative_vertical_position

    # Gets or sets a list of links that originate from this DrawingObjectDto.
    attr_accessor :render_links

    # Gets or sets distance in points from the origin to the top side of the image.
    attr_accessor :top

    # Gets or sets width of the drawing objects in points.
    attr_accessor :width

    # Gets or sets specifies how to wrap text around the image.
    attr_accessor :wrap_type

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
        :'node_id' => :'NodeId',
        :'height' => :'Height',
        :'image_data_link' => :'ImageDataLink',
        :'left' => :'Left',
        :'ole_data_link' => :'OleDataLink',
        :'relative_horizontal_position' => :'RelativeHorizontalPosition',
        :'relative_vertical_position' => :'RelativeVerticalPosition',
        :'render_links' => :'RenderLinks',
        :'top' => :'Top',
        :'width' => :'Width',
        :'wrap_type' => :'WrapType'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'link' => :'WordsApiLink',
        :'node_id' => :'String',
        :'height' => :'Float',
        :'image_data_link' => :'WordsApiLink',
        :'left' => :'Float',
        :'ole_data_link' => :'WordsApiLink',
        :'relative_horizontal_position' => :'String',
        :'relative_vertical_position' => :'String',
        :'render_links' => :'Array<WordsApiLink>',
        :'top' => :'Float',
        :'width' => :'Float',
        :'wrap_type' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.key?(:'link')
        self.link = attributes[:'link']
      end

      if attributes.key?(:'NodeId')
        self.node_id = attributes[:'NodeId']
      end

      if attributes.key?(:'Height')
        self.height = attributes[:'Height']
      end

      if attributes.key?(:'ImageDataLink')
        self.image_data_link = attributes[:'ImageDataLink']
      end

      if attributes.key?(:'Left')
        self.left = attributes[:'Left']
      end

      if attributes.key?(:'OleDataLink')
        self.ole_data_link = attributes[:'OleDataLink']
      end

      if attributes.key?(:'RelativeHorizontalPosition')
        self.relative_horizontal_position = attributes[:'RelativeHorizontalPosition']
      end

      if attributes.key?(:'RelativeVerticalPosition')
        self.relative_vertical_position = attributes[:'RelativeVerticalPosition']
      end

      if attributes.key?(:'RenderLinks')
        if (value = attributes[:'RenderLinks']).is_a?(Array)
          self.render_links = value
        end
      end

      if attributes.key?(:'Top')
        self.top = attributes[:'Top']
      end

      if attributes.key?(:'Width')
        self.width = attributes[:'Width']
      end

      if attributes.key?(:'WrapType')
        self.wrap_type = attributes[:'WrapType']
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
      relative_horizontal_position_validator = EnumAttributeValidator.new('String', ["Margin", "Page", "Column", "Default", "Character", "LeftMargin", "RightMargin", "InsideMargin", "OutsideMargin"])
      return false unless relative_horizontal_position_validator.valid?(@relative_horizontal_position)
      relative_vertical_position_validator = EnumAttributeValidator.new('String', ["Margin", "TableDefault", "Page", "Paragraph", "TextFrameDefault", "Line", "TopMargin", "BottomMargin", "InsideMargin", "OutsideMargin"])
      return false unless relative_vertical_position_validator.valid?(@relative_vertical_position)
      wrap_type_validator = EnumAttributeValidator.new('String', ["Inline", "TopBottom", "Square", "None", "Tight", "Through"])
      return false unless wrap_type_validator.valid?(@wrap_type)
      return true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] relative_horizontal_position Object to be assigned
    def relative_horizontal_position=(relative_horizontal_position)
      validator = EnumAttributeValidator.new('String', ["Margin", "Page", "Column", "Default", "Character", "LeftMargin", "RightMargin", "InsideMargin", "OutsideMargin"])
      if relative_horizontal_position.to_i == 0
        unless validator.valid?(relative_horizontal_position)
          raise ArgumentError, "invalid value for 'relative_horizontal_position', must be one of #{validator.allowable_values}."
        end
        @relative_horizontal_position = relative_horizontal_position
      else
        @relative_horizontal_position = validator.allowable_values[relative_horizontal_position.to_i]
      end
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] relative_vertical_position Object to be assigned
    def relative_vertical_position=(relative_vertical_position)
      validator = EnumAttributeValidator.new('String', ["Margin", "TableDefault", "Page", "Paragraph", "TextFrameDefault", "Line", "TopMargin", "BottomMargin", "InsideMargin", "OutsideMargin"])
      if relative_vertical_position.to_i == 0
        unless validator.valid?(relative_vertical_position)
          raise ArgumentError, "invalid value for 'relative_vertical_position', must be one of #{validator.allowable_values}."
        end
        @relative_vertical_position = relative_vertical_position
      else
        @relative_vertical_position = validator.allowable_values[relative_vertical_position.to_i]
      end
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] wrap_type Object to be assigned
    def wrap_type=(wrap_type)
      validator = EnumAttributeValidator.new('String', ["Inline", "TopBottom", "Square", "None", "Tight", "Through"])
      if wrap_type.to_i == 0
        unless validator.valid?(wrap_type)
          raise ArgumentError, "invalid value for 'wrap_type', must be one of #{validator.allowable_values}."
        end
        @wrap_type = wrap_type
      else
        @wrap_type = validator.allowable_values[wrap_type.to_i]
      end
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(other)
      return true if self.equal?(other)
      self.class == other.class &&
          link == other.link &&
          node_id == other.node_id &&
          height == other.height &&
          image_data_link == other.image_data_link &&
          left == other.left &&
          ole_data_link == other.ole_data_link &&
          relative_horizontal_position == other.relative_horizontal_position &&
          relative_vertical_position == other.relative_vertical_position &&
          render_links == other.render_links &&
          top == other.top &&
          width == other.width &&
          wrap_type == other.wrap_type
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(other)
      self == other
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [link, node_id, height, image_data_link, left, ole_data_link, relative_horizontal_position, relative_vertical_position, render_links, top, width, wrap_type].hash
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
