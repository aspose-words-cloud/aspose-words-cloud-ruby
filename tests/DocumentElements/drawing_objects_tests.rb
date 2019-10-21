#
# --------------------------------------------------------------------------------------------------------------------
# <copyright company="Aspose" file="drawing_objects_tests.rb">
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

      upload_file File.join(local_common_folder, filename), File.join(remote_test_folder, test_folder, remote_name)

      request = GetDocumentDrawingObjectByIndexRequest.new remote_name , 'sections/0' , index, remote_test_folder + test_folder
      result = @words_api.get_document_drawing_object_by_index request
      assert_equal FALSE, result.nil?
    end

    #
    # Test for getting drawing object without node path
    #
    def test_get_document_drawing_object_by_index_without_node_path
      filename = 'test_multi_pages.docx'
      remote_name = 'TestGetDocumentDrawingObjectByIndexWithoutNodePath.docx'
      index = 0

      upload_file File.join(local_common_folder, filename), File.join(remote_test_folder, test_folder, remote_name)

      request = GetDocumentDrawingObjectByIndexWithoutNodePathRequest.new remote_name, index, remote_test_folder + test_folder
      result = @words_api.get_document_drawing_object_by_index_without_node_path request
      assert_equal FALSE, result.nil?
    end

    #
    # Test for getting drawing object image data
    #
    def test_get_document_drawing_object_image_data
      filename = 'test_multi_pages.docx'
      remote_name = 'TestGetDocumentDrawingObjectImageData.docx'
      index = 0

      upload_file File.join(local_common_folder, filename), File.join(remote_test_folder, test_folder, remote_name)

      request = GetDocumentDrawingObjectImageDataRequest.new remote_name, 'sections/0', index, remote_test_folder + test_folder
      result = @words_api.get_document_drawing_object_image_data request
      assert result.length > 0, 'Error occurred while getting image data'
    end


    #
    # Test for getting drawing object image data without node path
    #
    def test_get_document_drawing_object_image_data_without_node_path
      filename = 'test_multi_pages.docx'
      remote_name = 'TestGetDocumentDrawingObjectImageDataWithoutNodePath.docx'
      index = 0

      upload_file File.join(local_common_folder, filename), File.join(remote_test_folder, test_folder, remote_name)

      request = GetDocumentDrawingObjectImageDataWithoutNodePathRequest.new remote_name, index, remote_test_folder + test_folder
      result = @words_api.get_document_drawing_object_image_data_without_node_path request
      assert result.length > 0, 'Error occurred while getting image data'
    end

    #
    # Test for getting drawing object ole data
    #
    def test_get_document_drawing_object_ole_data
      filename = 'sample_EmbeddedOLE.docx'
      remote_name = 'TestGetDocumentDrawingObjectOleData.docx'
      index = 0

      upload_file File.join(local_test_folder, test_folder, filename), File.join(remote_test_folder, test_folder, remote_name)

      request = GetDocumentDrawingObjectOleDataRequest.new remote_name, 'sections/0', index, remote_test_folder + test_folder
      result = @words_api.get_document_drawing_object_ole_data request
      assert result.length > 0, 'Error occurred while getting image data'
    end

    #
    # Test for getting drawing object ole data without node path
    #
    def test_get_document_drawing_object_ole_data_without_node_path
      filename = 'sample_EmbeddedOLE.docx'
      remote_name = 'TestGetDocumentDrawingObjectOleDataWithoutNodePath.docx'
      index = 0

      upload_file File.join(local_test_folder, test_folder, filename), File.join(remote_test_folder, test_folder, remote_name)

      request = GetDocumentDrawingObjectOleDataWithoutNodePathRequest.new remote_name, index, remote_test_folder + test_folder
      result = @words_api.get_document_drawing_object_ole_data_without_node_path request
      assert result.length > 0, 'Error occurred while getting image data'
    end

    #
    # Test for getting drawin objects
    #
    def test_get_document_drawing_objects
      filename = 'test_multi_pages.docx'
      remote_name = 'TestGetDocumentDrawingObjects.docx'

      upload_file File.join(local_common_folder, filename), File.join(remote_test_folder, test_folder, remote_name)

      request = GetDocumentDrawingObjectsRequest.new remote_name, 'sections/0', remote_test_folder + test_folder
      result = @words_api.get_document_drawing_objects request
      assert_equal FALSE, result.nil?
    end

    #
    # Test for getting drawin objects without node path
    #
    def test_get_document_drawing_objects_without_node_path
      filename = 'test_multi_pages.docx'
      remote_name = 'TestGetDocumentDrawingObjectsWithoutNodePath.docx'

      upload_file File.join(local_common_folder, filename), File.join(remote_test_folder, test_folder, remote_name)

      request = GetDocumentDrawingObjectsWithoutNodePathRequest.new remote_name, remote_test_folder + test_folder
      result = @words_api.get_document_drawing_objects_without_node_path request
      assert_equal FALSE, result.nil?
    end

    #
    # Test for updating drawing object
    #
    def test_update_drawing_object
      filename = 'test_multi_pages.docx'
      remote_name = 'TestUpdateDrawingObject.docx'
      data = File.open(local_common_folder + 'aspose-cloud.png')
      index = 0

      upload_file File.join(local_common_folder, filename), File.join(remote_test_folder, test_folder, remote_name)

      request = UpdateDrawingObjectRequest.new remote_name, '{"Left": 0}', data, '', index, remote_test_folder + test_folder
      result = @words_api.update_drawing_object request
      assert_equal FALSE, result.nil?
    end

    #
    # Test for updating drawing object withou node path
    #
    def test_update_drawing_object_without_node_path
      filename = 'test_multi_pages.docx'
      remote_name = 'TestUpdateDrawingObjectWithoutNodePath.docx'
      data = File.open(local_common_folder + 'aspose-cloud.png')
      index = 0

      upload_file File.join(local_common_folder, filename), File.join(remote_test_folder, test_folder, remote_name)

      request = UpdateDrawingObjectWithoutNodePathRequest.new remote_name, '{"Left": 0}', data, index, remote_test_folder + test_folder
      result = @words_api.update_drawing_object_without_node_path request
      assert_equal FALSE, result.nil?
    end

    #
    # Test for adding drawing object
    #
    def test_insert_drawing_object
      filename = 'test_multi_pages.docx'
      remote_name = 'TestInsertDrawingObject.docx'
      data = File.open(local_common_folder + 'aspose-cloud.png')

      upload_file File.join(local_common_folder, filename), File.join(remote_test_folder, test_folder, remote_name)

      request = InsertDrawingObjectRequest.new remote_name, '{"Left": 0}', data, '',  remote_test_folder + test_folder
      result = @words_api.insert_drawing_object request
      assert_equal FALSE, result.nil?
    end

    #
    # Test for adding drawing object without node path
    #
    def test_insert_drawing_object_without_node_path
      filename = 'test_multi_pages.docx'
      remote_name = 'TestInsertDrawingObjectWithoutNodePath.docx'
      data = File.open(local_common_folder + 'aspose-cloud.png')

      upload_file File.join(local_common_folder, filename), File.join(remote_test_folder, test_folder, remote_name)

      request = InsertDrawingObjectWithoutNodePathRequest.new remote_name, '{"Left": 0}', data,  remote_test_folder + test_folder
      result = @words_api.insert_drawing_object_without_node_path request
      assert_equal FALSE, result.nil?
    end

    #
    # Test for rendering drawing object
    #
    def test_render_drawing_object
      filename = 'test_multi_pages.docx'
      remote_name = 'TestRenderDrawingObject.docx'
      index = 0
      format = 'png'

      upload_file File.join(local_common_folder, filename), File.join(remote_test_folder, test_folder, remote_name)

      request = RenderDrawingObjectRequest.new remote_name, format, 'sections/0', index, remote_test_folder + test_folder
      result = @words_api.render_drawing_object request
      assert result.length > 0, 'Error occurred while drawing object rendering'
    end

    #
    # Test for rendering drawing object without node path
    #
    def test_render_drawing_object_without_node_path
      filename = 'test_multi_pages.docx'
      remote_name = 'TestRenderDrawingObjectWithoutNodePath.docx'
      index = 0
      format = 'png'

      upload_file File.join(local_common_folder, filename), File.join(remote_test_folder, test_folder, remote_name)

      request = RenderDrawingObjectWithoutNodePathRequest.new remote_name, format, index, remote_test_folder + test_folder
      result = @words_api.render_drawing_object_without_node_path request
      assert result.length > 0, 'Error occurred while drawing object rendering'
    end

    #
    # Test for removing drawing object from document
    #
    def test_delete_drawing_object
      filename = 'test_multi_pages.docx'
      remote_name = 'TestDeleteDrawingObject.docx'
      index = 0

      upload_file File.join(local_common_folder, filename), File.join(remote_test_folder, test_folder, remote_name)

      request = DeleteDrawingObjectRequest.new remote_name,'', index, remote_test_folder + test_folder
      result = @words_api.delete_drawing_object request
    end

    #
    # Test for removing drawing object from document without node path
    #
    def test_delete_drawing_object_without_node_path
      filename = 'test_multi_pages.docx'
      remote_name = 'TestDeleteDrawingObjectWithoutNodePath.docx'
      index = 0

      upload_file File.join(local_common_folder, filename), File.join(remote_test_folder, test_folder, remote_name)

      request = DeleteDrawingObjectWithoutNodePathRequest.new remote_name, index, remote_test_folder + test_folder
      result = @words_api.delete_drawing_object_without_node_path request
    end
  end
end
