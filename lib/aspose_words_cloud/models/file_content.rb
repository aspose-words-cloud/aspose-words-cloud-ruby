# ------------------------------------------------------------------------------------
# <copyright company="Aspose" file="file_content.rb">
#   Copyright (c) 2022 Aspose.Words for Cloud
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
require 'securerandom'
module AsposeWordsCloud

  #
  # Class to wrap file content inside another class models.
  #
  class FileContent
    # Gets or sets the file content id.
    attr_accessor :id

    # Gets or sets the filename.
    attr_accessor :filename

    # Gets or sets the file data.
    attr_accessor :content

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'id' => :'Id',
        :'filename' => :'Filename'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'id' => :'Id',
        :'filename' => :'Filename'
      }
    end

    def initialize(filename, content)
      self.id = SecureRandom.uuid
      self.filename = filename
      self.content = content
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
      return true
    end

    def collectFilesContent(resultFilesContent)
        resultFilesContent.push(self)
    end
  end
end
