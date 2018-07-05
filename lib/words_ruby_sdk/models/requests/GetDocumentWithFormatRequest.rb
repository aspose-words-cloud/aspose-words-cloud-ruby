 #
 # --------------------------------------------------------------------------------------------------------------------
 # <copyright company="Aspose" file="GetDocumentWithFormatRequest.rb">
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
  # Request model for get_document_with_format operation.
  #
  class GetDocumentWithFormatRequest

        # The file name.
        attr_accessor :name
        # The destination format.
        attr_accessor :format
        # Original document folder.
        attr_accessor :folder
        # File storage, which have to be used.
        attr_accessor :storage
        # Encoding that will be used to load an HTML (or TXT) document if the encoding is not specified in HTML.
        attr_accessor :load_encoding
        # Password for opening an encrypted document.
        attr_accessor :password
        # Path to save result
        attr_accessor :out_path
        # Folder in filestorage with custom fonts.
        attr_accessor :fonts_location
	
        #
        # Initializes a new instance.
        # @param name The file name.
        # @param format The destination format.
        # @param folder Original document folder.
        # @param storage File storage, which have to be used.
        # @param load_encoding Encoding that will be used to load an HTML (or TXT) document if the encoding is not specified in HTML.
        # @param password Password for opening an encrypted document.
        # @param out_path Path to save result
        # @param fonts_location Folder in filestorage with custom fonts.
        def initialize(name, format, folder = nil, storage = nil, load_encoding = nil, password = nil, out_path = nil, fonts_location = nil)
           self.name = name
           self.format = format
           self.folder = folder
           self.storage = storage
           self.load_encoding = load_encoding
           self.password = password
           self.out_path = out_path
           self.fonts_location = fonts_location
        end
  end
end
