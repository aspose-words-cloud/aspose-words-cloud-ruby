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
    # Test for deleting drawing object.
    #
    def test_delete_drawing_object
      remote_file_name = 'TestDeleteDrawingObject.docx'

      upload_file File.join(local_test_folder, local_file), remote_data_folder + '/' + remote_file_name

      request = DeleteDrawingObjectRequest.new(remote_file_name, '', 0, remote_data_folder, nil, nil, nil, nil, nil, nil)

      @words_api.delete_drawing_object(request)
    end

    #
    # Test for deleting drawing object without node path.
    #
    def test_delete_drawing_object_without_node_path
      remote_file_name = 'TestDeleteDrawingObjectWithoutNodePath.docx'

      upload_file File.join(local_test_folder, local_file), remote_data_folder + '/' + remote_file_name

      request = DeleteDrawingObjectWithoutNodePathRequest.new(remote_file_name, 0, remote_data_folder, nil, nil, nil, nil, nil, nil)

      @words_api.delete_drawing_object_without_node_path(request)
    end

  end
end
