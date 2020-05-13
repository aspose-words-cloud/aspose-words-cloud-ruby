#
# --------------------------------------------------------------------------------------------------------------------
# <copyright company="Aspose" file="paragraphs_tests.rb">
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
  class ParagraphsTests < BaseTestContext
    def test_folder
      'DocumentElements/Paragraphs'
    end

    def test_list_folder
      'DocumentElements/ParagraphListFormat'
    end

    def test_tab_stop_folder
      'DocumentElements/Paragraphs'
    end

    #
    # Test for removing paragraph
    #
    def test_delete_paragraph
      filename = 'test_doc.docx'
      remote_name = 'TestDeleteParagraph.docx'
      index = 0

      upload_file File.join(local_common_folder, filename), File.join(remote_test_folder, test_folder, remote_name)

      request = DeleteParagraphRequest.new remote_name, '', index, remote_test_folder + test_folder
      result = @words_api.delete_paragraph request
      assert_equal TRUE, result.nil?
    end

    #
    # Test for removing paragraph without node path
    #
    def test_delete_paragraph_without_node_path
      filename = 'test_doc.docx'
      remote_name = 'TestDeleteParagraphWithoutNodePath.docx'
      index = 0

      upload_file File.join(local_common_folder, filename), File.join(remote_test_folder, test_folder, remote_name)

      request = DeleteParagraphWithoutNodePathRequest.new remote_name, index, remote_test_folder + test_folder
      result = @words_api.delete_paragraph_without_node_path request
      assert_equal TRUE, result.nil?
    end

    #
    # Test for getting paragraph
    #
    def test_get_paragraph
      filename = 'test_multi_pages.docx'
      remote_name = 'TestGetParagraph.docx'
      index = 0

      upload_file File.join(local_common_folder, filename), File.join(remote_test_folder, test_folder, remote_name)

      request = GetParagraphRequest.new remote_name, '', index, remote_test_folder + test_folder
      result = @words_api.get_paragraph request
      assert_equal FALSE, result.nil?
    end

    #
    # Test for getting paragraph without node path
    #
    def test_get_paragraph_without_node_path
      filename = 'test_multi_pages.docx'
      remote_name = 'TestGetParagraphWithoutNodePath.docx'
      index = 0

      upload_file File.join(local_common_folder, filename), File.join(remote_test_folder, test_folder, remote_name)

      request = GetParagraphWithoutNodePathRequest.new remote_name, index, remote_test_folder + test_folder
      result = @words_api.get_paragraph_without_node_path request
      assert_equal FALSE, result.nil?
    end

    #
    # Test for getting paragrah run
    #
    def test_get_run
      filename = 'test_multi_pages.docx'
      remote_name = 'TestGetRun.docx'
      index = 0

      upload_file File.join(local_common_folder, filename), File.join(remote_test_folder, test_folder, remote_name)

      request = GetRunRequest.new remote_name, 'paragraphs/0', index, remote_test_folder + test_folder
      result = @words_api.get_run request
      assert_equal FALSE, result.nil?
    end

    #
    # Test for getting paragraph font
    #
    def test_get_run_font
      filename = 'test_multi_pages.docx'
      remote_name = 'TestGetRunFont.docx'
      index = 0

      upload_file File.join(local_common_folder, filename), File.join(remote_test_folder, test_folder, remote_name)

      request = GetRunFontRequest.new remote_name, 'paragraphs/0', index, remote_test_folder + test_folder
      result = @words_api.get_run_font request
      assert_equal FALSE, result.nil?
    end

    #
    # Test for getting paragrah run
    #
    def test_get_runs
      filename = 'test_multi_pages.docx'
      remote_name = 'TestGetRuns.docx'

      upload_file File.join(local_common_folder, filename), File.join(remote_test_folder, test_folder, remote_name)

      request = GetRunsRequest.new remote_name, 'sections/0/paragraphs/0', remote_test_folder + test_folder
      result = @words_api.get_runs request
      assert_equal FALSE, result.nil?
    end

    #
    # Test for getting paragraphs
    #
    def test_get_paragraphs
      filename = 'test_multi_pages.docx'
      remote_name = 'TestGetParagraphs.docx'

      upload_file File.join(local_common_folder, filename), File.join(remote_test_folder, test_folder, remote_name)

      request = GetParagraphsRequest.new remote_name,'sections/0', remote_test_folder + test_folder
      result = @words_api.get_paragraphs request
      assert_equal FALSE, result.nil?
    end

    #
    # Test for getting paragraphs without node path
    #
    def test_get_paragraphs_without_node_path
      filename = 'test_multi_pages.docx'
      remote_name = 'TestGetParagraphsWithoutNodePath.docx'

      upload_file File.join(local_common_folder, filename), File.join(remote_test_folder, test_folder, remote_name)

      request = GetParagraphsWithoutNodePathRequest.new remote_name, remote_test_folder + test_folder
      result = @words_api.get_paragraphs_without_node_path request
      assert_equal FALSE, result.nil?
    end

    #
    # Test for updating paragraph font
    #
    def test_update_run_font
      filename = 'test_multi_pages.docx'
      remote_name = 'TestUpdateRunFont.docx'
      index = 0
      dest_name = remote_test_out + remote_name
      font_dto = Font.new({:Bold => true})

      upload_file File.join(local_common_folder, filename), File.join(remote_test_folder, test_folder, remote_name)

      request = UpdateRunFontRequest.new remote_name, font_dto, 'paragraphs/0', index, remote_test_folder + test_folder, :dest_file_name => dest_name
      result = @words_api.update_run_font request
      assert_equal FALSE, result.nil?
    end

    #
    # Test for inserting paragraph
    #
    def test_insert_paragraph
      filename = 'test_multi_pages.docx'
      remote_name = 'TestInsertParagraph.docx'
      paragraph = ParagraphInsert.new({:Text => 'This is a new paragraph for your document'})

      upload_file File.join(local_common_folder, filename), File.join(remote_test_folder, test_folder, remote_name)

      request = InsertParagraphRequest.new remote_name, paragraph, 'sections/0', remote_test_folder + test_folder, nil,
                                        nil,nil,nil,nil,
                                        nil
      result = @words_api.insert_paragraph request
      assert_equal FALSE, result.nil?
    end

    #
    # Test for paragraph rendering
    #
    def test_render_paragraph
      filename = 'test_multi_pages.docx'
      remote_name = 'TestRenderParagraph.docx'
      index = 0
      format = 'png'

      upload_file File.join(local_common_folder, filename), File.join(remote_test_folder, test_folder, remote_name)

      request = RenderParagraphRequest.new remote_name, format, '', index, remote_test_folder + test_folder
      result = @words_api.render_paragraph request
      assert result.length > 0, 'Error occurred while rendering'
    end

    #
    # Test for paragraph rendering without node path
    #
    def test_render_paragraph_without_node_path
      filename = 'test_multi_pages.docx'
      remote_name = 'TestRenderParagraphWithoutNodePath.docx'
      index = 0
      format = 'png'

      upload_file File.join(local_common_folder, filename), File.join(remote_test_folder, test_folder, remote_name)

      request = RenderParagraphWithoutNodePathRequest.new remote_name, format, index, remote_test_folder + test_folder
      result = @words_api.render_paragraph_without_node_path request
      assert result.length > 0, 'Error occurred while rendering'
    end

    #
    # Test for getting paragraph format
    #
    def test_get_paragraph_format
      filename = 'test_multi_pages.docx'
      remote_name = 'TestGetParagraphFormat.docx'
      index = 0

      upload_file File.join(local_common_folder, filename), File.join(remote_test_folder, test_folder, remote_name)

      request = GetParagraphFormatRequest.new remote_name, '', index, remote_test_folder + test_folder
      result = @words_api.get_paragraph_format request
      assert_equal FALSE, result.nil?
    end

    #
    # Test for getting paragraph format without node path
    #
    def test_get_paragraph_format_without_node_path
      filename = 'test_multi_pages.docx'
      remote_name = 'TestGetParagraphFormatWithoutNodePath.docx'
      index = 0

      upload_file File.join(local_common_folder, filename), File.join(remote_test_folder, test_folder, remote_name)

      request = GetParagraphFormatWithoutNodePathRequest.new remote_name, index, remote_test_folder + test_folder
      result = @words_api.get_paragraph_format_without_node_path request
      assert_equal FALSE, result.nil?
    end

    #
    # Test for updating paragraph format
    #
    def test_update_paragraph_format
      filename = 'test_multi_pages.docx'
      remote_name = 'TestUpdateParagraphFormat.docx'
      index = 0
      body = ParagraphFormat.new({:Alignment => 'Right'})

      upload_file File.join(local_common_folder, filename), File.join(remote_test_folder, test_folder, remote_name)

      request = UpdateParagraphFormatRequest.new remote_name, body, '', index, remote_test_folder + test_folder
      result = @words_api.update_paragraph_format request
      assert_equal FALSE, result.nil?
    end

    #
    # Test for getting paragraph list format
    #
    def test_get_paragraph_list_format
      filename = 'ParagraphGetListFormat.doc'
      index = 0

      upload_file File.join(local_test_folder, [test_list_folder, filename]), File.join(remote_test_folder, test_list_folder, filename)

      request = GetParagraphListFormatRequest.new filename, '', index, remote_test_folder + test_list_folder
      result = @words_api.get_paragraph_list_format request
      assert_equal FALSE, result.nil?
    end

    #
    # Test for getting paragraph list format without node path
    #
    def test_get_paragraph_list_format_without_node_path
      filename = 'ParagraphGetListFormat.doc'
      index = 0

      upload_file File.join(local_test_folder, [test_list_folder, filename]), File.join(remote_test_folder, test_list_folder, filename)

      request = GetParagraphListFormatWithoutNodePathRequest.new filename, index, remote_test_folder + test_list_folder
      result = @words_api.get_paragraph_list_format_without_node_path request
      assert_equal FALSE, result.nil?
    end

    #
    # Test for updating paragraph list format
    #
    def test_update_paragraph_list_format
      filename = 'ParagraphUpdateListFormat.doc'
      index = 0

      upload_file File.join(local_test_folder, [test_list_folder, filename]), File.join(remote_test_folder, test_list_folder, filename)

      dto = ListFormatUpdate.new
      dto.list_id = 2
      request = UpdateParagraphListFormatRequest.new filename, dto, '', index, remote_test_folder + test_list_folder
      result = @words_api.update_paragraph_list_format request
      assert_equal FALSE, result.nil?
    end

    #
    # Test for delete paragraph list format
    #
    def test_delete_paragraph_list_format
      filename = 'ParagraphDeleteListFormat.doc'
      index = 0

      upload_file File.join(local_test_folder, [test_list_folder, filename]), File.join(remote_test_folder, test_list_folder, filename)

      request = DeleteParagraphListFormatRequest.new filename, '', index, remote_test_folder + test_list_folder
      result = @words_api.delete_paragraph_list_format request
      assert_equal FALSE, result.nil?
    end

    #
    # Test for getting paragraph tab nodes
    #
    def test_get_paragraph_tab_stops
      filename = 'ParagraphTabStops.docx'
      index = 0

      upload_file File.join(local_test_folder, [test_tab_stop_folder, filename]), File.join(remote_test_folder, test_tab_stop_folder, filename)

      request = GetParagraphTabStopsRequest.new filename, '', index, remote_test_folder + test_tab_stop_folder
      result = @words_api.get_paragraph_tab_stops request
      assert_equal FALSE, result.nil?
    end

    #
    # Test for inserting paragraph tab stops
    #
    def test_insert_or_update_paragraph_tab_stop
      filename = 'ParagraphTabStops.docx'
      index = 0

      upload_file File.join(local_test_folder, [test_tab_stop_folder, filename]), File.join(remote_test_folder, test_tab_stop_folder, filename)

      dto = TabStopInsert.new
      dto.alignment = "Left"
      dto.leader = "None"
      dto.position = 72

      request = InsertOrUpdateParagraphTabStopRequest.new filename, '', dto, index, remote_test_folder + test_tab_stop_folder
      result = @words_api.insert_or_update_paragraph_tab_stop request
      assert_equal FALSE, result.nil?
    end

    #
    # Test for deleting paragraph tab stops
    #
    def test_delete_all_paragraph_tab_stops
      filename = 'ParagraphTabStops.docx'
      index = 0

      upload_file File.join(local_test_folder, [test_tab_stop_folder, filename]), File.join(remote_test_folder, test_tab_stop_folder, filename)

      request = DeleteAllParagraphTabStopsRequest.new filename, '', index, remote_test_folder + test_tab_stop_folder
      result = @words_api.delete_all_paragraph_tab_stops request
      assert_equal FALSE, result.nil?
    end

    #
    # Test for deleting a paragraph tab stop
    #
    def test_delete_paragraph_tab_stop
      filename = 'ParagraphTabStops.docx'
      index = 0

      upload_file File.join(local_test_folder, [test_tab_stop_folder, filename]), File.join(remote_test_folder, test_tab_stop_folder, filename)

      request = DeleteParagraphTabStopRequest.new filename, '', 72, index, remote_test_folder + test_tab_stop_folder
      result = @words_api.delete_paragraph_tab_stop request
      assert_equal FALSE, result.nil?
    end
  end
end
