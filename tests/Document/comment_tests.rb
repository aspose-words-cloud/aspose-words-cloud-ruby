# ------------------------------------------------------------------------------------
# <copyright company="Aspose" file="Comment_tests.rb">
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
  # Example of how to get comments from document.
  #
  class CommentTests < BaseTestContext
    def remote_data_folder
      remote_test_folder + '/Comments'
    end

    def local_file
      'Common/test_multi_pages.docx'
    end


    #
    # Test for getting comment by specified comment's index.
    #
    def test_get_comment
      remote_file_name = 'TestGetComment.docx'

      upload_file File.join(local_test_folder, local_file), remote_data_folder + '/' + remote_file_name

      request = GetCommentRequest.new(remote_file_name, 0, remote_data_folder, nil, nil, nil)

      result = @words_api.get_comment(request)
      assert_equal false, result.nil?
    end

    #
    # Test for getting comment by specified comment's index online.
    #
    def test_get_comment_online
      request_document = File.open(File.join(local_test_folder, local_file))
      request = GetCommentOnlineRequest.new(request_document, 0, nil, nil)

      result = @words_api.get_comment_online(request)
      assert_equal false, result.nil?
    end

    #
    # Test for getting all comments from document.
    #
    def test_get_comments
      remote_file_name = 'TestGetComments.docx'

      upload_file File.join(local_test_folder, local_file), remote_data_folder + '/' + remote_file_name

      request = GetCommentsRequest.new(remote_file_name, remote_data_folder, nil, nil, nil)

      result = @words_api.get_comments(request)
      assert_equal false, result.nil?
    end

    #
    # Test for getting all comments from document online.
    #
    def test_get_comments_online
      request_document = File.open(File.join(local_test_folder, local_file))
      request = GetCommentsOnlineRequest.new(request_document, nil, nil)

      result = @words_api.get_comments_online(request)
      assert_equal false, result.nil?
    end

    #
    # Test for adding comment.
    #
    def test_insert_comment
      remote_file_name = 'TestInsertComment.docx'

      upload_file File.join(local_test_folder, local_file), remote_data_folder + '/' + remote_file_name

      request = InsertCommentRequest.new(remote_file_name, request_comment, remote_data_folder, nil, nil, nil, nil, nil, nil)

      result = @words_api.insert_comment(request)
      assert_equal false, result.nil?
    end

    #
    # Test for adding comment online.
    #
    def test_insert_comment_online
      request_document = File.open(File.join(local_test_folder, local_file))





      request = InsertCommentOnlineRequest.new(request_document, request_comment, nil, nil, nil, nil, nil)

      result = @words_api.insert_comment_online(request)
      assert_equal false, result.nil?
    end

    #
    # Test for updating comment.
    #
    def test_update_comment
      remote_file_name = 'TestUpdateComment.docx'

      upload_file File.join(local_test_folder, local_file), remote_data_folder + '/' + remote_file_name

      request = UpdateCommentRequest.new(remote_file_name, 0, request_comment, remote_data_folder, nil, nil, nil, nil, nil, nil)

      result = @words_api.update_comment(request)
      assert_equal false, result.nil?
    end

    #
    # Test for updating comment online.
    #
    def test_update_comment_online
      request_document = File.open(File.join(local_test_folder, local_file))





      request = UpdateCommentOnlineRequest.new(request_document, 0, request_comment, nil, nil, nil, nil, nil)

      result = @words_api.update_comment_online(request)
      assert_equal false, result.nil?
    end

    #
    # A test for DeleteComment.
    #
    def test_delete_comment
      remote_file_name = 'TestDeleteComment.docx'

      upload_file File.join(local_test_folder, local_file), remote_data_folder + '/' + remote_file_name

      request = DeleteCommentRequest.new(remote_file_name, 0, remote_data_folder, nil, nil, nil, remote_test_out + '/' + remote_file_name, nil, nil)

      @words_api.delete_comment(request)
    end

    #
    # A test for DeleteComment online.
    #
    def test_delete_comment_online
      request_document = File.open(File.join(local_test_folder, local_file))
      request = DeleteCommentOnlineRequest.new(request_document, 0, nil, nil, nil, nil, nil)

      result = @words_api.delete_comment_online(request)
      assert_equal false, result.nil?
    end

    #
    # A test for DeleteComments.
    #
    def test_delete_comments
      remote_file_name = 'TestDeleteComment.docx'

      upload_file File.join(local_test_folder, local_file), remote_data_folder + '/' + remote_file_name

      request = DeleteCommentsRequest.new(remote_file_name, remote_data_folder, nil, nil, nil, remote_test_out + '/' + remote_file_name, nil, nil)

      @words_api.delete_comments(request)
    end

    #
    # A test for DeleteComments online.
    #
    def test_delete_comments_online
      request_document = File.open(File.join(local_test_folder, local_file))
      request = DeleteCommentsOnlineRequest.new(request_document, nil, nil, nil, nil, nil)

      result = @words_api.delete_comments_online(request)
      assert_equal false, result.nil?
    end
  end
end