#
# --------------------------------------------------------------------------------------------------------------------
# <copyright company="Aspose" file="footnote_tests.rb">
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
  class FootnoteTests < BaseTestContext
    def test_folder
      'DocumentElements/Footnotes'
    end

    #
    # Test for getting footnote
    #
    def test_get_footnote
      filename = 'Footnote.doc'
      remote_name = 'TestGetFootnote.docx'
      index = 0

      upload_file File.join(local_test_folder, test_folder, filename), File.join(remote_test_folder, test_folder, remote_name)

      request = GetFootnoteRequest.new remote_name, '', index, remote_test_folder + test_folder
      result = @words_api.get_footnote request
      assert_equal FALSE, result.nil?
    end

    #
    # Test for getting footnote without node path
    #
    def test_get_footnote_without_node_path
      filename = 'Footnote.doc'
      remote_name = 'TestGetFootnoteWithoutNodePath.docx'
      index = 0

      upload_file File.join(local_test_folder, test_folder, filename), File.join(remote_test_folder, test_folder, remote_name)

      request = GetFootnoteWithoutNodePathRequest.new remote_name, index, remote_test_folder + test_folder
      result = @words_api.get_footnote_without_node_path request
      assert_equal FALSE, result.nil?
    end

    #
    # Test for getting footnotes
    #
    def test_get_footnotes
      filename = 'Footnote.doc'
      remote_name = 'TestGetFootnotes.docx'

      upload_file File.join(local_test_folder, test_folder, filename), File.join(remote_test_folder, test_folder, remote_name)

      request = GetFootnotesRequest.new remote_name, '', remote_test_folder + test_folder
      result = @words_api.get_footnotes request
      assert_equal FALSE, result.nil?
    end

    #
    # Test for getting footnotes without node path
    #
    def test_get_footnotes_without_node_path
      filename = 'Footnote.doc'
      remote_name = 'TestGetFootnotesWithoutNodePath.docx'

      upload_file File.join(local_test_folder, test_folder, filename), File.join(remote_test_folder, test_folder, remote_name)

      request = GetFootnotesWithoutNodePathRequest.new remote_name, remote_test_folder + test_folder
      result = @words_api.get_footnotes_without_node_path request
      assert_equal FALSE, result.nil?
    end

    #
    # Test for removing footnote
    #
    def test_delete_footnote
      filename = 'Footnote.doc'
      remote_name = 'TestDeleteFootnote.docx'
      index = 0

      upload_file File.join(local_test_folder, test_folder, filename), File.join(remote_test_folder, test_folder, remote_name)

      request = DeleteFootnoteRequest.new remote_name, '', index, remote_test_folder + test_folder
      result = @words_api.delete_footnote request
      assert_equal TRUE, result.nil?
    end

    #
    # Test for removing footnote without node path
    #
    def test_delete_footnote_without_node_path
      filename = 'Footnote.doc'
      remote_name = 'TestDeleteFootnoteWithoutNodePath.docx'
      index = 0

      upload_file File.join(local_test_folder, test_folder, filename), File.join(remote_test_folder, test_folder, remote_name)

      request = DeleteFootnoteWithoutNodePathRequest.new remote_name, index, remote_test_folder + test_folder
      result = @words_api.delete_footnote_without_node_path request
      assert_equal TRUE, result.nil?
    end

    #
    # Test for updating footnote
    #
    def test_update_footnote
      filename = 'Footnote.doc'
      remote_name = 'TestUpdateFootnote.docx'
      index = 0
      footnote = FootnoteUpdate.new({:Text => 'new text is here'})

      upload_file File.join(local_test_folder, test_folder, filename), File.join(remote_test_folder, test_folder, remote_name)

      request = UpdateFootnoteRequest.new remote_name, footnote, '', index, remote_test_folder + test_folder
      result = @words_api.update_footnote request
      assert_equal FALSE, result.nil?
    end

    #
    # Test for updating footnote without node path
    #
    def test_update_footnote_without_node_path
      filename = 'Footnote.doc'
      remote_name = 'TestUpdateFootnoteWithoutNodePath.docx'
      index = 0
      footnote = FootnoteUpdate.new({:Text => 'new text is here'})

      upload_file File.join(local_test_folder, test_folder, filename), File.join(remote_test_folder, test_folder, remote_name)

      request = UpdateFootnoteWithoutNodePathRequest.new remote_name, footnote, index, remote_test_folder + test_folder
      result = @words_api.update_footnote_without_node_path request
      assert_equal FALSE, result.nil?
    end

    #
    # Test for creating footnote
    #
    def test_insert_footnote
      filename = 'Footnote.doc'
      remote_name = 'TestInsertFootnote.docx'
      footnote = FootnoteInsert.new({:Text => 'test endnote', :FootnoteType => 'Endnote'})

      upload_file File.join(local_test_folder, test_folder, filename), File.join(remote_test_folder, test_folder, remote_name)

      request = InsertFootnoteRequest.new remote_name, footnote,'', remote_test_folder + test_folder
      result = @words_api.insert_footnote request
      assert_equal FALSE, result.nil?
    end

    #
    # Test for creating footnote without node path
    #
    def test_insert_footnote_without_node_path
      filename = 'Footnote.doc'
      remote_name = 'TestInsertFootnoteWithoutNodePath.docx'
      footnote = FootnoteInsert.new({:Text => 'test endnote', :FootnoteType => 'Endnote'})

      upload_file File.join(local_test_folder, test_folder, filename), File.join(remote_test_folder, test_folder, remote_name)

      request = InsertFootnoteWithoutNodePathRequest.new remote_name, footnote, remote_test_folder + test_folder
      result = @words_api.insert_footnote_without_node_path request
      assert_equal FALSE, result.nil?
    end
  end
end
