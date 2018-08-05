#
# --------------------------------------------------------------------------------------------------------------------
# <copyright company="Aspose" file="compare_document_tests.rb">
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
module AsposeWordsCloud
  require_relative '../base_test_context'
  class CompareDocumentTests < BaseTestContext

    def test_folder
      'DocumentActions/CompareDocument'
    end

    #
    # Test for document comparison
    #
    def test_post_compare_document

      local_name1 = "compareTestDoc1.doc"
      local_name2 = "compareTestDoc2.doc"
      remote_name1 = "TestPostCompareDocument1.doc"
      remote_name2 = "TestPostCompareDocument2.doc"
      dest_name = remote_test_out + 'TestCompareOut.doc'
      compare_data = CompareData.new({
                                         :Author => 'author',
                                         :ComparingWithDocument => remote_test_folder + test_folder + '/' + remote_name2,
                                         :DateTime => DateTime.new})
      st_request1 = PutCreateRequest.new remote_test_folder + test_folder + '/' + remote_name1, File.open(local_test_folder + test_folder + '/' + local_name1).read
      @storage_api.put_create st_request1
      st_request2 = PutCreateRequest.new remote_test_folder + test_folder + '/' + remote_name2, File.open(local_test_folder + test_folder + '/' + local_name2).read
      @storage_api.put_create st_request2

      request = PostCompareDocumentRequest.new remote_name1, compare_data, remote_test_folder + test_folder, :dest_file_name => dest_name
      result = @words_api.post_compare_document request
      assert_equal 200, result.code
    end
  end
end
