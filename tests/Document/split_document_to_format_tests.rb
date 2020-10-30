# ------------------------------------------------------------------------------------
# <copyright company="Aspose" file="SplitDocumentToFormat_tests.rb">
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
  require_relative '../base_test_context'

  #
  # Example of how to split document and return result with specified format and page range.
  #
  class SplitDocumentToFormatTests < BaseTestContext
    def remote_data_folder
      remote_test_folder + '/DocumentActions/SplitDocument'
    end

    def local_file
      'Common/test_multi_pages.docx'
    end


    #
    # Test for document splitting.
    #
    def test_split_document
      remote_file_name = 'TestSplitDocument.docx'

      upload_file File.join(local_test_folder, local_file), remote_data_folder + '/' + remote_file_name

      request = SplitDocumentRequest.new(remote_file_name, 'text', remote_data_folder, nil, nil, nil, remote_test_out + '/TestSplitDocument.text', 1, 2, nil, nil)

      result = @words_api.split_document(request)
      assert_equal false, result.nil?
      assert_equal false, result.split_result.nil?
      assert_equal false, result.split_result.pages.nil?
      assert_equal 2, result.split_result.pages.length
    end
  end
end
