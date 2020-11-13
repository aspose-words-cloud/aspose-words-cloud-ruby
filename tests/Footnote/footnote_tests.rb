# ------------------------------------------------------------------------------------
# <copyright company="Aspose" file="Footnote_tests.rb">
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
  # Example of how to work with footnotes.
  #
  class FootnoteTests < BaseTestContext
    def remote_data_folder
      remote_test_folder + "/DocumentElements/Footnotes"
    end

    def footnote_folder
      "DocumentElements/Footnotes"
    end


    #
    # Test for adding footnote.
    #
    def test_insert_footnote
      remote_file_name = "TestInsertFootnote.docx"

      upload_file File.join(local_test_folder, footnote_folder + "/Footnote.doc"), remote_data_folder + "/" + remote_file_name

      request_footnote_dto = FootnoteInsert.new({:FootnoteType => 'Endnote', :Text => "test endnote"})
      request = InsertFootnoteRequest.new(remote_file_name, request_footnote_dto, "", remote_data_folder, nil, nil, nil, nil, nil, nil)

      result = @words_api.insert_footnote(request)
      assert_equal false, result.nil?
      assert_equal false, result.footnote.nil?
      assert_equal "0.1.7.1", result.footnote.node_id
      assert_equal " test endnote" + "\r\n", result.footnote.text
    end

    #
    # Test for adding footnote without node path.
    #
    def test_insert_footnote_without_node_path
      remote_file_name = "TestInsertFootnoteWithoutNodePath.docx"

      upload_file File.join(local_test_folder, footnote_folder + "/Footnote.doc"), remote_data_folder + "/" + remote_file_name

      request_footnote_dto = FootnoteInsert.new({:FootnoteType => 'Endnote', :Text => "test endnote"})
      request = InsertFootnoteRequest.new(remote_file_name, request_footnote_dto, nil, remote_data_folder, nil, nil, nil, nil, nil, nil)

      result = @words_api.insert_footnote(request)
      assert_equal false, result.nil?
      assert_equal false, result.footnote.nil?
      assert_equal "0.1.7.1", result.footnote.node_id
      assert_equal " test endnote" + "\r\n", result.footnote.text
    end

    #
    # Test for deleting footnote.
    #
    def test_delete_footnote
      remote_file_name = "TestDeleteFootnote.docx"

      upload_file File.join(local_test_folder, footnote_folder + "/Footnote.doc"), remote_data_folder + "/" + remote_file_name

      request = DeleteFootnoteRequest.new(remote_file_name, 0, "", remote_data_folder, nil, nil, nil, nil, nil, nil)

      @words_api.delete_footnote(request)
    end

    #
    # Test for deleting footnote without node path.
    #
    def test_delete_footnote_without_node_path
      remote_file_name = "TestDeleteFootnoteWithoutNodePath.docx"

      upload_file File.join(local_test_folder, footnote_folder + "/Footnote.doc"), remote_data_folder + "/" + remote_file_name

      request = DeleteFootnoteRequest.new(remote_file_name, 0, nil, remote_data_folder, nil, nil, nil, nil, nil, nil)

      @words_api.delete_footnote(request)
    end

    #
    # Test for getting footnotes.
    #
    def test_get_footnotes
      remote_file_name = "TestGetFootnotes.docx"

      upload_file File.join(local_test_folder, footnote_folder + "/Footnote.doc"), remote_data_folder + "/" + remote_file_name

      request = GetFootnotesRequest.new(remote_file_name, "", remote_data_folder, nil, nil, nil)

      result = @words_api.get_footnotes(request)
      assert_equal false, result.nil?
      assert_equal false, result.footnotes.nil?
      assert_equal false, result.footnotes.list.nil?
      assert_equal 6, result.footnotes.list.length
      assert_equal " Footnote 1." + "\r\n", result.footnotes.list[0].text
    end

    #
    # Test for getting footnotes without node path.
    #
    def test_get_footnotes_without_node_path
      remote_file_name = "TestGetFootnotesWithoutNodePath.docx"

      upload_file File.join(local_test_folder, footnote_folder + "/Footnote.doc"), remote_data_folder + "/" + remote_file_name

      request = GetFootnotesRequest.new(remote_file_name, nil, remote_data_folder, nil, nil, nil)

      result = @words_api.get_footnotes(request)
      assert_equal false, result.nil?
      assert_equal false, result.footnotes.nil?
      assert_equal false, result.footnotes.list.nil?
      assert_equal 6, result.footnotes.list.length
      assert_equal " Footnote 1." + "\r\n", result.footnotes.list[0].text
    end

    #
    # Test for getting footnote.
    #
    def test_get_footnote
      remote_file_name = "TestGetFootnote.docx"

      upload_file File.join(local_test_folder, footnote_folder + "/Footnote.doc"), remote_data_folder + "/" + remote_file_name

      request = GetFootnoteRequest.new(remote_file_name, 0, "", remote_data_folder, nil, nil, nil)

      result = @words_api.get_footnote(request)
      assert_equal false, result.nil?
      assert_equal false, result.footnote.nil?
      assert_equal " Footnote 1." + "\r\n", result.footnote.text
    end

    #
    # Test for getting footnote without node path.
    #
    def test_get_footnote_without_node_path
      remote_file_name = "TestGetFootnoteWithoutNodePath.docx"

      upload_file File.join(local_test_folder, footnote_folder + "/Footnote.doc"), remote_data_folder + "/" + remote_file_name

      request = GetFootnoteRequest.new(remote_file_name, 0, nil, remote_data_folder, nil, nil, nil)

      result = @words_api.get_footnote(request)
      assert_equal false, result.nil?
      assert_equal false, result.footnote.nil?
      assert_equal " Footnote 1." + "\r\n", result.footnote.text
    end

    #
    # Test for updating footnote.
    #
    def test_update_footnote
      remote_file_name = "TestUpdateFootnote.docx"

      upload_file File.join(local_test_folder, footnote_folder + "/Footnote.doc"), remote_data_folder + "/" + remote_file_name

      request_footnote_dto = FootnoteUpdate.new({:Text => "new text is here"})
      request = UpdateFootnoteRequest.new(remote_file_name, request_footnote_dto, 0, "", remote_data_folder, nil, nil, nil, nil, nil, nil)

      result = @words_api.update_footnote(request)
      assert_equal false, result.nil?
      assert_equal false, result.footnote.nil?
      assert_equal " new text is here" + "\r\n", result.footnote.text
    end

    #
    # Test for updating footnote without node path.
    #
    def test_update_footnote_without_node_path
      remote_file_name = "TestUpdateFootnoteWithoutNodePath.docx"

      upload_file File.join(local_test_folder, footnote_folder + "/Footnote.doc"), remote_data_folder + "/" + remote_file_name

      request_footnote_dto = FootnoteUpdate.new({:Text => "new text is here"})
      request = UpdateFootnoteRequest.new(remote_file_name, request_footnote_dto, 0, nil, remote_data_folder, nil, nil, nil, nil, nil, nil)

      result = @words_api.update_footnote(request)
      assert_equal false, result.nil?
      assert_equal false, result.footnote.nil?
      assert_equal " new text is here" + "\r\n", result.footnote.text
    end
  end
end
