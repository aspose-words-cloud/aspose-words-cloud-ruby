
 #
 # --------------------------------------------------------------------------------------------------------------------
 # <copyright company="Aspose" file="PutConvertDocumentRequest.rb">
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
 # Request model for put_convert_document operation.
 #
class PutConvertDocumentRequest

     # Converting document
		attr_accessor :document
		
     # Format to convert.
		attr_accessor :format
		
     # File storage, which have to be used.
		attr_accessor :storage
		
     # Path for saving operation result to the local storage.
		attr_accessor :out_path
		
     # Folder in filestorage with custom fonts.
		attr_accessor :fonts_location
	
     #
     # Initializes a new instance.
     # @param document Converting document
     # @param format Format to convert.
     # @param storage File storage, which have to be used.
     # @param out_path Path for saving operation result to the local storage.
     # @param fonts_location Folder in filestorage with custom fonts.
		def initialize(document, format, storage=nil, out_path=nil, fonts_location=nil)
			self.document=document
			self.format=format
			self.storage=storage
			self.out_path=out_path
			self.fonts_location=fonts_location
		end
	
	end
end