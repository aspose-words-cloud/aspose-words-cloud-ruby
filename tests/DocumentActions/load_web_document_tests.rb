#
# --------------------------------------------------------------------------------------------------------------------
# <copyright company="Aspose" file="load_web_document_tests.rb">
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
module RubySDK
  require_relative '../base_test_context'
  require_relative '../../lib/models/requests/PostLoadWebDocumentRequest'
  class LoadWebDocumentTests < BaseTestContext
    def test_folder
      'DocumentActions/LoadWebDocument'
    end

    #
    # Test for loading web document
    #
    def test_post_load_web_document
      save_options = SaveOptionsData.new(
          {
              :FileName => 'google.doc',
              :SaveFormat => 'doc',
              :ColorMode => "1",
              :DmlEffectsRenderingMode => "1",
              :DmlRenderingMode => "1",
              :UpdateStdContents => false,
              :ZipOutput => false
          })
      body = LoadWebDocumentData.new({ :LoadingDocumentUrl => "http://google.com", :SaveOptions => save_options })
      request = PostLoadWebDocumentRequest.new body
      result = @words_api.post_load_web_document request
      assert_equal 200, result.code
    end
  end
end
