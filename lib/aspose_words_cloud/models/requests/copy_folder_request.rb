# ------------------------------------------------------------------------------------
# <copyright company="Aspose" file="copy_folder_request.rb">
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
  # Request model for copy_folder operation.
  #
  class CopyFolderRequest
    # Destination folder path e.g. '/dst'.
    attr_accessor :dest_path

    # Source folder path e.g. /Folder1.
    attr_accessor :src_path

    # Source storage name.
    attr_accessor :src_storage_name

    # Destination storage name.
    attr_accessor :dest_storage_name

    #
    # Initializes a new instance.
    # @param dest_path Destination folder path e.g. '/dst'.
    # @param src_path Source folder path e.g. /Folder1.
    # @param src_storage_name Source storage name.
    # @param dest_storage_name Destination storage name.

    def initialize(dest_path, src_path, src_storage_name = nil, dest_storage_name = nil)
      self.dest_path = dest_path
      self.src_path = src_path
      self.src_storage_name = src_storage_name
      self.dest_storage_name = dest_storage_name
    end
  end
end
