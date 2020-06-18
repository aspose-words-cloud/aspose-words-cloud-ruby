# ------------------------------------------------------------------------------------
# <copyright company="Aspose" file="get_border_request.rb">
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

module AsposeWordsCloud

  #
  # Request model for get_border operation.
  #
  class GetBorderRequest
    # The document name.
    attr_accessor :name

    # Path to the node with border(node should be paragraph, cell or row).
    attr_accessor :node_path

    # Border type.
    attr_accessor :border_type

    # Original document folder.
    attr_accessor :folder

    # Original document storage.
    attr_accessor :storage

    # Encoding that will be used to load an HTML (or TXT) document if the encoding is not specified in HTML.
    attr_accessor :load_encoding

    # Password for opening an encrypted document.
    attr_accessor :password

    #
    # Initializes a new instance.
    # @param name The document name.
    # @param node_path Path to the node with border(node should be paragraph, cell or row).
    # @param border_type Border type.
    # @param folder Original document folder.
    # @param storage Original document storage.
    # @param load_encoding Encoding that will be used to load an HTML (or TXT) document if the encoding is not specified in HTML.
    # @param password Password for opening an encrypted document.

    def initialize(name, node_path, border_type, folder = nil, storage = nil, load_encoding = nil, password = nil)
      self.name = name
      self.node_path = node_path
      self.border_type = border_type
      self.folder = folder
      self.storage = storage
      self.load_encoding = load_encoding
      self.password = password
    end
  end
end