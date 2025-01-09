# ------------------------------------------------------------------------------------
# <copyright company="Aspose" file="examples_tests.rb">
#   Copyright (c) 2025 Aspose.Words for Cloud
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
  require_relative 'base_test_context'
  class ExamplesTests < BaseTestContext
    def setup
      super
      upload_file 'ExamplesData/test_doc.docx', 'test_doc.docx'
    end

    def test_accept_all_revisions
      documents_dir = 'ExamplesData'
      file_name= 'test_doc.docx'

      # Upload original document to cloud storage.
      my_var1 = File.open(File.join(documents_dir, file_name))
      my_var2 = file_name
      upload_file_request = UploadFileRequest.new(file_content: my_var1, path: my_var2)
      @words_api.upload_file(upload_file_request)

      # Calls AcceptAllRevisions method for document in cloud.
      my_var3 = file_name
      request = AcceptAllRevisionsRequest.new(name: my_var3)
      @words_api.accept_all_revisions(request)
    end

    def test_accept_all_revisions_online
      documents_dir = 'ExamplesData'
      file_name= 'test_doc.docx'

      # Calls AcceptAllRevisionsOnline method for document in cloud.
      request_document = File.open(File.join(documents_dir, file_name))
      request = AcceptAllRevisionsOnlineRequest.new(document: request_document)
      accept_all_revisions_online_result = @words_api.accept_all_revisions_online(request)
      File.open('test_result.docx', 'wb').write(accept_all_revisions_online_result.document.values[0])
    end
  end
end