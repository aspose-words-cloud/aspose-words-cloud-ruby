
require 'date'

module WordsRubySdk
 #
 # --------------------------------------------------------------------------------------------------------------------
 # <copyright company="Aspose" file="MhtmlSaveOptionsData.rb">
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

  # Container class for mhtml save options.
  class MhtmlSaveOptionsData
    # Gets or sets a value determining how colors are rendered. { Normal | Grayscale}
    attr_accessor :color_mode

    # format of save
    attr_accessor :save_format

    # name of destination file
    attr_accessor :file_name

    # Gets or sets a value determining how DrawingML shapes are rendered. { Fallback | DrawingML }
    attr_accessor :dml_rendering_mode

    # Gets or sets a value determining how DrawingML effects are rendered. { Simplified | None | Fine }
    attr_accessor :dml_effects_rendering_mode

    # Controls zip output or not. Default value is false.
    attr_accessor :zip_output

    # Gets or sets value determining whether content of  is updated before saving.
    attr_accessor :update_sdt_content

    # Gets or sets a value determining if fields should be updated before saving the document to a fixed page format. Default value for this property is true
    attr_accessor :update_fields

    # Specifies whether negative left and right indents of paragraphs are allowed (not normalized)
    attr_accessor :allow_negative_indent

    # Specifies the name of the CSS file written when the document is exported to HTML
    attr_accessor :css_style_sheet_file_name

    # Specifies how CSS styles are exported
    attr_accessor :css_style_sheet_type

    # Specifies how the document should be split when saving
    attr_accessor :document_split_criteria

    # Specifies the maximum level of headings at which to split the document
    attr_accessor :document_split_heading_level

    # Specifies the encoding to use when exporting
    attr_accessor :encoding

    # Specifies whether to export built-in and custom document properties
    attr_accessor :export_document_properties

    # Controls how drop-down form fields are saved to HTML. Default value is false.
    attr_accessor :export_drop_down_form_field_as_text

    # Specifies whether font resources should be exported
    attr_accessor :export_font_resources

    # Specifies whether fonts resources should be embedded to HTML in Base64 encoding.  Default is false.
    attr_accessor :export_fonts_as_base64

    # Specifies how headers and footers are output
    attr_accessor :export_headers_footers_mode

    # Specifies whether images are saved in Base64 format
    attr_accessor :export_images_as_base64

    # Specifies whether language information is exported
    attr_accessor :export_language_information

    # Controls how list labels are output
    attr_accessor :export_list_labels

    # Specifies whether original URL should be used as the URL of the linked images. Default value is false.
    attr_accessor :export_original_url_for_linked_images

    # Specifies whether page margins is exported to HTML, MHTML or EPUB. Default is false.
    attr_accessor :export_page_margins

    # Specifies whether page setup is exported
    attr_accessor :export_page_setup

    # Specifies whether font sizes should be output in relative units when saving
    attr_accessor :export_relative_font_size

    # Specifies whether to write the roundtrip information when saving to HTML Default value is true.
    attr_accessor :export_roundtrip_information

    # Controls how textboxes represented by Aspose.Words.Drawing.Shape are saved to HTML, MHTML or EPUB. Default value is false.    When set to true, exports textboxes as inline \"svg\" elements. When false, exports as \"image\" elements.
    attr_accessor :export_text_box_as_svg

    # Controls how text input form fields are saved
    attr_accessor :export_text_input_form_field_as_text

    # Specifies whether to write page numbers to table of contents when saving
    attr_accessor :export_toc_page_numbers

    # Specifies whether to write the DOCTYPE declaration when saving
    attr_accessor :export_xhtml_transitional

    # Controls which font resources need subsetting when saving
    attr_accessor :font_resources_subsetting_size_threshold

    # Specifies the physical folder where fonts are saved when exporting a document
    attr_accessor :fonts_folder

    # Specifies the name of the folder used to construct font URIs
    attr_accessor :fonts_folder_alias

    # Specifies version of HTML standard that should be used when saving the document to HTML or MHTML.   Default value is Aspose.Words.Saving.HtmlVersion.Xhtml.
    attr_accessor :html_version

    # Specifies the output resolution for images when exporting
    attr_accessor :image_resolution

    # Specifies the physical folder where images are saved when exporting a document
    attr_accessor :images_folder

    # Specifies the name of the folder used to construct image URIs
    attr_accessor :images_folder_alias

    # Controls how OfficeMath objects are exported to HTML, MHTML or EPUB.  Default value is HtmlOfficeMathOutputMode.Image.
    attr_accessor :office_math_output_mode

    # Specifies whether or not use pretty formats output
    attr_accessor :pretty_format

    # Specifies a physical folder where all resources like images, fonts, and external CSS are saved when a document is exported to HTML. Default is an empty string.
    attr_accessor :resource_folder

    # Specifies the name of the folder used to construct URIs of all resources written into an HTML document.  Default is an empty string.
    attr_accessor :resource_folder_alias

    # Specifies whether images are scaled by Aspose.Words to the bounding shape size when exporting
    attr_accessor :scale_image_to_shape_size

    # Controls how table, row and cell widths are exported
    attr_accessor :table_width_output_mode

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
        :'color_mode' => :'ColorMode',
        :'save_format' => :'SaveFormat',
        :'file_name' => :'FileName',
        :'dml_rendering_mode' => :'DmlRenderingMode',
        :'dml_effects_rendering_mode' => :'DmlEffectsRenderingMode',
        :'zip_output' => :'ZipOutput',
        :'update_sdt_content' => :'UpdateSdtContent',
        :'update_fields' => :'UpdateFields',
        :'allow_negative_indent' => :'AllowNegativeIndent',
        :'css_style_sheet_file_name' => :'CssStyleSheetFileName',
        :'css_style_sheet_type' => :'CssStyleSheetType',
        :'document_split_criteria' => :'DocumentSplitCriteria',
        :'document_split_heading_level' => :'DocumentSplitHeadingLevel',
        :'encoding' => :'Encoding',
        :'export_document_properties' => :'ExportDocumentProperties',
        :'export_drop_down_form_field_as_text' => :'ExportDropDownFormFieldAsText',
        :'export_font_resources' => :'ExportFontResources',
        :'export_fonts_as_base64' => :'ExportFontsAsBase64',
        :'export_headers_footers_mode' => :'ExportHeadersFootersMode',
        :'export_images_as_base64' => :'ExportImagesAsBase64',
        :'export_language_information' => :'ExportLanguageInformation',
        :'export_list_labels' => :'ExportListLabels',
        :'export_original_url_for_linked_images' => :'ExportOriginalUrlForLinkedImages',
        :'export_page_margins' => :'ExportPageMargins',
        :'export_page_setup' => :'ExportPageSetup',
        :'export_relative_font_size' => :'ExportRelativeFontSize',
        :'export_roundtrip_information' => :'ExportRoundtripInformation',
        :'export_text_box_as_svg' => :'ExportTextBoxAsSvg',
        :'export_text_input_form_field_as_text' => :'ExportTextInputFormFieldAsText',
        :'export_toc_page_numbers' => :'ExportTocPageNumbers',
        :'export_xhtml_transitional' => :'ExportXhtmlTransitional',
        :'font_resources_subsetting_size_threshold' => :'FontResourcesSubsettingSizeThreshold',
        :'fonts_folder' => :'FontsFolder',
        :'fonts_folder_alias' => :'FontsFolderAlias',
        :'html_version' => :'HtmlVersion',
        :'image_resolution' => :'ImageResolution',
        :'images_folder' => :'ImagesFolder',
        :'images_folder_alias' => :'ImagesFolderAlias',
        :'office_math_output_mode' => :'OfficeMathOutputMode',
        :'pretty_format' => :'PrettyFormat',
        :'resource_folder' => :'ResourceFolder',
        :'resource_folder_alias' => :'ResourceFolderAlias',
        :'scale_image_to_shape_size' => :'ScaleImageToShapeSize',
        :'table_width_output_mode' => :'TableWidthOutputMode'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'color_mode' => :'String',
        :'save_format' => :'String',
        :'file_name' => :'String',
        :'dml_rendering_mode' => :'String',
        :'dml_effects_rendering_mode' => :'String',
        :'zip_output' => :'BOOLEAN',
        :'update_sdt_content' => :'BOOLEAN',
        :'update_fields' => :'BOOLEAN',
        :'allow_negative_indent' => :'BOOLEAN',
        :'css_style_sheet_file_name' => :'String',
        :'css_style_sheet_type' => :'String',
        :'document_split_criteria' => :'String',
        :'document_split_heading_level' => :'Integer',
        :'encoding' => :'String',
        :'export_document_properties' => :'BOOLEAN',
        :'export_drop_down_form_field_as_text' => :'BOOLEAN',
        :'export_font_resources' => :'BOOLEAN',
        :'export_fonts_as_base64' => :'BOOLEAN',
        :'export_headers_footers_mode' => :'String',
        :'export_images_as_base64' => :'BOOLEAN',
        :'export_language_information' => :'BOOLEAN',
        :'export_list_labels' => :'String',
        :'export_original_url_for_linked_images' => :'BOOLEAN',
        :'export_page_margins' => :'BOOLEAN',
        :'export_page_setup' => :'BOOLEAN',
        :'export_relative_font_size' => :'BOOLEAN',
        :'export_roundtrip_information' => :'BOOLEAN',
        :'export_text_box_as_svg' => :'BOOLEAN',
        :'export_text_input_form_field_as_text' => :'BOOLEAN',
        :'export_toc_page_numbers' => :'BOOLEAN',
        :'export_xhtml_transitional' => :'BOOLEAN',
        :'font_resources_subsetting_size_threshold' => :'Integer',
        :'fonts_folder' => :'String',
        :'fonts_folder_alias' => :'String',
        :'html_version' => :'String',
        :'image_resolution' => :'Integer',
        :'images_folder' => :'String',
        :'images_folder_alias' => :'String',
        :'office_math_output_mode' => :'String',
        :'pretty_format' => :'BOOLEAN',
        :'resource_folder' => :'String',
        :'resource_folder_alias' => :'String',
        :'scale_image_to_shape_size' => :'BOOLEAN',
        :'table_width_output_mode' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'ColorMode')
        self.color_mode = attributes[:'ColorMode']
      end

      if attributes.has_key?(:'SaveFormat')
        self.save_format = attributes[:'SaveFormat']
      end

      if attributes.has_key?(:'FileName')
        self.file_name = attributes[:'FileName']
      end

      if attributes.has_key?(:'DmlRenderingMode')
        self.dml_rendering_mode = attributes[:'DmlRenderingMode']
      end

      if attributes.has_key?(:'DmlEffectsRenderingMode')
        self.dml_effects_rendering_mode = attributes[:'DmlEffectsRenderingMode']
      end

      if attributes.has_key?(:'ZipOutput')
        self.zip_output = attributes[:'ZipOutput']
      end

      if attributes.has_key?(:'UpdateSdtContent')
        self.update_sdt_content = attributes[:'UpdateSdtContent']
      end

      if attributes.has_key?(:'UpdateFields')
        self.update_fields = attributes[:'UpdateFields']
      end

      if attributes.has_key?(:'AllowNegativeIndent')
        self.allow_negative_indent = attributes[:'AllowNegativeIndent']
      end

      if attributes.has_key?(:'CssStyleSheetFileName')
        self.css_style_sheet_file_name = attributes[:'CssStyleSheetFileName']
      end

      if attributes.has_key?(:'CssStyleSheetType')
        self.css_style_sheet_type = attributes[:'CssStyleSheetType']
      end

      if attributes.has_key?(:'DocumentSplitCriteria')
        self.document_split_criteria = attributes[:'DocumentSplitCriteria']
      end

      if attributes.has_key?(:'DocumentSplitHeadingLevel')
        self.document_split_heading_level = attributes[:'DocumentSplitHeadingLevel']
      end

      if attributes.has_key?(:'Encoding')
        self.encoding = attributes[:'Encoding']
      end

      if attributes.has_key?(:'ExportDocumentProperties')
        self.export_document_properties = attributes[:'ExportDocumentProperties']
      end

      if attributes.has_key?(:'ExportDropDownFormFieldAsText')
        self.export_drop_down_form_field_as_text = attributes[:'ExportDropDownFormFieldAsText']
      end

      if attributes.has_key?(:'ExportFontResources')
        self.export_font_resources = attributes[:'ExportFontResources']
      end

      if attributes.has_key?(:'ExportFontsAsBase64')
        self.export_fonts_as_base64 = attributes[:'ExportFontsAsBase64']
      end

      if attributes.has_key?(:'ExportHeadersFootersMode')
        self.export_headers_footers_mode = attributes[:'ExportHeadersFootersMode']
      end

      if attributes.has_key?(:'ExportImagesAsBase64')
        self.export_images_as_base64 = attributes[:'ExportImagesAsBase64']
      end

      if attributes.has_key?(:'ExportLanguageInformation')
        self.export_language_information = attributes[:'ExportLanguageInformation']
      end

      if attributes.has_key?(:'ExportListLabels')
        self.export_list_labels = attributes[:'ExportListLabels']
      end

      if attributes.has_key?(:'ExportOriginalUrlForLinkedImages')
        self.export_original_url_for_linked_images = attributes[:'ExportOriginalUrlForLinkedImages']
      end

      if attributes.has_key?(:'ExportPageMargins')
        self.export_page_margins = attributes[:'ExportPageMargins']
      end

      if attributes.has_key?(:'ExportPageSetup')
        self.export_page_setup = attributes[:'ExportPageSetup']
      end

      if attributes.has_key?(:'ExportRelativeFontSize')
        self.export_relative_font_size = attributes[:'ExportRelativeFontSize']
      end

      if attributes.has_key?(:'ExportRoundtripInformation')
        self.export_roundtrip_information = attributes[:'ExportRoundtripInformation']
      end

      if attributes.has_key?(:'ExportTextBoxAsSvg')
        self.export_text_box_as_svg = attributes[:'ExportTextBoxAsSvg']
      end

      if attributes.has_key?(:'ExportTextInputFormFieldAsText')
        self.export_text_input_form_field_as_text = attributes[:'ExportTextInputFormFieldAsText']
      end

      if attributes.has_key?(:'ExportTocPageNumbers')
        self.export_toc_page_numbers = attributes[:'ExportTocPageNumbers']
      end

      if attributes.has_key?(:'ExportXhtmlTransitional')
        self.export_xhtml_transitional = attributes[:'ExportXhtmlTransitional']
      end

      if attributes.has_key?(:'FontResourcesSubsettingSizeThreshold')
        self.font_resources_subsetting_size_threshold = attributes[:'FontResourcesSubsettingSizeThreshold']
      end

      if attributes.has_key?(:'FontsFolder')
        self.fonts_folder = attributes[:'FontsFolder']
      end

      if attributes.has_key?(:'FontsFolderAlias')
        self.fonts_folder_alias = attributes[:'FontsFolderAlias']
      end

      if attributes.has_key?(:'HtmlVersion')
        self.html_version = attributes[:'HtmlVersion']
      end

      if attributes.has_key?(:'ImageResolution')
        self.image_resolution = attributes[:'ImageResolution']
      end

      if attributes.has_key?(:'ImagesFolder')
        self.images_folder = attributes[:'ImagesFolder']
      end

      if attributes.has_key?(:'ImagesFolderAlias')
        self.images_folder_alias = attributes[:'ImagesFolderAlias']
      end

      if attributes.has_key?(:'OfficeMathOutputMode')
        self.office_math_output_mode = attributes[:'OfficeMathOutputMode']
      end

      if attributes.has_key?(:'PrettyFormat')
        self.pretty_format = attributes[:'PrettyFormat']
      end

      if attributes.has_key?(:'ResourceFolder')
        self.resource_folder = attributes[:'ResourceFolder']
      end

      if attributes.has_key?(:'ResourceFolderAlias')
        self.resource_folder_alias = attributes[:'ResourceFolderAlias']
      end

      if attributes.has_key?(:'ScaleImageToShapeSize')
        self.scale_image_to_shape_size = attributes[:'ScaleImageToShapeSize']
      end

      if attributes.has_key?(:'TableWidthOutputMode')
        self.table_width_output_mode = attributes[:'TableWidthOutputMode']
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
      html_version_validator = EnumAttributeValidator.new('String', ["Xhtml", "Html5"])
      return false unless html_version_validator.valid?(@html_version)
      office_math_output_mode_validator = EnumAttributeValidator.new('String', ["Image", "MathML", "Text"])
      return false unless office_math_output_mode_validator.valid?(@office_math_output_mode)
      return true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] html_version Object to be assigned
    def html_version=(html_version)
      validator = EnumAttributeValidator.new('String', ["Xhtml", "Html5"])
      if html_version.to_i == 0
        unless validator.valid?(html_version)
          fail ArgumentError, "invalid value for 'html_version', must be one of #{validator.allowable_values}."
        end
        @html_version = html_version
      else
        @html_version = validator.allowable_values[html_version.to_i]
      end
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] office_math_output_mode Object to be assigned
    def office_math_output_mode=(office_math_output_mode)
      validator = EnumAttributeValidator.new('String', ["Image", "MathML", "Text"])
      if office_math_output_mode.to_i == 0
        unless validator.valid?(office_math_output_mode)
          fail ArgumentError, "invalid value for 'office_math_output_mode', must be one of #{validator.allowable_values}."
        end
        @office_math_output_mode = office_math_output_mode
      else
        @office_math_output_mode = validator.allowable_values[office_math_output_mode.to_i]
      end
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          color_mode == o.color_mode &&
          save_format == o.save_format &&
          file_name == o.file_name &&
          dml_rendering_mode == o.dml_rendering_mode &&
          dml_effects_rendering_mode == o.dml_effects_rendering_mode &&
          zip_output == o.zip_output &&
          update_sdt_content == o.update_sdt_content &&
          update_fields == o.update_fields &&
          allow_negative_indent == o.allow_negative_indent &&
          css_style_sheet_file_name == o.css_style_sheet_file_name &&
          css_style_sheet_type == o.css_style_sheet_type &&
          document_split_criteria == o.document_split_criteria &&
          document_split_heading_level == o.document_split_heading_level &&
          encoding == o.encoding &&
          export_document_properties == o.export_document_properties &&
          export_drop_down_form_field_as_text == o.export_drop_down_form_field_as_text &&
          export_font_resources == o.export_font_resources &&
          export_fonts_as_base64 == o.export_fonts_as_base64 &&
          export_headers_footers_mode == o.export_headers_footers_mode &&
          export_images_as_base64 == o.export_images_as_base64 &&
          export_language_information == o.export_language_information &&
          export_list_labels == o.export_list_labels &&
          export_original_url_for_linked_images == o.export_original_url_for_linked_images &&
          export_page_margins == o.export_page_margins &&
          export_page_setup == o.export_page_setup &&
          export_relative_font_size == o.export_relative_font_size &&
          export_roundtrip_information == o.export_roundtrip_information &&
          export_text_box_as_svg == o.export_text_box_as_svg &&
          export_text_input_form_field_as_text == o.export_text_input_form_field_as_text &&
          export_toc_page_numbers == o.export_toc_page_numbers &&
          export_xhtml_transitional == o.export_xhtml_transitional &&
          font_resources_subsetting_size_threshold == o.font_resources_subsetting_size_threshold &&
          fonts_folder == o.fonts_folder &&
          fonts_folder_alias == o.fonts_folder_alias &&
          html_version == o.html_version &&
          image_resolution == o.image_resolution &&
          images_folder == o.images_folder &&
          images_folder_alias == o.images_folder_alias &&
          office_math_output_mode == o.office_math_output_mode &&
          pretty_format == o.pretty_format &&
          resource_folder == o.resource_folder &&
          resource_folder_alias == o.resource_folder_alias &&
          scale_image_to_shape_size == o.scale_image_to_shape_size &&
          table_width_output_mode == o.table_width_output_mode
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [color_mode, save_format, file_name, dml_rendering_mode, dml_effects_rendering_mode, zip_output, update_sdt_content, update_fields, allow_negative_indent, css_style_sheet_file_name, css_style_sheet_type, document_split_criteria, document_split_heading_level, encoding, export_document_properties, export_drop_down_form_field_as_text, export_font_resources, export_fonts_as_base64, export_headers_footers_mode, export_images_as_base64, export_language_information, export_list_labels, export_original_url_for_linked_images, export_page_margins, export_page_setup, export_relative_font_size, export_roundtrip_information, export_text_box_as_svg, export_text_input_form_field_as_text, export_toc_page_numbers, export_xhtml_transitional, font_resources_subsetting_size_threshold, fonts_folder, fonts_folder_alias, html_version, image_resolution, images_folder, images_folder_alias, office_math_output_mode, pretty_format, resource_folder, resource_folder_alias, scale_image_to_shape_size, table_width_output_mode].hash
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
      else # model
        temp_model = WordsRubySdk.const_get(type).new
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
