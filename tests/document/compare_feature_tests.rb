# ------------------------------------------------------------------------------------
# <copyright company="Aspose" file="compare_feature_tests.rb">
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
  require_relative 'base_test_context'
  class CompareFeatureTests < BaseTestContext

    def remote_folder
      remote_test_folder + '/DocumentActions/CompareDocument'
    end

    def local_folder
      'DocumentActions/CompareDocument'
    end

    #
    # Test for document comparison.
    #
    def test_compare_doc_documents_from_storage
      local_name1 = 'compareTestDoc1.doc'
      local_name2 = 'compareTestDoc2.doc'
      remote_name1 = 'TestCompareDocument1.doc'
      remote_name2 = 'TestCompareDocument2.doc'

      upload_file File.join(local_test_folder, local_folder + '/' + local_name1), remote_folder + '/' + remote_name1
      upload_file File.join(local_test_folder, local_folder + '/' + local_name2), remote_folder + '/' + remote_name2

      request_compare_data = CompareData.new({:Author => 'author', :ComparingWithDocument => remote_folder + '/' + remote_name2, :DateTime => Date.iso8601('2015-10-26T00:00:00.0000000Z')})
      request = CompareDocumentRequest.new(remote_name1, request_compare_data, remote_folder, nil, nil, nil, remote_test_out + '/TestCompareDocumentOut.doc')

      result = @words_api.compare_document(request)
      assert_equal false, result.nil?
    end

    #
    # Test for document comparison.
    #
    def test_compare_doc_documents_online
      local_name1 = 'compareTestDoc1.doc'
      local_name2 = 'compareTestDoc2.doc'
      remote_name2 = 'TestCompareDocument2.doc'

      upload_file File.join(local_test_folder, local_folder + '/' + local_name2), remote_folder + '/' + remote_name2

      request_compare_data = CompareData.new({:Author => 'author', :ComparingWithDocument => remote_folder + '/' + remote_name2, :DateTime => Date.iso8601('2015-10-26T00:00:00.0000000Z')})
      request = CompareDocumentOnlineRequest.new(File.open(File.join(local_test_folder, local_folder + '/' + local_name1)), request_compare_data, nil, nil, nil, remote_test_out + '/TestCompareDocumentOut.doc')

      result = @words_api.compare_document_online(request)
      assert_equal false, result.nil?
      assert_equal AsposeWordsCloud::DocumentResponse, result.model.class
    end

    #
    # Test for document comparison.
    #
    def test_compare_pdf_documents_from_storage
      local_name1 = 'compareTestDoc1.pdf'
      local_name2 = 'compareTestDoc2.pdf'
      remote_name1 = 'TestCompareDocument1.pdf'
      remote_name2 = 'TestCompareDocument2.pdf'

      upload_file File.join(local_test_folder, local_folder + '/' + local_name1), remote_folder + '/' + remote_name1
      upload_file File.join(local_test_folder, local_folder + '/' + local_name2), remote_folder + '/' + remote_name2

      request_compare_data = CompareData.new({:Author => 'author', :ComparingWithDocument => remote_folder + '/' + remote_name2, :DateTime => Date.iso8601('2015-10-26T00:00:00.0000000Z')})
      request = CompareDocumentRequest.new(remote_name1, request_compare_data, remote_folder, nil, nil, nil, remote_test_out + '/TestCompareDocumentOut.doc')

      result = @words_api.compare_document(request)
      assert_equal false, result.nil?
    end

    #
    # Test for document comparison.
    #
    def test_compare_two_doc_documents_online
      local_name1 = 'compareTestDoc1.doc'
      local_name2 = 'compareTestDoc2.doc'
      remote_name2 = 'TestCompareDocument2.doc'

      upload_file File.join(local_test_folder, local_folder + '/' + local_name2), remote_folder + '/' + remote_name2

      request_compare_data = CompareData.new({:Author => 'author', :ComparingWithDocument => remote_folder + '/' + remote_name2, :DateTime => Date.iso8601('2015-10-26T00:00:00.0000000Z')})
      request = CompareDocumentOnlineRequest.new(File.open(File.join(local_test_folder, local_folder + '/' + local_name1)), request_compare_data, File.open(File.join(local_test_folder, local_folder + '/' + local_name2)), nil, nil, remote_test_out + '/TestCompareDocumentOut.doc')

      result = @words_api.compare_document_online(request)
      assert_equal false, result.nil?
      assert_equal AsposeWordsCloud::DocumentResponse, result.model.class
    end

    #
    # Test for document comparison.
    #
    def test_compare_two_pdf_documents_online
      local_name1 = 'compareTestDoc1.pdf'
      local_name2 = 'compareTestDoc2.pdf'
      remote_name2 = 'TestCompareDocument2.pdf'

      upload_file File.join(local_test_folder, local_folder + '/' + local_name2), remote_folder + '/' + remote_name2

      request_compare_data = CompareData.new({:Author => 'author', :ComparingWithDocument => remote_folder + '/' + remote_name2, :DateTime => Date.iso8601('2015-10-26T00:00:00.0000000Z')})
      request = CompareDocumentOnlineRequest.new(File.open(File.join(local_test_folder, local_folder + '/' + local_name1)), request_compare_data, File.open(File.join(local_test_folder, local_folder + '/' + local_name2)), nil, nil, remote_test_out + '/TestCompareDocumentOut.doc')

      result = @words_api.compare_document_online(request)
      assert_equal false, result.nil?
      assert_equal AsposeWordsCloud::DocumentResponse, result.model.class
    end
  end
end
