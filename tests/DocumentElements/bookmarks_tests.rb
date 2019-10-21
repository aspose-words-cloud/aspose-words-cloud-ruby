#
# --------------------------------------------------------------------------------------------------------------------
# <copyright company="Aspose" file="bookmarks_tests.rb">
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
  class BookmarksTests < BaseTestContext
    def test_folder
      'DocumentElements/Bookmarks'
    end

    #
    # Test for getting document bookmark by name
    #
    def test_get_bookmark_by_name
      filename = 'test_multi_pages.docx'
      remote_name = 'TestGetBookmarkByName.docx'
      bookmark_name = 'aspose'

      upload_file File.join(local_common_folder, filename), File.join(remote_test_folder, test_folder, remote_name)

      request = GetBookmarkByNameRequest.new remote_name, bookmark_name, remote_test_folder + test_folder
      result = @words_api.get_bookmark_by_name request
      assert_equal FALSE, result.nil?
    end

    #
    # Test for getting all bookmarks from document
    #
    def test_get_bookmarks
      filename = 'test_multi_pages.docx'
      remote_name = 'TestGetBookmarks.docx'

      upload_file File.join(local_common_folder, filename), File.join(remote_test_folder, test_folder, remote_name)

      request = GetBookmarksRequest.new remote_name, remote_test_folder + test_folder
      result = @words_api.get_bookmarks request
      assert_equal FALSE, result.nil?
    end

    #
    # Test for updating document bookmark
    #
    def test_update_bookmark
      filename = 'test_multi_pages.docx'
      remote_name = 'TestUpdateBookmark.docx'
      dest_name = remote_test_out + remote_name
      bookmark_name = 'aspose'
      body = BookmarkData.new({:Name => bookmark_name, :Text => 'This will be the text for Aspose'})

      upload_file File.join(local_common_folder, filename), File.join(remote_test_folder, test_folder, remote_name)

      request = UpdateBookmarkRequest.new remote_name, body, bookmark_name, remote_test_folder + test_folder, :dest_file_name => dest_name
      result = @words_api.update_bookmark request
      assert_equal FALSE, result.nil?
    end
  end
end
