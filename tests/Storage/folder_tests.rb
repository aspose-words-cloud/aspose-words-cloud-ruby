#
# --------------------------------------------------------------------------------------------------------------------
# <copyright company="Aspose" file="folder_tests.rb">
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
    class FolderTests < BaseTestContext
      def test_folder
        'Temp/SdkTests/TestData'
      end
  
      #
      # Test for uploading file
      #
      def test_create_folder
        folder_uuid = generate_uuid
        folder_path = "#{test_folder}/TestCreateFolder#{folder_uuid}" 
  
        request = CreateFolderRequest.new folder_path
        result = @words_api.create_folder request
      end

      def test_delete_folder
        folder_uuid = generate_uuid
        folder_name = "TestCreateFolder#{folder_uuid}"
        folder_path = "#{test_folder}/#{folder_name}" 
        
        request = CreateFolderRequest.new folder_path
        @words_api.create_folder request

        request = DeleteFolderRequest.new folder_path
        @words_api.delete_folder request
        
        assert(!exists?(test_folder, folder_name), "Folder has not been deleted")
      end

      def test_get_files_list
        request = GetFilesListRequest.new test_folder
        response = @words_api.get_files_list request
        assert_equal true, response.value.size > 0
      end

      def test_copy_folder
        folder_uuid = generate_uuid
        folder_src_name = "TestCopyFolderSrc#{folder_uuid}"
        folder_dst_name = "TestCopyFolderDst#{folder_uuid}"
        folder_path_src = "#{test_folder}/#{folder_src_name}"
        folder_path_dst = "#{test_folder}/#{folder_dst_name}"
        @words_api.create_folder CreateFolderRequest.new(folder_path_src)

        request = CopyFolderRequest.new folder_path_dst, folder_path_src
        response = @words_api.copy_folder request

        assert(exists?(test_folder, folder_dst_name), "Dest file is missing")
        assert(exists?(test_folder, folder_src_name), "Source file is missing")
      end

      def test_move_folder
        folder_uuid = generate_uuid
        folder_src_name = "TestMoveFolderSrc#{folder_uuid}"
        folder_dst_name = "TestMoveFolderDst#{folder_uuid}"
        folder_path_src = "#{test_folder}/#{folder_src_name}"
        folder_path_dst = "#{test_folder}/#{folder_dst_name}"
        @words_api.create_folder CreateFolderRequest.new(folder_path_src)

        request = MoveFolderRequest.new folder_path_dst, folder_path_src
        response = @words_api.move_folder request

        assert(!exists?(test_folder, folder_src_name), "Source file has not been deleted")
        assert(exists?(test_folder, folder_dst_name), "Dest file is missing")
      end

    end
  end
  