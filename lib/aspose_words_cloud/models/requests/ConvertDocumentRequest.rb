 #
 # --------------------------------------------------------------------------------------------------------------------
 # <copyright company="Aspose" file="ConvertDocumentRequest.rb">
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

module AsposeWordsCloud

  #
  # Request model for convert_document operation.
  #
  class ConvertDocumentRequest

        # Converting document
        attr_accessor :
        # Format to convert.
        attr_accessor :
        # Original document storage.
        attr_accessor :
        # Path for saving operation result to the local storage.
        attr_accessor :
        # This file name will be used when resulting document has dynamic field for document file name {filename}. If it is not set, "sourceFilename" will be used instead. 
        attr_accessor :
        # Folder in filestorage with custom fonts.
        attr_accessor :
	
        #
        # Initializes a new instance.
        # @param  Converting document
        # @param  Format to convert.
        # @param  Original document storage.
        # @param  Path for saving operation result to the local storage.
        # @param  This file name will be used when resulting document has dynamic field for document file name {filename}. If it is not set, "sourceFilename" will be used instead. 
        # @param  Folder in filestorage with custom fonts.
        def initialize( = nil = nil = nil = nil)
           self. = 
           self. = 
           self. = 
           self. = 
           self. = 
           self. = 
        end
  end
end
