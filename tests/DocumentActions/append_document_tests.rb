#
# --------------------------------------------------------------------------------------------------------------------
# <copyright company="Aspose" file="append_document_tests.rb">
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
  class AppendDocumentTests < BaseTestContext

    def test_folder
      'DocumentActions/AppendDocument'
    end

    #
    # Test for appending document
    #
    def test_post_append_document
      filename = 'test_multi_pages.docx'
      remote_name = 'TestPostAppendDocument.docx'
      dest_name = remote_test_out + remote_name
      doc_entry = DocumentEntry.new({:Href => remote_test_folder + test_folder + '/' + remote_name, :ImportFormatMode => "KeepSourceFormatting"})
      body = DocumentEntryList.new({:DocumentEntries => [doc_entry]})

      st_request = PutCreateRequest.new remote_test_folder + test_folder + '/' + remote_name, File.open(local_common_folder + filename, "r").read
      @storage_api.put_create st_request

      request = PostAppendDocumentRequest.new remote_name, body, remote_test_folder + test_folder, :dest_file_name => dest_name
      result = @words_api.post_append_document request
      assert_equal 200, result.code
    end
  end
end
