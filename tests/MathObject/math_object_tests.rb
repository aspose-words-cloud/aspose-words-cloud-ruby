# ------------------------------------------------------------------------------------
# <copyright company="Aspose" file="MathObject_tests.rb">
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
  # Example of how to work with MathObjects.
  #
  class MathObjectTests < BaseTestContext
    def remote_data_folder
      remote_test_folder + '/DocumentElements/MathObjects'
    end

    def local_file
      'DocumentElements/MathObjects/MathObjects.docx'
    end


    #
    # Test for getting mathObjects.
    #
    def test_get_office_math_objects
      remote_file_name = 'TestGetOfficeMathObjects.docx'

      upload_file File.join(local_test_folder, local_file), remote_data_folder + '/' + remote_file_name

      request = GetOfficeMathObjectsRequest.new(remote_file_name, '', remote_data_folder, nil, nil, nil)

      result = @words_api.get_office_math_objects(request)
      assert_equal false, result.nil?
    end

    #
    # Test for getting mathObjects without node path.
    #
    def test_get_office_math_objects_without_node_path
      remote_file_name = 'TestGetOfficeMathObjectsWithoutNodePath.docx'

      upload_file File.join(local_test_folder, local_file), remote_data_folder + '/' + remote_file_name

      request = GetOfficeMathObjectsWithoutNodePathRequest.new(remote_file_name, remote_data_folder, nil, nil, nil)

      result = @words_api.get_office_math_objects_without_node_path(request)
      assert_equal false, result.nil?
    end

    #
    # Test for getting mathObject.
    #
    def test_get_office_math_object
      remote_file_name = 'TestGetOfficeMathObject.docx'

      upload_file File.join(local_test_folder, local_file), remote_data_folder + '/' + remote_file_name

      request = GetOfficeMathObjectRequest.new(remote_file_name, '', 0, remote_data_folder, nil, nil, nil)

      result = @words_api.get_office_math_object(request)
      assert_equal false, result.nil?
    end

    #
    # Test for getting mathObject without node path.
    #
    def test_get_office_math_object_without_node_path
      remote_file_name = 'TestGetOfficeMathObjectWithoutNodePath.docx'

      upload_file File.join(local_test_folder, local_file), remote_data_folder + '/' + remote_file_name

      request = GetOfficeMathObjectWithoutNodePathRequest.new(remote_file_name, 0, remote_data_folder, nil, nil, nil)

      result = @words_api.get_office_math_object_without_node_path(request)
      assert_equal false, result.nil?
    end

    #
    # Test for rendering mathObject.
    #
    def test_render_math_object
      remote_file_name = 'TestRenderMathObject.docx'

      upload_file File.join(local_test_folder, local_file), remote_data_folder + '/' + remote_file_name

      request = RenderMathObjectRequest.new(remote_file_name, 'png', '', 0, remote_data_folder, nil, nil, nil, nil)

      result = @words_api.render_math_object(request)
      assert_equal false, result.nil?
    end

    #
    # Test for rendering mathObject without node path.
    #
    def test_render_math_object_without_node_path
      remote_file_name = 'TestRenderMathObjectWithoutNodePath.docx'

      upload_file File.join(local_test_folder, local_file), remote_data_folder + '/' + remote_file_name

      request = RenderMathObjectWithoutNodePathRequest.new(remote_file_name, 'png', 0, remote_data_folder, nil, nil, nil, nil)

      result = @words_api.render_math_object_without_node_path(request)
      assert_equal false, result.nil?
    end

    #
    # Test for deleting mathObject.
    #
    def test_delete_office_math_object
      remote_file_name = 'TestDeleteOfficeMathObject.docx'

      upload_file File.join(local_test_folder, local_file), remote_data_folder + '/' + remote_file_name

      request = DeleteOfficeMathObjectRequest.new(remote_file_name, '', 0, remote_data_folder, nil, nil, nil, nil, nil, nil)

      @words_api.delete_office_math_object(request)
    end

    #
    # Test for deleting mathObject without node path.
    #
    def test_delete_office_math_object_without_node_path
      remote_file_name = 'TestDeleteOfficeMathObjectWithoutNodePath.docx'

      upload_file File.join(local_test_folder, local_file), remote_data_folder + '/' + remote_file_name

      request = DeleteOfficeMathObjectWithoutNodePathRequest.new(remote_file_name, 0, remote_data_folder, nil, nil, nil, nil, nil, nil)

      @words_api.delete_office_math_object_without_node_path(request)
    end
  end
end
