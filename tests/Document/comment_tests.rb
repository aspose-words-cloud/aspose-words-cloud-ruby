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
      remote_test_folder + "/Comments"
    end

    def local_file
      "Common/test_multi_pages.docx"
    end


    #
    # Test for getting comment by specified comment's index.
    #
    def test_get_comment
      remote_file_name = "TestGetComment.docx"

      upload_file File.join(local_test_folder, local_file), remote_data_folder + "/" + remote_file_name

      request = GetCommentRequest.new(remote_file_name, 0, remote_data_folder, nil, nil, nil)

      result = @words_api.get_comment(request)
      assert_equal false, result.nil?
      assert_equal false, result.comment.nil?
      assert_equal "Comment 1" + "\r\n\r\n", result.comment.text
    end

    #
    # Test for getting comment by specified comment's index online.
    #
    def test_get_comment_online
      request = GetCommentOnlineRequest.new(File.open(File.join(local_test_folder, local_file)), 0, nil, nil)

      result = @words_api.get_comment_online(request)
      assert_equal false, result.nil?
    end

    #
    # Test for getting all comments from document.
    #
    def test_get_comments
      remote_file_name = "TestGetComments.docx"

      upload_file File.join(local_test_folder, local_file), remote_data_folder + "/" + remote_file_name

      request = GetCommentsRequest.new(remote_file_name, remote_data_folder, nil, nil, nil)

      result = @words_api.get_comments(request)
      assert_equal false, result.nil?
      assert_equal false, result.comments.nil?
      assert_equal false, result.comments.comment_list.nil?
      assert_equal 1, result.comments.comment_list.length
      assert_equal "Comment 1" + "\r\n\r\n", result.comments.comment_list[0].text
    end

    #
    # Test for getting all comments from document online.
    #
    def test_get_comments_online
      request = GetCommentsOnlineRequest.new(File.open(File.join(local_test_folder, local_file)), nil, nil)

      result = @words_api.get_comments_online(request)
      assert_equal false, result.nil?
    end

    #
    # Test for adding comment.
    #
    def test_insert_comment
      remote_file_name = "TestInsertComment.docx"

      upload_file File.join(local_test_folder, local_file), remote_data_folder + "/" + remote_file_name

      request_comment_range_start_node = NodeLink.new({:NodeId => "0.3.0.3"})
      request_comment_range_start = DocumentPosition.new({:Node => request_comment_range_start_node, :Offset => 0})
      request_comment_range_end_node = NodeLink.new({:NodeId => "0.3.0.3"})
      request_comment_range_end = DocumentPosition.new({:Node => request_comment_range_end_node, :Offset => 0})
      request_comment = CommentInsert.new({:RangeStart => request_comment_range_start, :RangeEnd => request_comment_range_end, :Initial => "IA", :Author => "Imran Anwar", :Text => "A new Comment"})
      request = InsertCommentRequest.new(remote_file_name, request_comment, remote_data_folder, nil, nil, nil, nil, nil, nil)

      result = @words_api.insert_comment(request)
      assert_equal false, result.nil?
      assert_equal false, result.comment.nil?
      assert_equal "A new Comment" + "\r\n", result.comment.text
      assert_equal false, result.comment.range_start.nil?
      assert_equal false, result.comment.range_start.node.nil?
      assert_equal "0.3.0.4", result.comment.range_start.node.node_id
    end

    #
    # Test for adding comment online.
    #
    def test_insert_comment_online
      request_comment_range_start_node = NodeLink.new({:NodeId => "0.3.0.3"})
      request_comment_range_start = DocumentPosition.new({:Node => request_comment_range_start_node, :Offset => 0})
      request_comment_range_end_node = NodeLink.new({:NodeId => "0.3.0.3"})
      request_comment_range_end = DocumentPosition.new({:Node => request_comment_range_end_node, :Offset => 0})
      request_comment = CommentInsert.new({:RangeStart => request_comment_range_start, :RangeEnd => request_comment_range_end, :Initial => "IA", :Author => "Imran Anwar", :Text => "A new Comment"})
      request = InsertCommentOnlineRequest.new(File.open(File.join(local_test_folder, local_file)), request_comment, nil, nil, nil, nil, nil)

      result = @words_api.insert_comment_online(request)
      assert_equal false, result.nil?
    end

    #
    # Test for updating comment.
    #
    def test_update_comment
      remote_file_name = "TestUpdateComment.docx"

      upload_file File.join(local_test_folder, local_file), remote_data_folder + "/" + remote_file_name

      request_comment_range_start_node = NodeLink.new({:NodeId => "0.3.0"})
      request_comment_range_start = DocumentPosition.new({:Node => request_comment_range_start_node, :Offset => 0})
      request_comment_range_end_node = NodeLink.new({:NodeId => "0.3.0"})
      request_comment_range_end = DocumentPosition.new({:Node => request_comment_range_end_node, :Offset => 0})
      request_comment = CommentUpdate.new({:RangeStart => request_comment_range_start, :RangeEnd => request_comment_range_end, :Initial => "IA", :Author => "Imran Anwar", :Text => "A new Comment"})
      request = UpdateCommentRequest.new(remote_file_name, 0, request_comment, remote_data_folder, nil, nil, nil, nil, nil, nil)

      result = @words_api.update_comment(request)
      assert_equal false, result.nil?
      assert_equal false, result.comment.nil?
      assert_equal "A new Comment" + "\r\n", result.comment.text
      assert_equal false, result.comment.range_start.nil?
      assert_equal false, result.comment.range_start.node.nil?
      assert_equal "0.3.0.1", result.comment.range_start.node.node_id
    end

    #
    # Test for updating comment online.
    #
    def test_update_comment_online
      request_comment_range_start_node = NodeLink.new({:NodeId => "0.3.0"})
      request_comment_range_start = DocumentPosition.new({:Node => request_comment_range_start_node, :Offset => 0})
      request_comment_range_end_node = NodeLink.new({:NodeId => "0.3.0"})
      request_comment_range_end = DocumentPosition.new({:Node => request_comment_range_end_node, :Offset => 0})
      request_comment = CommentUpdate.new({:RangeStart => request_comment_range_start, :RangeEnd => request_comment_range_end, :Initial => "IA", :Author => "Imran Anwar", :Text => "A new Comment"})
      request = UpdateCommentOnlineRequest.new(File.open(File.join(local_test_folder, local_file)), 0, request_comment, nil, nil, nil, nil, nil)

      result = @words_api.update_comment_online(request)
      assert_equal false, result.nil?
    end

    #
    # A test for DeleteComment.
    #
    def test_delete_comment
      remote_file_name = "TestDeleteComment.docx"

      upload_file File.join(local_test_folder, local_file), remote_data_folder + "/" + remote_file_name

      request = DeleteCommentRequest.new(remote_file_name, 0, remote_data_folder, nil, nil, nil, remote_test_out + "/" + remote_file_name, nil, nil)

      @words_api.delete_comment(request)
    end

    #
    # A test for DeleteComment online.
    #
    def test_delete_comment_online
      request = DeleteCommentOnlineRequest.new(File.open(File.join(local_test_folder, local_file)), 0, nil, nil, nil, nil, nil)

      result = @words_api.delete_comment_online(request)
      assert_equal false, result.nil?
    end
  end
end
