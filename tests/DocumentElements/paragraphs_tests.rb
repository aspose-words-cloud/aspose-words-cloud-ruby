#
# --------------------------------------------------------------------------------------------------------------------
# <copyright company="Aspose" file="paragraphs_tests.rb">
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
  class ParagraphsTests < BaseTestContext
    def test_folder
      'DocumentElements/Paragraphs'
    end

    #
    # Test for removing paragraph
    #
    def test_delete_paragraph
      filename = 'test_doc.docx'
      remote_name = 'TestDeleteParagraph.docx'
      index = 0

      st_request = PutCreateRequest.new remote_test_folder + test_folder + '/' + remote_name, File.open(local_common_folder + filename, "r").read
      @storage_api.put_create st_request

      request = DeleteParagraphRequest.new remote_name, index, remote_test_folder + test_folder
      result = @words_api.delete_paragraph request
      assert_equal 200, result.code
    end

      #
      # Test for getting paragraph
      #
    def test_get_document_paragraph
       filename = 'test_multi_pages.docx'
       remote_name = 'TestGetDocumentParagraph.docx'
       index = 0

       st_request = PutCreateRequest.new remote_test_folder + test_folder + '/' + remote_name, File.open(local_common_folder + filename, "r").read
      @storage_api.put_create st_request

       request = GetDocumentParagraphRequest.new remote_name, index, remote_test_folder + test_folder
       result = @words_api.get_document_paragraph request
       assert_equal 200, result.code
    end

    #
    # Test for getting paragrah run
    #
    def test_get_document_paragraph_run
      filename = 'test_multi_pages.docx'
      remote_name = 'TestGetDocumentParagraphRun.docx'
      index = 0

      st_request = PutCreateRequest.new remote_test_folder + test_folder + '/' + remote_name, File.open(local_common_folder + filename, "r").read
      @storage_api.put_create st_request

      request = GetDocumentParagraphRunRequest.new remote_name, 'paragraphs/0', index, remote_test_folder + test_folder
      result = @words_api.get_document_paragraph_run request
      assert_equal 200, result.code
    end

    #
    # Test for getting paragraph font
    #
    def test_get_document_paragraph_run_font
      filename = 'test_multi_pages.docx'
      remote_name = 'TestGetDocumentParagraphRunFont.docx'
      index = 0

      st_request = PutCreateRequest.new remote_test_folder + test_folder + '/' + remote_name, File.open(local_common_folder + filename, "r").read
      @storage_api.put_create st_request

      request = GetDocumentParagraphRunFontRequest.new remote_name, 'paragraphs/0', index, remote_test_folder + test_folder
      result = @words_api.get_document_paragraph_run_font request
      assert_equal 200, result.code
    end

    #
    # Test for getting paragrah run
    #
    def test_get_document_paragraph_runs
      filename = 'test_multi_pages.docx'
      remote_name = 'TestGetDocumentParagraphRuns.docx'

      st_request = PutCreateRequest.new remote_test_folder + test_folder + '/' + remote_name, File.open(local_common_folder + filename, "r").read
      @storage_api.put_create st_request

      request = GetDocumentParagraphRunsRequest.new remote_name, 'sections/0/paragraphs/0', remote_test_folder + test_folder
      result = @words_api.get_document_paragraph_runs request
      assert_equal 200, result.code
    end

    #
    # Test for getting paragraphs
    #
    def test_get_document_paragraphs
      filename = 'test_multi_pages.docx'
      remote_name = 'TestGetDocumentParagraphs.docx'

      st_request = PutCreateRequest.new remote_test_folder + test_folder + '/' + remote_name, File.open(local_common_folder + filename, "r").read
      @storage_api.put_create st_request

      request = GetDocumentParagraphsRequest.new remote_name, remote_test_folder + test_folder, :node_path => 'sections/0'
      result = @words_api.get_document_paragraphs request
      assert_equal 200, result.code
    end

    #
    # Test for updating paragraph font
    #
    def test_post_document_paragraph_run_font
      filename = 'test_multi_pages.docx'
      remote_name = 'TestPostDocumentParagraphRunFont.docx'
      index = 0
      dest_name = remote_test_out + remote_name
      font_dto = Font.new({:Bold => true})

      st_request = PutCreateRequest.new remote_test_folder + test_folder + '/' + remote_name, File.open(local_common_folder + filename, "r").read
      @storage_api.put_create st_request

      request = PostDocumentParagraphRunFontRequest.new remote_name, font_dto, 'paragraphs/0', index, remote_test_folder + test_folder, :dest_file_name => dest_name
      result = @words_api.post_document_paragraph_run_font request
      assert_equal 200, result.code
    end

    #
    # Test for inserting paragraph
    #
    def test_put_paragraph
      filename = 'test_multi_pages.docx'
      remote_name = 'TestPutParagraph.docx'
      paragraph = ParagraphInsert.new({:Text => 'This is a new paragraph for your document'})

      st_request = PutCreateRequest.new remote_test_folder + test_folder + '/' + remote_name, File.open(local_common_folder + filename, "r").read
      @storage_api.put_create st_request

      request = PutParagraphRequest.new remote_name, paragraph, remote_test_folder + test_folder, nil,
                                        nil,nil,nil,nil,
                                        nil, 'sections/0'
      result = @words_api.put_paragraph request
      assert_equal 200, result.code
    end

    #
    # Test for paragraph rendering
    #
    def test_render_paragraph
      filename = 'test_multi_pages.docx'
      remote_name = 'TestRenderParagraph.docx'
      index = 0
      format = 'png'

      st_request = PutCreateRequest.new remote_test_folder + test_folder + '/' + remote_name, File.open(local_common_folder + filename, "r").read
      @storage_api.put_create st_request

      request = RenderParagraphRequest.new remote_name, format, index, remote_test_folder + test_folder
      result = @words_api.render_paragraph request
      assert result.length > 0, 'Error occurred while rendering'
    end

    #
    # Test for getting paragraph format
    #
    def test_get_paragraph_format
      filename = 'test_multi_pages.docx'
      remote_name = 'TestGetParagraphFormat.docx'
      index = 0

      st_request = PutCreateRequest.new remote_test_folder + test_folder + '/' + remote_name, File.open(local_common_folder + filename, "r").read
      @storage_api.put_create st_request

      request = GetDocumentParagraphFormatRequest.new remote_name, index, remote_test_folder + test_folder
      result = @words_api.get_document_paragraph_format request
      assert_equal 200, result.code
    end

    #
    # Test for updating paragraph format
    #
    def test_update_paragraph_format
      filename = 'test_multi_pages.docx'
      remote_name = 'TestUpdateParagraphFormat.docx'
      index = 0
      body = ParagraphFormat.new({:Alignment => 'Right'})

      st_request = PutCreateRequest.new remote_test_folder + test_folder + '/' + remote_name, File.open(local_common_folder + filename, "r").read
      @storage_api.put_create st_request

      request = PostDocumentParagraphFormatRequest.new remote_name, index, body, remote_test_folder + test_folder
      result = @words_api.post_document_paragraph_format request
      assert_equal 200, result.code
    end
  end
end
