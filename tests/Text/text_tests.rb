# ------------------------------------------------------------------------------------
# <copyright company="Aspose" file="Text_tests.rb">
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
  require_relative '../base_test_context'

  #
  # Example of how to work with macros.
  #
  class TextTests < BaseTestContext
    def remote_data_folder
      remote_test_folder + '/DocumentElements/Text'
    end


    #
    # Test for replacing text.
    #
    def test_replace_text
      remote_file_name = 'TestReplaceText.docx'
      local_file = 'Common/test_multi_pages.docx'

      upload_file File.join(local_test_folder, local_file), remote_data_folder + '/' + remote_file_name

      request_replace_text = ReplaceTextParameters.new({:OldValue => 'Testing', :NewValue => 'Aspose testing'})
      request = ReplaceTextRequest.new(remote_file_name, request_replace_text, remote_data_folder, nil, nil, nil, remote_test_out + '/' + remote_file_name, nil, nil)

      result = @words_api.replace_text(request)
      assert_equal false, result.nil?
    end

    #
    # Test for replacing text online.
    #
    def test_replace_text_online
      local_file = 'Common/test_multi_pages.docx'

      request_replace_text = ReplaceTextParameters.new({:OldValue => 'aspose', :NewValue => 'aspose new'})
      request = ReplaceTextOnlineRequest.new(File.open(File.join(local_test_folder, local_file)), request_replace_text, nil, nil, nil, nil, nil)

      result = @words_api.replace_text_online(request)
      assert_equal false, result.nil?
    end

    #
    # Test for searching.
    #
    def test_search
      remote_file_name = 'TestSearch.docx'
      local_file = 'DocumentElements/Text/SampleWordDocument.docx'

      upload_file File.join(local_test_folder, local_file), remote_data_folder + '/' + remote_file_name

      request = SearchRequest.new(remote_file_name, 'aspose', remote_data_folder, nil, nil, nil)

      result = @words_api.search(request)
      assert_equal false, result.nil?
    end

    #
    # Test for searching online.
    #
    def test_search_online
      local_file = 'DocumentElements/Text/SampleWordDocument.docx'

      request = SearchOnlineRequest.new(File.open(File.join(local_test_folder, local_file)), 'aspose', nil, nil)

      result = @words_api.search_online(request)
      assert_equal false, result.nil?
    end
  end
end