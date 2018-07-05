 #
 # --------------------------------------------------------------------------------------------------------------------
 # <copyright company="Aspose" file="PutDocumentSaveAsTiffRequest.rb">
 #   Copyright (c) 2018 Aspose.Words for Cloud
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

module WordsRubySdk

  #
  # Request model for put_document_save_as_tiff operation.
  #
  class PutDocumentSaveAsTiffRequest

        # The document name.
        attr_accessor :name
        # Tiff save options.
        attr_accessor :save_options
        # Original document folder.
        attr_accessor :folder
        # File storage, which have to be used.
        attr_accessor :storage
        # Encoding that will be used to load an HTML (or TXT) document if the encoding is not specified in HTML.
        attr_accessor :load_encoding
        # Password for opening an encrypted document.
        attr_accessor :password
        # Result name of the document after the operation. If this parameter is omitted then result of the operation will be saved as the source document.
        attr_accessor :dest_file_name
        # The resulting file name.
        attr_accessor :result_file
        # Use antialiasing flag.
        attr_accessor :use_anti_aliasing
        # Use high quality flag.
        attr_accessor :use_high_quality_rendering
        # Brightness for the generated images.
        attr_accessor :image_brightness
        # Color mode for the generated images.
        attr_accessor :image_color_mode
        # The contrast for the generated images.
        attr_accessor :image_contrast
        # The images numeral format.
        attr_accessor :numeral_format
        # Number of pages to render.
        attr_accessor :page_count
        # Page index to start rendering.
        attr_accessor :page_index
        # Background image color.
        attr_accessor :paper_color
        # The pixel format of generated images.
        attr_accessor :pixel_format
        # The resolution of generated images.
        attr_accessor :resolution
        # Zoom factor for generated images.
        attr_accessor :scale
        # The compression tipe.
        attr_accessor :tiff_compression
        # Optional, default is Fallback.
        attr_accessor :dml_rendering_mode
        # Optional, default is Simplified.
        attr_accessor :dml_effects_rendering_mode
        # Optional, Tiff binarization method, possible values are: FloydSteinbergDithering, Threshold.
        attr_accessor :tiff_binarization_method
        # Optional. A value determining zip output or not.
        attr_accessor :zip_output
        # Folder in filestorage with custom fonts.
        attr_accessor :fonts_location
	
        #
        # Initializes a new instance.
        # @param name The document name.
        # @param save_options Tiff save options.
        # @param folder Original document folder.
        # @param storage File storage, which have to be used.
        # @param load_encoding Encoding that will be used to load an HTML (or TXT) document if the encoding is not specified in HTML.
        # @param password Password for opening an encrypted document.
        # @param dest_file_name Result name of the document after the operation. If this parameter is omitted then result of the operation will be saved as the source document.
        # @param result_file The resulting file name.
        # @param use_anti_aliasing Use antialiasing flag.
        # @param use_high_quality_rendering Use high quality flag.
        # @param image_brightness Brightness for the generated images.
        # @param image_color_mode Color mode for the generated images.
        # @param image_contrast The contrast for the generated images.
        # @param numeral_format The images numeral format.
        # @param page_count Number of pages to render.
        # @param page_index Page index to start rendering.
        # @param paper_color Background image color.
        # @param pixel_format The pixel format of generated images.
        # @param resolution The resolution of generated images.
        # @param scale Zoom factor for generated images.
        # @param tiff_compression The compression tipe.
        # @param dml_rendering_mode Optional, default is Fallback.
        # @param dml_effects_rendering_mode Optional, default is Simplified.
        # @param tiff_binarization_method Optional, Tiff binarization method, possible values are: FloydSteinbergDithering, Threshold.
        # @param zip_output Optional. A value determining zip output or not.
        # @param fonts_location Folder in filestorage with custom fonts.
        def initialize(name, save_options, folder = nil, storage = nil, load_encoding = nil, password = nil, dest_file_name = nil, result_file = nil, use_anti_aliasing = nil, use_high_quality_rendering = nil, image_brightness = nil, image_color_mode = nil, image_contrast = nil, numeral_format = nil, page_count = nil, page_index = nil, paper_color = nil, pixel_format = nil, resolution = nil, scale = nil, tiff_compression = nil, dml_rendering_mode = nil, dml_effects_rendering_mode = nil, tiff_binarization_method = nil, zip_output = nil, fonts_location = nil)
           self.name = name
           self.save_options = save_options
           self.folder = folder
           self.storage = storage
           self.load_encoding = load_encoding
           self.password = password
           self.dest_file_name = dest_file_name
           self.result_file = result_file
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
  end
end
