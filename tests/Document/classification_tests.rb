# ------------------------------------------------------------------------------------
# <copyright company="Aspose" file="Classification_tests.rb">
#   Copyright (c) 2020 Aspose.Words for Cloud
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
  # Example of how to classify text.
  #
  class ClassificationTests < BaseTestContext
    def remote_data_folder
      remote_test_folder + '/Common'
    end

    def local_file
      'Common/test_multi_pages.docx'
    end


    #
    # Test for raw text classification.
    #
    def test_classify
      request = ClassifyRequest.new('Try text classification', '3')

      result = @words_api.classify(request)
      assert_equal false, result.nil?
      assert_equal 'Science', result.best_class_name
      assert_equal false, result.best_results.nil?
      assert_equal 3, result.best_results.length
    end

    #
    # Test for document classification.
    #
    def test_classify_document
      remote_file_name = 'TestClassifyDocument.docx'

      upload_file File.join(local_test_folder, local_file), remote_data_folder + '/' + remote_file_name

      request = ClassifyDocumentRequest.new(remote_file_name, remote_data_folder, nil, nil, nil, '3', nil)

      result = @words_api.classify_document(request)
      assert_equal false, result.nil?
      assert_equal 'Hobbies_&_Interests', result.best_class_name
      assert_equal false, result.best_results.nil?
      assert_equal 3, result.best_results.length
    end
  end
end
