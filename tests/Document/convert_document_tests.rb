# ------------------------------------------------------------------------------------
# <copyright company="Aspose" file="ConvertDocument_tests.rb">
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
  # Example of how to convert document to one of the available formats.
  #
  class ConvertDocumentTests < BaseTestContext
    def remote_folder
      remote_test_folder + '/DocumentActions/ConvertDocument'
    end

    def local_folder
      'DocumentActions/ConvertDocument'
    end


    #
    # Test for converting document to one of the available formats.
    #
    def test_save_as
      local_name = 'test_multi_pages.docx'
      remote_name = 'TestSaveAs.docx'

      upload_file File.join(local_test_folder, 'Common/' + local_name), remote_folder + '/' + remote_name

      request_save_options_data = SaveOptionsData.new({:SaveFormat => 'pdf', :FileName => remote_test_out + '/TestSaveAs.pdf'})
      request = SaveAsRequest.new(remote_name, request_save_options_data, remote_folder, nil, nil, nil, nil)

      result = @words_api.save_as(request)
      assert_equal false, result.nil?
    end

    #
    # Test for converting document to one of the available formats.
    #
    def test_save_as_docx
      local_name = '45.pdf'
      remote_name = 'TestSaveAsFromPdfToDoc.pdf'

      upload_file File.join(local_test_folder, local_folder + '/' + local_name), remote_folder + '/' + remote_name

      request_save_options_data = SaveOptionsData.new({:SaveFormat => 'docx', :FileName => remote_test_out + '/TestSaveAsFromPdfToDoc.docx'})
      request = SaveAsRequest.new(remote_name, request_save_options_data, remote_folder, nil, nil, nil, nil)

      result = @words_api.save_as(request)
      assert_equal false, result.nil?
    end

    #
    # Test for converting document to one of the available formats.
    #
    def test_save_as_tiff
      local_name = 'test_multi_pages.docx'
      remote_name = 'TestSaveAsTiff.pdf'

      upload_file File.join(local_test_folder, 'Common/' + local_name), remote_folder + '/' + remote_name

      request_save_options = TiffSaveOptionsData.new({:SaveFormat => 'tiff', :FileName => remote_test_out + '/abc.tiff'})
      request = SaveAsTiffRequest.new(remote_name, request_save_options, remote_folder, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil)

      result = @words_api.save_as_tiff(request)
      assert_equal false, result.nil?
    end

    #
    # A test for ConvertDocument.
    #
    def test_convert_document
      request = ConvertDocumentRequest.new(File.open(File.join(local_test_folder, local_folder + '/test_uploadfile.docx')), 'pdf', nil, nil, nil, nil)

      result = @words_api.convert_document(request)
      assert_equal false, result.nil?
    end
  end
end
