# ------------------------------------------------------------------------------------
# <copyright company="Aspose" file="move_file_request.rb">
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
  # Request model for move_file operation.
  #
  class MoveFileRequest
    # Source file path e.g. '/src.ext'.
    attr_accessor :src_path

    # Destination file path e.g. '/dest.ext'.
    attr_accessor :dest_path

    # Source storage name.
    attr_accessor :src_storage_name

    # Destination storage name.
    attr_accessor :dest_storage_name

    # File version ID to move.
    attr_accessor :version_id

    #
    # Initializes a new instance.
    # @param src_path Source file path e.g. '/src.ext'.
    # @param dest_path Destination file path e.g. '/dest.ext'.
    # @param src_storage_name Source storage name.
    # @param dest_storage_name Destination storage name.
    # @param version_id File version ID to move.

    def initialize(src_path, dest_path, src_storage_name = nil, dest_storage_name = nil, version_id = nil)
      self.src_path = src_path
      self.dest_path = dest_path
      self.src_storage_name = src_storage_name
      self.dest_storage_name = dest_storage_name
      self.version_id = version_id
    end
  end
end
