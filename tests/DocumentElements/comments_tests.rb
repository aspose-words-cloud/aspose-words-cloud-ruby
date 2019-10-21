#
# --------------------------------------------------------------------------------------------------------------------
# <copyright company="Aspose" file="comments_tests.rb">
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
  class CommentsTests < BaseTestContext
    def test_folder
      'DocumentElements/Comments'
    end

    #
    # Test for deleting comment
    #
    def test_delete_comment
      filename = 'test_multi_pages.docx'
      remote_name = 'TestDeleteComment.docx'
      comment_index = 0

      upload_file File.join(local_common_folder, filename), File.join(remote_test_folder, test_folder, remote_name)

      request = DeleteCommentRequest.new remote_name, comment_index, remote_test_folder + test_folder
      result = @words_api.delete_comment request
    end

    #
    # Test for getting comment
    #
    def test_get_comment
      filename = 'test_multi_pages.docx'
      remote_name = 'TestGetComment.docx'
      comment_index = 0

      upload_file File.join(local_common_folder, filename), File.join(remote_test_folder, test_folder, remote_name)

      request = GetCommentRequest.new remote_name, comment_index, remote_test_folder + test_folder
      result = @words_api.get_comment request
      assert_equal FALSE, result.nil?
    end

    #
    # Test for getting comments
    #
    def test_get_comments
      filename = 'test_multi_pages.docx'
      remote_name = 'TestGetComments.docx'

      upload_file File.join(local_common_folder, filename), File.join(remote_test_folder, test_folder, remote_name)

      request = GetCommentsRequest.new remote_name, remote_test_folder + test_folder
      result = @words_api.get_comments request
      assert_equal FALSE, result.nil?
    end

    #
    # Test for updating comment
    #
    def test_update_comment
      filename = 'test_multi_pages.docx'
      remote_name = 'TestUpdateComment.docx'
      comment_index = 0
      node_link = NodeLink.new({:NodeId => '0.3.0.3'})
      document_position = DocumentPosition.new({:Node => node_link, :Offset => 0})
      body = Comment.new({:RangeStart => document_position, :RangeEnd => document_position, :Initial => 'YE', :Author => 'Yaroslav Ekimov', :Text => 'A new comment'})

      upload_file File.join(local_common_folder, filename), File.join(remote_test_folder, test_folder, remote_name)

      request = UpdateCommentRequest.new remote_name, comment_index, body, remote_test_folder + test_folder
      result = @words_api.update_comment request
      assert_equal FALSE, result.nil?
    end

    #
    # Test for adding comment
    #
    def test_insert_comment
      filename = 'test_multi_pages.docx'
      remote_name = 'TestInsertComment.docx'
      node_link = NodeLink.new({:NodeId => '0.3.0.3'})
      document_position = DocumentPosition.new({:Node => node_link, :Offset => 0})
      body = Comment.new({:RangeStart => document_position, :RangeEnd => document_position, :Initial => 'YE', :Author => 'Yaroslav Ekimov', :Text => 'A new comment'})

      upload_file File.join(local_common_folder, filename), File.join(remote_test_folder, test_folder, remote_name)

      request = InsertCommentRequest.new remote_name, body, remote_test_folder + test_folder
      result = @words_api.insert_comment request
      assert_equal FALSE, result.nil?
    end
  end
end
