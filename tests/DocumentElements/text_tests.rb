#
# --------------------------------------------------------------------------------------------------------------------
# <copyright company="Aspose" file="text_tests.rb">
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
  require_relative '../base_test_context'
  class TextTests < BaseTestContext
    def test_folder
      'DocumentElements/Text'
    end

    #
    # Test for replacing text
    #
    def test_replace_text
      filename = 'test_multi_pages.docx'
      remote_name = 'TestReplaceText.docx'
      dest_name = remote_test_out + remote_name
      body = ReplaceTextParameters.new({:OldValue => 'aspose', :NewValue => 'aspose new'})

      upload_file File.join(local_common_folder, filename), File.join(remote_test_folder, test_folder, remote_name)

      request = ReplaceTextRequest.new remote_name, body, remote_test_folder + test_folder, :dest_file_name => dest_name
      result = @words_api.replace_text request
      assert_equal FALSE, result.nil?
    end

    #
    # Test for searching text
    #
    def test_search
      filename = 'test_multi_pages.docx'
      remote_name = 'TestSearch.docx'
      pattern = 'aspose'

      upload_file File.join(local_common_folder, filename), File.join(remote_test_folder, test_folder, remote_name)

      request = SearchRequest.new remote_name, pattern, remote_test_folder + test_folder
      result = @words_api.search request
      assert_equal FALSE, result.nil?
    end
  end
end
