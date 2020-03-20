 #
 # --------------------------------------------------------------------------------------------------------------------
 # <copyright company="Aspose" file="ExecuteMailMergeOnlineRequest.rb">
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
  # Request model for execute_mail_merge_online operation.
  #
  class ExecuteMailMergeOnlineRequest

        # File with template
        attr_accessor :template
        # File with mailmerge data
        attr_accessor :data
        # With regions flag.
        attr_accessor :with_regions
        # Clean up options.
        attr_accessor :cleanup
        # This file name will be used when resulting document has dynamic field for document file name {filename}. If it is not setted, "template" will be used instead. 
        attr_accessor :document_file_name
	
        #
        # Initializes a new instance.
        # @param template File with template
        # @param data File with mailmerge data
        # @param with_regions With regions flag.
        # @param cleanup Clean up options.
        # @param document_file_name This file name will be used when resulting document has dynamic field for document file name {filename}. If it is not setted, "template" will be used instead. 
        def initialize(template, data, with_regions = nil, cleanup = nil, document_file_name = nil)
           self.template = template
           self.data = data
           self.with_regions = with_regions
           self.cleanup = cleanup
           self.document_file_name = document_file_name
        end
  end
end
