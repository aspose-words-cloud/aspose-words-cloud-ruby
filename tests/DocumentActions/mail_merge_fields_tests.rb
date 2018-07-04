#
# --------------------------------------------------------------------------------------------------------------------
# <copyright company="Aspose" file="mail_merge_fields_tests.rb">
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
  class MailMergeFieldsTests < BaseTestContext
    def test_folder
      'DocumentActions/MailMerge'
    end

    #
    # Test for getting document field names
    #
    def test_get_document_field_names
      filename = 'test_multi_pages.docx'
      remote_name = 'TestGetDocumentFieldNames.docx'
      st_request = PutCreateRequest.new remote_test_folder + test_folder + '/' + remote_name, File.open(local_common_folder + filename, "r").read
      @storage_api.put_create st_request

      request = GetDocumentFieldNamesRequest.new remote_name, remote_test_folder + test_folder
      result = @words_api.get_document_field_names request
      assert_equal 200, result.code
    end

    #
    # Test for inserting document field names
    #
    def test_put_document_field_names
      file = File.open(local_test_folder + test_folder + '/SampleExecuteTemplate.docx', "r")
      request = PutDocumentFieldNamesRequest.new file, true
      result = @words_api.put_document_field_names request
      assert_equal 200, result.code
    end
  end
end
