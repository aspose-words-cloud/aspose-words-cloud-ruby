# ------------------------------------------------------------------------------------
# <copyright company="Aspose" file="Bookmark_tests.rb">
#   Copyright (c) 2021 Aspose.Words for Cloud
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
  # Example of how to get all bookmarks from document.
  #
  class BookmarkTests < BaseTestContext
    def remote_data_folder
      remote_test_folder + '/DocumentElements/Bookmarks'
    end

    def local_file
      'Common/test_multi_pages.docx'
    end

    def bookmark_name
      'aspose'
    end


    #
    # Test for getting bookmarks from document.
    #
    def test_get_bookmarks
      remote_file_name = 'TestGetDocumentBookmarks.docx'

      upload_file File.join(local_test_folder, local_file), remote_data_folder + '/' + remote_file_name

      request = GetBookmarksRequest.new(remote_file_name, remote_data_folder, nil, nil, nil)

      result = @words_api.get_bookmarks(request)
      assert_equal false, result.nil?
    end

    #
    # Test for getting bookmarks from document online.
    #
    def test_get_bookmarks_online
      request_document = File.open(File.join(local_test_folder, local_file))
      request = GetBookmarksOnlineRequest.new(request_document, nil, nil)

      result = @words_api.get_bookmarks_online(request)
      assert_equal false, result.nil?
    end

    #
    # Test for getting bookmark by specified name.
    #
    def test_get_bookmark_by_name
      remote_file_name = 'TestGetDocumentBookmarkByName.docx'

      upload_file File.join(local_test_folder, local_file), remote_data_folder + '/' + remote_file_name

      request = GetBookmarkByNameRequest.new(remote_file_name, bookmark_name, remote_data_folder, nil, nil, nil)

      result = @words_api.get_bookmark_by_name(request)
      assert_equal false, result.nil?
    end

    #
    # Test for getting bookmark by specified name online.
    #
    def test_get_bookmark_by_name_online
      request_document = File.open(File.join(local_test_folder, local_file))
      request = GetBookmarkByNameOnlineRequest.new(request_document, bookmark_name, nil, nil)

      result = @words_api.get_bookmark_by_name_online(request)
      assert_equal false, result.nil?
    end

    #
    # Test for updating existed bookmark.
    #
    def test_update_bookmark
      remote_file_name = 'TestUpdateDocumentBookmark.docx'
      bookmark_text = 'This will be the text for Aspose'

      upload_file File.join(local_test_folder, local_file), remote_data_folder + '/' + remote_file_name

      request_bookmark_data = BookmarkData.new({:Name => bookmark_name, :Text => bookmark_text})
      request = UpdateBookmarkRequest.new(remote_file_name, bookmark_name, request_bookmark_data, remote_data_folder, nil, nil, nil, remote_test_out + '/' + remote_file_name, nil, nil)

      result = @words_api.update_bookmark(request)
      assert_equal false, result.nil?
    end

    #
    # Test for updating existed bookmark online.
    #
    def test_update_bookmark_online
      remote_file_name = 'TestUpdateDocumentBookmark.docx'

      request_document = File.open(File.join(local_test_folder, local_file))
      request_bookmark_data = BookmarkData.new({:Name => bookmark_name, :Text => 'This will be the text for Aspose'})
      request = UpdateBookmarkOnlineRequest.new(request_document, bookmark_name, request_bookmark_data, nil, nil, remote_test_out + '/' + remote_file_name, nil, nil)

      result = @words_api.update_bookmark_online(request)
      assert_equal false, result.nil?
    end
  end
end