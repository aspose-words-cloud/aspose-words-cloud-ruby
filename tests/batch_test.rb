# ------------------------------------------------------------------------------------
# <copyright company="Aspose" file="batch_test.rb">
#   Copyright (c) 2022 Aspose.Words for Cloud
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

  class BatchTest < BaseTestContext
    def setup
      super
    end

    def remote_data_folder
      remote_test_folder + '/DocumentElements/Paragraphs'
    end

    def local_file
      'Common/test_multi_pages.docx'
    end

    def test_batch
      remote_file_name = 'TestBatchParagraphs.docx'
      request0 = UploadFileRequest.new(file_content: File.new(File.join(local_test_folder, local_file), 'rb'), path: remote_data_folder + '/' + remote_file_name)
      paragraph = ParagraphInsert.new({:Text => 'This is a new paragraph for your document'})
      request1 = BatchPartRequest.new(GetParagraphsRequest.new(name: remote_file_name, node_path: 'sections/0', folder: remote_data_folder))
      request2 = BatchPartRequest.new(GetParagraphRequest.new(name: remote_file_name, index: 0, folder: remote_data_folder))
      request3 = BatchPartRequest.new(InsertParagraphRequest.new(name: remote_file_name, paragraph: paragraph, node_path: 'sections/0', folder: remote_data_folder))
      request4 = BatchPartRequest.new(DeleteParagraphRequest.new(name: remote_file_name, index: 0, node_path: '', folder: remote_data_folder))
      @words_api.upload_file request0
      result = @words_api.batch [request1, request2, request3, request4]
      assert_equal(4, result[0].length)
      assert_equal(true, result[0][0].is_a?(ParagraphLinkCollectionResponse))
      assert_equal(true, result[0][1].is_a?(ParagraphResponse))
      assert_equal(true, result[0][2].is_a?(ParagraphResponse))
      assert_equal(true, result[0][3].nil?)
    end

    def test_batch_without_intermediate_results
      remote_file_name = 'TestBatchParagraphs.docx'
      request0 = UploadFileRequest.new(file_content: File.new(File.join(local_test_folder, local_file), 'rb'), path: remote_data_folder + '/' + remote_file_name)
      paragraph = ParagraphInsert.new({:Text => 'This is a new paragraph for your document'})
      request1 = BatchPartRequest.new(GetParagraphsRequest.new(name: remote_file_name, node_path: 'sections/0', folder: remote_data_folder))
      request2 = BatchPartRequest.new(GetParagraphRequest.new(name: remote_file_name, index: 0, folder: remote_data_folder))
      request3 = BatchPartRequest.new(InsertParagraphRequest.new(name: remote_file_name, paragraph: paragraph, node_path: 'sections/0', folder: remote_data_folder))
      request4 = BatchPartRequest.new(DeleteParagraphRequest.new(name: remote_file_name, index: 0, node_path: '', folder: remote_data_folder))
      @words_api.upload_file request0
      result = @words_api.batch([request1, request2, request3, request4], false)
      assert_equal(1, result[0].length)
      assert_equal(true, result[0][1].nil?)
    end

  end
end
