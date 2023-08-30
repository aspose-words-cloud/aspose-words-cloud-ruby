# ------------------------------------------------------------------------------------
# <copyright company="Aspose" file="text_save_options_data.rb">
#   Copyright (c) 2023 Aspose.Words for Cloud
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

  # Container class for text save options.
  class TextSaveOptionsData
    # Gets or sets a boolean value indicating whether to allow embedding fonts with PostScript outlines when embedding TrueType fonts in a document upon it is saved. The default value is false..
    attr_accessor :allow_embedding_post_script_fonts

    # Gets or sets CustomTimeZoneInfo.
    attr_accessor :custom_time_zone_info_data

    # Gets or sets the value determining how 3D effects are rendered.
    attr_accessor :dml3_d_effects_rendering_mode

    # Gets or sets the value determining how DrawingML effects are rendered.
    # { Simplified | None | Fine }.
    attr_accessor :dml_effects_rendering_mode

    # Gets or sets the option that controls how DrawingML shapes are rendered.
    attr_accessor :dml_rendering_mode

    # Gets or sets the name of destination file.
    attr_accessor :file_name

    # Gets or sets the value determining how ink (InkML) objects are rendered.
    attr_accessor :iml_rendering_mode

    # Gets or sets a value determining whether the Aspose.Words.Properties.BuiltInDocumentProperties.CreatedTime property is updated before saving.
    # Default value is false.
    attr_accessor :update_created_time_property

    # Gets or sets a value indicating whether fields should be updated before saving the document to a fixed page format. The default value is true.
    attr_accessor :update_fields

    # Gets or sets a value indicating whether the Aspose.Words.Properties.BuiltInDocumentProperties.LastPrinted property is updated before saving.
    attr_accessor :update_last_printed_property

    # Gets or sets a value indicating whether the Aspose.Words.Properties.BuiltInDocumentProperties.LastSavedTime property is updated before saving.
    attr_accessor :update_last_saved_time_property

    # Gets or sets a value indicating whether to zip output or not.
    # The default value is false.
    attr_accessor :zip_output

    # Gets or sets the character encoding to use when exporting in plain text format.
    attr_accessor :encoding

    # Gets or sets the option that controls whether to output headers and footers when exporting in plain text format.
    # default value is TxtExportHeadersFootersMode.PrimaryOnly.
    attr_accessor :export_headers_footers_mode

    # Gets or sets a value indicating whether the page breaks should be preserved during export.
    # The default value is false.
    attr_accessor :force_page_breaks

    # Gets or sets the string to use as a paragraph break when exporting in plain text format.
    attr_accessor :paragraph_break

    # Gets or sets a value indicating whether to add bi-directional marks before each BiDi run when exporting in plain text format.
    # The default value is true.
    attr_accessor :add_bidi_marks

    # Gets or sets an integer value that specifies the maximum number of characters per one line.
    # The default value is 0, that means no limit.
    attr_accessor :max_characters_per_line

    # Gets or sets a value indicating whether the program should attempt to preserve layout of tables when saving in the plain text format.
    attr_accessor :preserve_table_layout

    # Gets or sets a value indicating whether the program should simplify list labels in case of complex label formatting not being adequately represented by plain text.
    attr_accessor :simplify_list_labels

    # Gets the format of save.
    attr_accessor :save_format

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
        :'allow_embedding_post_script_fonts' => :'AllowEmbeddingPostScriptFonts',
        :'custom_time_zone_info_data' => :'CustomTimeZoneInfoData',
        :'dml3_d_effects_rendering_mode' => :'Dml3DEffectsRenderingMode',
        :'dml_effects_rendering_mode' => :'DmlEffectsRenderingMode',
        :'dml_rendering_mode' => :'DmlRenderingMode',
        :'file_name' => :'FileName',
        :'iml_rendering_mode' => :'ImlRenderingMode',
        :'update_created_time_property' => :'UpdateCreatedTimeProperty',
        :'update_fields' => :'UpdateFields',
        :'update_last_printed_property' => :'UpdateLastPrintedProperty',
        :'update_last_saved_time_property' => :'UpdateLastSavedTimeProperty',
        :'zip_output' => :'ZipOutput',
        :'encoding' => :'Encoding',
        :'export_headers_footers_mode' => :'ExportHeadersFootersMode',
        :'force_page_breaks' => :'ForcePageBreaks',
        :'paragraph_break' => :'ParagraphBreak',
        :'add_bidi_marks' => :'AddBidiMarks',
        :'max_characters_per_line' => :'MaxCharactersPerLine',
        :'preserve_table_layout' => :'PreserveTableLayout',
        :'simplify_list_labels' => :'SimplifyListLabels',
        :'save_format' => :'SaveFormat'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'allow_embedding_post_script_fonts' => :'BOOLEAN',
        :'custom_time_zone_info_data' => :'TimeZoneInfoData',
        :'dml3_d_effects_rendering_mode' => :'String',
        :'dml_effects_rendering_mode' => :'String',
        :'dml_rendering_mode' => :'String',
        :'file_name' => :'String',
        :'iml_rendering_mode' => :'String',
        :'update_created_time_property' => :'BOOLEAN',
        :'update_fields' => :'BOOLEAN',
        :'update_last_printed_property' => :'BOOLEAN',
        :'update_last_saved_time_property' => :'BOOLEAN',
        :'zip_output' => :'BOOLEAN',
        :'encoding' => :'String',
        :'export_headers_footers_mode' => :'String',
        :'force_page_breaks' => :'BOOLEAN',
        :'paragraph_break' => :'String',
        :'add_bidi_marks' => :'BOOLEAN',
        :'max_characters_per_line' => :'Integer',
        :'preserve_table_layout' => :'BOOLEAN',
        :'simplify_list_labels' => :'BOOLEAN',
        :'save_format' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      self.save_format = 'txt'

      if attributes.key?(:'AllowEmbeddingPostScriptFonts')
        self.allow_embedding_post_script_fonts = attributes[:'AllowEmbeddingPostScriptFonts']
      end

      if attributes.key?(:'CustomTimeZoneInfoData')
        self.custom_time_zone_info_data = attributes[:'CustomTimeZoneInfoData']
      end

      if attributes.key?(:'Dml3DEffectsRenderingMode')
        self.dml3_d_effects_rendering_mode = attributes[:'Dml3DEffectsRenderingMode']
      end

      if attributes.key?(:'DmlEffectsRenderingMode')
        self.dml_effects_rendering_mode = attributes[:'DmlEffectsRenderingMode']
      end

      if attributes.key?(:'DmlRenderingMode')
        self.dml_rendering_mode = attributes[:'DmlRenderingMode']
      end

      if attributes.key?(:'FileName')
        self.file_name = attributes[:'FileName']
      end

      if attributes.key?(:'ImlRenderingMode')
        self.iml_rendering_mode = attributes[:'ImlRenderingMode']
      end

      if attributes.key?(:'UpdateCreatedTimeProperty')
        self.update_created_time_property = attributes[:'UpdateCreatedTimeProperty']
      end

      if attributes.key?(:'UpdateFields')
        self.update_fields = attributes[:'UpdateFields']
      end

      if attributes.key?(:'UpdateLastPrintedProperty')
        self.update_last_printed_property = attributes[:'UpdateLastPrintedProperty']
      end

      if attributes.key?(:'UpdateLastSavedTimeProperty')
        self.update_last_saved_time_property = attributes[:'UpdateLastSavedTimeProperty']
      end

      if attributes.key?(:'ZipOutput')
        self.zip_output = attributes[:'ZipOutput']
      end

      if attributes.key?(:'Encoding')
        self.encoding = attributes[:'Encoding']
      end

      if attributes.key?(:'ExportHeadersFootersMode')
        self.export_headers_footers_mode = attributes[:'ExportHeadersFootersMode']
      end

      if attributes.key?(:'ForcePageBreaks')
        self.force_page_breaks = attributes[:'ForcePageBreaks']
      end

      if attributes.key?(:'ParagraphBreak')
        self.paragraph_break = attributes[:'ParagraphBreak']
      end

      if attributes.key?(:'AddBidiMarks')
        self.add_bidi_marks = attributes[:'AddBidiMarks']
      end

      if attributes.key?(:'MaxCharactersPerLine')
        self.max_characters_per_line = attributes[:'MaxCharactersPerLine']
      end

      if attributes.key?(:'PreserveTableLayout')
        self.preserve_table_layout = attributes[:'PreserveTableLayout']
      end

      if attributes.key?(:'SimplifyListLabels')
        self.simplify_list_labels = attributes[:'SimplifyListLabels']
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
      dml3_d_effects_rendering_mode_validator = EnumAttributeValidator.new('String', ["Basic", "Advanced"])
      return false unless dml3_d_effects_rendering_mode_validator.valid?(@dml3_d_effects_rendering_mode)
      dml_effects_rendering_mode_validator = EnumAttributeValidator.new('String', ["Simplified", "None", "Fine"])
      return false unless dml_effects_rendering_mode_validator.valid?(@dml_effects_rendering_mode)
      dml_rendering_mode_validator = EnumAttributeValidator.new('String', ["Fallback", "DrawingML"])
      return false unless dml_rendering_mode_validator.valid?(@dml_rendering_mode)
      iml_rendering_mode_validator = EnumAttributeValidator.new('String', ["Fallback", "InkML"])
      return false unless iml_rendering_mode_validator.valid?(@iml_rendering_mode)
      export_headers_footers_mode_validator = EnumAttributeValidator.new('String', ["None", "PrimaryOnly", "AllAtEnd"])
      return false unless export_headers_footers_mode_validator.valid?(@export_headers_footers_mode)

      return true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] dml3_d_effects_rendering_mode Object to be assigned
    def dml3_d_effects_rendering_mode=(dml3_d_effects_rendering_mode)
      validator = EnumAttributeValidator.new('String', ["Basic", "Advanced"])
      if dml3_d_effects_rendering_mode.to_i == 0
        unless validator.valid?(dml3_d_effects_rendering_mode)
          raise ArgumentError, "invalid value for 'dml3_d_effects_rendering_mode', must be one of #{validator.allowable_values}."
        end
        @dml3_d_effects_rendering_mode = dml3_d_effects_rendering_mode
      else
        @dml3_d_effects_rendering_mode = validator.allowable_values[dml3_d_effects_rendering_mode.to_i]
      end
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] dml_effects_rendering_mode Object to be assigned
    def dml_effects_rendering_mode=(dml_effects_rendering_mode)
      validator = EnumAttributeValidator.new('String', ["Simplified", "None", "Fine"])
      if dml_effects_rendering_mode.to_i == 0
        unless validator.valid?(dml_effects_rendering_mode)
          raise ArgumentError, "invalid value for 'dml_effects_rendering_mode', must be one of #{validator.allowable_values}."
        end
        @dml_effects_rendering_mode = dml_effects_rendering_mode
      else
        @dml_effects_rendering_mode = validator.allowable_values[dml_effects_rendering_mode.to_i]
      end
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] dml_rendering_mode Object to be assigned
    def dml_rendering_mode=(dml_rendering_mode)
      validator = EnumAttributeValidator.new('String', ["Fallback", "DrawingML"])
      if dml_rendering_mode.to_i == 0
        unless validator.valid?(dml_rendering_mode)
          raise ArgumentError, "invalid value for 'dml_rendering_mode', must be one of #{validator.allowable_values}."
        end
        @dml_rendering_mode = dml_rendering_mode
      else
        @dml_rendering_mode = validator.allowable_values[dml_rendering_mode.to_i]
      end
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] iml_rendering_mode Object to be assigned
    def iml_rendering_mode=(iml_rendering_mode)
      validator = EnumAttributeValidator.new('String', ["Fallback", "InkML"])
      if iml_rendering_mode.to_i == 0
        unless validator.valid?(iml_rendering_mode)
          raise ArgumentError, "invalid value for 'iml_rendering_mode', must be one of #{validator.allowable_values}."
        end
        @iml_rendering_mode = iml_rendering_mode
      else
        @iml_rendering_mode = validator.allowable_values[iml_rendering_mode.to_i]
      end
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] export_headers_footers_mode Object to be assigned
    def export_headers_footers_mode=(export_headers_footers_mode)
      validator = EnumAttributeValidator.new('String', ["None", "PrimaryOnly", "AllAtEnd"])
      if export_headers_footers_mode.to_i == 0
        unless validator.valid?(export_headers_footers_mode)
          raise ArgumentError, "invalid value for 'export_headers_footers_mode', must be one of #{validator.allowable_values}."
        end
        @export_headers_footers_mode = export_headers_footers_mode
      else
        @export_headers_footers_mode = validator.allowable_values[export_headers_footers_mode.to_i]
      end
    end


    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(other)
      return true if self.equal?(other)
      self.class == other.class &&
          allow_embedding_post_script_fonts == other.allow_embedding_post_script_fonts &&
          custom_time_zone_info_data == other.custom_time_zone_info_data &&
          dml3_d_effects_rendering_mode == other.dml3_d_effects_rendering_mode &&
          dml_effects_rendering_mode == other.dml_effects_rendering_mode &&
          dml_rendering_mode == other.dml_rendering_mode &&
          file_name == other.file_name &&
          iml_rendering_mode == other.iml_rendering_mode &&
          update_created_time_property == other.update_created_time_property &&
          update_fields == other.update_fields &&
          update_last_printed_property == other.update_last_printed_property &&
          update_last_saved_time_property == other.update_last_saved_time_property &&
          zip_output == other.zip_output &&
          encoding == other.encoding &&
          export_headers_footers_mode == other.export_headers_footers_mode &&
          force_page_breaks == other.force_page_breaks &&
          paragraph_break == other.paragraph_break &&
          add_bidi_marks == other.add_bidi_marks &&
          max_characters_per_line == other.max_characters_per_line &&
          preserve_table_layout == other.preserve_table_layout &&
          simplify_list_labels == other.simplify_list_labels &&
          save_format == other.save_format
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(other)
      self == other
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [allow_embedding_post_script_fonts, custom_time_zone_info_data, dml3_d_effects_rendering_mode, dml_effects_rendering_mode, dml_rendering_mode, file_name, iml_rendering_mode, update_created_time_property, update_fields, update_last_printed_property, update_last_saved_time_property, zip_output, encoding, export_headers_footers_mode, force_page_breaks, paragraph_break, add_bidi_marks, max_characters_per_line, preserve_table_layout, simplify_list_labels, save_format].hash
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

  end
end
