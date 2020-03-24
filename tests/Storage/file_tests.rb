#
# --------------------------------------------------------------------------------------------------------------------
# <copyright company="Aspose" file="file_tests.rb">
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
    class FileTests < BaseTestContext
      def test_folder
        'Temp/SdkTests/TestData'
      end
  
      #
      # Test for uploading file
      #
      def test_upload_file
        filename = 'test_multi_pages.docx'
        remote_name = 'TestUploadFile.docx'
  
        request = UploadFileRequest.new File.new(File.join(local_common_folder, filename), 'rb'), File.join(test_folder, remote_name)
        result = @words_api.upload_file request
        assert_equal 1, result.uploaded.size
      end

      #
      # Test for copy file
      #
      def test_copy_file
        filename = 'test_multi_pages.docx'
        remote_name = 'TestCopyFileSrc.docx'
        remote_name_dst = "TestCopyFileDst#{generate_uuid}.docx"
        remote_path_src = File.join test_folder, remote_name
        remote_path_dst = File.join test_folder, remote_name_dst
      
        upload_file File.join(local_common_folder, filename), remote_path_src
        request = CopyFileRequest.new remote_path_dst, remote_path_src
        response = @words_api.copy_file request

        assert(exists?(test_folder, remote_name), "Source file is missing")
        assert(exists?(test_folder, remote_name_dst), "Dest file is missing")
      end

      #
      # Test for move file
      #
      def test_move_file
        filename = 'test_multi_pages.docx'
        remote_name = 'TestMoveFileSrc.docx'
        remote_name_dst = "TestMoveFileDst#{generate_uuid}.docx"
        remote_path_src = File.join test_folder, remote_name
        remote_path_dst = File.join test_folder, remote_name_dst
      
        upload_file File.join(local_common_folder, filename), remote_path_src
        request = MoveFileRequest.new remote_path_dst, remote_path_src
        response = @words_api.move_file request

        request = DownloadFileRequest.new remote_path_src
        begin 
          @words_api.download_file request
        rescue ApiError => ex
          assert(ex.code == 404)
        end
      end

      #
      # Test for delete file
      #
      def test_delete_file
        filename = 'test_multi_pages.docx'
        remote_name = 'TestDeleteFile.docx'
        path = File.join test_folder, remote_name
        
        upload_file File.join(local_common_folder, filename), path
        request = DeleteFileRequest.new path
        @words_api.delete_file request
      end

      #
      # Test for download file
      #
      def test_download_file
        filename = 'test_multi_pages.docx'
        remote_name = 'TestDownloadFile.docx'
        path = File.join test_folder, remote_name
        
        upload_file File.join(local_common_folder, filename), path
        request = DownloadFileRequest.new path
        assert_equal TRUE, @words_api.download_file(request).size > 0
      end
    end
  end
  