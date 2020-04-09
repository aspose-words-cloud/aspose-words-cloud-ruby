#
# --------------------------------------------------------------------------------------------------------------------
# <copyright company="Aspose" file="lists_tests.rb">
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
    class ListsTests < BaseTestContext
        def test_folder
            'TestData/Lists'
        end

        def local_name
            'ListsGet.doc'
        end
  
        #
        # Test for getting lists
        #
        def test_get_lists
            remote_name = 'TestGetLists.doc'
            upload_file File.join(test_folder, local_name), File.join(remote_test_folder + test_folder, remote_name)
            request = GetListsRequest.new remote_name, remote_test_folder + test_folder
            @words_api.get_lists request
        end

        #
        # Test for getting list
        #
        def test_get_list
            remote_name = 'TestGetList.doc'
            upload_file File.join(test_folder, local_name), File.join(remote_test_folder + test_folder, remote_name)
            request = GetListRequest.new remote_name, 1, remote_test_folder + test_folder
            @words_api.get_list request
        end

        #
        # Test for updating list
        #
        def test_update_list
            remote_name = 'TestUpdateList.doc'
            upload_file File.join(test_folder, local_name), File.join(remote_test_folder + test_folder, remote_name)
            data = ListUpdate.new true
            request = UpdateListRequest.new remote_name, data,1, remote_test_folder + test_folder
            @words_api.update_list request
        end

        #
        # Test for updating list level
        #
        def test_update_list_level
            remote_name = 'TestUpdateListLevel.doc'
            upload_file File.join(test_folder, local_name), File.join(remote_test_folder + test_folder, remote_name)
            data = ListLevelUpdate.new alignment='Right'
            request = UpdateListLevelRequest.new remote_name, data,1, 1, remote_test_folder + test_folder
            @words_api.update_list_level request
        end

        #
        # Test for inserting list
        #
        def test_insert_list
            remote_name = 'TestInsertList.doc'
            upload_file File.join(test_folder, local_name), File.join(remote_test_folder + test_folder, remote_name)
            data = ListInsert.new 'OutlineLegal'
            request = InsertListRequest.new remote_name, data, remote_test_folder + test_folder
            @words_api.insert_list request
        end
    end
end
  