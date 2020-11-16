# ------------------------------------------------------------------------------------
# <copyright company="Aspose" file="emf_save_options_data.rb">
#   Copyright (c) 2020 Aspose.Words for Cloud
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

  # Container class for emf save options.
  class EmfSaveOptionsData
    # Gets or sets the value determining how 3D effects are rendered.
    attr_accessor :dml3_d_effects_rendering_mode

    # Gets or sets the value determining how DrawingML effects are rendered.
    # { Simplified | None | Fine }.
    attr_accessor :dml_effects_rendering_mode

    # Gets or sets the option that controls how DrawingML shapes are rendered.
    attr_accessor :dml_rendering_mode

    # Gets or sets the name of destination file.
    attr_accessor :file_name

    # Gets or sets the format of save.
    attr_accessor :save_format

    # Gets or sets a value indicating whether fields should be updated before saving the document to a fixed page format. The default value is true.
    attr_accessor :update_fields

    # Gets or sets a value indicating whether the Aspose.Words.Properties.BuiltInDocumentProperties.LastPrinted property is updated before saving.
    attr_accessor :update_last_printed_property

    # Gets or sets a value indicating whether the Aspose.Words.Properties.BuiltInDocumentProperties.LastSavedTime property is updated before saving.
    attr_accessor :update_last_saved_time_property

    # Gets or sets a value indicating whether content of StructuredDocumentTag is updated before saving.
    attr_accessor :update_sdt_content

    # Gets or sets a value indicating whether to zip output or not.
    # The default value is false.
    attr_accessor :zip_output

    # Gets or sets the value determining how colors are rendered.
    # { Normal | Grayscale}.
    attr_accessor :color_mode

    # Gets or sets the quality of the JPEG images inside PDF document.
    attr_accessor :jpeg_quality

    # Gets or sets the metafile rendering options.
    attr_accessor :metafile_rendering_options

    # Gets or sets the symbol set, that is used to represent numbers while rendering to fixed page formats.
    attr_accessor :numeral_format

    # Gets or sets a value indicating whether it is required to optimize output of XPS.
    # If this flag is set redundant nested canvases and empty canvases are removed, also neighbor glyphs with the same formatting are concatenated.
    # Note: The accuracy of the content display may be affected if this property is set to true.. The default value is false.
    attr_accessor :optimize_output

    # Gets or sets the number of pages to render.
    attr_accessor :page_count

    # Gets or sets the 0-based index of the first page to render.
    attr_accessor :page_index

    # Gets or sets the additional System.Drawing.Graphics quality options.
    attr_accessor :graphics_quality_options

    # Gets or sets the horizontal resolution in dots per inch for the generated images.
    # This property has effect only when saving to raster image formats.
    # The default value is 96.
    attr_accessor :horizontal_resolution

    # Gets or sets the brightness level of the image.
    attr_accessor :image_brightness

    # Gets or sets the color mode of the image.
    attr_accessor :image_color_mode

    # Gets or sets the contrast level of the image.
    attr_accessor :image_contrast

    # Gets or sets the background (paper) color of the image.
    attr_accessor :paper_color

    # Gets or sets the pixel format of the image.
    attr_accessor :pixel_format

    # Gets or sets both horizontal and vertical resolution in dots per inch for the generated images.
    # This property has effect only when saving to raster image formats.
    # The default value is 96.
    attr_accessor :resolution

    # Gets or sets the zoom factor of the image.
    attr_accessor :scale

    # Gets or sets a value indicating whether to use anti-aliasing for rendering.
    attr_accessor :use_anti_aliasing

    # Gets or sets a value indicating whether to use GDI+ or Aspose.Words metafile renderer when saving to EMF.
    attr_accessor :use_gdi_emf_renderer

    # Gets or sets a value indicating whether to use high quality (i.e. slow) rendering algorithms.
    attr_accessor :use_high_quality_rendering

    # Gets or sets the vertical resolution in dots per inch for the generated images.
    # This property has effect only when saving to raster image formats.
    # The default value is 96.
    attr_accessor :vertical_resolution

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
        :'dml3_d_effects_rendering_mode' => :'Dml3DEffectsRenderingMode',
        :'dml_effects_rendering_mode' => :'DmlEffectsRenderingMode',
        :'dml_rendering_mode' => :'DmlRenderingMode',
        :'file_name' => :'FileName',
        :'save_format' => :'SaveFormat',
        :'update_fields' => :'UpdateFields',
        :'update_last_printed_property' => :'UpdateLastPrintedProperty',
        :'update_last_saved_time_property' => :'UpdateLastSavedTimeProperty',
        :'update_sdt_content' => :'UpdateSdtContent',
        :'zip_output' => :'ZipOutput',
        :'color_mode' => :'ColorMode',
        :'jpeg_quality' => :'JpegQuality',
        :'metafile_rendering_options' => :'MetafileRenderingOptions',
        :'numeral_format' => :'NumeralFormat',
        :'optimize_output' => :'OptimizeOutput',
        :'page_count' => :'PageCount',
        :'page_index' => :'PageIndex',
        :'graphics_quality_options' => :'GraphicsQualityOptions',
        :'horizontal_resolution' => :'HorizontalResolution',
        :'image_brightness' => :'ImageBrightness',
        :'image_color_mode' => :'ImageColorMode',
        :'image_contrast' => :'ImageContrast',
        :'paper_color' => :'PaperColor',
        :'pixel_format' => :'PixelFormat',
        :'resolution' => :'Resolution',
        :'scale' => :'Scale',
        :'use_anti_aliasing' => :'UseAntiAliasing',
        :'use_gdi_emf_renderer' => :'UseGdiEmfRenderer',
        :'use_high_quality_rendering' => :'UseHighQualityRendering',
        :'vertical_resolution' => :'VerticalResolution'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'dml3_d_effects_rendering_mode' => :'String',
        :'dml_effects_rendering_mode' => :'String',
        :'dml_rendering_mode' => :'String',
        :'file_name' => :'String',
        :'save_format' => :'String',
        :'update_fields' => :'BOOLEAN',
        :'update_last_printed_property' => :'BOOLEAN',
        :'update_last_saved_time_property' => :'BOOLEAN',
        :'update_sdt_content' => :'BOOLEAN',
        :'zip_output' => :'BOOLEAN',
        :'color_mode' => :'String',
        :'jpeg_quality' => :'Integer',
        :'metafile_rendering_options' => :'MetafileRenderingOptionsData',
        :'numeral_format' => :'String',
        :'optimize_output' => :'BOOLEAN',
        :'page_count' => :'Integer',
        :'page_index' => :'Integer',
        :'graphics_quality_options' => :'GraphicsQualityOptionsData',
        :'horizontal_resolution' => :'Float',
        :'image_brightness' => :'Float',
        :'image_color_mode' => :'String',
        :'image_contrast' => :'Float',
        :'paper_color' => :'String',
        :'pixel_format' => :'String',
        :'resolution' => :'Float',
        :'scale' => :'Float',
        :'use_anti_aliasing' => :'BOOLEAN',
        :'use_gdi_emf_renderer' => :'BOOLEAN',
        :'use_high_quality_rendering' => :'BOOLEAN',
        :'vertical_resolution' => :'Float'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

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

      if attributes.key?(:'SaveFormat')
        self.save_format = attributes[:'SaveFormat']
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

      if attributes.key?(:'UpdateSdtContent')
        self.update_sdt_content = attributes[:'UpdateSdtContent']
      end

      if attributes.key?(:'ZipOutput')
        self.zip_output = attributes[:'ZipOutput']
      end

      if attributes.key?(:'ColorMode')
        self.color_mode = attributes[:'ColorMode']
      end

      if attributes.key?(:'JpegQuality')
        self.jpeg_quality = attributes[:'JpegQuality']
      end

      if attributes.key?(:'MetafileRenderingOptions')
        self.metafile_rendering_options = attributes[:'MetafileRenderingOptions']
      end

      if attributes.key?(:'NumeralFormat')
        self.numeral_format = attributes[:'NumeralFormat']
      end

      if attributes.key?(:'OptimizeOutput')
        self.optimize_output = attributes[:'OptimizeOutput']
      end

      if attributes.key?(:'PageCount')
        self.page_count = attributes[:'PageCount']
      end

      if attributes.key?(:'PageIndex')
        self.page_index = attributes[:'PageIndex']
      end

      if attributes.key?(:'GraphicsQualityOptions')
        self.graphics_quality_options = attributes[:'GraphicsQualityOptions']
      end

      if attributes.key?(:'HorizontalResolution')
        self.horizontal_resolution = attributes[:'HorizontalResolution']
      end

      if attributes.key?(:'ImageBrightness')
        self.image_brightness = attributes[:'ImageBrightness']
      end

      if attributes.key?(:'ImageColorMode')
        self.image_color_mode = attributes[:'ImageColorMode']
      end

      if attributes.key?(:'ImageContrast')
        self.image_contrast = attributes[:'ImageContrast']
      end

      if attributes.key?(:'PaperColor')
        self.paper_color = attributes[:'PaperColor']
      end

      if attributes.key?(:'PixelFormat')
        self.pixel_format = attributes[:'PixelFormat']
      end

      if attributes.key?(:'Resolution')
        self.resolution = attributes[:'Resolution']
      end

      if attributes.key?(:'Scale')
        self.scale = attributes[:'Scale']
      end

      if attributes.key?(:'UseAntiAliasing')
        self.use_anti_aliasing = attributes[:'UseAntiAliasing']
      end

      if attributes.key?(:'UseGdiEmfRenderer')
        self.use_gdi_emf_renderer = attributes[:'UseGdiEmfRenderer']
      end

      if attributes.key?(:'UseHighQualityRendering')
        self.use_high_quality_rendering = attributes[:'UseHighQualityRendering']
      end

      if attributes.key?(:'VerticalResolution')
        self.vertical_resolution = attributes[:'VerticalResolution']
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


    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(other)
      return true if self.equal?(other)
      self.class == other.class &&
          dml3_d_effects_rendering_mode == other.dml3_d_effects_rendering_mode &&
          dml_effects_rendering_mode == other.dml_effects_rendering_mode &&
          dml_rendering_mode == other.dml_rendering_mode &&
          file_name == other.file_name &&
          save_format == other.save_format &&
          update_fields == other.update_fields &&
          update_last_printed_property == other.update_last_printed_property &&
          update_last_saved_time_property == other.update_last_saved_time_property &&
          update_sdt_content == other.update_sdt_content &&
          zip_output == other.zip_output &&
          color_mode == other.color_mode &&
          jpeg_quality == other.jpeg_quality &&
          metafile_rendering_options == other.metafile_rendering_options &&
          numeral_format == other.numeral_format &&
          optimize_output == other.optimize_output &&
          page_count == other.page_count &&
          page_index == other.page_index &&
          graphics_quality_options == other.graphics_quality_options &&
          horizontal_resolution == other.horizontal_resolution &&
          image_brightness == other.image_brightness &&
          image_color_mode == other.image_color_mode &&
          image_contrast == other.image_contrast &&
          paper_color == other.paper_color &&
          pixel_format == other.pixel_format &&
          resolution == other.resolution &&
          scale == other.scale &&
          use_anti_aliasing == other.use_anti_aliasing &&
          use_gdi_emf_renderer == other.use_gdi_emf_renderer &&
          use_high_quality_rendering == other.use_high_quality_rendering &&
          vertical_resolution == other.vertical_resolution
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(other)
      self == other
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [dml3_d_effects_rendering_mode, dml_effects_rendering_mode, dml_rendering_mode, file_name, save_format, update_fields, update_last_printed_property, update_last_saved_time_property, update_sdt_content, zip_output, color_mode, jpeg_quality, metafile_rendering_options, numeral_format, optimize_output, page_count, page_index, graphics_quality_options, horizontal_resolution, image_brightness, image_color_mode, image_contrast, paper_color, pixel_format, resolution, scale, use_anti_aliasing, use_gdi_emf_renderer, use_high_quality_rendering, vertical_resolution].hash
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
