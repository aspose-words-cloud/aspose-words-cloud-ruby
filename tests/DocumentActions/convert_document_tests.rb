#
# --------------------------------------------------------------------------------------------------------------------
# <copyright company="Aspose" file="convert_document_tests.rb">
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
  class ConvertDocumentTests < BaseTestContext
    def test_folder
      'DocumentActions/ConvertDocument'
    end

    #
    # Test for saving document with specified format
    #
    def test_post_document_save_as
      filename = 'test_multi_pages.docx'
      remote_name = 'TestPostDocumentSaveAs.docx'
      dest_name = remote_test_out + 'TestPostDocumentSaveAs.pdf'
      save_options = SaveOptionsData.new({:SaveFormat => 'pdf', :FileName => dest_name})

      st_request = PutCreateRequest.new remote_test_folder + test_folder + '/' + remote_name, File.open(local_common_folder + filename, "r").read
      @storage_api.put_create st_request

      request = PostDocumentSaveAsRequest.new remote_name, save_options, remote_test_folder + test_folder
      result = @words_api.post_document_save_as request
      assert_equal 200, result.code
    end

    #
    # Test for saving document with specified format
    #
    def test_post_save_document_as_from_pdf_to_doc
      filename = '45.pdf'
      remote_name = 'TestPostDocumentSaveAsFromPdfToDoc.docx'
      dest_name = remote_test_out + 'TestPostDocumentSaveAs.docx'
      save_options = SaveOptionsData.new({:SaveFormat => 'docx', :FileName => dest_name})

      st_request = PutCreateRequest.new remote_test_folder + test_folder + '/' + remote_name, File.open(local_test_folder + test_folder + '/' + filename, "r").read
      @storage_api.put_create st_request

      request = PostDocumentSaveAsRequest.new remote_name, save_options, remote_test_folder + test_folder, :dest_file_name => dest_name
      result = @words_api.post_document_save_as request
      assert_equal 200, result.code
    end

    #
    # Test for document conversion without storage
    #
    def test_put_convert_document
      format = 'pdf'
      filename = 'test_multi_pages.docx'
      request = PutConvertDocumentRequest.new(File.open(local_common_folder  + filename, "r"), format)
      result = @words_api.put_convert_document request
      assert result.length > 0, 'Error occurred while converting document'
    end

    #
    # Test for saving document with specified format
    #
    def test_put_document_save_as_tiff
      filename = '45.pdf'
      remote_name = 'TestPutDocumentSaveAsTiff.docx'
      dest_name = remote_test_out + 'TestPostDocumentSaveAsTiff.tiff'
      save_options = TiffSaveOptionsData.new({:SaveFormat => 'tiff', :FileName => dest_name})

      st_request = PutCreateRequest.new remote_test_folder + test_folder + '/' + remote_name, File.open(local_test_folder + test_folder + '/' + filename, "r").read
      @storage_api.put_create st_request

      request = PutDocumentSaveAsTiffRequest.new remote_name, save_options, remote_test_folder + test_folder, :dest_file_name => dest_name
      result = @words_api.put_document_save_as_tiff request
      assert_equal 200, result.code
    end

    #
    # Test for saving document with specified format
    #
    def test_get_document_with_format
      filename = 'test_multi_pages.docx'
      remote_name = 'TestGetDocumentWithFormat.docx'
      format = 'text'

      st_request = PutCreateRequest.new remote_test_folder + test_folder + '/' + remote_name, File.open(local_common_folder + filename, "r").read
      @storage_api.put_create st_request

      request = GetDocumentWithFormatRequest.new remote_name, format, remote_test_folder + test_folder
      result = @words_api.get_document_with_format request
      assert result.length > 0, 'Error occurred while converting document'
    end

    #
    # Test for saving document with specified format and out path
    #
    def test_get_document_with_format_and_out_path
      filename = 'test_multi_pages.docx'
      remote_name = 'TestGetDocumentWithFormat.docx'
      format = 'text'
      out_path = 'Out/TestGetDocumentWithFormat.txt'

      st_request = PutCreateRequest.new remote_test_folder + test_folder + '/' + remote_name, File.open(local_common_folder + filename, "r").read
      @storage_api.put_create st_request

      request = GetDocumentWithFormatRequest.new remote_name, format, remote_test_folder + test_folder, :out_path => out_path
      result = @words_api.get_document_with_format request
      assert result.length > 0, 'Error occurred while converting document'
    end
  end
end