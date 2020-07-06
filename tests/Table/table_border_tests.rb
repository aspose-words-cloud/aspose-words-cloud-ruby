# ------------------------------------------------------------------------------------
# <copyright company="Aspose" file="TableBorder_tests.rb">
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
  # Example of how to work with table borders.
  #
  class TableBorderTests < BaseTestContext
    def remote_data_folder
      remote_test_folder + '/DocumentElements/Tables'
    end

    def local_file
      'DocumentElements/Tables/TablesGet.docx'
    end


    #
    # Test for getting borders.
    #
    def test_get_borders
      remote_file_name = 'TestGetBorders.docx'

      upload_file File.join(local_test_folder, local_file), remote_data_folder + '/' + remote_file_name

      request = GetBordersRequest.new(remote_file_name, 'tables/1/rows/0/cells/0', remote_data_folder, nil, nil, nil)

      result = @words_api.get_borders(request)
      assert_equal false, result.nil?
    end

    #
    # Test for getting border.
    #
    def test_get_border
      remote_file_name = 'TestGetBorder.docx'

      upload_file File.join(local_test_folder, local_file), remote_data_folder + '/' + remote_file_name

      request = GetBorderRequest.new(remote_file_name, 'tables/1/rows/0/cells/0', 'left', remote_data_folder, nil, nil, nil)

      result = @words_api.get_border(request)
      assert_equal false, result.nil?
    end

    #
    # Test for deleting borders.
    #
    def test_delete_borders
      remote_file_name = 'TestDeleteBorders.docx'

      upload_file File.join(local_test_folder, local_file), remote_data_folder + '/' + remote_file_name

      request = DeleteBordersRequest.new(remote_file_name, 'tables/1/rows/0/cells/0', remote_data_folder, nil, nil, nil, nil, nil, nil)

      result = @words_api.delete_borders(request)
      assert_equal false, result.nil?
    end

    #
    # Test for deleting border.
    #
    def test_delete_border
      remote_file_name = 'TestDeleteBorder.docx'

      upload_file File.join(local_test_folder, local_file), remote_data_folder + '/' + remote_file_name

      request = DeleteBorderRequest.new(remote_file_name, 'tables/1/rows/0/cells/0', 'left', remote_data_folder, nil, nil, nil, nil, nil, nil)

      result = @words_api.delete_border(request)
      assert_equal false, result.nil?
    end

    #
    # Test for updating border.
    #
    def test_update_border
      remote_file_name = 'TestUpdateBorder.docx'

      upload_file File.join(local_test_folder, local_file), remote_data_folder + '/' + remote_file_name

      request_border_properties_color = XmlColor.new({:Alpha => 2})
      request_border_properties = Border.new({:BorderType => 'Left', :Color => request_border_properties_color, :DistanceFromText => 6, :LineStyle => 'DashDotStroker', :LineWidth => 2, :Shadow => true})
      request = UpdateBorderRequest.new(remote_file_name, request_border_properties, 'tables/1/rows/0/cells/0', 'left', remote_data_folder, nil, nil, nil, nil, nil, nil)

      result = @words_api.update_border(request)
      assert_equal false, result.nil?
    end
  end
end
