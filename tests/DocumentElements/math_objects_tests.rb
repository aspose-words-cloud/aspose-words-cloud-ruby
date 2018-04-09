#
# --------------------------------------------------------------------------------------------------------------------
# <copyright company="Aspose" file="math_objects_tests.rb">
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
module WordsRubySdk
  require_relative '../base_test_context'
  class MathObjectsTests < BaseTestContext
    def test_folder
      'DocumentElements/MathObjects'
    end

    #
    # Test for removing math object from document
    #
    def test_delete_office_math_object
      filename = 'MathObjects.docx'
      remote_name = 'TestDeleteOfficeMathObject.docx'
      index = 0

      @storage_api.put_create remote_test_folder + test_folder + '/' + remote_name, File.open(local_test_folder + test_folder + '/' + filename, "r").read

      request = DeleteOfficeMathObjectRequest.new remote_name, index, remote_test_folder + test_folder
      result = @words_api.delete_office_math_object request
      assert_equal 200, result.code
    end

    #
    # Test for getting math object from document
    #
    def test_get_office_math_object
      filename = 'MathObjects.docx'
      remote_name = 'TestGetOfficeMathObject.docx'
      index = 0

      @storage_api.put_create remote_test_folder + test_folder + '/' + remote_name, File.open(local_test_folder + test_folder + '/' + filename, "r").read

      request = GetOfficeMathObjectRequest.new remote_name, index, remote_test_folder + test_folder
      result = @words_api.get_office_math_object request
      assert_equal 200, result.code
    end

    #
    # Test for getting math object from document
    #
    def test_get_office_math_objects
      filename = 'MathObjects.docx'
      remote_name = 'TestGetOfficeMathObjects.docx'

      @storage_api.put_create remote_test_folder + test_folder + '/' + remote_name, File.open(local_test_folder + test_folder + '/' + filename, "r").read

      request = GetOfficeMathObjectsRequest.new remote_name, remote_test_folder + test_folder
      result = @words_api.get_office_math_objects request
      assert_equal 200, result.code
    end

    #
    # Test for getting math object from document
    #
    def test_render_math_object
      filename = 'MathObjects.docx'
      remote_name = 'TestRenderMathObject.docx'
      index = 0
      format = 'png'

      @storage_api.put_create remote_test_folder + test_folder + '/' + remote_name, File.open(local_test_folder + test_folder + '/' + filename, "r").read

      request = RenderMathObjectRequest.new remote_name, format, index, remote_test_folder + test_folder
      result = @words_api.render_math_object request
      assert result.length > 0, 'Error occurred while rendering'
    end
  end
end
