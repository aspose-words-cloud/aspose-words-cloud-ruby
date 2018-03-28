#
# --------------------------------------------------------------------------------------------------------------------
# <copyright company="Aspose" file="split_document_tests.rb">
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
module RubySDK
  require_relative '../base_test_context'
  require_relative '../../lib/models/requests/PostSplitDocumentRequest'
  class SplitDocumentTests < BaseTestContext
    def test_folder
      'DocumentActions/SplitDocument'
    end

    #
    # Test for splitting document
    #
    def test_post_split_document
      filename = 'test_multi_pages.docx'
      remote_name = 'TestPostSplitDocument.docx'
      dest_name = remote_test_out + 'TestPostSplitDocument.text'
      format = 'text'
      from = 1
      to = 2

      @storage_api.put_create remote_test_folder + test_folder + '/' + remote_name, File.open(local_common_folder + filename, "r").read

      request = PostSplitDocumentRequest.new remote_name, remote_test_folder + test_folder, nil, nil, nil, dest_name, format, from, to
      result = @words_api.post_split_document request
      assert_equal 200, result.code
    end
  end
end
