# ------------------------------------------------------------------------------------
# <copyright company="Aspose" file="get_document_statistics_online_request.rb">
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
  # Request model for get_document_statistics_online operation.
  #
  class GetDocumentStatisticsOnlineRequest
    # The document.
    attr_accessor :document

    # Encoding that will be used to load an HTML (or TXT) document if the encoding is not specified in HTML.
    attr_accessor :load_encoding

    # Password for opening an encrypted document.
    attr_accessor :password

    # The flag indicating whether to include comments from the WordCount. The default value is "false".
    attr_accessor :include_comments

    # The flag indicating whether to include footnotes from the WordCount. The default value is "false".
    attr_accessor :include_footnotes

    # The flag indicating whether to include shape's text from the WordCount. The default value is "false".
    attr_accessor :include_text_in_shapes

    #
    # Initializes a new instance.
    # @param document The document.
    # @param load_encoding Encoding that will be used to load an HTML (or TXT) document if the encoding is not specified in HTML.
    # @param password Password for opening an encrypted document.
    # @param include_comments The flag indicating whether to include comments from the WordCount. The default value is "false".
    # @param include_footnotes The flag indicating whether to include footnotes from the WordCount. The default value is "false".
    # @param include_text_in_shapes The flag indicating whether to include shape's text from the WordCount. The default value is "false".

    def initialize(document, load_encoding = nil, password = nil, include_comments = nil, include_footnotes = nil, include_text_in_shapes = nil)
      self.document = document
      self.load_encoding = load_encoding
      self.password = password
      self.include_comments = include_comments
      self.include_footnotes = include_footnotes
      self.include_text_in_shapes = include_text_in_shapes
    end
  end
end
