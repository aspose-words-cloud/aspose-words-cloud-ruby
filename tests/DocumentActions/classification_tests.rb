#
# --------------------------------------------------------------------------------------------------------------------
# <copyright company="Aspose" file="classification_tests.rb">
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
  class ClassificationTests < BaseTestContext
    def test_folder
      'Common'
    end
    
    #
    # Test for raw text classification.
    #
    def test_classify
      request = ClassifyRequest.new "Try text classification", "3"
      result = @words_api.classify request
      
      assert_equal false, result.nil?
    end
	
    #
    # Test for document classification
    #
    def test_classify_document
      filename = 'test_multi_pages.docx'
      remote_name = 'Source.docx'
      remote_path = remote_test_folder + '/' + test_folder + '/' + remote_name
      upload_file File.join(local_common_folder, filename), remote_path
	  
	    request = ClassifyDocumentRequest.new remote_name, remote_test_folder + '/' + test_folder
      result = @words_api.classify_document request
      assert_equal false, result.nil?
    end
	
    #
    # Test for document classification with taxonomy "documents"
    #
    def test_classify_taxonomy_documents
      filename = 'test_multi_pages.docx'
      remote_name = 'Source.docx'
      remote_path = remote_test_folder + '/' + test_folder + '/' + remote_name
      taxonomy = 'documents'
      upload_file File.join(local_common_folder, filename), remote_path
	    
      request = ClassifyDocumentRequest.new remote_name, remote_test_folder + '/' + test_folder, taxonomy: taxonomy
      
	    result = @words_api.classify_document request
      assert_equal false, result.nil?
    end
  end
end