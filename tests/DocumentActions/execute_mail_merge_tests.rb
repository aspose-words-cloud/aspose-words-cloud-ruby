#
# --------------------------------------------------------------------------------------------------------------------
# <copyright company="Aspose" file="execute_mail_merge_tests.rb">
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
module WordsRubySdk
  require_relative '../base_test_context'
  class ExecuteMailMergeTests < BaseTestContext
    def test_folder
      'DocumentActions/MailMerge'
    end

    #
    # Test for mail merge execution
    #
    def test_post_document_execute_mail_merge
      filename = 'SampleMailMergeTemplate.docx'
      remote_name = 'TestPostDocumentExecuteMailMerge.docx'
      dest_name = remote_test_out + remote_name
      data = File.read(local_test_folder + test_folder + '/SampleMailMergeTemplateData.txt')

      @storage_api.put_create remote_test_folder + test_folder + '/' + remote_name, File.open(local_test_folder + test_folder + '/' + filename, "r").read

      request = PostDocumentExecuteMailMergeRequest.new remote_name, false, data, remote_test_folder + test_folder, :dest_file_name => dest_name
      result = @words_api.post_document_execute_mail_merge request
      assert_equal 200, result.code
    end

    #
    # Test for executing mail merge online
    #
    def test_put_execute_mail_merge_online
      filename = 'SampleMailMergeTemplate.docx'
      file = File.open(local_test_folder + test_folder + '/' + filename, "r")
      data = File.open(local_test_folder + test_folder + '/SampleMailMergeTemplateData.txt', 'r')
      request = PutExecuteMailMergeOnlineRequest.new file, data
      result = @words_api.put_execute_mail_merge_online request
      assert result.length > 0, 'Error occurred while executing mail merge'
    end
  end
end
