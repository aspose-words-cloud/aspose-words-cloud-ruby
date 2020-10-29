# ------------------------------------------------------------------------------------
# <copyright company="Aspose" file="Lists_tests.rb">
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
  # Example of how to work with lists.
  #
  class ListsTests < BaseTestContext
    def remote_data_folder
      remote_test_folder + '/DocumentElements/Lists'
    end

    def local_file
      'DocumentElements/Lists/ListsGet.doc'
    end


    #
    # Test for getting lists from document.
    #
    def test_get_lists
      remote_file_name = 'TestGetLists.doc'

      upload_file File.join(local_test_folder, local_file), remote_data_folder + '/' + remote_file_name

      request = GetListsRequest.new(remote_file_name, remote_data_folder, nil, nil, nil)

      result = @words_api.get_lists(request)
      assert_equal false, result.nil?
      assert_equal false, result.lists.nil?
      assert_equal false, result.lists.list_info.nil?
      assert_equal 2, result.lists.list_info.length
      assert_equal 1, result.lists.list_info[0].list_id
    end

    #
    # Test for getting list from document.
    #
    def test_get_list
      remote_file_name = 'TestGetList.doc'

      upload_file File.join(local_test_folder, local_file), remote_data_folder + '/' + remote_file_name

      request = GetListRequest.new(remote_file_name, 1, remote_data_folder, nil, nil, nil)

      result = @words_api.get_list(request)
      assert_equal false, result.nil?
      assert_equal false, result.list.nil?
      assert_equal 1, result.list.list_id
    end

    #
    # Test for updating list from document.
    #
    def test_update_list
      remote_file_name = 'TestUpdateList.doc'

      upload_file File.join(local_test_folder, local_file), remote_data_folder + '/' + remote_file_name

      request_list_update = ListUpdate.new({:IsRestartAtEachSection => true})
      request = UpdateListRequest.new(remote_file_name, request_list_update, 1, remote_data_folder, nil, nil, nil, nil, nil, nil)

      result = @words_api.update_list(request)
      assert_equal false, result.nil?
      assert_equal false, result.list.nil?
      assert_equal 1, result.list.list_id
      assert_equal true, result.list.is_restart_at_each_section
    end

    #
    # Test for updating list level from document.
    #
    def test_update_list_level
      remote_file_name = 'TestUpdateListLevel.doc'

      upload_file File.join(local_test_folder, local_file), remote_data_folder + '/' + remote_file_name

      request_list_update = ListLevelUpdate.new({:Alignment => 'Right'})
      request = UpdateListLevelRequest.new(remote_file_name, request_list_update, 1, 1, remote_data_folder, nil, nil, nil, nil, nil, nil)

      result = @words_api.update_list_level(request)
      assert_equal false, result.nil?
      assert_equal false, result.list.nil?
      assert_equal false, result.list.list_levels.nil?
      assert_equal false, result.list.list_levels.list_level.nil?
      assert_equal 9, result.list.list_levels.list_level.length

    end

    #
    # Test for inserting list from document.
    #
    def test_insert_list
      remote_file_name = 'TestInsertList.doc'

      upload_file File.join(local_test_folder, local_file), remote_data_folder + '/' + remote_file_name

      request_list_insert = ListInsert.new({:Template => 'OutlineLegal'})
      request = InsertListRequest.new(remote_file_name, request_list_insert, remote_data_folder, nil, nil, nil, nil, nil, nil)

      result = @words_api.insert_list(request)
      assert_equal false, result.nil?
      assert_equal false, result.list.nil?
      assert_equal 3, result.list.list_id
    end
  end
end
