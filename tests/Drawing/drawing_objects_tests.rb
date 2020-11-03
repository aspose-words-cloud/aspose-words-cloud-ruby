# ------------------------------------------------------------------------------------
# <copyright company="Aspose" file="DrawingObjects_tests.rb">
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
  # Example of how to get drawing objects.
  #
  class DrawingObjectsTests < BaseTestContext
    def remote_data_folder
      remote_test_folder + '/DocumentElements/DrawingObjectss'
    end

    def local_file
      'Common/test_multi_pages.docx'
    end

    def local_drawing_file
      'DocumentElements/DrawingObjects/sample_EmbeddedOLE.docx'
    end


    #
    # Test for getting drawing objects from document.
    #
    def test_get_document_drawing_objects
      remote_file_name = 'TestGetDocumentDrawingObjects.docx'

      upload_file File.join(local_test_folder, local_file), remote_data_folder + '/' + remote_file_name

      request = GetDocumentDrawingObjectsRequest.new(remote_file_name, 'sections/0', remote_data_folder, nil, nil, nil)

      result = @words_api.get_document_drawing_objects(request)
      assert_equal false, result.nil?
      assert_equal false, result.drawing_objects.nil?
      assert_equal false, result.drawing_objects.list.nil?
      assert_equal 1, result.drawing_objects.list.length
    end

    #
    # Test for getting drawing objects from document without node path.
    #
    def test_get_document_drawing_objects_without_node_path
      remote_file_name = 'TestGetDocumentDrawingObjectsWithoutNodePath.docx'

      upload_file File.join(local_test_folder, local_file), remote_data_folder + '/' + remote_file_name

      request = GetDocumentDrawingObjectsRequest.new(remote_file_name, nil, remote_data_folder, nil, nil, nil)

      result = @words_api.get_document_drawing_objects(request)
      assert_equal false, result.nil?
      assert_equal false, result.drawing_objects.nil?
      assert_equal false, result.drawing_objects.list.nil?
      assert_equal 1, result.drawing_objects.list.length
    end

    #
    # Test for getting drawing object by specified index.
    #
    def test_get_document_drawing_object_by_index
      remote_file_name = 'TestGetDocumentDrawingObjectByIndex.docx'

      upload_file File.join(local_test_folder, local_file), remote_data_folder + '/' + remote_file_name

      request = GetDocumentDrawingObjectByIndexRequest.new(remote_file_name, 0, 'sections/0', remote_data_folder, nil, nil, nil)

      result = @words_api.get_document_drawing_object_by_index(request)
      assert_equal false, result.nil?
      assert_equal false, result.drawing_object.nil?
      assert_equal 300.0, result.drawing_object.height
    end

    #
    # Test for getting drawing object by specified index without node path.
    #
    def test_get_document_drawing_object_by_index_without_node_path
      remote_file_name = 'TestGetDocumentDrawingObjectByIndexWithoutNodePath.docx'

      upload_file File.join(local_test_folder, local_file), remote_data_folder + '/' + remote_file_name

      request = GetDocumentDrawingObjectByIndexRequest.new(remote_file_name, 0, nil, remote_data_folder, nil, nil, nil)

      result = @words_api.get_document_drawing_object_by_index(request)
      assert_equal false, result.nil?
      assert_equal false, result.drawing_object.nil?
      assert_equal 300.0, result.drawing_object.height
    end

    #
    # Test for getting drawing object by specified index and format.
    #
    def test_render_drawing_object
      remote_file_name = 'TestGetDocumentDrawingObjectByIndexWithFormat.docx'

      upload_file File.join(local_test_folder, local_file), remote_data_folder + '/' + remote_file_name

      request = RenderDrawingObjectRequest.new(remote_file_name, 'png', 0, 'sections/0', remote_data_folder, nil, nil, nil, nil)

      result = @words_api.render_drawing_object(request)
      assert_equal false, result.nil?
    end

    #
    # Test for getting drawing object by specified index and format without node path.
    #
    def test_render_drawing_object_without_node_path
      remote_file_name = 'TestGetDocumentDrawingObjectByIndexWithFormatWithoutNodePath.docx'

      upload_file File.join(local_test_folder, local_file), remote_data_folder + '/' + remote_file_name

      request = RenderDrawingObjectRequest.new(remote_file_name, 'png', 0, nil, remote_data_folder, nil, nil, nil, nil)

      result = @words_api.render_drawing_object(request)
      assert_equal false, result.nil?
    end

    #
    # Test for reading drawing object's image data.
    #
    def test_get_document_drawing_object_image_data
      remote_file_name = 'TestGetDocumentDrawingObjectImageData.docx'

      upload_file File.join(local_test_folder, local_file), remote_data_folder + '/' + remote_file_name

      request = GetDocumentDrawingObjectImageDataRequest.new(remote_file_name, 0, 'sections/0', remote_data_folder, nil, nil, nil)

      result = @words_api.get_document_drawing_object_image_data(request)
      assert_equal false, result.nil?
    end

    #
    # Test for reading drawing object's image data without node path.
    #
    def test_get_document_drawing_object_image_data_without_node_path
      remote_file_name = 'TestGetDocumentDrawingObjectImageDataWithoutNodePath.docx'

      upload_file File.join(local_test_folder, local_file), remote_data_folder + '/' + remote_file_name

      request = GetDocumentDrawingObjectImageDataRequest.new(remote_file_name, 0, nil, remote_data_folder, nil, nil, nil)

      result = @words_api.get_document_drawing_object_image_data(request)
      assert_equal false, result.nil?
    end

    #
    # Test for getting drawing object OLE data.
    #
    def test_get_document_drawing_object_ole_data
      remote_file_name = 'TestGetDocumentDrawingObjectOleData.docx'

      upload_file File.join(local_test_folder, local_drawing_file), remote_data_folder + '/' + remote_file_name

      request = GetDocumentDrawingObjectOleDataRequest.new(remote_file_name, 0, 'sections/0', remote_data_folder, nil, nil, nil)

      result = @words_api.get_document_drawing_object_ole_data(request)
      assert_equal false, result.nil?
    end

    #
    # Test for getting drawing object OLE data without node path.
    #
    def test_get_document_drawing_object_ole_data_without_node_path
      remote_file_name = 'TestGetDocumentDrawingObjectOleDataWithoutNodePath.docx'

      upload_file File.join(local_test_folder, local_drawing_file), remote_data_folder + '/' + remote_file_name

      request = GetDocumentDrawingObjectOleDataRequest.new(remote_file_name, 0, nil, remote_data_folder, nil, nil, nil)

      result = @words_api.get_document_drawing_object_ole_data(request)
      assert_equal false, result.nil?
    end

    #
    # Test for adding drawing object.
    #
    def test_insert_drawing_object
      remote_file_name = 'TestInsetDrawingObject.docx'

      upload_file File.join(local_test_folder, local_file), remote_data_folder + '/' + remote_file_name

      request_drawing_object = DrawingObjectInsert.new({:Height => 0.0, :Left => 0.0, :Top => 0.0, :Width => 0.0, :RelativeHorizontalPosition => 'Margin', :RelativeVerticalPosition => 'Margin', :WrapType => 'Inline'})
      request = InsertDrawingObjectRequest.new(remote_file_name, request_drawing_object, File.open(File.join(local_test_folder, 'Common/aspose-cloud.png')), '', remote_data_folder, nil, nil, nil, nil, nil, nil)

      result = @words_api.insert_drawing_object(request)
      assert_equal false, result.nil?
      assert_equal false, result.drawing_object.nil?
      assert_equal '0.3.7.1', result.drawing_object.node_id
    end

    #
    # Test for adding drawing object without node path.
    #
    def test_insert_drawing_object_without_node_path
      remote_file_name = 'TestInsetDrawingObjectWithoutNodePath.docx'

      upload_file File.join(local_test_folder, local_file), remote_data_folder + '/' + remote_file_name

      request_drawing_object = DrawingObjectInsert.new({:Height => 0.0, :Left => 0.0, :Top => 0.0, :Width => 0.0, :RelativeHorizontalPosition => 'Margin', :RelativeVerticalPosition => 'Margin', :WrapType => 'Inline'})
      request = InsertDrawingObjectRequest.new(remote_file_name, request_drawing_object, File.open(File.join(local_test_folder, 'Common/aspose-cloud.png')), nil, remote_data_folder, nil, nil, nil, nil, nil, nil)

      result = @words_api.insert_drawing_object(request)
      assert_equal false, result.nil?
      assert_equal false, result.drawing_object.nil?
      assert_equal '0.3.7.1', result.drawing_object.node_id
    end

    #
    # Test for deleting drawing object.
    #
    def test_delete_drawing_object
      remote_file_name = 'TestDeleteDrawingObject.docx'

      upload_file File.join(local_test_folder, local_file), remote_data_folder + '/' + remote_file_name

      request = DeleteDrawingObjectRequest.new(remote_file_name, 0, '', remote_data_folder, nil, nil, nil, nil, nil, nil)

      @words_api.delete_drawing_object(request)
    end

    #
    # Test for deleting drawing object without node path.
    #
    def test_delete_drawing_object_without_node_path
      remote_file_name = 'TestDeleteDrawingObjectWithoutNodePath.docx'

      upload_file File.join(local_test_folder, local_file), remote_data_folder + '/' + remote_file_name

      request = DeleteDrawingObjectRequest.new(remote_file_name, 0, nil, remote_data_folder, nil, nil, nil, nil, nil, nil)

      @words_api.delete_drawing_object(request)
    end

    #
    # Test for updating drawing object.
    #
    def test_update_drawing_object
      remote_file_name = 'TestUpdateDrawingObject.docx'

      upload_file File.join(local_test_folder, local_file), remote_data_folder + '/' + remote_file_name

      request_drawing_object = DrawingObjectUpdate.new({:Left => 1.0})
      request = UpdateDrawingObjectRequest.new(remote_file_name, request_drawing_object, File.open(File.join(local_test_folder, 'Common/aspose-cloud.png')), 0, '', remote_data_folder, nil, nil, nil, nil, nil, nil)

      result = @words_api.update_drawing_object(request)
      assert_equal false, result.nil?
      assert_equal false, result.drawing_object.nil?
      assert_equal 1.0, result.drawing_object.left
    end

    #
    # Test for updating drawing object without node path.
    #
    def test_update_drawing_object_without_node_path
      remote_file_name = 'TestUpdateDrawingObjectWithoutNodePath.docx'

      upload_file File.join(local_test_folder, local_file), remote_data_folder + '/' + remote_file_name

      request_drawing_object = DrawingObjectUpdate.new({:Left => 1.0})
      request = UpdateDrawingObjectRequest.new(remote_file_name, request_drawing_object, File.open(File.join(local_test_folder, 'Common/aspose-cloud.png')), 0, nil, remote_data_folder, nil, nil, nil, nil, nil, nil)

      result = @words_api.update_drawing_object(request)
      assert_equal false, result.nil?
      assert_equal false, result.drawing_object.nil?
      assert_equal 1.0, result.drawing_object.left
    end
  end
end
