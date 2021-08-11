# ------------------------------------------------------------------------------------
# <copyright company="Aspose" file="examples_tests.rb">
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
  require_relative 'base_test_context'
  class ExamplesTests < BaseTestContext
    def setup
      super
    end

    def test_accept_all_revisions
      remote_file_name= 'Sample.docx'

      accept_request = AcceptAllRevisionsRequest.new(remote_file_name, nil, nil, nil, nil, remote_file_name)
      @words_api.accept_all_revisions(accept_request)
    end

    def test_accept_all_revisions_online
      documents_dir = 'ExamplesData'
      accept_request = AcceptAllRevisionsOnlineRequest.new(File.open(File.join(documents_dir, 'Sample.docx')), nil, nil, nil)
      @words_api.accept_all_revisions_online(accept_request)
    end

    def test_append_document
      remote_file_name= 'Sample.docx'

      request_document_list_document_entries0 = DocumentEntry.new({:Href => remote_file_name, :ImportFormatMode => 'KeepSourceFormatting'})
      request_document_list_document_entries = [request_document_list_document_entries0]
      request_document_list = DocumentEntryList.new({:DocumentEntries => request_document_list_document_entries})
      append_request = AppendDocumentRequest.new(remote_file_name, request_document_list, nil, nil, nil, nil, remote_file_name, nil, nil)
      @words_api.append_document(append_request)
    end

    def test_append_document_online
      documents_dir = 'ExamplesData'
      request_document_list_document_entries0 = DocumentEntry.new({:Href => 'Sample.docx', :ImportFormatMode => 'KeepSourceFormatting'})
      request_document_list_document_entries = [request_document_list_document_entries0]
      request_document_list = DocumentEntryList.new({:DocumentEntries => request_document_list_document_entries})
      append_request = AppendDocumentOnlineRequest.new(File.open(File.join(documents_dir, 'Sample.docx')), request_document_list, nil, nil, nil, nil, nil)
      @words_api.append_document_online(append_request)
    end

    def test_apply_style_to_document_element
      request_style_apply = StyleApply.new({:StyleName => 'Heading 1'})
      apply_style_request = ApplyStyleToDocumentElementRequest.new('Sample.docx', 'paragraphs/1/paragraphFormat', request_style_apply, nil, nil, nil, nil, nil, nil, nil)
      @words_api.apply_style_to_document_element(apply_style_request)
    end

    def test_apply_style_to_document_element_online
      documents_dir = 'ExamplesData'
      request_style_apply = StyleApply.new({:StyleName => 'Heading 1'})
      apply_style_request = ApplyStyleToDocumentElementOnlineRequest.new(File.open(File.join(documents_dir, 'Sample.docx')), 'paragraphs/1/paragraphFormat', request_style_apply, nil, nil, nil, nil, nil)
      @words_api.apply_style_to_document_element_online(apply_style_request)
    end

    def test_build_report
      request_report_engine_settings_report_build_options = ['AllowMissingMembers', 'RemoveEmptyParagraphs']
      request_report_engine_settings = ReportEngineSettings.new({:DataSourceType => 'Json', :ReportBuildOptions => request_report_engine_settings_report_build_options})
      build_report_request = BuildReportRequest.new('Sample.docx', 'Data.json', request_report_engine_settings, nil, nil, nil, nil, nil)
      @words_api.build_report(build_report_request)
    end

    def test_build_report_online
      documents_dir = 'ExamplesData'
      request_report_engine_settings = ReportEngineSettings.new({:DataSourceType => 'Json', :DataSourceName => 'persons'})
      build_report_request = BuildReportOnlineRequest.new(File.open(File.join(documents_dir, 'Sample.docx')), 'Data.json', request_report_engine_settings, nil)
      @words_api.build_report_online(build_report_request)
    end

    def test_classify
      classify_request = ClassifyRequest.new('Try text classification', '3')
      @words_api.classify(classify_request)
    end

    def test_classify_document
      classify_request = ClassifyDocumentRequest.new('Sample.docx', nil, nil, nil, nil, '3', nil)
      @words_api.classify_document(classify_request)
    end

    def test_classify_document_online
      documents_dir = 'ExamplesData'
      classify_request = ClassifyDocumentOnlineRequest.new(File.open(File.join(documents_dir, 'Sample.docx')), nil, nil, '3', nil)
      @words_api.classify_document_online(classify_request)
    end

    def test_compare_document
      request_compare_data = CompareData.new({:Author => 'author', :ComparingWithDocument => 'TestCompareDocument2.doc', :DateTime => Date.iso8601('2015-10-26T00:00:00.0000000Z')})
      compare_request = CompareDocumentRequest.new('TestCompareDocument1.doc', request_compare_data, nil, nil, nil, nil, '/TestCompareDocumentOut.doc')
      @words_api.compare_document(compare_request)
    end

    def test_compare_document_online
      documents_dir = 'ExamplesData'
      request_compare_data = CompareData.new({:Author => 'author', :ComparingWithDocument => 'TestCompareDocument2.doc', :DateTime => Date.iso8601('2015-10-26T00:00:00.0000000Z')})
      compare_request = CompareDocumentOnlineRequest.new(File.open(File.join(documents_dir, 'compareTestDoc1.doc')), request_compare_data, File.open(File.join(documents_dir, 'compareTestDoc2.doc')), nil, nil, '/TestCompareDocumentOut.doc')
      @words_api.compare_document_online(compare_request)
    end

    def test_convert_document
      documents_dir = 'ExamplesData'
      convert_request = ConvertDocumentRequest.new(File.open(File.join(documents_dir, '/test_uploadfile.docx')), 'pdf', nil, nil, nil, nil)
      @words_api.convert_document(convert_request)
    end

    def test_copy_file
      copy_request = CopyFileRequest.new('/TestCopyFileDest.docx', 'Sample.docx', nil, nil, nil)
      @words_api.copy_file(copy_request)
    end

    def test_copy_folder
      folder_to_copy= '/TestCopyFolder'

      copy_request = CopyFolderRequest.new(folder_to_copy + 'Dest', folder_to_copy + 'Src', nil, nil)
      @words_api.copy_folder(copy_request)
    end

    def test_copy_style
      request_style_copy = StyleCopy.new({:StyleName => 'Heading 1'})
      copy_request = CopyStyleRequest.new('Sample.docx', request_style_copy, nil, nil, nil, nil, nil, nil, nil)
      @words_api.copy_style(copy_request)
    end

    def test_copy_style_online
      documents_dir = 'ExamplesData'
      request_style_copy = StyleCopy.new({:StyleName => 'Heading 1'})
      copy_request = CopyStyleOnlineRequest.new(File.open(File.join(documents_dir, 'Sample.docx')), request_style_copy, nil, nil, nil, nil, nil)
      @words_api.copy_style_online(copy_request)
    end

    def test_create_document
      create_request = CreateDocumentRequest.new('Sample.docx', nil, nil)
      @words_api.create_document(create_request)
    end

    def test_create_folder
      create_request = CreateFolderRequest.new('/TestCreateFolder', nil)
      @words_api.create_folder(create_request)
    end

    def test_create_or_update_document_property
      remote_file_name= 'Sample.docx'

      request_property = DocumentPropertyCreateOrUpdate.new({:Value => 'Imran Anwar'})
      create_request = CreateOrUpdateDocumentPropertyRequest.new(remote_file_name, 'AsposeAuthor', request_property, nil, nil, nil, nil, remote_file_name, nil, nil)
      @words_api.create_or_update_document_property(create_request)
    end

    def test_create_or_update_document_property_online
      documents_dir = 'ExamplesData'
      request_property = DocumentPropertyCreateOrUpdate.new({:Value => 'Imran Anwar'})
      create_request = CreateOrUpdateDocumentPropertyOnlineRequest.new(File.open(File.join(documents_dir, 'Sample.docx')), 'AsposeAuthor', request_property, nil, nil, nil, nil, nil)
      @words_api.create_or_update_document_property_online(create_request)
    end

    def test_delete_all_paragraph_tab_stops
      delete_request = DeleteAllParagraphTabStopsRequest.new('Sample.docx', 0, nil, nil, nil, nil, nil, nil)
      @words_api.delete_all_paragraph_tab_stops(delete_request)
    end

    def test_delete_all_paragraph_tab_stops_online
      documents_dir = 'ExamplesData'
      delete_request = DeleteAllParagraphTabStopsOnlineRequest.new(File.open(File.join(documents_dir, '/ParagraphTabStops.docx')), 0, '', nil, nil, nil)
      @words_api.delete_all_paragraph_tab_stops_online(delete_request)
    end

    def test_delete_border
      delete_request = DeleteBorderRequest.new('Sample.docx', 'left', 'tables/1/rows/0/cells/0', nil, nil, nil, nil, nil, nil, nil)
      @words_api.delete_border(delete_request)
    end

    def test_delete_border_online
      documents_dir = 'ExamplesData'
      delete_request = DeleteBorderOnlineRequest.new(File.open(File.join(documents_dir, 'Sample.docx')), 'left', 'tables/1/rows/0/cells/0', nil, nil, nil, nil, nil)
      @words_api.delete_border_online(delete_request)
    end

    def test_delete_borders
      delete_request = DeleteBordersRequest.new('Sample.docx', 'tables/1/rows/0/cells/0', nil, nil, nil, nil, nil, nil, nil)
      @words_api.delete_borders(delete_request)
    end

    def test_delete_borders_online
      documents_dir = 'ExamplesData'
      delete_request = DeleteBordersOnlineRequest.new(File.open(File.join(documents_dir, 'Sample.docx')), 'tables/1/rows/0/cells/0', nil, nil, nil, nil, nil)
      @words_api.delete_borders_online(delete_request)
    end

    def test_delete_comment
      remote_file_name= 'Sample.docx'

      delete_request = DeleteCommentRequest.new(remote_file_name, 0, nil, nil, nil, nil, remote_file_name, nil, nil)
      @words_api.delete_comment(delete_request)
    end

    def test_delete_comment_online
      documents_dir = 'ExamplesData'
      delete_request = DeleteCommentOnlineRequest.new(File.open(File.join(documents_dir, 'Sample.docx')), 0, nil, nil, nil, nil, nil)
      @words_api.delete_comment_online(delete_request)
    end

    def test_delete_comments
      remote_file_name= 'Sample.docx'

      delete_request = DeleteCommentsRequest.new(remote_file_name, nil, nil, nil, nil, remote_file_name, nil, nil)
      @words_api.delete_comments(delete_request)
    end

    def test_delete_comments_online
      documents_dir = 'ExamplesData'
      delete_request = DeleteCommentsOnlineRequest.new(File.open(File.join(documents_dir, 'Sample.docx')), nil, nil, nil, nil, nil)
      @words_api.delete_comments_online(delete_request)
    end

    def test_delete_custom_xml_part
      remote_file_name= 'Sample.docx'

      delete_request = DeleteCustomXmlPartRequest.new(remote_file_name, 0, nil, nil, nil, nil, remote_file_name, nil, nil)
      @words_api.delete_custom_xml_part(delete_request)
    end

    def test_delete_custom_xml_part_online
      documents_dir = 'ExamplesData'
      delete_request = DeleteCustomXmlPartOnlineRequest.new(File.open(File.join(documents_dir, 'Sample.docx')), 0, nil, nil, nil, nil, nil)
      @words_api.delete_custom_xml_part_online(delete_request)
    end

    def test_delete_custom_xml_parts
      remote_file_name= 'Sample.docx'

      delete_request = DeleteCustomXmlPartsRequest.new(remote_file_name, nil, nil, nil, nil, remote_file_name, nil, nil)
      @words_api.delete_custom_xml_parts(delete_request)
    end

    def test_delete_custom_xml_parts_online
      documents_dir = 'ExamplesData'
      delete_request = DeleteCustomXmlPartsOnlineRequest.new(File.open(File.join(documents_dir, 'Sample.docx')), nil, nil, nil, nil, nil)
      @words_api.delete_custom_xml_parts_online(delete_request)
    end

    def test_delete_document_property
      remote_file_name= 'Sample.docx'

      delete_request = DeleteDocumentPropertyRequest.new(remote_file_name, 'testProp', nil, nil, nil, nil, remote_file_name, nil, nil)
      @words_api.delete_document_property(delete_request)
    end

    def test_delete_document_property_online
      documents_dir = 'ExamplesData'
      delete_request = DeleteDocumentPropertyOnlineRequest.new(File.open(File.join(documents_dir, 'Sample.docx')), 'testProp', nil, nil, nil, nil, nil)
      @words_api.delete_document_property_online(delete_request)
    end

    def test_delete_drawing_object
      delete_request = DeleteDrawingObjectRequest.new('Sample.docx', 0, nil, nil, nil, nil, nil, nil, nil, nil)
      @words_api.delete_drawing_object(delete_request)
    end

    def test_delete_drawing_object_online
      documents_dir = 'ExamplesData'
      delete_request = DeleteDrawingObjectOnlineRequest.new(File.open(File.join(documents_dir, 'Sample.docx')), 0, '', nil, nil, nil, nil, nil)
      @words_api.delete_drawing_object_online(delete_request)
    end

    def test_delete_field
      delete_request = DeleteFieldRequest.new('Sample.docx', 0, nil, nil, nil, nil, nil, nil, nil, nil)
      @words_api.delete_field(delete_request)
    end

    def test_delete_field_online
      documents_dir = 'ExamplesData'
      delete_request = DeleteFieldOnlineRequest.new(File.open(File.join(documents_dir, '/GetField.docx')), 0, 'sections/0/paragraphs/0', nil, nil, nil, nil, nil)
      @words_api.delete_field_online(delete_request)
    end

    def test_delete_fields
      delete_request = DeleteFieldsRequest.new('Sample.docx', '', nil, nil, nil, nil, nil, nil, nil)
      @words_api.delete_fields(delete_request)
    end

    def test_delete_fields_online
      documents_dir = 'ExamplesData'
      delete_request = DeleteFieldsOnlineRequest.new(File.open(File.join(documents_dir, 'Sample.docx')), '', nil, nil, nil, nil, nil)
      @words_api.delete_fields_online(delete_request)
    end

    def test_delete_file
      delete_request = DeleteFileRequest.new('Sample.docx', nil, nil)
      @words_api.delete_file(delete_request)
    end

    def test_delete_folder
      delete_request = DeleteFolderRequest.new('', nil, nil)
      @words_api.delete_folder(delete_request)
    end

    def test_delete_footnote
      delete_request = DeleteFootnoteRequest.new('Sample.docx', 0, nil, nil, nil, nil, nil, nil, nil, nil)
      @words_api.delete_footnote(delete_request)
    end

    def test_delete_footnote_online
      documents_dir = 'ExamplesData'
      delete_request = DeleteFootnoteOnlineRequest.new(File.open(File.join(documents_dir, '/Footnote.doc')), 0, '', nil, nil, nil, nil, nil)
      @words_api.delete_footnote_online(delete_request)
    end

    def test_delete_form_field
      remote_file_name= 'Sample.docx'

      delete_request = DeleteFormFieldRequest.new(remote_file_name, 0, nil, nil, nil, nil, nil, remote_file_name, nil, nil)
      @words_api.delete_form_field(delete_request)
    end

    def test_delete_form_field_online
      documents_dir = 'ExamplesData'
      delete_request = DeleteFormFieldOnlineRequest.new(File.open(File.join(documents_dir, '/FormFilled.docx')), 0, 'sections/0', nil, nil, nil, nil, nil)
      @words_api.delete_form_field_online(delete_request)
    end

    def test_delete_header_footer
      delete_request = DeleteHeaderFooterRequest.new('Sample.docx', '', 0, nil, nil, nil, nil, nil, nil, nil)
      @words_api.delete_header_footer(delete_request)
    end

    def test_delete_header_footer_online
      documents_dir = 'ExamplesData'
      delete_request = DeleteHeaderFooterOnlineRequest.new(File.open(File.join(documents_dir, 'DocumentElements/HeaderFooters/HeadersFooters.doc')), '', 0, nil, nil, nil, nil, nil)
      @words_api.delete_header_footer_online(delete_request)
    end

    def test_delete_headers_footers
      delete_request = DeleteHeadersFootersRequest.new('Sample.docx', '', nil, nil, nil, nil, nil, nil, nil, nil)
      @words_api.delete_headers_footers(delete_request)
    end

    def test_delete_headers_footers_online
      documents_dir = 'ExamplesData'
      delete_request = DeleteHeadersFootersOnlineRequest.new(File.open(File.join(documents_dir, 'DocumentElements/HeaderFooters/HeadersFooters.doc')), '', nil, nil, nil, nil, nil, nil)
      @words_api.delete_headers_footers_online(delete_request)
    end

    def test_delete_macros
      delete_request = DeleteMacrosRequest.new('Sample.docx', nil, nil, nil, nil, nil, nil, nil)
      @words_api.delete_macros(delete_request)
    end

    def test_delete_macros_online
      documents_dir = 'ExamplesData'
      delete_request = DeleteMacrosOnlineRequest.new(File.open(File.join(documents_dir, 'Sample.docx')), nil, nil, nil, nil, nil)
      @words_api.delete_macros_online(delete_request)
    end

    def test_delete_office_math_object
      delete_request = DeleteOfficeMathObjectRequest.new('Sample.docx', 0, nil, nil, nil, nil, nil, nil, nil, nil)
      @words_api.delete_office_math_object(delete_request)
    end

    def test_delete_office_math_object_online
      documents_dir = 'ExamplesData'
      delete_request = DeleteOfficeMathObjectOnlineRequest.new(File.open(File.join(documents_dir, 'Sample.docx')), 0, '', nil, nil, nil, nil, nil)
      @words_api.delete_office_math_object_online(delete_request)
    end

    def test_delete_paragraph
      delete_request = DeleteParagraphRequest.new('Sample.docx', 0, nil, nil, nil, nil, nil, nil, nil, nil)
      @words_api.delete_paragraph(delete_request)
    end

    def test_delete_paragraph_list_format
      delete_request = DeleteParagraphListFormatRequest.new('Sample.docx', 0, nil, nil, nil, nil, nil, nil, nil, nil)
      @words_api.delete_paragraph_list_format(delete_request)
    end

    def test_delete_paragraph_list_format_online
      documents_dir = 'ExamplesData'
      delete_request = DeleteParagraphListFormatOnlineRequest.new(File.open(File.join(documents_dir, '/ParagraphDeleteListFormat.doc')), 0, '', nil, nil, nil, nil, nil)
      @words_api.delete_paragraph_list_format_online(delete_request)
    end

    def test_delete_paragraph_online
      documents_dir = 'ExamplesData'
      delete_request = DeleteParagraphOnlineRequest.new(File.open(File.join(documents_dir, 'Sample.docx')), 0, '', nil, nil, nil, nil, nil)
      @words_api.delete_paragraph_online(delete_request)
    end

    def test_delete_paragraph_tab_stop
      delete_request = DeleteParagraphTabStopRequest.new('Sample.docx', 72.0, 0, nil, nil, nil, nil, nil, nil)
      @words_api.delete_paragraph_tab_stop(delete_request)
    end

    def test_delete_paragraph_tab_stop_online
      documents_dir = 'ExamplesData'
      delete_request = DeleteParagraphTabStopOnlineRequest.new(File.open(File.join(documents_dir, '/ParagraphTabStops.docx')), 72.0, 0, '', nil, nil, nil)
      @words_api.delete_paragraph_tab_stop_online(delete_request)
    end

    def test_delete_run
      delete_request = DeleteRunRequest.new('Sample.docx', 'paragraphs/1', 0, nil, nil, nil, nil, nil, nil, nil)
      @words_api.delete_run(delete_request)
    end

    def test_delete_run_online
      documents_dir = 'ExamplesData'
      delete_request = DeleteRunOnlineRequest.new(File.open(File.join(documents_dir, 'DocumentElements/Runs/Run.doc')), 'paragraphs/1', 0, nil, nil, nil, nil, nil)
      @words_api.delete_run_online(delete_request)
    end

    def test_delete_section
      delete_request = DeleteSectionRequest.new('Sample.docx', 0, nil, nil, nil, nil, nil, nil, nil)
      @words_api.delete_section(delete_request)
    end

    def test_delete_section_online
      documents_dir = 'ExamplesData'
      delete_request = DeleteSectionOnlineRequest.new(File.open(File.join(documents_dir, 'Sample.docx')), 0, nil, nil, nil, nil, nil)
      @words_api.delete_section_online(delete_request)
    end

    def test_delete_table
      delete_request = DeleteTableRequest.new('Sample.docx', 1, nil, nil, nil, nil, nil, nil, nil, nil)
      @words_api.delete_table(delete_request)
    end

    def test_delete_table_cell
      delete_request = DeleteTableCellRequest.new('Sample.docx', 'sections/0/tables/2/rows/0', 0, nil, nil, nil, nil, nil, nil, nil)
      @words_api.delete_table_cell(delete_request)
    end

    def test_delete_table_cell_online
      documents_dir = 'ExamplesData'
      delete_request = DeleteTableCellOnlineRequest.new(File.open(File.join(documents_dir, 'Sample.docx')), 'sections/0/tables/2/rows/0', 0, nil, nil, nil, nil, nil)
      @words_api.delete_table_cell_online(delete_request)
    end

    def test_delete_table_online
      documents_dir = 'ExamplesData'
      delete_request = DeleteTableOnlineRequest.new(File.open(File.join(documents_dir, 'Sample.docx')), 1, '', nil, nil, nil, nil, nil)
      @words_api.delete_table_online(delete_request)
    end

    def test_delete_table_row
      delete_request = DeleteTableRowRequest.new('Sample.docx', 'tables/1', 0, nil, nil, nil, nil, nil, nil, nil)
      @words_api.delete_table_row(delete_request)
    end

    def test_delete_table_row_online
      documents_dir = 'ExamplesData'
      delete_request = DeleteTableRowOnlineRequest.new(File.open(File.join(documents_dir, 'Sample.docx')), 'tables/1', 0, nil, nil, nil, nil, nil)
      @words_api.delete_table_row_online(delete_request)
    end

    def test_delete_watermark
      remote_file_name= 'Sample.docx'

      delete_request = DeleteWatermarkRequest.new(remote_file_name, nil, nil, nil, nil, remote_file_name, nil, nil)
      @words_api.delete_watermark(delete_request)
    end

    def test_delete_watermark_online
      documents_dir = 'ExamplesData'
      delete_request = DeleteWatermarkOnlineRequest.new(File.open(File.join(documents_dir, 'Sample.docx')), nil, nil, nil, nil, nil)
      @words_api.delete_watermark_online(delete_request)
    end

    def test_download_file
      download_request = DownloadFileRequest.new('Sample.docx', nil, nil)
      @words_api.download_file(download_request)
    end

    def test_execute_mail_merge
      remote_file_name= 'Sample.docx'

      mail_merge_request = ExecuteMailMergeRequest.new(remote_file_name, 'TestExecuteTemplateData.txt', nil, nil, nil, nil, nil, nil, nil, nil, remote_file_name)
      @words_api.execute_mail_merge(mail_merge_request)
    end

    def test_execute_mail_merge_online
      documents_dir = 'ExamplesData'
      mail_merge_request = ExecuteMailMergeOnlineRequest.new(File.open(File.join(documents_dir, 'TestExecuteTemplate.doc')), File.open(File.join(documents_dir, 'TestExecuteTemplateData.txt')), nil, nil, nil)
      @words_api.execute_mail_merge_online(mail_merge_request)
    end

    def test_get_available_fonts
      request = GetAvailableFontsRequest.new(nil)
      @words_api.get_available_fonts(request)
    end

    def test_get_bookmark_by_name
      request = GetBookmarkByNameRequest.new('Sample.docx', 'aspose', nil, nil, nil, nil)
      @words_api.get_bookmark_by_name(request)
    end

    def test_get_bookmark_by_name_online
      documents_dir = 'ExamplesData'
      request = GetBookmarkByNameOnlineRequest.new(File.open(File.join(documents_dir, 'Sample.docx')), 'aspose', nil, nil)
      @words_api.get_bookmark_by_name_online(request)
    end

    def test_get_bookmarks
      request = GetBookmarksRequest.new('Sample.docx', nil, nil, nil, nil)
      @words_api.get_bookmarks(request)
    end

    def test_get_bookmarks_online
      documents_dir = 'ExamplesData'
      request = GetBookmarksOnlineRequest.new(File.open(File.join(documents_dir, 'Sample.docx')), nil, nil)
      @words_api.get_bookmarks_online(request)
    end

    def test_get_border
      request = GetBorderRequest.new('Sample.docx', 'left', 'tables/1/rows/0/cells/0', nil, nil, nil, nil)
      @words_api.get_border(request)
    end

    def test_get_border_online
      documents_dir = 'ExamplesData'
      request = GetBorderOnlineRequest.new(File.open(File.join(documents_dir, 'Sample.docx')), 'left', 'tables/1/rows/0/cells/0', nil, nil)
      @words_api.get_border_online(request)
    end

    def test_get_borders
      request = GetBordersRequest.new('Sample.docx', 'tables/1/rows/0/cells/0', nil, nil, nil, nil)
      @words_api.get_borders(request)
    end

    def test_get_borders_online
      documents_dir = 'ExamplesData'
      request = GetBordersOnlineRequest.new(File.open(File.join(documents_dir, 'Sample.docx')), 'tables/1/rows/0/cells/0', nil, nil)
      @words_api.get_borders_online(request)
    end

    def test_get_comment
      request = GetCommentRequest.new('Sample.docx', 0, nil, nil, nil, nil)
      @words_api.get_comment(request)
    end

    def test_get_comment_online
      documents_dir = 'ExamplesData'
      request = GetCommentOnlineRequest.new(File.open(File.join(documents_dir, 'Sample.docx')), 0, nil, nil)
      @words_api.get_comment_online(request)
    end

    def test_get_comments
      request = GetCommentsRequest.new('Sample.docx', nil, nil, nil, nil)
      @words_api.get_comments(request)
    end

    def test_get_comments_online
      documents_dir = 'ExamplesData'
      request = GetCommentsOnlineRequest.new(File.open(File.join(documents_dir, 'Sample.docx')), nil, nil)
      @words_api.get_comments_online(request)
    end

    def test_get_custom_xml_part
      request = GetCustomXmlPartRequest.new('Sample.docx', 0, nil, nil, nil, nil)
      @words_api.get_custom_xml_part(request)
    end

    def test_get_custom_xml_part_online
      documents_dir = 'ExamplesData'
      request = GetCustomXmlPartOnlineRequest.new(File.open(File.join(documents_dir, 'Sample.docx')), 0, nil, nil)
      @words_api.get_custom_xml_part_online(request)
    end

    def test_get_custom_xml_parts
      request = GetCustomXmlPartsRequest.new('Sample.docx', nil, nil, nil, nil)
      @words_api.get_custom_xml_parts(request)
    end

    def test_get_custom_xml_parts_online
      documents_dir = 'ExamplesData'
      request = GetCustomXmlPartsOnlineRequest.new(File.open(File.join(documents_dir, 'Sample.docx')), nil, nil)
      @words_api.get_custom_xml_parts_online(request)
    end

    def test_get_document
      request = GetDocumentRequest.new('Sample.docx', nil, nil, nil, nil)
      @words_api.get_document(request)
    end

    def test_get_document_drawing_object_by_index
      request = GetDocumentDrawingObjectByIndexRequest.new('Sample.docx', 0, nil, nil, nil, nil, nil)
      @words_api.get_document_drawing_object_by_index(request)
    end

    def test_get_document_drawing_object_by_index_online
      documents_dir = 'ExamplesData'
      request = GetDocumentDrawingObjectByIndexOnlineRequest.new(File.open(File.join(documents_dir, 'Sample.docx')), 0, 'sections/0', nil, nil)
      @words_api.get_document_drawing_object_by_index_online(request)
    end

    def test_get_document_drawing_object_image_data
      request = GetDocumentDrawingObjectImageDataRequest.new('Sample.docx', 0, nil, nil, nil, nil, nil)
      @words_api.get_document_drawing_object_image_data(request)
    end

    def test_get_document_drawing_object_image_data_online
      documents_dir = 'ExamplesData'
      request = GetDocumentDrawingObjectImageDataOnlineRequest.new(File.open(File.join(documents_dir, 'Sample.docx')), 0, 'sections/0', nil, nil)
      @words_api.get_document_drawing_object_image_data_online(request)
    end

    def test_get_document_drawing_object_ole_data
      request = GetDocumentDrawingObjectOleDataRequest.new('Sample.docx', 0, nil, nil, nil, nil, nil)
      @words_api.get_document_drawing_object_ole_data(request)
    end

    def test_get_document_drawing_object_ole_data_online
      documents_dir = 'ExamplesData'
      request = GetDocumentDrawingObjectOleDataOnlineRequest.new(File.open(File.join(documents_dir, 'Sample.docx')), 0, 'sections/0', nil, nil)
      @words_api.get_document_drawing_object_ole_data_online(request)
    end

    def test_get_document_drawing_objects
      request = GetDocumentDrawingObjectsRequest.new('Sample.docx', nil, nil, nil, nil, nil)
      @words_api.get_document_drawing_objects(request)
    end

    def test_get_document_drawing_objects_online
      documents_dir = 'ExamplesData'
      request = GetDocumentDrawingObjectsOnlineRequest.new(File.open(File.join(documents_dir, 'Sample.docx')), 'sections/0', nil, nil)
      @words_api.get_document_drawing_objects_online(request)
    end

    def test_get_document_field_names
      request = GetDocumentFieldNamesRequest.new('Sample.docx', nil, nil, nil, nil, nil)
      @words_api.get_document_field_names(request)
    end

    def test_get_document_field_names_online
      documents_dir = 'ExamplesData'
      request = GetDocumentFieldNamesOnlineRequest.new(File.open(File.join(documents_dir, 'Sample.docx')), nil, nil, true)
      @words_api.get_document_field_names_online(request)
    end

    def test_get_document_hyperlink_by_index
      request = GetDocumentHyperlinkByIndexRequest.new('Sample.docx', 0, nil, nil, nil, nil)
      @words_api.get_document_hyperlink_by_index(request)
    end

    def test_get_document_hyperlink_by_index_online
      documents_dir = 'ExamplesData'
      request = GetDocumentHyperlinkByIndexOnlineRequest.new(File.open(File.join(documents_dir, 'Sample.docx')), 0, nil, nil)
      @words_api.get_document_hyperlink_by_index_online(request)
    end

    def test_get_document_hyperlinks
      request = GetDocumentHyperlinksRequest.new('Sample.docx', nil, nil, nil, nil)
      @words_api.get_document_hyperlinks(request)
    end

    def test_get_document_hyperlinks_online
      documents_dir = 'ExamplesData'
      request = GetDocumentHyperlinksOnlineRequest.new(File.open(File.join(documents_dir, 'Sample.docx')), nil, nil)
      @words_api.get_document_hyperlinks_online(request)
    end

    def test_get_document_properties
      request = GetDocumentPropertiesRequest.new('Sample.docx', nil, nil, nil, nil)
      @words_api.get_document_properties(request)
    end

    def test_get_document_properties_online
      documents_dir = 'ExamplesData'
      request = GetDocumentPropertiesOnlineRequest.new(File.open(File.join(documents_dir, 'Sample.docx')), nil, nil)
      @words_api.get_document_properties_online(request)
    end

    def test_get_document_property
      request = GetDocumentPropertyRequest.new('Sample.docx', 'Author', nil, nil, nil, nil)
      @words_api.get_document_property(request)
    end

    def test_get_document_property_online
      documents_dir = 'ExamplesData'
      request = GetDocumentPropertyOnlineRequest.new(File.open(File.join(documents_dir, 'Sample.docx')), 'Author', nil, nil)
      @words_api.get_document_property_online(request)
    end

    def test_get_document_protection
      request = GetDocumentProtectionRequest.new('Sample.docx', nil, nil, nil, nil)
      @words_api.get_document_protection(request)
    end

    def test_get_document_protection_online
      documents_dir = 'ExamplesData'
      request = GetDocumentProtectionOnlineRequest.new(File.open(File.join(documents_dir, 'Sample.docx')), nil, nil)
      @words_api.get_document_protection_online(request)
    end

    def test_get_document_statistics
      request = GetDocumentStatisticsRequest.new('Sample.docx', nil, nil, nil, nil, nil, nil, nil)
      @words_api.get_document_statistics(request)
    end

    def test_get_document_statistics_online
      documents_dir = 'ExamplesData'
      request = GetDocumentStatisticsOnlineRequest.new(File.open(File.join(documents_dir, 'Sample.docx')), nil, nil, nil, nil, nil)
      @words_api.get_document_statistics_online(request)
    end

    def test_get_document_with_format
      request = GetDocumentWithFormatRequest.new('Sample.docx', 'text', nil, nil, nil, nil, '/TestGetDocumentWithFormatAndOutPath.text', nil)
      @words_api.get_document_with_format(request)
    end

    def test_get_field
      request = GetFieldRequest.new('Sample.docx', 0, nil, nil, nil, nil, nil)
      @words_api.get_field(request)
    end

    def test_get_field_online
      documents_dir = 'ExamplesData'
      request = GetFieldOnlineRequest.new(File.open(File.join(documents_dir, '/GetField.docx')), 0, 'sections/0/paragraphs/0', nil, nil)
      @words_api.get_field_online(request)
    end

    def test_get_fields
      request = GetFieldsRequest.new('Sample.docx', nil, nil, nil, nil, nil)
      @words_api.get_fields(request)
    end

    def test_get_fields_online
      documents_dir = 'ExamplesData'
      request = GetFieldsOnlineRequest.new(File.open(File.join(documents_dir, '/GetField.docx')), 'sections/0', nil, nil)
      @words_api.get_fields_online(request)
    end

    def test_get_files_list
      request = GetFilesListRequest.new('', nil)
      @words_api.get_files_list(request)
    end

    def test_get_footnote
      request = GetFootnoteRequest.new('Sample.docx', 0, nil, nil, nil, nil, nil)
      @words_api.get_footnote(request)
    end

    def test_get_footnote_online
      documents_dir = 'ExamplesData'
      request = GetFootnoteOnlineRequest.new(File.open(File.join(documents_dir, '/Footnote.doc')), 0, '', nil, nil)
      @words_api.get_footnote_online(request)
    end

    def test_get_footnotes
      request = GetFootnotesRequest.new('Sample.docx', nil, nil, nil, nil, nil)
      @words_api.get_footnotes(request)
    end

    def test_get_footnotes_online
      documents_dir = 'ExamplesData'
      request = GetFootnotesOnlineRequest.new(File.open(File.join(documents_dir, '/Footnote.doc')), '', nil, nil)
      @words_api.get_footnotes_online(request)
    end

    def test_get_form_field
      request = GetFormFieldRequest.new('Sample.docx', 0, nil, nil, nil, nil, nil)
      @words_api.get_form_field(request)
    end

    def test_get_form_field_online
      documents_dir = 'ExamplesData'
      request = GetFormFieldOnlineRequest.new(File.open(File.join(documents_dir, '/FormFilled.docx')), 0, 'sections/0', nil, nil)
      @words_api.get_form_field_online(request)
    end

    def test_get_form_fields
      request = GetFormFieldsRequest.new('Sample.docx', nil, nil, nil, nil, nil)
      @words_api.get_form_fields(request)
    end

    def test_get_form_fields_online
      documents_dir = 'ExamplesData'
      request = GetFormFieldsOnlineRequest.new(File.open(File.join(documents_dir, '/FormFilled.docx')), 'sections/0', nil, nil)
      @words_api.get_form_fields_online(request)
    end

    def test_get_header_footer
      request = GetHeaderFooterRequest.new('Sample.docx', 0, nil, nil, nil, nil, nil)
      @words_api.get_header_footer(request)
    end

    def test_get_header_footer_of_section
      request = GetHeaderFooterOfSectionRequest.new('Sample.docx', 0, 0, nil, nil, nil, nil, nil)
      @words_api.get_header_footer_of_section(request)
    end

    def test_get_header_footer_of_section_online
      documents_dir = 'ExamplesData'
      request = GetHeaderFooterOfSectionOnlineRequest.new(File.open(File.join(documents_dir, 'DocumentElements/HeaderFooters/HeadersFooters.doc')), 0, 0, nil, nil, nil)
      @words_api.get_header_footer_of_section_online(request)
    end

    def test_get_header_footer_online
      documents_dir = 'ExamplesData'
      request = GetHeaderFooterOnlineRequest.new(File.open(File.join(documents_dir, 'DocumentElements/HeaderFooters/HeadersFooters.doc')), 0, nil, nil, nil)
      @words_api.get_header_footer_online(request)
    end

    def test_get_header_footers
      request = GetHeaderFootersRequest.new('Sample.docx', '', nil, nil, nil, nil, nil)
      @words_api.get_header_footers(request)
    end

    def test_get_header_footers_online
      documents_dir = 'ExamplesData'
      request = GetHeaderFootersOnlineRequest.new(File.open(File.join(documents_dir, 'DocumentElements/HeaderFooters/HeadersFooters.doc')), '', nil, nil, nil)
      @words_api.get_header_footers_online(request)
    end

    def test_get_list
      request = GetListRequest.new('TestGetLists.doc', 1, nil, nil, nil, nil)
      @words_api.get_list(request)
    end

    def test_get_list_online
      documents_dir = 'ExamplesData'
      request = GetListOnlineRequest.new(File.open(File.join(documents_dir, 'DocumentElements/Lists/ListsGet.doc')), 1, nil, nil)
      @words_api.get_list_online(request)
    end

    def test_get_lists
      request = GetListsRequest.new('TestGetLists.doc', nil, nil, nil, nil)
      @words_api.get_lists(request)
    end

    def test_get_lists_online
      documents_dir = 'ExamplesData'
      request = GetListsOnlineRequest.new(File.open(File.join(documents_dir, 'DocumentElements/Lists/ListsGet.doc')), nil, nil)
      @words_api.get_lists_online(request)
    end

    def test_get_office_math_object
      request = GetOfficeMathObjectRequest.new('Sample.docx', 0, nil, nil, nil, nil, nil)
      @words_api.get_office_math_object(request)
    end

    def test_get_office_math_object_online
      documents_dir = 'ExamplesData'
      request = GetOfficeMathObjectOnlineRequest.new(File.open(File.join(documents_dir, 'Sample.docx')), 0, '', nil, nil)
      @words_api.get_office_math_object_online(request)
    end

    def test_get_office_math_objects
      request = GetOfficeMathObjectsRequest.new('Sample.docx', nil, nil, nil, nil, nil)
      @words_api.get_office_math_objects(request)
    end

    def test_get_office_math_objects_online
      documents_dir = 'ExamplesData'
      request = GetOfficeMathObjectsOnlineRequest.new(File.open(File.join(documents_dir, 'Sample.docx')), '', nil, nil)
      @words_api.get_office_math_objects_online(request)
    end

    def test_get_paragraph
      request = GetParagraphRequest.new('Sample.docx', 0, nil, nil, nil, nil, nil)
      @words_api.get_paragraph(request)
    end

    def test_get_paragraph_format
      request = GetParagraphFormatRequest.new('Sample.docx', 0, nil, nil, nil, nil, nil)
      @words_api.get_paragraph_format(request)
    end

    def test_get_paragraph_format_online
      documents_dir = 'ExamplesData'
      request = GetParagraphFormatOnlineRequest.new(File.open(File.join(documents_dir, 'Sample.docx')), 0, '', nil, nil)
      @words_api.get_paragraph_format_online(request)
    end

    def test_get_paragraph_list_format
      request = GetParagraphListFormatRequest.new('Sample.docx', 0, nil, nil, nil, nil, nil)
      @words_api.get_paragraph_list_format(request)
    end

    def test_get_paragraph_list_format_online
      documents_dir = 'ExamplesData'
      request = GetParagraphListFormatOnlineRequest.new(File.open(File.join(documents_dir, '/ParagraphGetListFormat.doc')), 0, '', nil, nil)
      @words_api.get_paragraph_list_format_online(request)
    end

    def test_get_paragraph_online
      documents_dir = 'ExamplesData'
      request = GetParagraphOnlineRequest.new(File.open(File.join(documents_dir, 'Sample.docx')), 0, 'sections/0', nil, nil)
      @words_api.get_paragraph_online(request)
    end

    def test_get_paragraphs
      request = GetParagraphsRequest.new('Sample.docx', nil, nil, nil, nil, nil)
      @words_api.get_paragraphs(request)
    end

    def test_get_paragraphs_online
      documents_dir = 'ExamplesData'
      request = GetParagraphsOnlineRequest.new(File.open(File.join(documents_dir, 'Sample.docx')), 'sections/0', nil, nil)
      @words_api.get_paragraphs_online(request)
    end

    def test_get_paragraph_tab_stops
      request = GetParagraphTabStopsRequest.new('Sample.docx', 0, nil, nil, nil, nil, nil)
      @words_api.get_paragraph_tab_stops(request)
    end

    def test_get_paragraph_tab_stops_online
      documents_dir = 'ExamplesData'
      request = GetParagraphTabStopsOnlineRequest.new(File.open(File.join(documents_dir, '/ParagraphTabStops.docx')), 0, '', nil, nil)
      @words_api.get_paragraph_tab_stops_online(request)
    end

    def test_get_public_key
      request = GetPublicKeyRequest.new()
      @words_api.get_public_key(request)
    end

    def test_get_range_text
      request = GetRangeTextRequest.new('Sample.docx', 'id0.0.0', 'id0.0.1', nil, nil, nil, nil)
      @words_api.get_range_text(request)
    end

    def test_get_range_text_online
      documents_dir = 'ExamplesData'
      request = GetRangeTextOnlineRequest.new(File.open(File.join(documents_dir, 'DocumentElements/Range/RangeGet.doc')), 'id0.0.0', 'id0.0.1', nil, nil)
      @words_api.get_range_text_online(request)
    end

    def test_get_run
      request = GetRunRequest.new('Sample.docx', 'paragraphs/0', 0, nil, nil, nil, nil)
      @words_api.get_run(request)
    end

    def test_get_run_font
      request = GetRunFontRequest.new('Sample.docx', 'paragraphs/0', 0, nil, nil, nil, nil)
      @words_api.get_run_font(request)
    end

    def test_get_run_font_online
      documents_dir = 'ExamplesData'
      request = GetRunFontOnlineRequest.new(File.open(File.join(documents_dir, 'Sample.docx')), 'paragraphs/0', 0, nil, nil)
      @words_api.get_run_font_online(request)
    end

    def test_get_run_online
      documents_dir = 'ExamplesData'
      request = GetRunOnlineRequest.new(File.open(File.join(documents_dir, 'Sample.docx')), 'paragraphs/0', 0, nil, nil)
      @words_api.get_run_online(request)
    end

    def test_get_runs
      request = GetRunsRequest.new('Sample.docx', 'sections/0/paragraphs/0', nil, nil, nil, nil)
      @words_api.get_runs(request)
    end

    def test_get_runs_online
      documents_dir = 'ExamplesData'
      request = GetRunsOnlineRequest.new(File.open(File.join(documents_dir, 'Sample.docx')), 'sections/0/paragraphs/0', nil, nil)
      @words_api.get_runs_online(request)
    end

    def test_get_section
      request = GetSectionRequest.new('Sample.docx', 0, nil, nil, nil, nil)
      @words_api.get_section(request)
    end

    def test_get_section_online
      documents_dir = 'ExamplesData'
      request = GetSectionOnlineRequest.new(File.open(File.join(documents_dir, 'Sample.docx')), 0, nil, nil)
      @words_api.get_section_online(request)
    end

    def test_get_section_page_setup
      request = GetSectionPageSetupRequest.new('Sample.docx', 0, nil, nil, nil, nil)
      @words_api.get_section_page_setup(request)
    end

    def test_get_section_page_setup_online
      documents_dir = 'ExamplesData'
      request = GetSectionPageSetupOnlineRequest.new(File.open(File.join(documents_dir, 'Sample.docx')), 0, nil, nil)
      @words_api.get_section_page_setup_online(request)
    end

    def test_get_sections
      request = GetSectionsRequest.new('Sample.docx', nil, nil, nil, nil)
      @words_api.get_sections(request)
    end

    def test_get_sections_online
      documents_dir = 'ExamplesData'
      request = GetSectionsOnlineRequest.new(File.open(File.join(documents_dir, 'Sample.docx')), nil, nil)
      @words_api.get_sections_online(request)
    end

    def test_get_style
      request = GetStyleRequest.new('Sample.docx', 'Heading 1', nil, nil, nil, nil)
      @words_api.get_style(request)
    end

    def test_get_style_from_document_element
      request = GetStyleFromDocumentElementRequest.new('Sample.docx', 'paragraphs/1/paragraphFormat', nil, nil, nil, nil)
      @words_api.get_style_from_document_element(request)
    end

    def test_get_style_from_document_element_online
      documents_dir = 'ExamplesData'
      request = GetStyleFromDocumentElementOnlineRequest.new(File.open(File.join(documents_dir, 'Sample.docx')), 'paragraphs/1/paragraphFormat', nil, nil)
      @words_api.get_style_from_document_element_online(request)
    end

    def test_get_style_online
      documents_dir = 'ExamplesData'
      request = GetStyleOnlineRequest.new(File.open(File.join(documents_dir, 'Sample.docx')), 'Heading 1', nil, nil)
      @words_api.get_style_online(request)
    end

    def test_get_styles
      request = GetStylesRequest.new('Sample.docx', nil, nil, nil, nil)
      @words_api.get_styles(request)
    end

    def test_get_styles_online
      documents_dir = 'ExamplesData'
      request = GetStylesOnlineRequest.new(File.open(File.join(documents_dir, 'Sample.docx')), nil, nil)
      @words_api.get_styles_online(request)
    end

    def test_get_table
      request = GetTableRequest.new('Sample.docx', 1, nil, nil, nil, nil, nil)
      @words_api.get_table(request)
    end

    def test_get_table_cell
      request = GetTableCellRequest.new('Sample.docx', 'sections/0/tables/2/rows/0', 0, nil, nil, nil, nil)
      @words_api.get_table_cell(request)
    end

    def test_get_table_cell_format
      request = GetTableCellFormatRequest.new('Sample.docx', 'sections/0/tables/2/rows/0', 0, nil, nil, nil, nil)
      @words_api.get_table_cell_format(request)
    end

    def test_get_table_cell_format_online
      documents_dir = 'ExamplesData'
      request = GetTableCellFormatOnlineRequest.new(File.open(File.join(documents_dir, 'Sample.docx')), 'sections/0/tables/2/rows/0', 0, nil, nil)
      @words_api.get_table_cell_format_online(request)
    end

    def test_get_table_cell_online
      documents_dir = 'ExamplesData'
      request = GetTableCellOnlineRequest.new(File.open(File.join(documents_dir, 'Sample.docx')), 'sections/0/tables/2/rows/0', 0, nil, nil)
      @words_api.get_table_cell_online(request)
    end

    def test_get_table_online
      documents_dir = 'ExamplesData'
      request = GetTableOnlineRequest.new(File.open(File.join(documents_dir, 'Sample.docx')), 1, '', nil, nil)
      @words_api.get_table_online(request)
    end

    def test_get_table_properties
      request = GetTablePropertiesRequest.new('Sample.docx', 1, nil, nil, nil, nil, nil)
      @words_api.get_table_properties(request)
    end

    def test_get_table_properties_online
      documents_dir = 'ExamplesData'
      request = GetTablePropertiesOnlineRequest.new(File.open(File.join(documents_dir, 'Sample.docx')), 1, '', nil, nil)
      @words_api.get_table_properties_online(request)
    end

    def test_get_table_row
      request = GetTableRowRequest.new('Sample.docx', 'tables/1', 0, nil, nil, nil, nil)
      @words_api.get_table_row(request)
    end

    def test_get_table_row_format
      request = GetTableRowFormatRequest.new('Sample.docx', 'sections/0/tables/2', 0, nil, nil, nil, nil)
      @words_api.get_table_row_format(request)
    end

    def test_get_table_row_format_online
      documents_dir = 'ExamplesData'
      request = GetTableRowFormatOnlineRequest.new(File.open(File.join(documents_dir, 'Sample.docx')), 'sections/0/tables/2', 0, nil, nil)
      @words_api.get_table_row_format_online(request)
    end

    def test_get_table_row_online
      documents_dir = 'ExamplesData'
      request = GetTableRowOnlineRequest.new(File.open(File.join(documents_dir, 'Sample.docx')), 'tables/1', 0, nil, nil)
      @words_api.get_table_row_online(request)
    end

    def test_get_tables
      request = GetTablesRequest.new('Sample.docx', nil, nil, nil, nil, nil)
      @words_api.get_tables(request)
    end

    def test_get_tables_online
      documents_dir = 'ExamplesData'
      request = GetTablesOnlineRequest.new(File.open(File.join(documents_dir, 'Sample.docx')), '', nil, nil)
      @words_api.get_tables_online(request)
    end

    def test_insert_comment
      request_comment_range_start_node = NodeLink.new({:NodeId => '0.3.0.3'})
      request_comment_range_start = DocumentPosition.new({:Node => request_comment_range_start_node, :Offset => 0})
      request_comment_range_end_node = NodeLink.new({:NodeId => '0.3.0.3'})
      request_comment_range_end = DocumentPosition.new({:Node => request_comment_range_end_node, :Offset => 0})
      request_comment = CommentInsert.new({:RangeStart => request_comment_range_start, :RangeEnd => request_comment_range_end, :Initial => 'IA', :Author => 'Imran Anwar', :Text => 'A new Comment'})
      insert_request = InsertCommentRequest.new('Sample.docx', request_comment, nil, nil, nil, nil, nil, nil, nil)
      @words_api.insert_comment(insert_request)
    end

    def test_insert_comment_online
      documents_dir = 'ExamplesData'
      request_comment_range_start_node = NodeLink.new({:NodeId => '0.3.0.3'})
      request_comment_range_start = DocumentPosition.new({:Node => request_comment_range_start_node, :Offset => 0})
      request_comment_range_end_node = NodeLink.new({:NodeId => '0.3.0.3'})
      request_comment_range_end = DocumentPosition.new({:Node => request_comment_range_end_node, :Offset => 0})
      request_comment = CommentInsert.new({:RangeStart => request_comment_range_start, :RangeEnd => request_comment_range_end, :Initial => 'IA', :Author => 'Imran Anwar', :Text => 'A new Comment'})
      insert_request = InsertCommentOnlineRequest.new(File.open(File.join(documents_dir, 'Sample.docx')), request_comment, nil, nil, nil, nil, nil)
      @words_api.insert_comment_online(insert_request)
    end

    def test_insert_custom_xml_part
      request_custom_xml_part = CustomXmlPartInsert.new({:Id => 'hello', :Data => '<data>Hello world</data>'})
      insert_request = InsertCustomXmlPartRequest.new('Sample.docx', request_custom_xml_part, nil, nil, nil, nil, nil, nil, nil)
      @words_api.insert_custom_xml_part(insert_request)
    end

    def test_insert_custom_xml_part_online
      documents_dir = 'ExamplesData'
      request_custom_xml_part = CustomXmlPartInsert.new({:Id => 'hello', :Data => '<data>Hello world</data>'})
      insert_request = InsertCustomXmlPartOnlineRequest.new(File.open(File.join(documents_dir, 'Sample.docx')), request_custom_xml_part, nil, nil, nil, nil, nil)
      @words_api.insert_custom_xml_part_online(insert_request)
    end

    def test_insert_drawing_object
      documents_dir = 'ExamplesData'
      request_drawing_object = DrawingObjectInsert.new({:Height => 0, :Left => 0, :Top => 0, :Width => 0, :RelativeHorizontalPosition => 'Margin', :RelativeVerticalPosition => 'Margin', :WrapType => 'Inline'})
      insert_request = InsertDrawingObjectRequest.new('Sample.docx', request_drawing_object, File.open(File.join(documents_dir, 'Common/aspose-cloud.png')), nil, nil, nil, nil, nil, nil, nil, nil)
      @words_api.insert_drawing_object(insert_request)
    end

    def test_insert_drawing_object_online
      documents_dir = 'ExamplesData'
      request_drawing_object = DrawingObjectInsert.new({:Height => 0, :Left => 0, :Top => 0, :Width => 0, :RelativeHorizontalPosition => 'Margin', :RelativeVerticalPosition => 'Margin', :WrapType => 'Inline'})
      insert_request = InsertDrawingObjectOnlineRequest.new(File.open(File.join(documents_dir, 'Sample.docx')), request_drawing_object, File.open(File.join(documents_dir, 'Common/aspose-cloud.png')), '', nil, nil, nil, nil, nil)
      @words_api.insert_drawing_object_online(insert_request)
    end

    def test_insert_field
      request_field = FieldInsert.new({:FieldCode => '{ NUMPAGES }'})
      insert_request = InsertFieldRequest.new('Sample.docx', request_field, nil, nil, nil, nil, nil, nil, nil, nil, nil)
      @words_api.insert_field(insert_request)
    end

    def test_insert_field_online
      documents_dir = 'ExamplesData'
      request_field = FieldInsert.new({:FieldCode => '{ NUMPAGES }'})
      insert_request = InsertFieldOnlineRequest.new(File.open(File.join(documents_dir, '/GetField.docx')), request_field, 'sections/0/paragraphs/0', nil, nil, nil, nil, nil, nil)
      @words_api.insert_field_online(insert_request)
    end

    def test_insert_footnote
      request_footnote_dto = FootnoteInsert.new({:FootnoteType => 'Endnote', :Text => 'test endnote'})
      insert_request = InsertFootnoteRequest.new('Sample.docx', request_footnote_dto, nil, nil, nil, nil, nil, nil, nil, nil)
      @words_api.insert_footnote(insert_request)
    end

    def test_insert_footnote_online
      documents_dir = 'ExamplesData'
      request_footnote_dto = FootnoteInsert.new({:FootnoteType => 'Endnote', :Text => 'test endnote'})
      insert_request = InsertFootnoteOnlineRequest.new(File.open(File.join(documents_dir, '/Footnote.doc')), request_footnote_dto, '', nil, nil, nil, nil, nil)
      @words_api.insert_footnote_online(insert_request)
    end

    def test_insert_form_field
      remote_file_name= 'Sample.docx'

      request_form_field = FormFieldTextInput.new({:Name => 'FullName', :Enabled => true, :CalculateOnExit => true, :StatusText => '', :TextInputType => 'Regular', :TextInputDefault => '123', :TextInputFormat => 'UPPERCASE'})
      insert_request = InsertFormFieldRequest.new(remote_file_name, request_form_field, nil, nil, nil, nil, nil, remote_file_name, nil, nil, nil)
      @words_api.insert_form_field(insert_request)
    end

    def test_insert_form_field_online
      documents_dir = 'ExamplesData'
      request_form_field = FormFieldTextInput.new({:Name => 'FullName', :Enabled => true, :CalculateOnExit => true, :StatusText => '', :TextInputType => 'Regular', :TextInputDefault => '123', :TextInputFormat => 'UPPERCASE'})
      insert_request = InsertFormFieldOnlineRequest.new(File.open(File.join(documents_dir, '/FormFilled.docx')), request_form_field, 'sections/0/paragraphs/0', nil, nil, nil, nil, nil, nil)
      @words_api.insert_form_field_online(insert_request)
    end

    def test_insert_header_footer
      insert_request = InsertHeaderFooterRequest.new('Sample.docx', '', 'FooterEven', nil, nil, nil, nil, nil, nil, nil)
      @words_api.insert_header_footer(insert_request)
    end

    def test_insert_header_footer_online
      documents_dir = 'ExamplesData'
      insert_request = InsertHeaderFooterOnlineRequest.new(File.open(File.join(documents_dir, 'DocumentElements/HeaderFooters/HeadersFooters.doc')), '', 'FooterEven', nil, nil, nil, nil, nil)
      @words_api.insert_header_footer_online(insert_request)
    end

    def test_insert_list
      request_list_insert = ListInsert.new({:Template => 'OutlineLegal'})
      insert_request = InsertListRequest.new('TestGetLists.doc', request_list_insert, nil, nil, nil, nil, nil, nil, nil)
      @words_api.insert_list(insert_request)
    end

    def test_insert_list_online
      documents_dir = 'ExamplesData'
      request_list_insert = ListInsert.new({:Template => 'OutlineLegal'})
      insert_request = InsertListOnlineRequest.new(File.open(File.join(documents_dir, 'DocumentElements/Lists/ListsGet.doc')), request_list_insert, nil, nil, nil, nil, nil)
      @words_api.insert_list_online(insert_request)
    end

    def test_insert_or_update_paragraph_tab_stop
      request_tab_stop_insert_dto = TabStopInsert.new({:Alignment => 'Left', :Leader => 'None', :Position => 100.0})
      insert_request = InsertOrUpdateParagraphTabStopRequest.new('Sample.docx', 0, request_tab_stop_insert_dto, nil, nil, nil, nil, nil, nil)
      @words_api.insert_or_update_paragraph_tab_stop(insert_request)
    end

    def test_insert_or_update_paragraph_tab_stop_online
      documents_dir = 'ExamplesData'
      request_tab_stop_insert_dto = TabStopInsert.new({:Alignment => 'Left', :Leader => 'None', :Position => 72})
      insert_request = InsertOrUpdateParagraphTabStopOnlineRequest.new(File.open(File.join(documents_dir, '/ParagraphTabStops.docx')), request_tab_stop_insert_dto, 0, '', nil, nil, nil)
      @words_api.insert_or_update_paragraph_tab_stop_online(insert_request)
    end

    def test_insert_page_numbers
      remote_file_name= 'Sample.docx'

      request_page_number = PageNumber.new({:Alignment => 'center', :Format => '{PAGE} of {NUMPAGES}'})
      insert_request = InsertPageNumbersRequest.new(remote_file_name, request_page_number, nil, nil, nil, nil, remote_file_name, nil, nil)
      @words_api.insert_page_numbers(insert_request)
    end

    def test_insert_page_numbers_online
      documents_dir = 'ExamplesData'
      request_page_number = PageNumber.new({:Alignment => 'center', :Format => '{PAGE} of {NUMPAGES}'})
      insert_request = InsertPageNumbersOnlineRequest.new(File.open(File.join(documents_dir, 'Common/Sample.docx')), request_page_number, nil, nil, nil, nil, nil)
      @words_api.insert_page_numbers_online(insert_request)
    end

    def test_insert_paragraph
      request_paragraph = ParagraphInsert.new({:Text => 'This is a new paragraph for your document'})
      insert_request = InsertParagraphRequest.new('Sample.docx', request_paragraph, nil, nil, nil, nil, nil, nil, nil, nil, nil)
      @words_api.insert_paragraph(insert_request)
    end

    def test_insert_paragraph_online
      documents_dir = 'ExamplesData'
      request_paragraph = ParagraphInsert.new({:Text => 'This is a new paragraph for your document'})
      insert_request = InsertParagraphOnlineRequest.new(File.open(File.join(documents_dir, 'Sample.docx')), request_paragraph, 'sections/0', nil, nil, nil, nil, nil, nil)
      @words_api.insert_paragraph_online(insert_request)
    end

    def test_insert_run
      request_run = RunInsert.new({:Text => 'run with text'})
      insert_request = InsertRunRequest.new('Sample.docx', 'paragraphs/1', request_run, nil, nil, nil, nil, nil, nil, nil, nil)
      @words_api.insert_run(insert_request)
    end

    def test_insert_run_online
      documents_dir = 'ExamplesData'
      request_run = RunInsert.new({:Text => 'run with text'})
      insert_request = InsertRunOnlineRequest.new(File.open(File.join(documents_dir, 'DocumentElements/Runs/Run.doc')), 'paragraphs/1', request_run, nil, nil, nil, nil, nil, nil)
      @words_api.insert_run_online(insert_request)
    end

    def test_insert_style
      request_style_insert = StyleInsert.new({:StyleName => 'My Style', :StyleType => 'Paragraph'})
      insert_request = InsertStyleRequest.new('Sample.docx', request_style_insert, nil, nil, nil, nil, nil, nil, nil)
      @words_api.insert_style(insert_request)
    end

    def test_insert_style_online
      documents_dir = 'ExamplesData'
      request_style_insert = StyleInsert.new({:StyleName => 'My Style', :StyleType => 'Paragraph'})
      insert_request = InsertStyleOnlineRequest.new(File.open(File.join(documents_dir, 'Sample.docx')), request_style_insert, nil, nil, nil, nil, nil)
      @words_api.insert_style_online(insert_request)
    end

    def test_insert_table
      request_table = TableInsert.new({:ColumnsCount => 5, :RowsCount => 4})
      insert_request = InsertTableRequest.new('Sample.docx', request_table, nil, nil, nil, nil, nil, nil, nil, nil)
      @words_api.insert_table(insert_request)
    end

    def test_insert_table_cell
      request_cell = TableCellInsert.new({})
      insert_request = InsertTableCellRequest.new('Sample.docx', 'sections/0/tables/2/rows/0', request_cell, nil, nil, nil, nil, nil, nil, nil)
      @words_api.insert_table_cell(insert_request)
    end

    def test_insert_table_cell_online
      documents_dir = 'ExamplesData'
      request_cell = TableCellInsert.new({})
      insert_request = InsertTableCellOnlineRequest.new(File.open(File.join(documents_dir, 'Sample.docx')), 'sections/0/tables/2/rows/0', request_cell, nil, nil, nil, nil, nil)
      @words_api.insert_table_cell_online(insert_request)
    end

    def test_insert_table_online
      documents_dir = 'ExamplesData'
      request_table = TableInsert.new({:ColumnsCount => 5, :RowsCount => 4})
      insert_request = InsertTableOnlineRequest.new(File.open(File.join(documents_dir, 'Sample.docx')), request_table, '', nil, nil, nil, nil, nil)
      @words_api.insert_table_online(insert_request)
    end

    def test_insert_table_row
      request_row = TableRowInsert.new({:ColumnsCount => 5})
      insert_request = InsertTableRowRequest.new('Sample.docx', 'sections/0/tables/2', request_row, nil, nil, nil, nil, nil, nil, nil)
      @words_api.insert_table_row(insert_request)
    end

    def test_insert_table_row_online
      documents_dir = 'ExamplesData'
      request_row = TableRowInsert.new({:ColumnsCount => 5})
      insert_request = InsertTableRowOnlineRequest.new(File.open(File.join(documents_dir, 'Sample.docx')), 'sections/0/tables/2', request_row, nil, nil, nil, nil, nil)
      @words_api.insert_table_row_online(insert_request)
    end

    def test_insert_watermark_image
      documents_dir = 'ExamplesData'
      remote_file_name= 'Sample.docx'

      insert_request = InsertWatermarkImageRequest.new(remote_file_name, nil, nil, nil, nil, nil, remote_file_name, nil, nil, nil, 'Sample.png')
      @words_api.insert_watermark_image(insert_request)
    end

    def test_insert_watermark_image_online
      documents_dir = 'ExamplesData'
      insert_request = InsertWatermarkImageOnlineRequest.new(File.open(File.join(documents_dir, 'Sample.docx')), File.open(File.join(documents_dir, 'Common/aspose-cloud.png')), nil, nil, nil, nil, nil, nil, nil)
      @words_api.insert_watermark_image_online(insert_request)
    end

    def test_insert_watermark_text
      remote_file_name= 'Sample.docx'

      request_watermark_text = WatermarkText.new({:Text => 'This is the text', :RotationAngle => 90.0})
      insert_request = InsertWatermarkTextRequest.new(remote_file_name, request_watermark_text, nil, nil, nil, nil, remote_file_name, nil, nil)
      @words_api.insert_watermark_text(insert_request)
    end

    def test_insert_watermark_text_online
      documents_dir = 'ExamplesData'
      request_watermark_text = WatermarkText.new({:Text => 'This is the text', :RotationAngle => 90})
      insert_request = InsertWatermarkTextOnlineRequest.new(File.open(File.join(documents_dir, 'Sample.docx')), request_watermark_text, nil, nil, nil, nil, nil)
      @words_api.insert_watermark_text_online(insert_request)
    end

    def test_load_web_document
      request_data_save_options = SaveOptionsData.new({:FileName => 'google.doc', :SaveFormat => 'doc', :DmlEffectsRenderingMode => '1', :DmlRenderingMode => '1', :UpdateSdtContent => false, :ZipOutput => false})
      request_data = LoadWebDocumentData.new({:LoadingDocumentUrl => 'http://google.com', :SaveOptions => request_data_save_options})
      load_request = LoadWebDocumentRequest.new(request_data, nil)
      @words_api.load_web_document(load_request)
    end

    def test_move_file
      move_request = MoveFileRequest.new('/TestMoveFileDest_Sample.docx', 'Sample.docx', nil, nil, nil)
      @words_api.move_file(move_request)
    end

    def test_move_folder
      move_request = MoveFolderRequest.new('/TestMoveFolderDest_Sample', '/TestMoveFolderSrc', nil, nil)
      @words_api.move_folder(move_request)
    end

    def test_optimize_document
      request_options = OptimizationOptions.new({:MsWordVersion => 'Word2002'})
      optimize_request = OptimizeDocumentRequest.new('Sample.docx', request_options, nil, nil, nil, nil, nil, nil, nil)
      @words_api.optimize_document(optimize_request)
    end

    def test_optimize_document_online
      documents_dir = 'ExamplesData'
      request_options = OptimizationOptions.new({:MsWordVersion => 'Word2002'})
      optimize_request = OptimizeDocumentOnlineRequest.new(File.open(File.join(documents_dir, 'Sample.docx')), request_options, nil, nil, nil, nil, nil)
      @words_api.optimize_document_online(optimize_request)
    end

    def test_protect_document
      remote_file_name= 'Sample.docx'

      request_protection_request = ProtectionRequest.new({:Password => '123', :ProtectionType => 'ReadOnly'})
      protect_request = ProtectDocumentRequest.new(remote_file_name, request_protection_request, nil, nil, nil, nil, remote_file_name)
      @words_api.protect_document(protect_request)
    end

    def test_protect_document_online
      documents_dir = 'ExamplesData'
      request_protection_request = ProtectionRequest.new({:NewPassword => '123'})
      protect_request = ProtectDocumentOnlineRequest.new(File.open(File.join(documents_dir, 'Sample.docx')), request_protection_request, nil, nil, nil)
      @words_api.protect_document_online(protect_request)
    end

    def test_reject_all_revisions
      remote_file_name= 'Sample.docx'

      reject_request = RejectAllRevisionsRequest.new(remote_file_name, nil, nil, nil, nil, remote_file_name)
      @words_api.reject_all_revisions(reject_request)
    end

    def test_reject_all_revisions_online
      documents_dir = 'ExamplesData'
      reject_request = RejectAllRevisionsOnlineRequest.new(File.open(File.join(documents_dir, 'Sample.docx')), nil, nil, nil)
      @words_api.reject_all_revisions_online(reject_request)
    end

    def test_remove_range
      remove_request = RemoveRangeRequest.new('Sample.docx', 'id0.0.0', 'id0.0.1', nil, nil, nil, nil, nil)
      @words_api.remove_range(remove_request)
    end

    def test_remove_range_online
      documents_dir = 'ExamplesData'
      remove_request = RemoveRangeOnlineRequest.new(File.open(File.join(documents_dir, 'DocumentElements/Range/RangeGet.doc')), 'id0.0.0', 'id0.0.1', nil, nil, nil)
      @words_api.remove_range_online(remove_request)
    end

    def test_render_drawing_object
      render_request = RenderDrawingObjectRequest.new('Sample.docx', 'png', 0, nil, nil, nil, nil, nil, nil, nil)
      @words_api.render_drawing_object(render_request)
    end

    def test_render_drawing_object_online
      documents_dir = 'ExamplesData'
      render_request = RenderDrawingObjectOnlineRequest.new(File.open(File.join(documents_dir, 'Sample.docx')), 'png', 0, 'sections/0', nil, nil, nil, nil)
      @words_api.render_drawing_object_online(render_request)
    end

    def test_render_math_object
      render_request = RenderMathObjectRequest.new('Sample.docx', 'png', 0, nil, nil, nil, nil, nil, nil, nil)
      @words_api.render_math_object(render_request)
    end

    def test_render_math_object_online
      documents_dir = 'ExamplesData'
      render_request = RenderMathObjectOnlineRequest.new(File.open(File.join(documents_dir, 'Sample.docx')), 'png', 0, '', nil, nil, nil, nil)
      @words_api.render_math_object_online(render_request)
    end

    def test_render_page
      render_request = RenderPageRequest.new('Sample.docx', 1, 'bmp', nil, nil, nil, nil, nil)
      @words_api.render_page(render_request)
    end

    def test_render_page_online
      documents_dir = 'ExamplesData'
      render_request = RenderPageOnlineRequest.new(File.open(File.join(documents_dir, 'DocumentElements/Text/SampleWordDocument.docx')), 1, 'bmp', nil, nil, nil)
      @words_api.render_page_online(render_request)
    end

    def test_render_paragraph
      render_request = RenderParagraphRequest.new('Sample.docx', 'png', 0, nil, nil, nil, nil, nil, nil, nil)
      @words_api.render_paragraph(render_request)
    end

    def test_render_paragraph_online
      documents_dir = 'ExamplesData'
      render_request = RenderParagraphOnlineRequest.new(File.open(File.join(documents_dir, 'Sample.docx')), 'png', 0, '', nil, nil, nil, nil)
      @words_api.render_paragraph_online(render_request)
    end

    def test_render_table
      render_request = RenderTableRequest.new('Sample.docx', 'png', 0, nil, nil, nil, nil, nil, nil, nil)
      @words_api.render_table(render_request)
    end

    def test_render_table_online
      documents_dir = 'ExamplesData'
      render_request = RenderTableOnlineRequest.new(File.open(File.join(documents_dir, 'Sample.docx')), 'png', 0, '', nil, nil, nil, nil)
      @words_api.render_table_online(render_request)
    end

    def test_replace_text
      remote_file_name= 'Sample.docx'

      request_replace_text = ReplaceTextParameters.new({:OldValue => 'Testing', :NewValue => 'Aspose testing'})
      replace_request = ReplaceTextRequest.new(remote_file_name, request_replace_text, nil, nil, nil, nil, remote_file_name, nil, nil)
      @words_api.replace_text(replace_request)
    end

    def test_replace_text_online
      documents_dir = 'ExamplesData'
      request_replace_text = ReplaceTextParameters.new({:OldValue => 'aspose', :NewValue => 'aspose new'})
      replace_request = ReplaceTextOnlineRequest.new(File.open(File.join(documents_dir, 'Sample.docx')), request_replace_text, nil, nil, nil, nil, nil)
      @words_api.replace_text_online(replace_request)
    end

    def test_replace_with_text
      request_range_text = ReplaceRange.new({:Text => 'Replaced header'})
      replace_request = ReplaceWithTextRequest.new('Sample.docx', 'id0.0.0', request_range_text, 'id0.0.1', nil, nil, nil, nil, nil)
      @words_api.replace_with_text(replace_request)
    end

    def test_replace_with_text_online
      documents_dir = 'ExamplesData'
      request_range_text = ReplaceRange.new({:Text => 'Replaced header'})
      replace_request = ReplaceWithTextOnlineRequest.new(File.open(File.join(documents_dir, 'DocumentElements/Range/RangeGet.doc')), 'id0.0.0', request_range_text, 'id0.0.1', nil, nil, nil)
      @words_api.replace_with_text_online(replace_request)
    end

    def test_reset_cache
      reset_request = ResetCacheRequest.new()
      @words_api.reset_cache(reset_request)
    end

    def test_save_as
      request_save_options_data = SaveOptionsData.new({:SaveFormat => 'docx', :FileName => '/TestSaveAsFromPdfToDoc.docx'})
      save_request = SaveAsRequest.new('Sample.docx', request_save_options_data, nil, nil, nil, nil, nil)
      @words_api.save_as(save_request)
    end

    def test_save_as_online
      documents_dir = 'ExamplesData'
      request_save_options_data = SaveOptionsData.new({:SaveFormat => 'pdf', :FileName => '/TestSaveAs.pdf'})
      save_request = SaveAsOnlineRequest.new(File.open(File.join(documents_dir, 'Common/test_multi_pages.docx')), request_save_options_data, nil, nil, nil)
      @words_api.save_as_online(save_request)
    end

    def test_save_as_range
      request_document_parameters = RangeDocument.new({:DocumentName => '/NewDoc.docx'})
      save_request = SaveAsRangeRequest.new('Sample.docx', 'id0.0.0', request_document_parameters, 'id0.0.1', nil, nil, nil, nil)
      @words_api.save_as_range(save_request)
    end

    def test_save_as_range_online
      documents_dir = 'ExamplesData'
      request_document_parameters = RangeDocument.new({:DocumentName => '/NewDoc.docx'})
      save_request = SaveAsRangeOnlineRequest.new(File.open(File.join(documents_dir, 'DocumentElements/Range/RangeGet.doc')), 'id0.0.0', request_document_parameters, 'id0.0.1', nil, nil)
      @words_api.save_as_range_online(save_request)
    end

    def test_save_as_tiff
      request_save_options = TiffSaveOptionsData.new({:SaveFormat => 'tiff', :FileName => '/abc.tiff'})
      save_request = SaveAsTiffRequest.new('Sample.docx', request_save_options, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil)
      @words_api.save_as_tiff(save_request)
    end

    def test_save_as_tiff_online
      documents_dir = 'ExamplesData'
      request_save_options = TiffSaveOptionsData.new({:SaveFormat => 'tiff', :FileName => '/abc.tiff'})
      save_request = SaveAsTiffOnlineRequest.new(File.open(File.join(documents_dir, 'Common/test_multi_pages.docx')), request_save_options, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil)
      @words_api.save_as_tiff_online(save_request)
    end

    def test_search
      search_request = SearchRequest.new('Sample.docx', 'aspose', nil, nil, nil, nil)
      @words_api.search(search_request)
    end

    def test_search_online
      documents_dir = 'ExamplesData'
      search_request = SearchOnlineRequest.new(File.open(File.join(documents_dir, 'Sample.docx')), 'aspose', nil, nil)
      @words_api.search_online(search_request)
    end

    def test_split_document
      split_request = SplitDocumentRequest.new('Sample.docx', 'text', nil, nil, nil, nil, '/TestSplitDocument.text', 1, 2, nil, nil)
      @words_api.split_document(split_request)
    end

    def test_split_document_online
      documents_dir = 'ExamplesData'
      split_request = SplitDocumentOnlineRequest.new(File.open(File.join(documents_dir, 'Sample.docx')), 'text', nil, nil, '/TestSplitDocument.text', 1, 2, nil, nil)
      @words_api.split_document_online(split_request)
    end

    def test_unprotect_document
      request_protection_request = ProtectionRequest.new({:Password => 'aspose'})
      unprotect_request = UnprotectDocumentRequest.new('Sample.docx', request_protection_request, nil, nil, nil, nil, nil)
      @words_api.unprotect_document(unprotect_request)
    end

    def test_unprotect_document_online
      documents_dir = 'ExamplesData'
      request_protection_request = ProtectionRequest.new({:Password => 'aspose'})
      unprotect_request = UnprotectDocumentOnlineRequest.new(File.open(File.join(documents_dir, 'Sample.docx')), request_protection_request, nil, nil, nil)
      @words_api.unprotect_document_online(unprotect_request)
    end

    def test_update_bookmark
      remote_file_name= 'Sample.docx'

      request_bookmark_data = BookmarkData.new({:Name => bookmark_name, :Text => 'This will be the text for Aspose'})
      update_request = UpdateBookmarkRequest.new(remote_file_name, bookmark_name, request_bookmark_data, nil, nil, nil, nil, remote_file_name, nil, nil)
      @words_api.update_bookmark(update_request)
    end

    def test_update_bookmark_online
      documents_dir = 'ExamplesData'
      request_bookmark_data = BookmarkData.new({:Name => bookmark_name, :Text => 'This will be the text for Aspose'})
      update_request = UpdateBookmarkOnlineRequest.new(File.open(File.join(documents_dir, 'Sample.docx')), bookmark_name, request_bookmark_data, nil, nil, 'Sample.docx', nil, nil)
      @words_api.update_bookmark_online(update_request)
    end

    def test_update_border
      request_border_properties_color = XmlColor.new({:Web => '#AABBCC'})
      request_border_properties = Border.new({:BorderType => 'Left', :Color => request_border_properties_color, :DistanceFromText => 6.0, :LineStyle => 'DashDotStroker', :LineWidth => 2.0, :Shadow => true})
      update_request = UpdateBorderRequest.new('Sample.docx', 'left', request_border_properties, 'tables/1/rows/0/cells/0', nil, nil, nil, nil, nil, nil, nil)
      @words_api.update_border(update_request)
    end

    def test_update_border_online
      documents_dir = 'ExamplesData'
      request_border_properties_color = XmlColor.new({:Web => '#AABBCC'})
      request_border_properties = Border.new({:BorderType => 'Left', :Color => request_border_properties_color, :DistanceFromText => 6, :LineStyle => 'DashDotStroker', :LineWidth => 2, :Shadow => true})
      update_request = UpdateBorderOnlineRequest.new(File.open(File.join(documents_dir, 'Sample.docx')), request_border_properties, 'left', 'tables/1/rows/0/cells/0', nil, nil, nil, nil, nil)
      @words_api.update_border_online(update_request)
    end

    def test_update_comment
      request_comment_range_start_node = NodeLink.new({:NodeId => '0.3.0'})
      request_comment_range_start = DocumentPosition.new({:Node => request_comment_range_start_node, :Offset => 0})
      request_comment_range_end_node = NodeLink.new({:NodeId => '0.3.0'})
      request_comment_range_end = DocumentPosition.new({:Node => request_comment_range_end_node, :Offset => 0})
      request_comment = CommentUpdate.new({:RangeStart => request_comment_range_start, :RangeEnd => request_comment_range_end, :Initial => 'IA', :Author => 'Imran Anwar', :Text => 'A new Comment'})
      update_request = UpdateCommentRequest.new('Sample.docx', 0, request_comment, nil, nil, nil, nil, nil, nil, nil)
      @words_api.update_comment(update_request)
    end

    def test_update_comment_online
      documents_dir = 'ExamplesData'
      request_comment_range_start_node = NodeLink.new({:NodeId => '0.3.0'})
      request_comment_range_start = DocumentPosition.new({:Node => request_comment_range_start_node, :Offset => 0})
      request_comment_range_end_node = NodeLink.new({:NodeId => '0.3.0'})
      request_comment_range_end = DocumentPosition.new({:Node => request_comment_range_end_node, :Offset => 0})
      request_comment = CommentUpdate.new({:RangeStart => request_comment_range_start, :RangeEnd => request_comment_range_end, :Initial => 'IA', :Author => 'Imran Anwar', :Text => 'A new Comment'})
      update_request = UpdateCommentOnlineRequest.new(File.open(File.join(documents_dir, 'Sample.docx')), 0, request_comment, nil, nil, nil, nil, nil)
      @words_api.update_comment_online(update_request)
    end

    def test_update_custom_xml_part
      request_custom_xml_part = CustomXmlPartUpdate.new({:Data => '<data>Hello world</data>'})
      update_request = UpdateCustomXmlPartRequest.new('Sample.docx', 0, request_custom_xml_part, nil, nil, nil, nil, nil, nil, nil)
      @words_api.update_custom_xml_part(update_request)
    end

    def test_update_custom_xml_part_online
      documents_dir = 'ExamplesData'
      request_custom_xml_part = CustomXmlPartUpdate.new({:Data => '<data>Hello world</data>'})
      update_request = UpdateCustomXmlPartOnlineRequest.new(File.open(File.join(documents_dir, 'Sample.docx')), 0, request_custom_xml_part, nil, nil, nil, nil, nil)
      @words_api.update_custom_xml_part_online(update_request)
    end

    def test_update_drawing_object
      documents_dir = 'ExamplesData'
      request_drawing_object = DrawingObjectUpdate.new({:Left => 0})
      update_request = UpdateDrawingObjectRequest.new('Sample.docx', request_drawing_object, File.open(File.join(documents_dir, 'Common/aspose-cloud.png')), 0, nil, nil, nil, nil, nil, nil, nil, nil)
      @words_api.update_drawing_object(update_request)
    end

    def test_update_drawing_object_online
      documents_dir = 'ExamplesData'
      request_drawing_object = DrawingObjectUpdate.new({:Left => 0})
      update_request = UpdateDrawingObjectOnlineRequest.new(File.open(File.join(documents_dir, 'Sample.docx')), request_drawing_object, File.open(File.join(documents_dir, 'Common/aspose-cloud.png')), 0, '', nil, nil, nil, nil, nil)
      @words_api.update_drawing_object_online(update_request)
    end

    def test_update_field
      request_field = FieldUpdate.new({:FieldCode => '{ NUMPAGES }'})
      update_request = UpdateFieldRequest.new('Sample.docx', 0, request_field, 'sections/0/paragraphs/0', nil, nil, nil, nil, nil, nil, nil)
      @words_api.update_field(update_request)
    end

    def test_update_field_online
      documents_dir = 'ExamplesData'
      request_field = FieldUpdate.new({:FieldCode => '{ NUMPAGES }'})
      update_request = UpdateFieldOnlineRequest.new(File.open(File.join(documents_dir, '/GetField.docx')), request_field, 0, 'sections/0/paragraphs/0', nil, nil, nil, nil, nil)
      @words_api.update_field_online(update_request)
    end

    def test_update_fields
      update_request = UpdateFieldsRequest.new('Sample.docx', nil, nil, nil, nil, nil)
      @words_api.update_fields(update_request)
    end

    def test_update_fields_online
      documents_dir = 'ExamplesData'
      update_request = UpdateFieldsOnlineRequest.new(File.open(File.join(documents_dir, 'Sample.docx')), nil, nil, nil)
      @words_api.update_fields_online(update_request)
    end

    def test_update_footnote
      request_footnote_dto = FootnoteUpdate.new({:Text => 'new text is here'})
      update_request = UpdateFootnoteRequest.new('Sample.docx', 0, request_footnote_dto, nil, nil, nil, nil, nil, nil, nil, nil)
      @words_api.update_footnote(update_request)
    end

    def test_update_footnote_online
      documents_dir = 'ExamplesData'
      request_footnote_dto = FootnoteUpdate.new({:Text => 'new text is here'})
      update_request = UpdateFootnoteOnlineRequest.new(File.open(File.join(documents_dir, '/Footnote.doc')), request_footnote_dto, 0, '', nil, nil, nil, nil, nil)
      @words_api.update_footnote_online(update_request)
    end

    def test_update_form_field
      remote_file_name= 'Sample.docx'

      request_form_field = FormFieldTextInput.new({:Name => 'FullName', :Enabled => true, :CalculateOnExit => true, :StatusText => '', :TextInputType => 'Regular', :TextInputDefault => 'No name'})
      update_request = UpdateFormFieldRequest.new(remote_file_name, 0, request_form_field, nil, nil, nil, nil, nil, remote_file_name, nil, nil)
      @words_api.update_form_field(update_request)
    end

    def test_update_form_field_online
      documents_dir = 'ExamplesData'
      request_form_field = FormFieldTextInput.new({:Name => 'FullName', :Enabled => true, :CalculateOnExit => true, :StatusText => '', :TextInputType => 'Regular', :TextInputDefault => 'No name'})
      update_request = UpdateFormFieldOnlineRequest.new(File.open(File.join(documents_dir, '/FormFilled.docx')), request_form_field, 0, 'sections/0', nil, nil, nil, nil, nil)
      @words_api.update_form_field_online(update_request)
    end

    def test_update_list
      request_list_update = ListUpdate.new({:IsRestartAtEachSection => true})
      update_request = UpdateListRequest.new('TestGetLists.doc', 1, request_list_update, nil, nil, nil, nil, nil, nil, nil)
      @words_api.update_list(update_request)
    end

    def test_update_list_level
      request_list_update = ListLevelUpdate.new({:Alignment => 'Right'})
      update_request = UpdateListLevelRequest.new('TestGetLists.doc', 1, 1, request_list_update, nil, nil, nil, nil, nil, nil, nil)
      @words_api.update_list_level(update_request)
    end

    def test_update_list_level_online
      documents_dir = 'ExamplesData'
      request_list_update = ListLevelUpdate.new({:Alignment => 'Right'})
      update_request = UpdateListLevelOnlineRequest.new(File.open(File.join(documents_dir, 'DocumentElements/Lists/ListsGet.doc')), 1, request_list_update, 1, nil, nil, nil, nil, nil)
      @words_api.update_list_level_online(update_request)
    end

    def test_update_list_online
      documents_dir = 'ExamplesData'
      request_list_update = ListUpdate.new({:IsRestartAtEachSection => true})
      update_request = UpdateListOnlineRequest.new(File.open(File.join(documents_dir, 'DocumentElements/Lists/ListsGet.doc')), 1, request_list_update, nil, nil, nil, nil, nil)
      @words_api.update_list_online(update_request)
    end

    def test_update_paragraph_format
      request_paragraph_format_dto = ParagraphFormatUpdate.new({:Alignment => 'Right'})
      update_request = UpdateParagraphFormatRequest.new('Sample.docx', 0, request_paragraph_format_dto, '', nil, nil, nil, nil, nil, nil, nil)
      @words_api.update_paragraph_format(update_request)
    end

    def test_update_paragraph_format_online
      documents_dir = 'ExamplesData'
      request_paragraph_format_dto = ParagraphFormatUpdate.new({:Alignment => 'Right'})
      update_request = UpdateParagraphFormatOnlineRequest.new(File.open(File.join(documents_dir, 'Sample.docx')), request_paragraph_format_dto, 0, '', nil, nil, nil, nil, nil)
      @words_api.update_paragraph_format_online(update_request)
    end

    def test_update_paragraph_list_format
      request_list_format_dto = ListFormatUpdate.new({:ListId => 2})
      update_request = UpdateParagraphListFormatRequest.new('Sample.docx', 0, request_list_format_dto, nil, nil, nil, nil, nil, nil, nil, nil)
      @words_api.update_paragraph_list_format(update_request)
    end

    def test_update_paragraph_list_format_online
      documents_dir = 'ExamplesData'
      request_list_format_dto = ListFormatUpdate.new({:ListId => 2})
      update_request = UpdateParagraphListFormatOnlineRequest.new(File.open(File.join(documents_dir, '/ParagraphUpdateListFormat.doc')), request_list_format_dto, 0, '', nil, nil, nil, nil, nil)
      @words_api.update_paragraph_list_format_online(update_request)
    end

    def test_update_run
      request_run = RunUpdate.new({:Text => 'run with text'})
      update_request = UpdateRunRequest.new('Sample.docx', 'paragraphs/1', 0, request_run, nil, nil, nil, nil, nil, nil, nil)
      @words_api.update_run(update_request)
    end

    def test_update_run_font
      remote_file_name= 'Sample.docx'

      request_font_dto = Font.new({:Bold => true})
      update_request = UpdateRunFontRequest.new(remote_file_name, 'paragraphs/0', 0, request_font_dto, nil, nil, nil, nil, remote_file_name, nil, nil)
      @words_api.update_run_font(update_request)
    end

    def test_update_run_font_online
      documents_dir = 'ExamplesData'
      request_font_dto = Font.new({:Bold => true})
      update_request = UpdateRunFontOnlineRequest.new(File.open(File.join(documents_dir, 'Sample.docx')), 'paragraphs/0', request_font_dto, 0, nil, nil, nil, nil, nil)
      @words_api.update_run_font_online(update_request)
    end

    def test_update_run_online
      documents_dir = 'ExamplesData'
      request_run = RunUpdate.new({:Text => 'run with text'})
      update_request = UpdateRunOnlineRequest.new(File.open(File.join(documents_dir, 'DocumentElements/Runs/Run.doc')), 'paragraphs/1', request_run, 0, nil, nil, nil, nil, nil)
      @words_api.update_run_online(update_request)
    end

    def test_update_section_page_setup
      request_page_setup = PageSetup.new({:RtlGutter => true, :LeftMargin => 10.0, :Orientation => 'Landscape', :PaperSize => 'A5'})
      update_request = UpdateSectionPageSetupRequest.new('Sample.docx', 0, request_page_setup, nil, nil, nil, nil, nil, nil, nil)
      @words_api.update_section_page_setup(update_request)
    end

    def test_update_section_page_setup_online
      documents_dir = 'ExamplesData'
      request_page_setup = PageSetup.new({:RtlGutter => true, :LeftMargin => 10, :Orientation => 'Landscape', :PaperSize => 'A5'})
      update_request = UpdateSectionPageSetupOnlineRequest.new(File.open(File.join(documents_dir, 'Sample.docx')), 0, request_page_setup, nil, nil, nil, nil, nil)
      @words_api.update_section_page_setup_online(update_request)
    end

    def test_update_style
      request_style_update = StyleUpdate.new({:Name => 'My Style'})
      update_request = UpdateStyleRequest.new('Sample.docx', 'Heading 1', request_style_update, nil, nil, nil, nil, nil, nil, nil)
      @words_api.update_style(update_request)
    end

    def test_update_style_online
      documents_dir = 'ExamplesData'
      request_style_update = StyleUpdate.new({:Name => 'My Style'})
      update_request = UpdateStyleOnlineRequest.new(File.open(File.join(documents_dir, 'Sample.docx')), 'Heading 1', request_style_update, nil, nil, nil, nil, nil)
      @words_api.update_style_online(update_request)
    end

    def test_update_table_cell_format
      request_format = TableCellFormat.new({:BottomPadding => 5.0, :FitText => true, :HorizontalMerge => 'First', :WrapText => true})
      update_request = UpdateTableCellFormatRequest.new('Sample.docx', 'sections/0/tables/2/rows/0', 0, request_format, nil, nil, nil, nil, nil, nil, nil)
      @words_api.update_table_cell_format(update_request)
    end

    def test_update_table_cell_format_online
      documents_dir = 'ExamplesData'
      request_format = TableCellFormat.new({:BottomPadding => 5, :FitText => true, :HorizontalMerge => 'First', :WrapText => true})
      update_request = UpdateTableCellFormatOnlineRequest.new(File.open(File.join(documents_dir, 'Sample.docx')), 'sections/0/tables/2/rows/0', request_format, 0, nil, nil, nil, nil, nil)
      @words_api.update_table_cell_format_online(update_request)
    end

    def test_update_table_properties
      request_properties = TableProperties.new({:Alignment => 'Right', :AllowAutoFit => false, :Bidi => true, :BottomPadding => 1.0, :CellSpacing => 2.0, :StyleOptions => 'ColumnBands'})
      update_request = UpdateTablePropertiesRequest.new('Sample.docx', 1, request_properties, nil, nil, nil, nil, nil, nil, nil, nil)
      @words_api.update_table_properties(update_request)
    end

    def test_update_table_properties_online
      documents_dir = 'ExamplesData'
      request_properties = TableProperties.new({:Alignment => 'Right', :AllowAutoFit => false, :Bidi => true, :BottomPadding => 1, :CellSpacing => 2, :StyleOptions => 'ColumnBands'})
      update_request = UpdateTablePropertiesOnlineRequest.new(File.open(File.join(documents_dir, 'Sample.docx')), request_properties, 1, '', nil, nil, nil, nil, nil)
      @words_api.update_table_properties_online(update_request)
    end

    def test_update_table_row_format
      request_format = TableRowFormat.new({:AllowBreakAcrossPages => true, :HeadingFormat => true, :Height => 10.0, :HeightRule => 'Exactly'})
      update_request = UpdateTableRowFormatRequest.new('Sample.docx', 'sections/0/tables/2', 0, request_format, nil, nil, nil, nil, nil, nil, nil)
      @words_api.update_table_row_format(update_request)
    end

    def test_update_table_row_format_online
      documents_dir = 'ExamplesData'
      request_format = TableRowFormat.new({:AllowBreakAcrossPages => true, :HeadingFormat => true, :Height => 10, :HeightRule => 'Auto'})
      update_request = UpdateTableRowFormatOnlineRequest.new(File.open(File.join(documents_dir, 'Sample.docx')), 'sections/0/tables/2', request_format, 0, nil, nil, nil, nil, nil)
      @words_api.update_table_row_format_online(update_request)
    end

    def test_upload_file
      documents_dir = 'ExamplesData'
      upload_request = UploadFileRequest.new(File.open(File.join(documents_dir, 'Sample.docx')), 'Sample.docx', nil)
      @words_api.upload_file(upload_request)
    end
  end
end