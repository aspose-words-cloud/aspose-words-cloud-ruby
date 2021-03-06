# ------------------------------------------------------------------------------------
# <copyright company="Aspose" file="save_as_tiff_request.rb">
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

module AsposeWordsCloud

  #
  # Request model for save_as_tiff operation.
  #
  class SaveAsTiffRequest
    # The filename of the input document.
    attr_accessor :name

    # Tiff save options.
    attr_accessor :save_options

    # Original document folder.
    attr_accessor :folder

    # Original document storage.
    attr_accessor :storage

    # Encoding that will be used to load an HTML (or TXT) document if the encoding is not specified in HTML.
    attr_accessor :load_encoding

    # Password for opening an encrypted document.
    attr_accessor :password

    # The flag indicating whether to use antialiasing.
    attr_accessor :use_anti_aliasing

    # The flag indicating whether to use high quality.
    attr_accessor :use_high_quality_rendering

    # The level of brightness for the generated images.
    attr_accessor :image_brightness

    # The color mode for the generated images.
    attr_accessor :image_color_mode

    # The contrast for the generated images.
    attr_accessor :image_contrast

    # The images numeral format.
    attr_accessor :numeral_format

    # The number of pages to render.
    attr_accessor :page_count

    # The index of the page to start rendering.
    attr_accessor :page_index

    # The background image color.
    attr_accessor :paper_color

    # The pixel format of the generated images.
    attr_accessor :pixel_format

    # The resolution of the generated images.
    attr_accessor :resolution

    # The zoom factor for the generated images.
    attr_accessor :scale

    # The compression tipe.
    attr_accessor :tiff_compression

    # The optional dml rendering mode. The default value is Fallback.
    attr_accessor :dml_rendering_mode

    # The optional dml effects rendering mode. The default value is Simplified.
    attr_accessor :dml_effects_rendering_mode

    # The optional TIFF binarization method. Possible values are: FloydSteinbergDithering, Threshold.
    attr_accessor :tiff_binarization_method

    # The flag indicating whether to ZIP the output.
    attr_accessor :zip_output

    # Folder in filestorage with custom fonts.
    attr_accessor :fonts_location

    #
    # Initializes a new instance.
    # @param name The filename of the input document.
    # @param save_options Tiff save options.
    # @param folder Original document folder.
    # @param storage Original document storage.
    # @param load_encoding Encoding that will be used to load an HTML (or TXT) document if the encoding is not specified in HTML.
    # @param password Password for opening an encrypted document.
    # @param use_anti_aliasing The flag indicating whether to use antialiasing.
    # @param use_high_quality_rendering The flag indicating whether to use high quality.
    # @param image_brightness The level of brightness for the generated images.
    # @param image_color_mode The color mode for the generated images.
    # @param image_contrast The contrast for the generated images.
    # @param numeral_format The images numeral format.
    # @param page_count The number of pages to render.
    # @param page_index The index of the page to start rendering.
    # @param paper_color The background image color.
    # @param pixel_format The pixel format of the generated images.
    # @param resolution The resolution of the generated images.
    # @param scale The zoom factor for the generated images.
    # @param tiff_compression The compression tipe.
    # @param dml_rendering_mode The optional dml rendering mode. The default value is Fallback.
    # @param dml_effects_rendering_mode The optional dml effects rendering mode. The default value is Simplified.
    # @param tiff_binarization_method The optional TIFF binarization method. Possible values are: FloydSteinbergDithering, Threshold.
    # @param zip_output The flag indicating whether to ZIP the output.
    # @param fonts_location Folder in filestorage with custom fonts.

    def initialize(name, save_options, folder = nil, storage = nil, load_encoding = nil, password = nil, use_anti_aliasing = nil, use_high_quality_rendering = nil, image_brightness = nil, image_color_mode = nil, image_contrast = nil, numeral_format = nil, page_count = nil, page_index = nil, paper_color = nil, pixel_format = nil, resolution = nil, scale = nil, tiff_compression = nil, dml_rendering_mode = nil, dml_effects_rendering_mode = nil, tiff_binarization_method = nil, zip_output = nil, fonts_location = nil)
      self.name = name
      self.save_options = save_options
      self.folder = folder
      self.storage = storage
      self.load_encoding = load_encoding
      self.password = password
      self.use_anti_aliasing = use_anti_aliasing
      self.use_high_quality_rendering = use_high_quality_rendering
      self.image_brightness = image_brightness
      self.image_color_mode = image_color_mode
      self.image_contrast = image_contrast
      self.numeral_format = numeral_format
      self.page_count = page_count
      self.page_index = page_index
      self.paper_color = paper_color
      self.pixel_format = pixel_format
      self.resolution = resolution
      self.scale = scale
      self.tiff_compression = tiff_compression
      self.dml_rendering_mode = dml_rendering_mode
      self.dml_effects_rendering_mode = dml_effects_rendering_mode
      self.tiff_binarization_method = tiff_binarization_method
      self.zip_output = zip_output
      self.fonts_location = fonts_location
    end

    # Creating batch part from request
    def to_batch_part(api_client)
      # verify the required parameter 'name' is set
      raise ArgumentError, 'Missing the required parameter name when calling WordsApi.save_as_tiff' if api_client.config.client_side_validation && self.name.nil?
      # verify the required parameter 'save_options' is set
      raise ArgumentError, 'Missing the required parameter save_options when calling WordsApi.save_as_tiff' if api_client.config.client_side_validation && self.save_options.nil?

      # resource path
      local_var_path = '/words/{name}/saveAs/tiff'[7..-1]
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', self.name.nil? ? '' : self.name.to_s)
      local_var_path = local_var_path.sub('//', '/')

      # query parameters
      query_params = {}
      query_params[downcase_first_letter('Folder')] = self.folder unless self.folder.nil?
      query_params[downcase_first_letter('Storage')] = self.storage unless self.storage.nil?
      query_params[downcase_first_letter('LoadEncoding')] = self.load_encoding unless self.load_encoding.nil?
      query_params[downcase_first_letter('Password')] = self.password unless self.password.nil?
      query_params[downcase_first_letter('UseAntiAliasing')] = self.use_anti_aliasing unless self.use_anti_aliasing.nil?
      query_params[downcase_first_letter('UseHighQualityRendering')] = self.use_high_quality_rendering unless self.use_high_quality_rendering.nil?
      query_params[downcase_first_letter('ImageBrightness')] = self.image_brightness unless self.image_brightness.nil?
      query_params[downcase_first_letter('ImageColorMode')] = self.image_color_mode unless self.image_color_mode.nil?
      query_params[downcase_first_letter('ImageContrast')] = self.image_contrast unless self.image_contrast.nil?
      query_params[downcase_first_letter('NumeralFormat')] = self.numeral_format unless self.numeral_format.nil?
      query_params[downcase_first_letter('PageCount')] = self.page_count unless self.page_count.nil?
      query_params[downcase_first_letter('PageIndex')] = self.page_index unless self.page_index.nil?
      query_params[downcase_first_letter('PaperColor')] = self.paper_color unless self.paper_color.nil?
      query_params[downcase_first_letter('PixelFormat')] = self.pixel_format unless self.pixel_format.nil?
      query_params[downcase_first_letter('Resolution')] = self.resolution unless self.resolution.nil?
      query_params[downcase_first_letter('Scale')] = self.scale unless self.scale.nil?
      query_params[downcase_first_letter('TiffCompression')] = self.tiff_compression unless self.tiff_compression.nil?
      query_params[downcase_first_letter('DmlRenderingMode')] = self.dml_rendering_mode unless self.dml_rendering_mode.nil?
      query_params[downcase_first_letter('DmlEffectsRenderingMode')] = self.dml_effects_rendering_mode unless self.dml_effects_rendering_mode.nil?
      query_params[downcase_first_letter('TiffBinarizationMethod')] = self.tiff_binarization_method unless self.tiff_binarization_method.nil?
      query_params[downcase_first_letter('ZipOutput')] = self.zip_output unless self.zip_output.nil?
      query_params[downcase_first_letter('FontsLocation')] = self.fonts_location unless self.fonts_location.nil?

      if query_params
        query_params.each { |key, value| local_var_path = api_client.add_param_to_query(local_var_path, key, value) }
      end

      header_params = {}
      # header parameters
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = api_client.select_header_content_type(['application/xml', 'application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = api_client.object_to_http_body(self.save_options)
      body = post_body
      part = ""
      part.concat("PUT".force_encoding('UTF-8'))
      part.concat(" ".force_encoding('UTF-8'))
      part.concat(local_var_path.force_encoding('UTF-8'))
      part.concat(" \r\n".force_encoding('UTF-8'))

      header_params.each_pair {|key, value| part.concat(key.dup.force_encoding('UTF-8') , ": ".force_encoding('UTF-8'), value.dup.force_encoding('UTF-8'), "\r\n".force_encoding('UTF-8')) }
      part.concat("\r\n".force_encoding('UTF-8'))
      if body
        if body.is_a?(Hash)
          body.each do |key, value|
          part.concat(value, "\r\n")
        end
        else
          part.concat(body)
        end
      end
     part
    end

    def create_http_request(api_client)
      # verify the required parameter 'name' is set
      raise ArgumentError, 'Missing the required parameter name when calling WordsApi.save_as_tiff' if api_client.config.client_side_validation && self.name.nil?
      # verify the required parameter 'save_options' is set
      raise ArgumentError, 'Missing the required parameter save_options when calling WordsApi.save_as_tiff' if api_client.config.client_side_validation && self.save_options.nil?

      # resource path
      local_var_path = '/words/{name}/saveAs/tiff'[1..-1]
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', self.name.nil? ? '' : self.name.to_s)
      local_var_path = local_var_path.sub('//', '/')

      # query parameters
      query_params = {}
      query_params[downcase_first_letter('Folder')] = self.folder unless self.folder.nil?
      query_params[downcase_first_letter('Storage')] = self.storage unless self.storage.nil?
      query_params[downcase_first_letter('LoadEncoding')] = self.load_encoding unless self.load_encoding.nil?
      query_params[downcase_first_letter('Password')] = self.password unless self.password.nil?
      query_params[downcase_first_letter('UseAntiAliasing')] = self.use_anti_aliasing unless self.use_anti_aliasing.nil?
      query_params[downcase_first_letter('UseHighQualityRendering')] = self.use_high_quality_rendering unless self.use_high_quality_rendering.nil?
      query_params[downcase_first_letter('ImageBrightness')] = self.image_brightness unless self.image_brightness.nil?
      query_params[downcase_first_letter('ImageColorMode')] = self.image_color_mode unless self.image_color_mode.nil?
      query_params[downcase_first_letter('ImageContrast')] = self.image_contrast unless self.image_contrast.nil?
      query_params[downcase_first_letter('NumeralFormat')] = self.numeral_format unless self.numeral_format.nil?
      query_params[downcase_first_letter('PageCount')] = self.page_count unless self.page_count.nil?
      query_params[downcase_first_letter('PageIndex')] = self.page_index unless self.page_index.nil?
      query_params[downcase_first_letter('PaperColor')] = self.paper_color unless self.paper_color.nil?
      query_params[downcase_first_letter('PixelFormat')] = self.pixel_format unless self.pixel_format.nil?
      query_params[downcase_first_letter('Resolution')] = self.resolution unless self.resolution.nil?
      query_params[downcase_first_letter('Scale')] = self.scale unless self.scale.nil?
      query_params[downcase_first_letter('TiffCompression')] = self.tiff_compression unless self.tiff_compression.nil?
      query_params[downcase_first_letter('DmlRenderingMode')] = self.dml_rendering_mode unless self.dml_rendering_mode.nil?
      query_params[downcase_first_letter('DmlEffectsRenderingMode')] = self.dml_effects_rendering_mode unless self.dml_effects_rendering_mode.nil?
      query_params[downcase_first_letter('TiffBinarizationMethod')] = self.tiff_binarization_method unless self.tiff_binarization_method.nil?
      query_params[downcase_first_letter('ZipOutput')] = self.zip_output unless self.zip_output.nil?
      query_params[downcase_first_letter('FontsLocation')] = self.fonts_location unless self.fonts_location.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = api_client.select_header_content_type(['application/xml', 'application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = api_client.object_to_http_body(self.save_options)
      body = post_body
      {
        'method': :PUT,
        'path': local_var_path,
        'header_params': header_params,
        'query_params': query_params,
        'body': body,
        'auth_names': ['JWT']
      }
    end

    #
    # Helper method to convert first letter to downcase
    #
    def downcase_first_letter(str)
      str[0].downcase + str[1..-1]
    end

    # Get response type
    def get_response_type
      'SaveResponse'
    end
  end
end
