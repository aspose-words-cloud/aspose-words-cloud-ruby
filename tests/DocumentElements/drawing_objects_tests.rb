#
# --------------------------------------------------------------------------------------------------------------------
# <copyright company="Aspose" file="drawing_objects_tests.rb">
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
  class DrawingObjectsTests < BaseTestContext
    def test_folder
      'DocumentElements/DrawingObjects'
    end

    #
    # Test for getting drawing object
    #
    def test_get_document_drawing_object_by_index
      filename = 'test_multi_pages.docx'
      remote_name = 'TestGetDocumentDrawingObjectByIndex.docx'
      index = 0

      st_request = PutCreateRequest.new remote_test_folder + test_folder + '/' + remote_name, File.open(local_common_folder + filename, "r").read
      @storage_api.put_create st_request

      request = GetDocumentDrawingObjectByIndexRequest.new remote_name, index, remote_test_folder + test_folder, :node_path => 'sections/0'
      result = @words_api.get_document_drawing_object_by_index request
      assert_equal 200, result.code
    end

    #
    # Test for getting drawing object image data
    #
    def test_get_document_drawing_object_image_data
      filename = 'test_multi_pages.docx'
      remote_name = 'TestGetDocumentDrawingObjectImageData.docx'
      index = 0

      st_request = PutCreateRequest.new remote_test_folder + test_folder + '/' + remote_name, File.open(local_common_folder + filename, "r").read
      @storage_api.put_create st_request

      request = GetDocumentDrawingObjectImageDataRequest.new remote_name, index, remote_test_folder + test_folder, :node_path => 'sections/0'
      result = @words_api.get_document_drawing_object_image_data request
      assert result.length > 0, 'Error occurred while getting image data'
    end

    #
    # Test for getting drawing object ole data
    #
    def test_get_document_drawing_object_ole_data
      filename = 'sample_EmbeddedOLE.docx'
      remote_name = 'TestGetDocumentDrawingObjectOleData.docx'
      index = 0

      st_request = PutCreateRequest.new remote_test_folder + test_folder + '/' + remote_name, File.open(local_test_folder + test_folder + '/' + filename, "r").read       
      @storage_api.put_create st_request

      request = GetDocumentDrawingObjectOleDataRequest.new remote_name, index, remote_test_folder + test_folder, :node_path => 'sections/0'
      result = @words_api.get_document_drawing_object_ole_data request
      assert result.length > 0, 'Error occurred while getting image data'
    end

    #
    # Test for getting drawin objects
    #
    def test_get_document_drawing_objects
      filename = 'test_multi_pages.docx'
      remote_name = 'TestGetDocumentDrawingObjects.docx'

      st_request = PutCreateRequest.new remote_test_folder + test_folder + '/' + remote_name, File.open(local_common_folder + filename, "r").read
      @storage_api.put_create st_request

      request = GetDocumentDrawingObjectsRequest.new remote_name, remote_test_folder + test_folder, :node_path => 'sections/0'
      result = @words_api.get_document_drawing_objects request
      assert_equal 200, result.code
    end

    #
    # Test for updating drawing object
    #
    def test_post_drawing_object
      filename = 'test_multi_pages.docx'
      remote_name = 'TestPostDrawingObject.docx'
      data = File.open(local_common_folder + 'aspose-cloud.png')
      index = 0

      st_request = PutCreateRequest.new remote_test_folder + test_folder + '/' + remote_name, File.open(local_common_folder + filename, "r").read
      @storage_api.put_create st_request

      request = PostDrawingObjectRequest.new remote_name, '{"Left": 0}', data, index, remote_test_folder + test_folder
      result = @words_api.post_drawing_object request
      assert_equal 200, result.code
    end

    #
    # Test for adding drawing object
    #
    def test_put_drawing_object
      filename = 'test_multi_pages.docx'
      remote_name = 'TestPutDrawingObject.docx'
      data = File.open(local_common_folder + 'aspose-cloud.png')

      st_request = PutCreateRequest.new remote_test_folder + test_folder + '/' + remote_name, File.open(local_common_folder + filename, "r").read
      @storage_api.put_create st_request

      request = PutDrawingObjectRequest.new remote_name, '{"Left": 0}', data, remote_test_folder + test_folder
      result = @words_api.put_drawing_object request
      assert_equal 200, result.code
    end

    #
    # Test for rendering drawing object
    #
    def test_render_drawing_object
      filename = 'test_multi_pages.docx'
      remote_name = 'TestRenderDrawingObject.docx'
      index = 0
      format = 'png'

      st_request = PutCreateRequest.new remote_test_folder + test_folder + '/' + remote_name, File.open(local_common_folder + filename, "r").read
      @storage_api.put_create st_request

      request = RenderDrawingObjectRequest.new remote_name, format, index, remote_test_folder + test_folder, :node_path => 'sections/0'
      result = @words_api.render_drawing_object request
      assert result.length > 0, 'Error occurred while drawing object rendering'
    end

    #
    # Test for removing drawing object from document
    #
    def test_delete_drawing_object
      filename = 'test_multi_pages.docx'
      remote_name = 'TestDeleteDrawingObject.docx'
      index = 0

      st_request = PutCreateRequest.new remote_test_folder + test_folder + '/' + remote_name, File.open(local_common_folder + filename, "r").read
      @storage_api.put_create st_request

      request = DeleteDrawingObjectRequest.new remote_name, index, remote_test_folder + test_folder
      result = @words_api.delete_drawing_object request
      assert_equal 200, result.code
    end
  end
end
