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
      documents_dir = 'ExamplesData'
      file_name = 'test_doc.docx'

      # Upload original document to cloud storage.
      my_var1 = File.open(File.join(documents_dir, file_name))
      my_var2 = file_name
      upload_file_request = UploadFileRequest.new(file_content: my_var1, path: my_var2)
      @words_api.upload_file(upload_file_request)

      # Calls AcceptAllRevisions method for document in cloud.
      my_var3 = file_name
      request = AcceptAllRevisionsRequest.new(name: my_var3)
      @words_api.accept_all_revisions(request)
    end

    def test_accept_all_revisions_online
      documents_dir = 'ExamplesData'
      request_document = File.open(File.join(documents_dir, 'Sample.docx'))
      accept_request = AcceptAllRevisionsOnlineRequest.new(document: request_document)
      @words_api.accept_all_revisions_online(accept_request)
    end

    def test_append_document
      remote_file_name= 'Sample.docx'

      request_document_list_document_entries0 = DocumentEntry.new({:Href => remote_file_name, :ImportFormatMode => 'KeepSourceFormatting'})
      request_document_list_document_entries = [request_document_list_document_entries0]
      request_document_list = DocumentEntryList.new({:DocumentEntries => request_document_list_document_entries})
      append_request = AppendDocumentRequest.new(name: remote_file_name, document_list: request_document_list)
      @words_api.append_document(append_request)
    end

    def test_append_document_online
      documents_dir = 'ExamplesData'
      request_document = File.open(File.join(documents_dir, 'Sample.docx'))
      request_document_list_document_entries0 = DocumentEntry.new({:Href => 'Sample.docx', :ImportFormatMode => 'KeepSourceFormatting'})
      request_document_list_document_entries = [request_document_list_document_entries0]
      request_document_list = DocumentEntryList.new({:DocumentEntries => request_document_list_document_entries})
      append_request = AppendDocumentOnlineRequest.new(document: request_document, document_list: request_document_list)
      @words_api.append_document_online(append_request)
    end

    def test_apply_style_to_document_element
      request_style_apply = StyleApply.new({:StyleName => 'Heading 1'})
      apply_style_request = ApplyStyleToDocumentElementRequest.new(name: 'Sample.docx', styled_node_path: 'paragraphs/1/paragraphFormat', style_apply: request_style_apply)
      @words_api.apply_style_to_document_element(apply_style_request)
    end

    def test_apply_style_to_document_element_online
      documents_dir = 'ExamplesData'
      request_document = File.open(File.join(documents_dir, 'Sample.docx'))
      request_style_apply = StyleApply.new({:StyleName => 'Heading 1'})
      apply_style_request = ApplyStyleToDocumentElementOnlineRequest.new(document: request_document, styled_node_path: 'paragraphs/1/paragraphFormat', style_apply: request_style_apply)
      @words_api.apply_style_to_document_element_online(apply_style_request)
    end

    def test_build_report
      request_report_engine_settings_report_build_options = ['AllowMissingMembers', 'RemoveEmptyParagraphs']
      request_report_engine_settings = ReportEngineSettings.new({:DataSourceType => 'Json', :ReportBuildOptions => request_report_engine_settings_report_build_options})
      build_report_request = BuildReportRequest.new(name: 'Sample.docx', data: 'Data.json', report_engine_settings: request_report_engine_settings)
      @words_api.build_report(build_report_request)
    end

    def test_build_report_online
      documents_dir = 'ExamplesData'
      request_template = File.open(File.join(documents_dir, 'Sample.docx'))
      request_report_engine_settings = ReportEngineSettings.new({:DataSourceType => 'Json', :DataSourceName => 'persons'})
      build_report_request = BuildReportOnlineRequest.new(template: request_template, data: 'Data.json', report_engine_settings: request_report_engine_settings)
      @words_api.build_report_online(build_report_request)
    end

    def test_classify
      classify_request = ClassifyRequest.new(text: 'Try text classification', best_classes_count: '3')
      @words_api.classify(classify_request)
    end

    def test_classify_document
      classify_request = ClassifyDocumentRequest.new(name: 'Sample.docx', best_classes_count: '3')
      @words_api.classify_document(classify_request)
    end

    def test_classify_document_online
      documents_dir = 'ExamplesData'
      request_document = File.open(File.join(documents_dir, 'Sample.docx'))
      classify_request = ClassifyDocumentOnlineRequest.new(document: request_document, best_classes_count: '3')
      @words_api.classify_document_online(classify_request)
    end

    def test_compare_document
      request_compare_data = CompareData.new({:Author => 'author', :ComparingWithDocument => 'TestCompareDocument2.doc', :DateTime => Date.iso8601('2015-10-26T00:00:00.0000000Z')})
      compare_request = CompareDocumentRequest.new(name: 'TestCompareDocument1.doc', compare_data: request_compare_data, dest_file_name: '/TestCompareDocumentOut.doc')
      @words_api.compare_document(compare_request)
    end

    def test_compare_document_online
      documents_dir = 'ExamplesData'
      request_document = File.open(File.join(documents_dir, 'compareTestDoc1.doc'))
      request_compare_data = CompareData.new({:Author => 'author', :ComparingWithDocument => 'TestCompareDocument2.doc', :DateTime => Date.iso8601('2015-10-26T00:00:00.0000000Z')})
      request_comparing_document = File.open(File.join(documents_dir, 'compareTestDoc2.doc'))
      compare_request = CompareDocumentOnlineRequest.new(document: request_document, compare_data: request_compare_data, comparing_document: request_comparing_document, dest_file_name: '/TestCompareDocumentOut.doc')
      @words_api.compare_document_online(compare_request)
    end

    def test_convert_document
      documents_dir = 'ExamplesData'
      request_document = File.open(File.join(documents_dir, 'Sample.docx'))
      convert_request = ConvertDocumentRequest.new(document: request_document, format: 'pdf')
      @words_api.convert_document(convert_request)
    end

    def test_copy_file
      copy_request = CopyFileRequest.new(dest_path: '/TestCopyFileDest.docx', src_path: 'Sample.docx')
      @words_api.copy_file(copy_request)
    end

    def test_copy_folder
      folder_to_copy= '/TestCopyFolder'

      copy_request = CopyFolderRequest.new(dest_path: folder_to_copy + 'Dest', src_path: folder_to_copy + 'Src')
      @words_api.copy_folder(copy_request)
    end

    def test_copy_style
      request_style_copy = StyleCopy.new({:StyleName => 'Heading 1'})
      copy_request = CopyStyleRequest.new(name: 'Sample.docx', style_copy: request_style_copy)
      @words_api.copy_style(copy_request)
    end

    def test_copy_style_online
      documents_dir = 'ExamplesData'
      request_document = File.open(File.join(documents_dir, 'Sample.docx'))
      request_style_copy = StyleCopy.new({:StyleName => 'Heading 1'})
      copy_request = CopyStyleOnlineRequest.new(document: request_document, style_copy: request_style_copy)
      @words_api.copy_style_online(copy_request)
    end

    def test_create_document
      create_request = CreateDocumentRequest.new(file_name: 'Sample.docx')
      @words_api.create_document(create_request)
    end

    def test_create_folder
      create_request = CreateFolderRequest.new(path: '/TestCreateFolder')
      @words_api.create_folder(create_request)
    end

    def test_create_or_update_document_property
      request_property = DocumentPropertyCreateOrUpdate.new({:Value => 'Imran Anwar'})
      create_request = CreateOrUpdateDocumentPropertyRequest.new(name: 'Sample.docx', property_name: 'AsposeAuthor', property: request_property)
      @words_api.create_or_update_document_property(create_request)
    end

    def test_create_or_update_document_property_online
      documents_dir = 'ExamplesData'
      request_document = File.open(File.join(documents_dir, 'Sample.docx'))
      request_property = DocumentPropertyCreateOrUpdate.new({:Value => 'Imran Anwar'})
      create_request = CreateOrUpdateDocumentPropertyOnlineRequest.new(document: request_document, property_name: 'AsposeAuthor', property: request_property)
      @words_api.create_or_update_document_property_online(create_request)
    end

    def test_delete_all_paragraph_tab_stops
      delete_request = DeleteAllParagraphTabStopsRequest.new(name: 'Sample.docx', index: 0)
      @words_api.delete_all_paragraph_tab_stops(delete_request)
    end

    def test_delete_all_paragraph_tab_stops_online
      documents_dir = 'ExamplesData'
      request_document = File.open(File.join(documents_dir, 'Sample.docx'))
      delete_request = DeleteAllParagraphTabStopsOnlineRequest.new(document: request_document, index: 0)
      @words_api.delete_all_paragraph_tab_stops_online(delete_request)
    end

    def test_delete_border
      delete_request = DeleteBorderRequest.new(name: 'Sample.docx', border_type: 'left', node_path: 'tables/1/rows/0/cells/0')
      @words_api.delete_border(delete_request)
    end

    def test_delete_border_online
      documents_dir = 'ExamplesData'
      request_document = File.open(File.join(documents_dir, 'Sample.docx'))
      delete_request = DeleteBorderOnlineRequest.new(document: request_document, border_type: 'left', node_path: 'tables/1/rows/0/cells/0')
      @words_api.delete_border_online(delete_request)
    end

    def test_delete_borders
      delete_request = DeleteBordersRequest.new(name: 'Sample.docx', node_path: 'tables/1/rows/0/cells/0')
      @words_api.delete_borders(delete_request)
    end

    def test_delete_borders_online
      documents_dir = 'ExamplesData'
      request_document = File.open(File.join(documents_dir, 'Sample.docx'))
      delete_request = DeleteBordersOnlineRequest.new(document: request_document, node_path: 'tables/1/rows/0/cells/0')
      @words_api.delete_borders_online(delete_request)
    end

    def test_delete_comment
      delete_request = DeleteCommentRequest.new(name: 'Sample.docx', comment_index: 0)
      @words_api.delete_comment(delete_request)
    end

    def test_delete_comment_online
      documents_dir = 'ExamplesData'
      request_document = File.open(File.join(documents_dir, 'Sample.docx'))
      delete_request = DeleteCommentOnlineRequest.new(document: request_document, comment_index: 0)
      @words_api.delete_comment_online(delete_request)
    end

    def test_delete_comments
      delete_request = DeleteCommentsRequest.new(name: 'Sample.docx')
      @words_api.delete_comments(delete_request)
    end

    def test_delete_comments_online
      documents_dir = 'ExamplesData'
      request_document = File.open(File.join(documents_dir, 'Sample.docx'))
      delete_request = DeleteCommentsOnlineRequest.new(document: request_document)
      @words_api.delete_comments_online(delete_request)
    end

    def test_delete_custom_xml_part
      delete_request = DeleteCustomXmlPartRequest.new(name: 'Sample.docx', custom_xml_part_index: 0)
      @words_api.delete_custom_xml_part(delete_request)
    end

    def test_delete_custom_xml_part_online
      documents_dir = 'ExamplesData'
      request_document = File.open(File.join(documents_dir, 'Sample.docx'))
      delete_request = DeleteCustomXmlPartOnlineRequest.new(document: request_document, custom_xml_part_index: 0)
      @words_api.delete_custom_xml_part_online(delete_request)
    end

    def test_delete_custom_xml_parts
      delete_request = DeleteCustomXmlPartsRequest.new(name: 'Sample.docx')
      @words_api.delete_custom_xml_parts(delete_request)
    end

    def test_delete_custom_xml_parts_online
      documents_dir = 'ExamplesData'
      request_document = File.open(File.join(documents_dir, 'Sample.docx'))
      delete_request = DeleteCustomXmlPartsOnlineRequest.new(document: request_document)
      @words_api.delete_custom_xml_parts_online(delete_request)
    end

    def test_delete_document_property
      delete_request = DeleteDocumentPropertyRequest.new(name: 'Sample.docx', property_name: 'testProp')
      @words_api.delete_document_property(delete_request)
    end

    def test_delete_document_property_online
      documents_dir = 'ExamplesData'
      request_document = File.open(File.join(documents_dir, 'Sample.docx'))
      delete_request = DeleteDocumentPropertyOnlineRequest.new(document: request_document, property_name: 'testProp')
      @words_api.delete_document_property_online(delete_request)
    end

    def test_delete_drawing_object
      delete_request = DeleteDrawingObjectRequest.new(name: 'Sample.docx', index: 0)
      @words_api.delete_drawing_object(delete_request)
    end

    def test_delete_drawing_object_online
      documents_dir = 'ExamplesData'
      request_document = File.open(File.join(documents_dir, 'Sample.docx'))
      delete_request = DeleteDrawingObjectOnlineRequest.new(document: request_document, index: 0)
      @words_api.delete_drawing_object_online(delete_request)
    end

    def test_delete_field
      delete_request = DeleteFieldRequest.new(name: 'Sample.docx', index: 0)
      @words_api.delete_field(delete_request)
    end

    def test_delete_field_online
      documents_dir = 'ExamplesData'
      request_document = File.open(File.join(documents_dir, 'Sample.docx'))
      delete_request = DeleteFieldOnlineRequest.new(document: request_document, index: 0, node_path: 'sections/0/paragraphs/0')
      @words_api.delete_field_online(delete_request)
    end

    def test_delete_fields
      delete_request = DeleteFieldsRequest.new(name: 'Sample.docx')
      @words_api.delete_fields(delete_request)
    end

    def test_delete_fields_online
      documents_dir = 'ExamplesData'
      request_document = File.open(File.join(documents_dir, 'Sample.docx'))
      delete_request = DeleteFieldsOnlineRequest.new(document: request_document)
      @words_api.delete_fields_online(delete_request)
    end

    def test_delete_file
      delete_request = DeleteFileRequest.new(path: 'Sample.docx')
      @words_api.delete_file(delete_request)
    end

    def test_delete_folder
      delete_request = DeleteFolderRequest.new(path: '')
      @words_api.delete_folder(delete_request)
    end

    def test_delete_footnote
      delete_request = DeleteFootnoteRequest.new(name: 'Sample.docx', index: 0)
      @words_api.delete_footnote(delete_request)
    end

    def test_delete_footnote_online
      documents_dir = 'ExamplesData'
      request_document = File.open(File.join(documents_dir, 'Sample.doc'))
      delete_request = DeleteFootnoteOnlineRequest.new(document: request_document, index: 0)
      @words_api.delete_footnote_online(delete_request)
    end

    def test_delete_form_field
      delete_request = DeleteFormFieldRequest.new(name: 'Sample.docx', index: 0)
      @words_api.delete_form_field(delete_request)
    end

    def test_delete_form_field_online
      documents_dir = 'ExamplesData'
      request_document = File.open(File.join(documents_dir, 'Sample.docx'))
      delete_request = DeleteFormFieldOnlineRequest.new(document: request_document, index: 0, node_path: 'sections/0')
      @words_api.delete_form_field_online(delete_request)
    end

    def test_delete_header_footer
      delete_request = DeleteHeaderFooterRequest.new(name: 'Sample.docx', section_path: '', index: 0)
      @words_api.delete_header_footer(delete_request)
    end

    def test_delete_header_footer_online
      documents_dir = 'ExamplesData'
      request_document = File.open(File.join(documents_dir, 'Sample.doc'))
      delete_request = DeleteHeaderFooterOnlineRequest.new(document: request_document, section_path: '', index: 0)
      @words_api.delete_header_footer_online(delete_request)
    end

    def test_delete_headers_footers
      delete_request = DeleteHeadersFootersRequest.new(name: 'Sample.docx', section_path: '')
      @words_api.delete_headers_footers(delete_request)
    end

    def test_delete_headers_footers_online
      documents_dir = 'ExamplesData'
      request_document = File.open(File.join(documents_dir, 'Sample.doc'))
      delete_request = DeleteHeadersFootersOnlineRequest.new(document: request_document, section_path: '')
      @words_api.delete_headers_footers_online(delete_request)
    end

    def test_delete_macros
      delete_request = DeleteMacrosRequest.new(name: 'Sample.docx')
      @words_api.delete_macros(delete_request)
    end

    def test_delete_macros_online
      documents_dir = 'ExamplesData'
      request_document = File.open(File.join(documents_dir, 'Sample.docx'))
      delete_request = DeleteMacrosOnlineRequest.new(document: request_document)
      @words_api.delete_macros_online(delete_request)
    end

    def test_delete_office_math_object
      delete_request = DeleteOfficeMathObjectRequest.new(name: 'Sample.docx', index: 0)
      @words_api.delete_office_math_object(delete_request)
    end

    def test_delete_office_math_object_online
      documents_dir = 'ExamplesData'
      request_document = File.open(File.join(documents_dir, 'Sample.docx'))
      delete_request = DeleteOfficeMathObjectOnlineRequest.new(document: request_document, index: 0)
      @words_api.delete_office_math_object_online(delete_request)
    end

    def test_delete_paragraph
      delete_request = DeleteParagraphRequest.new(name: 'Sample.docx', index: 0)
      @words_api.delete_paragraph(delete_request)
    end

    def test_delete_paragraph_list_format
      delete_request = DeleteParagraphListFormatRequest.new(name: 'Sample.docx', index: 0)
      @words_api.delete_paragraph_list_format(delete_request)
    end

    def test_delete_paragraph_list_format_online
      documents_dir = 'ExamplesData'
      request_document = File.open(File.join(documents_dir, 'Sample.doc'))
      delete_request = DeleteParagraphListFormatOnlineRequest.new(document: request_document, index: 0)
      @words_api.delete_paragraph_list_format_online(delete_request)
    end

    def test_delete_paragraph_online
      documents_dir = 'ExamplesData'
      request_document = File.open(File.join(documents_dir, 'Sample.docx'))
      delete_request = DeleteParagraphOnlineRequest.new(document: request_document, index: 0)
      @words_api.delete_paragraph_online(delete_request)
    end

    def test_delete_paragraph_tab_stop
      delete_request = DeleteParagraphTabStopRequest.new(name: 'Sample.docx', position: 72.0, index: 0)
      @words_api.delete_paragraph_tab_stop(delete_request)
    end

    def test_delete_paragraph_tab_stop_online
      documents_dir = 'ExamplesData'
      request_document = File.open(File.join(documents_dir, 'Sample.docx'))
      delete_request = DeleteParagraphTabStopOnlineRequest.new(document: request_document, position: 72.0, index: 0)
      @words_api.delete_paragraph_tab_stop_online(delete_request)
    end

    def test_delete_run
      delete_request = DeleteRunRequest.new(name: 'Sample.docx', paragraph_path: 'paragraphs/1', index: 0)
      @words_api.delete_run(delete_request)
    end

    def test_delete_run_online
      documents_dir = 'ExamplesData'
      request_document = File.open(File.join(documents_dir, 'Sample.doc'))
      delete_request = DeleteRunOnlineRequest.new(document: request_document, paragraph_path: 'paragraphs/1', index: 0)
      @words_api.delete_run_online(delete_request)
    end

    def test_delete_section
      delete_request = DeleteSectionRequest.new(name: 'Sample.docx', section_index: 0)
      @words_api.delete_section(delete_request)
    end

    def test_delete_section_online
      documents_dir = 'ExamplesData'
      request_document = File.open(File.join(documents_dir, 'Sample.docx'))
      delete_request = DeleteSectionOnlineRequest.new(document: request_document, section_index: 0)
      @words_api.delete_section_online(delete_request)
    end

    def test_delete_table
      delete_request = DeleteTableRequest.new(name: 'Sample.docx', index: 1)
      @words_api.delete_table(delete_request)
    end

    def test_delete_table_cell
      delete_request = DeleteTableCellRequest.new(name: 'Sample.docx', table_row_path: 'sections/0/tables/2/rows/0', index: 0)
      @words_api.delete_table_cell(delete_request)
    end

    def test_delete_table_cell_online
      documents_dir = 'ExamplesData'
      request_document = File.open(File.join(documents_dir, 'Sample.docx'))
      delete_request = DeleteTableCellOnlineRequest.new(document: request_document, table_row_path: 'sections/0/tables/2/rows/0', index: 0)
      @words_api.delete_table_cell_online(delete_request)
    end

    def test_delete_table_online
      documents_dir = 'ExamplesData'
      request_document = File.open(File.join(documents_dir, 'Sample.docx'))
      delete_request = DeleteTableOnlineRequest.new(document: request_document, index: 1)
      @words_api.delete_table_online(delete_request)
    end

    def test_delete_table_row
      delete_request = DeleteTableRowRequest.new(name: 'Sample.docx', table_path: 'tables/1', index: 0)
      @words_api.delete_table_row(delete_request)
    end

    def test_delete_table_row_online
      documents_dir = 'ExamplesData'
      request_document = File.open(File.join(documents_dir, 'Sample.docx'))
      delete_request = DeleteTableRowOnlineRequest.new(document: request_document, table_path: 'tables/1', index: 0)
      @words_api.delete_table_row_online(delete_request)
    end

    def test_delete_watermark
      delete_request = DeleteWatermarkRequest.new(name: 'Sample.docx')
      @words_api.delete_watermark(delete_request)
    end

    def test_delete_watermark_online
      documents_dir = 'ExamplesData'
      request_document = File.open(File.join(documents_dir, 'Sample.docx'))
      delete_request = DeleteWatermarkOnlineRequest.new(document: request_document)
      @words_api.delete_watermark_online(delete_request)
    end

    def test_download_file
      download_request = DownloadFileRequest.new(path: 'Sample.docx')
      @words_api.download_file(download_request)
    end

    def test_execute_mail_merge
      mail_merge_request = ExecuteMailMergeRequest.new(name: 'Sample.docx', data: 'TestExecuteTemplateData.txt')
      @words_api.execute_mail_merge(mail_merge_request)
    end

    def test_execute_mail_merge_online
      documents_dir = 'ExamplesData'
      request_template = File.open(File.join(documents_dir, 'TestExecuteTemplate.doc'))
      request_data = File.open(File.join(documents_dir, 'TestExecuteTemplateData.txt'))
      mail_merge_request = ExecuteMailMergeOnlineRequest.new(template: request_template, data: request_data)
      @words_api.execute_mail_merge_online(mail_merge_request)
    end

    def test_get_available_fonts
      request = GetAvailableFontsRequest.new()
      @words_api.get_available_fonts(request)
    end

    def test_get_bookmark_by_name
      request = GetBookmarkByNameRequest.new(name: 'Sample.docx', bookmark_name: 'aspose')
      @words_api.get_bookmark_by_name(request)
    end

    def test_get_bookmark_by_name_online
      documents_dir = 'ExamplesData'
      request_document = File.open(File.join(documents_dir, 'Sample.docx'))
      request = GetBookmarkByNameOnlineRequest.new(document: request_document, bookmark_name: 'aspose')
      @words_api.get_bookmark_by_name_online(request)
    end

    def test_get_bookmarks
      request = GetBookmarksRequest.new(name: 'Sample.docx')
      @words_api.get_bookmarks(request)
    end

    def test_get_bookmarks_online
      documents_dir = 'ExamplesData'
      request_document = File.open(File.join(documents_dir, 'Sample.docx'))
      request = GetBookmarksOnlineRequest.new(document: request_document)
      @words_api.get_bookmarks_online(request)
    end

    def test_get_border
      request = GetBorderRequest.new(name: 'Sample.docx', border_type: 'left', node_path: 'tables/1/rows/0/cells/0')
      @words_api.get_border(request)
    end

    def test_get_border_online
      documents_dir = 'ExamplesData'
      request_document = File.open(File.join(documents_dir, 'Sample.docx'))
      request = GetBorderOnlineRequest.new(document: request_document, border_type: 'left', node_path: 'tables/1/rows/0/cells/0')
      @words_api.get_border_online(request)
    end

    def test_get_borders
      request = GetBordersRequest.new(name: 'Sample.docx', node_path: 'tables/1/rows/0/cells/0')
      @words_api.get_borders(request)
    end

    def test_get_borders_online
      documents_dir = 'ExamplesData'
      request_document = File.open(File.join(documents_dir, 'Sample.docx'))
      request = GetBordersOnlineRequest.new(document: request_document, node_path: 'tables/1/rows/0/cells/0')
      @words_api.get_borders_online(request)
    end

    def test_get_comment
      request = GetCommentRequest.new(name: 'Sample.docx', comment_index: 0)
      @words_api.get_comment(request)
    end

    def test_get_comment_online
      documents_dir = 'ExamplesData'
      request_document = File.open(File.join(documents_dir, 'Sample.docx'))
      request = GetCommentOnlineRequest.new(document: request_document, comment_index: 0)
      @words_api.get_comment_online(request)
    end

    def test_get_comments
      request = GetCommentsRequest.new(name: 'Sample.docx')
      @words_api.get_comments(request)
    end

    def test_get_comments_online
      documents_dir = 'ExamplesData'
      request_document = File.open(File.join(documents_dir, 'Sample.docx'))
      request = GetCommentsOnlineRequest.new(document: request_document)
      @words_api.get_comments_online(request)
    end

    def test_get_custom_xml_part
      request = GetCustomXmlPartRequest.new(name: 'Sample.docx', custom_xml_part_index: 0)
      @words_api.get_custom_xml_part(request)
    end

    def test_get_custom_xml_part_online
      documents_dir = 'ExamplesData'
      request_document = File.open(File.join(documents_dir, 'Sample.docx'))
      request = GetCustomXmlPartOnlineRequest.new(document: request_document, custom_xml_part_index: 0)
      @words_api.get_custom_xml_part_online(request)
    end

    def test_get_custom_xml_parts
      request = GetCustomXmlPartsRequest.new(name: 'Sample.docx')
      @words_api.get_custom_xml_parts(request)
    end

    def test_get_custom_xml_parts_online
      documents_dir = 'ExamplesData'
      request_document = File.open(File.join(documents_dir, 'Sample.docx'))
      request = GetCustomXmlPartsOnlineRequest.new(document: request_document)
      @words_api.get_custom_xml_parts_online(request)
    end

    def test_get_document
      request = GetDocumentRequest.new(document_name: 'Sample.docx')
      @words_api.get_document(request)
    end

    def test_get_document_drawing_object_by_index
      request = GetDocumentDrawingObjectByIndexRequest.new(name: 'Sample.docx', index: 0)
      @words_api.get_document_drawing_object_by_index(request)
    end

    def test_get_document_drawing_object_by_index_online
      documents_dir = 'ExamplesData'
      request_document = File.open(File.join(documents_dir, 'Sample.docx'))
      request = GetDocumentDrawingObjectByIndexOnlineRequest.new(document: request_document, index: 0, node_path: 'sections/0')
      @words_api.get_document_drawing_object_by_index_online(request)
    end

    def test_get_document_drawing_object_image_data
      request = GetDocumentDrawingObjectImageDataRequest.new(name: 'Sample.docx', index: 0)
      @words_api.get_document_drawing_object_image_data(request)
    end

    def test_get_document_drawing_object_image_data_online
      documents_dir = 'ExamplesData'
      request_document = File.open(File.join(documents_dir, 'Sample.docx'))
      request = GetDocumentDrawingObjectImageDataOnlineRequest.new(document: request_document, index: 0, node_path: 'sections/0')
      @words_api.get_document_drawing_object_image_data_online(request)
    end

    def test_get_document_drawing_object_ole_data
      request = GetDocumentDrawingObjectOleDataRequest.new(name: 'Sample.docx', index: 0)
      @words_api.get_document_drawing_object_ole_data(request)
    end

    def test_get_document_drawing_object_ole_data_online
      documents_dir = 'ExamplesData'
      request_document = File.open(File.join(documents_dir, 'Sample.docx'))
      request = GetDocumentDrawingObjectOleDataOnlineRequest.new(document: request_document, index: 0, node_path: 'sections/0')
      @words_api.get_document_drawing_object_ole_data_online(request)
    end

    def test_get_document_drawing_objects
      request = GetDocumentDrawingObjectsRequest.new(name: 'Sample.docx')
      @words_api.get_document_drawing_objects(request)
    end

    def test_get_document_drawing_objects_online
      documents_dir = 'ExamplesData'
      request_document = File.open(File.join(documents_dir, 'Sample.docx'))
      request = GetDocumentDrawingObjectsOnlineRequest.new(document: request_document, node_path: 'sections/0')
      @words_api.get_document_drawing_objects_online(request)
    end

    def test_get_document_field_names
      request = GetDocumentFieldNamesRequest.new(name: 'Sample.docx')
      @words_api.get_document_field_names(request)
    end

    def test_get_document_field_names_online
      documents_dir = 'ExamplesData'
      request_template = File.open(File.join(documents_dir, 'Sample.docx'))
      request = GetDocumentFieldNamesOnlineRequest.new(template: request_template, use_non_merge_fields: true)
      @words_api.get_document_field_names_online(request)
    end

    def test_get_document_hyperlink_by_index
      request = GetDocumentHyperlinkByIndexRequest.new(name: 'Sample.docx', hyperlink_index: 0)
      @words_api.get_document_hyperlink_by_index(request)
    end

    def test_get_document_hyperlink_by_index_online
      documents_dir = 'ExamplesData'
      request_document = File.open(File.join(documents_dir, 'Sample.docx'))
      request = GetDocumentHyperlinkByIndexOnlineRequest.new(document: request_document, hyperlink_index: 0)
      @words_api.get_document_hyperlink_by_index_online(request)
    end

    def test_get_document_hyperlinks
      request = GetDocumentHyperlinksRequest.new(name: 'Sample.docx')
      @words_api.get_document_hyperlinks(request)
    end

    def test_get_document_hyperlinks_online
      documents_dir = 'ExamplesData'
      request_document = File.open(File.join(documents_dir, 'Sample.docx'))
      request = GetDocumentHyperlinksOnlineRequest.new(document: request_document)
      @words_api.get_document_hyperlinks_online(request)
    end

    def test_get_document_properties
      request = GetDocumentPropertiesRequest.new(name: 'Sample.docx')
      @words_api.get_document_properties(request)
    end

    def test_get_document_properties_online
      documents_dir = 'ExamplesData'
      request_document = File.open(File.join(documents_dir, 'Sample.docx'))
      request = GetDocumentPropertiesOnlineRequest.new(document: request_document)
      @words_api.get_document_properties_online(request)
    end

    def test_get_document_property
      request = GetDocumentPropertyRequest.new(name: 'Sample.docx', property_name: 'Author')
      @words_api.get_document_property(request)
    end

    def test_get_document_property_online
      documents_dir = 'ExamplesData'
      request_document = File.open(File.join(documents_dir, 'Sample.docx'))
      request = GetDocumentPropertyOnlineRequest.new(document: request_document, property_name: 'Author')
      @words_api.get_document_property_online(request)
    end

    def test_get_document_protection
      request = GetDocumentProtectionRequest.new(name: 'Sample.docx')
      @words_api.get_document_protection(request)
    end

    def test_get_document_protection_online
      documents_dir = 'ExamplesData'
      request_document = File.open(File.join(documents_dir, 'Sample.docx'))
      request = GetDocumentProtectionOnlineRequest.new(document: request_document)
      @words_api.get_document_protection_online(request)
    end

    def test_get_document_statistics
      request = GetDocumentStatisticsRequest.new(name: 'Sample.docx')
      @words_api.get_document_statistics(request)
    end

    def test_get_document_statistics_online
      documents_dir = 'ExamplesData'
      request_document = File.open(File.join(documents_dir, 'Sample.docx'))
      request = GetDocumentStatisticsOnlineRequest.new(document: request_document)
      @words_api.get_document_statistics_online(request)
    end

    def test_get_document_with_format
      request = GetDocumentWithFormatRequest.new(name: 'Sample.docx', format: 'text', out_path: '/TestGetDocumentWithFormatAndOutPath.text')
      @words_api.get_document_with_format(request)
    end

    def test_get_field
      request = GetFieldRequest.new(name: 'Sample.docx', index: 0)
      @words_api.get_field(request)
    end

    def test_get_field_online
      documents_dir = 'ExamplesData'
      request_document = File.open(File.join(documents_dir, 'Sample.docx'))
      request = GetFieldOnlineRequest.new(document: request_document, index: 0, node_path: 'sections/0/paragraphs/0')
      @words_api.get_field_online(request)
    end

    def test_get_fields
      request = GetFieldsRequest.new(name: 'Sample.docx')
      @words_api.get_fields(request)
    end

    def test_get_fields_online
      documents_dir = 'ExamplesData'
      request_document = File.open(File.join(documents_dir, 'Sample.docx'))
      request = GetFieldsOnlineRequest.new(document: request_document, node_path: 'sections/0')
      @words_api.get_fields_online(request)
    end

    def test_get_files_list
      request = GetFilesListRequest.new(path: '')
      @words_api.get_files_list(request)
    end

    def test_get_footnote
      request = GetFootnoteRequest.new(name: 'Sample.docx', index: 0)
      @words_api.get_footnote(request)
    end

    def test_get_footnote_online
      documents_dir = 'ExamplesData'
      request_document = File.open(File.join(documents_dir, 'Sample.doc'))
      request = GetFootnoteOnlineRequest.new(document: request_document, index: 0)
      @words_api.get_footnote_online(request)
    end

    def test_get_footnotes
      request = GetFootnotesRequest.new(name: 'Sample.docx')
      @words_api.get_footnotes(request)
    end

    def test_get_footnotes_online
      documents_dir = 'ExamplesData'
      request_document = File.open(File.join(documents_dir, 'Sample.doc'))
      request = GetFootnotesOnlineRequest.new(document: request_document)
      @words_api.get_footnotes_online(request)
    end

    def test_get_form_field
      request = GetFormFieldRequest.new(name: 'Sample.docx', index: 0)
      @words_api.get_form_field(request)
    end

    def test_get_form_field_online
      documents_dir = 'ExamplesData'
      request_document = File.open(File.join(documents_dir, 'Sample.docx'))
      request = GetFormFieldOnlineRequest.new(document: request_document, index: 0, node_path: 'sections/0')
      @words_api.get_form_field_online(request)
    end

    def test_get_form_fields
      request = GetFormFieldsRequest.new(name: 'Sample.docx')
      @words_api.get_form_fields(request)
    end

    def test_get_form_fields_online
      documents_dir = 'ExamplesData'
      request_document = File.open(File.join(documents_dir, 'Sample.docx'))
      request = GetFormFieldsOnlineRequest.new(document: request_document, node_path: 'sections/0')
      @words_api.get_form_fields_online(request)
    end

    def test_get_header_footer
      request = GetHeaderFooterRequest.new(name: 'Sample.docx', header_footer_index: 0)
      @words_api.get_header_footer(request)
    end

    def test_get_header_footer_of_section
      request = GetHeaderFooterOfSectionRequest.new(name: 'Sample.docx', header_footer_index: 0, section_index: 0)
      @words_api.get_header_footer_of_section(request)
    end

    def test_get_header_footer_of_section_online
      documents_dir = 'ExamplesData'
      request_document = File.open(File.join(documents_dir, 'Sample.doc'))
      request = GetHeaderFooterOfSectionOnlineRequest.new(document: request_document, header_footer_index: 0, section_index: 0)
      @words_api.get_header_footer_of_section_online(request)
    end

    def test_get_header_footer_online
      documents_dir = 'ExamplesData'
      request_document = File.open(File.join(documents_dir, 'Sample.doc'))
      request = GetHeaderFooterOnlineRequest.new(document: request_document, header_footer_index: 0)
      @words_api.get_header_footer_online(request)
    end

    def test_get_header_footers
      request = GetHeaderFootersRequest.new(name: 'Sample.docx', section_path: '')
      @words_api.get_header_footers(request)
    end

    def test_get_header_footers_online
      documents_dir = 'ExamplesData'
      request_document = File.open(File.join(documents_dir, 'Sample.doc'))
      request = GetHeaderFootersOnlineRequest.new(document: request_document, section_path: '')
      @words_api.get_header_footers_online(request)
    end

    def test_get_list
      request = GetListRequest.new(name: 'TestGetLists.doc', list_id: 1)
      @words_api.get_list(request)
    end

    def test_get_list_online
      documents_dir = 'ExamplesData'
      request_document = File.open(File.join(documents_dir, 'Sample.doc'))
      request = GetListOnlineRequest.new(document: request_document, list_id: 1)
      @words_api.get_list_online(request)
    end

    def test_get_lists
      request = GetListsRequest.new(name: 'TestGetLists.doc')
      @words_api.get_lists(request)
    end

    def test_get_lists_online
      documents_dir = 'ExamplesData'
      request_document = File.open(File.join(documents_dir, 'Sample.doc'))
      request = GetListsOnlineRequest.new(document: request_document)
      @words_api.get_lists_online(request)
    end

    def test_get_office_math_object
      request = GetOfficeMathObjectRequest.new(name: 'Sample.docx', index: 0)
      @words_api.get_office_math_object(request)
    end

    def test_get_office_math_object_online
      documents_dir = 'ExamplesData'
      request_document = File.open(File.join(documents_dir, 'Sample.docx'))
      request = GetOfficeMathObjectOnlineRequest.new(document: request_document, index: 0)
      @words_api.get_office_math_object_online(request)
    end

    def test_get_office_math_objects
      request = GetOfficeMathObjectsRequest.new(name: 'Sample.docx')
      @words_api.get_office_math_objects(request)
    end

    def test_get_office_math_objects_online
      documents_dir = 'ExamplesData'
      request_document = File.open(File.join(documents_dir, 'Sample.docx'))
      request = GetOfficeMathObjectsOnlineRequest.new(document: request_document)
      @words_api.get_office_math_objects_online(request)
    end

    def test_get_paragraph
      request = GetParagraphRequest.new(name: 'Sample.docx', index: 0)
      @words_api.get_paragraph(request)
    end

    def test_get_paragraph_format
      request = GetParagraphFormatRequest.new(name: 'Sample.docx', index: 0)
      @words_api.get_paragraph_format(request)
    end

    def test_get_paragraph_format_online
      documents_dir = 'ExamplesData'
      request_document = File.open(File.join(documents_dir, 'Sample.docx'))
      request = GetParagraphFormatOnlineRequest.new(document: request_document, index: 0)
      @words_api.get_paragraph_format_online(request)
    end

    def test_get_paragraph_list_format
      request = GetParagraphListFormatRequest.new(name: 'Sample.docx', index: 0)
      @words_api.get_paragraph_list_format(request)
    end

    def test_get_paragraph_list_format_online
      documents_dir = 'ExamplesData'
      request_document = File.open(File.join(documents_dir, 'Sample.doc'))
      request = GetParagraphListFormatOnlineRequest.new(document: request_document, index: 0)
      @words_api.get_paragraph_list_format_online(request)
    end

    def test_get_paragraph_online
      documents_dir = 'ExamplesData'
      request_document = File.open(File.join(documents_dir, 'Sample.docx'))
      request = GetParagraphOnlineRequest.new(document: request_document, index: 0, node_path: 'sections/0')
      @words_api.get_paragraph_online(request)
    end

    def test_get_paragraphs
      request = GetParagraphsRequest.new(name: 'Sample.docx')
      @words_api.get_paragraphs(request)
    end

    def test_get_paragraphs_online
      documents_dir = 'ExamplesData'
      request_document = File.open(File.join(documents_dir, 'Sample.docx'))
      request = GetParagraphsOnlineRequest.new(document: request_document, node_path: 'sections/0')
      @words_api.get_paragraphs_online(request)
    end

    def test_get_paragraph_tab_stops
      request = GetParagraphTabStopsRequest.new(name: 'Sample.docx', index: 0)
      @words_api.get_paragraph_tab_stops(request)
    end

    def test_get_paragraph_tab_stops_online
      documents_dir = 'ExamplesData'
      request_document = File.open(File.join(documents_dir, 'Sample.docx'))
      request = GetParagraphTabStopsOnlineRequest.new(document: request_document, index: 0)
      @words_api.get_paragraph_tab_stops_online(request)
    end

    def test_get_public_key
      request = GetPublicKeyRequest.new()
      @words_api.get_public_key(request)
    end

    def test_get_range_text
      request = GetRangeTextRequest.new(name: 'Sample.docx', range_start_identifier: 'id0.0.0', range_end_identifier: 'id0.0.1')
      @words_api.get_range_text(request)
    end

    def test_get_range_text_online
      documents_dir = 'ExamplesData'
      request_document = File.open(File.join(documents_dir, 'Sample.doc'))
      request = GetRangeTextOnlineRequest.new(document: request_document, range_start_identifier: 'id0.0.0', range_end_identifier: 'id0.0.1')
      @words_api.get_range_text_online(request)
    end

    def test_get_run
      request = GetRunRequest.new(name: 'Sample.docx', paragraph_path: 'paragraphs/0', index: 0)
      @words_api.get_run(request)
    end

    def test_get_run_font
      request = GetRunFontRequest.new(name: 'Sample.docx', paragraph_path: 'paragraphs/0', index: 0)
      @words_api.get_run_font(request)
    end

    def test_get_run_font_online
      documents_dir = 'ExamplesData'
      request_document = File.open(File.join(documents_dir, 'Sample.docx'))
      request = GetRunFontOnlineRequest.new(document: request_document, paragraph_path: 'paragraphs/0', index: 0)
      @words_api.get_run_font_online(request)
    end

    def test_get_run_online
      documents_dir = 'ExamplesData'
      request_document = File.open(File.join(documents_dir, 'Sample.docx'))
      request = GetRunOnlineRequest.new(document: request_document, paragraph_path: 'paragraphs/0', index: 0)
      @words_api.get_run_online(request)
    end

    def test_get_runs
      request = GetRunsRequest.new(name: 'Sample.docx', paragraph_path: 'sections/0/paragraphs/0')
      @words_api.get_runs(request)
    end

    def test_get_runs_online
      documents_dir = 'ExamplesData'
      request_document = File.open(File.join(documents_dir, 'Sample.docx'))
      request = GetRunsOnlineRequest.new(document: request_document, paragraph_path: 'sections/0/paragraphs/0')
      @words_api.get_runs_online(request)
    end

    def test_get_section
      request = GetSectionRequest.new(name: 'Sample.docx', section_index: 0)
      @words_api.get_section(request)
    end

    def test_get_section_online
      documents_dir = 'ExamplesData'
      request_document = File.open(File.join(documents_dir, 'Sample.docx'))
      request = GetSectionOnlineRequest.new(document: request_document, section_index: 0)
      @words_api.get_section_online(request)
    end

    def test_get_section_page_setup
      request = GetSectionPageSetupRequest.new(name: 'Sample.docx', section_index: 0)
      @words_api.get_section_page_setup(request)
    end

    def test_get_section_page_setup_online
      documents_dir = 'ExamplesData'
      request_document = File.open(File.join(documents_dir, 'Sample.docx'))
      request = GetSectionPageSetupOnlineRequest.new(document: request_document, section_index: 0)
      @words_api.get_section_page_setup_online(request)
    end

    def test_get_sections
      request = GetSectionsRequest.new(name: 'Sample.docx')
      @words_api.get_sections(request)
    end

    def test_get_sections_online
      documents_dir = 'ExamplesData'
      request_document = File.open(File.join(documents_dir, 'Sample.docx'))
      request = GetSectionsOnlineRequest.new(document: request_document)
      @words_api.get_sections_online(request)
    end

    def test_get_style
      request = GetStyleRequest.new(name: 'Sample.docx', style_name: 'Heading 1')
      @words_api.get_style(request)
    end

    def test_get_style_from_document_element
      request = GetStyleFromDocumentElementRequest.new(name: 'Sample.docx', styled_node_path: 'paragraphs/1/paragraphFormat')
      @words_api.get_style_from_document_element(request)
    end

    def test_get_style_from_document_element_online
      documents_dir = 'ExamplesData'
      request_document = File.open(File.join(documents_dir, 'Sample.docx'))
      request = GetStyleFromDocumentElementOnlineRequest.new(document: request_document, styled_node_path: 'paragraphs/1/paragraphFormat')
      @words_api.get_style_from_document_element_online(request)
    end

    def test_get_style_online
      documents_dir = 'ExamplesData'
      request_document = File.open(File.join(documents_dir, 'Sample.docx'))
      request = GetStyleOnlineRequest.new(document: request_document, style_name: 'Heading 1')
      @words_api.get_style_online(request)
    end

    def test_get_styles
      request = GetStylesRequest.new(name: 'Sample.docx')
      @words_api.get_styles(request)
    end

    def test_get_styles_online
      documents_dir = 'ExamplesData'
      request_document = File.open(File.join(documents_dir, 'Sample.docx'))
      request = GetStylesOnlineRequest.new(document: request_document)
      @words_api.get_styles_online(request)
    end

    def test_get_table
      request = GetTableRequest.new(name: 'Sample.docx', index: 1)
      @words_api.get_table(request)
    end

    def test_get_table_cell
      request = GetTableCellRequest.new(name: 'Sample.docx', table_row_path: 'sections/0/tables/2/rows/0', index: 0)
      @words_api.get_table_cell(request)
    end

    def test_get_table_cell_format
      request = GetTableCellFormatRequest.new(name: 'Sample.docx', table_row_path: 'sections/0/tables/2/rows/0', index: 0)
      @words_api.get_table_cell_format(request)
    end

    def test_get_table_cell_format_online
      documents_dir = 'ExamplesData'
      request_document = File.open(File.join(documents_dir, 'Sample.docx'))
      request = GetTableCellFormatOnlineRequest.new(document: request_document, table_row_path: 'sections/0/tables/2/rows/0', index: 0)
      @words_api.get_table_cell_format_online(request)
    end

    def test_get_table_cell_online
      documents_dir = 'ExamplesData'
      request_document = File.open(File.join(documents_dir, 'Sample.docx'))
      request = GetTableCellOnlineRequest.new(document: request_document, table_row_path: 'sections/0/tables/2/rows/0', index: 0)
      @words_api.get_table_cell_online(request)
    end

    def test_get_table_online
      documents_dir = 'ExamplesData'
      request_document = File.open(File.join(documents_dir, 'Sample.docx'))
      request = GetTableOnlineRequest.new(document: request_document, index: 1)
      @words_api.get_table_online(request)
    end

    def test_get_table_properties
      request = GetTablePropertiesRequest.new(name: 'Sample.docx', index: 1)
      @words_api.get_table_properties(request)
    end

    def test_get_table_properties_online
      documents_dir = 'ExamplesData'
      request_document = File.open(File.join(documents_dir, 'Sample.docx'))
      request = GetTablePropertiesOnlineRequest.new(document: request_document, index: 1)
      @words_api.get_table_properties_online(request)
    end

    def test_get_table_row
      request = GetTableRowRequest.new(name: 'Sample.docx', table_path: 'tables/1', index: 0)
      @words_api.get_table_row(request)
    end

    def test_get_table_row_format
      request = GetTableRowFormatRequest.new(name: 'Sample.docx', table_path: 'sections/0/tables/2', index: 0)
      @words_api.get_table_row_format(request)
    end

    def test_get_table_row_format_online
      documents_dir = 'ExamplesData'
      request_document = File.open(File.join(documents_dir, 'Sample.docx'))
      request = GetTableRowFormatOnlineRequest.new(document: request_document, table_path: 'sections/0/tables/2', index: 0)
      @words_api.get_table_row_format_online(request)
    end

    def test_get_table_row_online
      documents_dir = 'ExamplesData'
      request_document = File.open(File.join(documents_dir, 'Sample.docx'))
      request = GetTableRowOnlineRequest.new(document: request_document, table_path: 'tables/1', index: 0)
      @words_api.get_table_row_online(request)
    end

    def test_get_tables
      request = GetTablesRequest.new(name: 'Sample.docx')
      @words_api.get_tables(request)
    end

    def test_get_tables_online
      documents_dir = 'ExamplesData'
      request_document = File.open(File.join(documents_dir, 'Sample.docx'))
      request = GetTablesOnlineRequest.new(document: request_document)
      @words_api.get_tables_online(request)
    end

    def test_insert_comment
      request_comment_range_start_node = NodeLink.new({:NodeId => '0.3.0.3'})
      request_comment_range_start = DocumentPosition.new({:Node => request_comment_range_start_node, :Offset => 0})
      request_comment_range_end_node = NodeLink.new({:NodeId => '0.3.0.3'})
      request_comment_range_end = DocumentPosition.new({:Node => request_comment_range_end_node, :Offset => 0})
      request_comment = CommentInsert.new({:RangeStart => request_comment_range_start, :RangeEnd => request_comment_range_end, :Initial => 'IA', :Author => 'Imran Anwar', :Text => 'A new Comment'})
      insert_request = InsertCommentRequest.new(name: 'Sample.docx', comment: request_comment)
      @words_api.insert_comment(insert_request)
    end

    def test_insert_comment_online
      documents_dir = 'ExamplesData'
      request_document = File.open(File.join(documents_dir, 'Sample.docx'))
      request_comment_range_start_node = NodeLink.new({:NodeId => '0.3.0.3'})
      request_comment_range_start = DocumentPosition.new({:Node => request_comment_range_start_node, :Offset => 0})
      request_comment_range_end_node = NodeLink.new({:NodeId => '0.3.0.3'})
      request_comment_range_end = DocumentPosition.new({:Node => request_comment_range_end_node, :Offset => 0})
      request_comment = CommentInsert.new({:RangeStart => request_comment_range_start, :RangeEnd => request_comment_range_end, :Initial => 'IA', :Author => 'Imran Anwar', :Text => 'A new Comment'})
      insert_request = InsertCommentOnlineRequest.new(document: request_document, comment: request_comment)
      @words_api.insert_comment_online(insert_request)
    end

    def test_insert_custom_xml_part
      request_custom_xml_part = CustomXmlPartInsert.new({:Id => 'hello', :Data => '<data>Hello world</data>'})
      insert_request = InsertCustomXmlPartRequest.new(name: 'Sample.docx', custom_xml_part: request_custom_xml_part)
      @words_api.insert_custom_xml_part(insert_request)
    end

    def test_insert_custom_xml_part_online
      documents_dir = 'ExamplesData'
      request_document = File.open(File.join(documents_dir, 'Sample.docx'))
      request_custom_xml_part = CustomXmlPartInsert.new({:Id => 'hello', :Data => '<data>Hello world</data>'})
      insert_request = InsertCustomXmlPartOnlineRequest.new(document: request_document, custom_xml_part: request_custom_xml_part)
      @words_api.insert_custom_xml_part_online(insert_request)
    end

    def test_insert_drawing_object
      documents_dir = 'ExamplesData'
      request_drawing_object = DrawingObjectInsert.new({:Height => 0, :Left => 0, :Top => 0, :Width => 0, :RelativeHorizontalPosition => 'Margin', :RelativeVerticalPosition => 'Margin', :WrapType => 'Inline'})
      request_image_file = File.open(File.join(documents_dir, 'Common/aspose-cloud.png'))
      insert_request = InsertDrawingObjectRequest.new(name: 'Sample.docx', drawing_object: request_drawing_object, image_file: request_image_file)
      @words_api.insert_drawing_object(insert_request)
    end

    def test_insert_drawing_object_online
      documents_dir = 'ExamplesData'
      request_document = File.open(File.join(documents_dir, 'Sample.docx'))
      request_drawing_object = DrawingObjectInsert.new({:Height => 0, :Left => 0, :Top => 0, :Width => 0, :RelativeHorizontalPosition => 'Margin', :RelativeVerticalPosition => 'Margin', :WrapType => 'Inline'})
      request_image_file = File.open(File.join(documents_dir, 'Common/aspose-cloud.png'))
      insert_request = InsertDrawingObjectOnlineRequest.new(document: request_document, drawing_object: request_drawing_object, image_file: request_image_file)
      @words_api.insert_drawing_object_online(insert_request)
    end

    def test_insert_field
      request_field = FieldInsert.new({:FieldCode => '{ NUMPAGES }'})
      insert_request = InsertFieldRequest.new(name: 'Sample.docx', field: request_field)
      @words_api.insert_field(insert_request)
    end

    def test_insert_field_online
      documents_dir = 'ExamplesData'
      request_document = File.open(File.join(documents_dir, 'Sample.docx'))
      request_field = FieldInsert.new({:FieldCode => '{ NUMPAGES }'})
      insert_request = InsertFieldOnlineRequest.new(document: request_document, field: request_field, node_path: 'sections/0/paragraphs/0')
      @words_api.insert_field_online(insert_request)
    end

    def test_insert_footnote
      request_footnote_dto = FootnoteInsert.new({:FootnoteType => 'Endnote', :Text => 'test endnote'})
      insert_request = InsertFootnoteRequest.new(name: 'Sample.docx', footnote_dto: request_footnote_dto)
      @words_api.insert_footnote(insert_request)
    end

    def test_insert_footnote_online
      documents_dir = 'ExamplesData'
      request_document = File.open(File.join(documents_dir, 'Sample.doc'))
      request_footnote_dto = FootnoteInsert.new({:FootnoteType => 'Endnote', :Text => 'test endnote'})
      insert_request = InsertFootnoteOnlineRequest.new(document: request_document, footnote_dto: request_footnote_dto)
      @words_api.insert_footnote_online(insert_request)
    end

    def test_insert_form_field
      request_form_field = FormFieldTextInput.new({:Name => 'FullName', :Enabled => true, :CalculateOnExit => true, :StatusText => '', :TextInputType => 'Regular', :TextInputDefault => '123', :TextInputFormat => 'UPPERCASE'})
      insert_request = InsertFormFieldRequest.new(name: 'Sample.docx', form_field: request_form_field)
      @words_api.insert_form_field(insert_request)
    end

    def test_insert_form_field_online
      documents_dir = 'ExamplesData'
      request_document = File.open(File.join(documents_dir, 'Sample.docx'))
      request_form_field = FormFieldTextInput.new({:Name => 'FullName', :Enabled => true, :CalculateOnExit => true, :StatusText => '', :TextInputType => 'Regular', :TextInputDefault => '123', :TextInputFormat => 'UPPERCASE'})
      insert_request = InsertFormFieldOnlineRequest.new(document: request_document, form_field: request_form_field, node_path: 'sections/0/paragraphs/0')
      @words_api.insert_form_field_online(insert_request)
    end

    def test_insert_header_footer
      insert_request = InsertHeaderFooterRequest.new(name: 'Sample.docx', section_path: '', header_footer_type: 'FooterEven')
      @words_api.insert_header_footer(insert_request)
    end

    def test_insert_header_footer_online
      documents_dir = 'ExamplesData'
      request_document = File.open(File.join(documents_dir, 'Sample.doc'))
      insert_request = InsertHeaderFooterOnlineRequest.new(document: request_document, section_path: '', header_footer_type: 'FooterEven')
      @words_api.insert_header_footer_online(insert_request)
    end

    def test_insert_list
      request_list_insert = ListInsert.new({:Template => 'OutlineLegal'})
      insert_request = InsertListRequest.new(name: 'TestGetLists.doc', list_insert: request_list_insert)
      @words_api.insert_list(insert_request)
    end

    def test_insert_list_online
      documents_dir = 'ExamplesData'
      request_document = File.open(File.join(documents_dir, 'Sample.doc'))
      request_list_insert = ListInsert.new({:Template => 'OutlineLegal'})
      insert_request = InsertListOnlineRequest.new(document: request_document, list_insert: request_list_insert)
      @words_api.insert_list_online(insert_request)
    end

    def test_insert_or_update_paragraph_tab_stop
      request_tab_stop_insert_dto = TabStopInsert.new({:Alignment => 'Left', :Leader => 'None', :Position => 100.0})
      insert_request = InsertOrUpdateParagraphTabStopRequest.new(name: 'Sample.docx', index: 0, tab_stop_insert_dto: request_tab_stop_insert_dto)
      @words_api.insert_or_update_paragraph_tab_stop(insert_request)
    end

    def test_insert_or_update_paragraph_tab_stop_online
      documents_dir = 'ExamplesData'
      request_document = File.open(File.join(documents_dir, 'Sample.docx'))
      request_tab_stop_insert_dto = TabStopInsert.new({:Alignment => 'Left', :Leader => 'None', :Position => 72})
      insert_request = InsertOrUpdateParagraphTabStopOnlineRequest.new(document: request_document, tab_stop_insert_dto: request_tab_stop_insert_dto, index: 0)
      @words_api.insert_or_update_paragraph_tab_stop_online(insert_request)
    end

    def test_insert_page_numbers
      request_page_number = PageNumber.new({:Alignment => 'center', :Format => '{PAGE} of {NUMPAGES}'})
      insert_request = InsertPageNumbersRequest.new(name: 'Sample.docx', page_number: request_page_number)
      @words_api.insert_page_numbers(insert_request)
    end

    def test_insert_page_numbers_online
      documents_dir = 'ExamplesData'
      request_document = File.open(File.join(documents_dir, 'Common/Sample.docx'))
      request_page_number = PageNumber.new({:Alignment => 'center', :Format => '{PAGE} of {NUMPAGES}'})
      insert_request = InsertPageNumbersOnlineRequest.new(document: request_document, page_number: request_page_number)
      @words_api.insert_page_numbers_online(insert_request)
    end

    def test_insert_paragraph
      request_paragraph = ParagraphInsert.new({:Text => 'This is a new paragraph for your document'})
      insert_request = InsertParagraphRequest.new(name: 'Sample.docx', paragraph: request_paragraph)
      @words_api.insert_paragraph(insert_request)
    end

    def test_insert_paragraph_online
      documents_dir = 'ExamplesData'
      request_document = File.open(File.join(documents_dir, 'Sample.docx'))
      request_paragraph = ParagraphInsert.new({:Text => 'This is a new paragraph for your document'})
      insert_request = InsertParagraphOnlineRequest.new(document: request_document, paragraph: request_paragraph, node_path: 'sections/0')
      @words_api.insert_paragraph_online(insert_request)
    end

    def test_insert_run
      request_run = RunInsert.new({:Text => 'run with text'})
      insert_request = InsertRunRequest.new(name: 'Sample.docx', paragraph_path: 'paragraphs/1', run: request_run)
      @words_api.insert_run(insert_request)
    end

    def test_insert_run_online
      documents_dir = 'ExamplesData'
      request_document = File.open(File.join(documents_dir, 'Sample.doc'))
      request_run = RunInsert.new({:Text => 'run with text'})
      insert_request = InsertRunOnlineRequest.new(document: request_document, paragraph_path: 'paragraphs/1', run: request_run)
      @words_api.insert_run_online(insert_request)
    end

    def test_insert_style
      request_style_insert = StyleInsert.new({:StyleName => 'My Style', :StyleType => 'Paragraph'})
      insert_request = InsertStyleRequest.new(name: 'Sample.docx', style_insert: request_style_insert)
      @words_api.insert_style(insert_request)
    end

    def test_insert_style_online
      documents_dir = 'ExamplesData'
      request_document = File.open(File.join(documents_dir, 'Sample.docx'))
      request_style_insert = StyleInsert.new({:StyleName => 'My Style', :StyleType => 'Paragraph'})
      insert_request = InsertStyleOnlineRequest.new(document: request_document, style_insert: request_style_insert)
      @words_api.insert_style_online(insert_request)
    end

    def test_insert_table
      request_table = TableInsert.new({:ColumnsCount => 5, :RowsCount => 4})
      insert_request = InsertTableRequest.new(name: 'Sample.docx', table: request_table)
      @words_api.insert_table(insert_request)
    end

    def test_insert_table_cell
      request_cell = TableCellInsert.new({})
      insert_request = InsertTableCellRequest.new(name: 'Sample.docx', table_row_path: 'sections/0/tables/2/rows/0', cell: request_cell)
      @words_api.insert_table_cell(insert_request)
    end

    def test_insert_table_cell_online
      documents_dir = 'ExamplesData'
      request_document = File.open(File.join(documents_dir, 'Sample.docx'))
      request_cell = TableCellInsert.new({})
      insert_request = InsertTableCellOnlineRequest.new(document: request_document, table_row_path: 'sections/0/tables/2/rows/0', cell: request_cell)
      @words_api.insert_table_cell_online(insert_request)
    end

    def test_insert_table_online
      documents_dir = 'ExamplesData'
      request_document = File.open(File.join(documents_dir, 'Sample.docx'))
      request_table = TableInsert.new({:ColumnsCount => 5, :RowsCount => 4})
      insert_request = InsertTableOnlineRequest.new(document: request_document, table: request_table)
      @words_api.insert_table_online(insert_request)
    end

    def test_insert_table_row
      request_row = TableRowInsert.new({:ColumnsCount => 5})
      insert_request = InsertTableRowRequest.new(name: 'Sample.docx', table_path: 'sections/0/tables/2', row: request_row)
      @words_api.insert_table_row(insert_request)
    end

    def test_insert_table_row_online
      documents_dir = 'ExamplesData'
      request_document = File.open(File.join(documents_dir, 'Sample.docx'))
      request_row = TableRowInsert.new({:ColumnsCount => 5})
      insert_request = InsertTableRowOnlineRequest.new(document: request_document, table_path: 'sections/0/tables/2', row: request_row)
      @words_api.insert_table_row_online(insert_request)
    end

    def test_insert_watermark_image
      documents_dir = 'ExamplesData'
      insert_request = InsertWatermarkImageRequest.new(name: 'Sample.docx', image_file: nil, image: 'Sample.png')
      @words_api.insert_watermark_image(insert_request)
    end

    def test_insert_watermark_image_online
      documents_dir = 'ExamplesData'
      request_document = File.open(File.join(documents_dir, 'Sample.docx'))
      request_image_file = File.open(File.join(documents_dir, 'Common/aspose-cloud.png'))
      insert_request = InsertWatermarkImageOnlineRequest.new(document: request_document, image_file: request_image_file)
      @words_api.insert_watermark_image_online(insert_request)
    end

    def test_insert_watermark_text
      request_watermark_text = WatermarkText.new({:Text => 'This is the text', :RotationAngle => 90.0})
      insert_request = InsertWatermarkTextRequest.new(name: 'Sample.docx', watermark_text: request_watermark_text)
      @words_api.insert_watermark_text(insert_request)
    end

    def test_insert_watermark_text_online
      documents_dir = 'ExamplesData'
      request_document = File.open(File.join(documents_dir, 'Sample.docx'))
      request_watermark_text = WatermarkText.new({:Text => 'This is the text', :RotationAngle => 90})
      insert_request = InsertWatermarkTextOnlineRequest.new(document: request_document, watermark_text: request_watermark_text)
      @words_api.insert_watermark_text_online(insert_request)
    end

    def test_load_web_document
      request_data_save_options = SaveOptionsData.new({:FileName => 'google.doc', :SaveFormat => 'doc', :DmlEffectsRenderingMode => '1', :DmlRenderingMode => '1', :UpdateSdtContent => false, :ZipOutput => false})
      request_data = LoadWebDocumentData.new({:LoadingDocumentUrl => 'http://google.com', :SaveOptions => request_data_save_options})
      load_request = LoadWebDocumentRequest.new(data: request_data)
      @words_api.load_web_document(load_request)
    end

    def test_move_file
      move_request = MoveFileRequest.new(dest_path: '/TestMoveFileDest_Sample.docx', src_path: 'Sample.docx')
      @words_api.move_file(move_request)
    end

    def test_move_folder
      move_request = MoveFolderRequest.new(dest_path: '/TestMoveFolderDest_Sample', src_path: '/TestMoveFolderSrc')
      @words_api.move_folder(move_request)
    end

    def test_optimize_document
      request_options = OptimizationOptions.new({:MsWordVersion => 'Word2002'})
      optimize_request = OptimizeDocumentRequest.new(name: 'Sample.docx', options: request_options)
      @words_api.optimize_document(optimize_request)
    end

    def test_optimize_document_online
      documents_dir = 'ExamplesData'
      request_document = File.open(File.join(documents_dir, 'Sample.docx'))
      request_options = OptimizationOptions.new({:MsWordVersion => 'Word2002'})
      optimize_request = OptimizeDocumentOnlineRequest.new(document: request_document, options: request_options)
      @words_api.optimize_document_online(optimize_request)
    end

    def test_protect_document
      request_protection_request = ProtectionRequest.new({:Password => '123', :ProtectionType => 'ReadOnly'})
      protect_request = ProtectDocumentRequest.new(name: 'Sample.docx', protection_request: request_protection_request)
      @words_api.protect_document(protect_request)
    end

    def test_protect_document_online
      documents_dir = 'ExamplesData'
      request_document = File.open(File.join(documents_dir, 'Sample.docx'))
      request_protection_request = ProtectionRequest.new({:NewPassword => '123'})
      protect_request = ProtectDocumentOnlineRequest.new(document: request_document, protection_request: request_protection_request)
      @words_api.protect_document_online(protect_request)
    end

    def test_reject_all_revisions
      reject_request = RejectAllRevisionsRequest.new(name: 'Sample.docx')
      @words_api.reject_all_revisions(reject_request)
    end

    def test_reject_all_revisions_online
      documents_dir = 'ExamplesData'
      request_document = File.open(File.join(documents_dir, 'Sample.docx'))
      reject_request = RejectAllRevisionsOnlineRequest.new(document: request_document)
      @words_api.reject_all_revisions_online(reject_request)
    end

    def test_remove_range
      remove_request = RemoveRangeRequest.new(name: 'Sample.docx', range_start_identifier: 'id0.0.0', range_end_identifier: 'id0.0.1')
      @words_api.remove_range(remove_request)
    end

    def test_remove_range_online
      documents_dir = 'ExamplesData'
      request_document = File.open(File.join(documents_dir, 'Sample.doc'))
      remove_request = RemoveRangeOnlineRequest.new(document: request_document, range_start_identifier: 'id0.0.0', range_end_identifier: 'id0.0.1')
      @words_api.remove_range_online(remove_request)
    end

    def test_render_drawing_object
      render_request = RenderDrawingObjectRequest.new(name: 'Sample.docx', format: 'png', index: 0)
      @words_api.render_drawing_object(render_request)
    end

    def test_render_drawing_object_online
      documents_dir = 'ExamplesData'
      request_document = File.open(File.join(documents_dir, 'Sample.docx'))
      render_request = RenderDrawingObjectOnlineRequest.new(document: request_document, format: 'png', index: 0, node_path: 'sections/0')
      @words_api.render_drawing_object_online(render_request)
    end

    def test_render_math_object
      render_request = RenderMathObjectRequest.new(name: 'Sample.docx', format: 'png', index: 0)
      @words_api.render_math_object(render_request)
    end

    def test_render_math_object_online
      documents_dir = 'ExamplesData'
      request_document = File.open(File.join(documents_dir, 'Sample.docx'))
      render_request = RenderMathObjectOnlineRequest.new(document: request_document, format: 'png', index: 0)
      @words_api.render_math_object_online(render_request)
    end

    def test_render_page
      render_request = RenderPageRequest.new(name: 'Sample.docx', page_index: 1, format: 'bmp')
      @words_api.render_page(render_request)
    end

    def test_render_page_online
      documents_dir = 'ExamplesData'
      request_document = File.open(File.join(documents_dir, 'Sample.docx'))
      render_request = RenderPageOnlineRequest.new(document: request_document, page_index: 1, format: 'bmp')
      @words_api.render_page_online(render_request)
    end

    def test_render_paragraph
      render_request = RenderParagraphRequest.new(name: 'Sample.docx', format: 'png', index: 0)
      @words_api.render_paragraph(render_request)
    end

    def test_render_paragraph_online
      documents_dir = 'ExamplesData'
      request_document = File.open(File.join(documents_dir, 'Sample.docx'))
      render_request = RenderParagraphOnlineRequest.new(document: request_document, format: 'png', index: 0)
      @words_api.render_paragraph_online(render_request)
    end

    def test_render_table
      render_request = RenderTableRequest.new(name: 'Sample.docx', format: 'png', index: 0)
      @words_api.render_table(render_request)
    end

    def test_render_table_online
      documents_dir = 'ExamplesData'
      request_document = File.open(File.join(documents_dir, 'Sample.docx'))
      render_request = RenderTableOnlineRequest.new(document: request_document, format: 'png', index: 0)
      @words_api.render_table_online(render_request)
    end

    def test_replace_text
      request_replace_text = ReplaceTextParameters.new({:OldValue => 'Testing', :NewValue => 'Aspose testing'})
      replace_request = ReplaceTextRequest.new(name: 'Sample.docx', replace_text: request_replace_text)
      @words_api.replace_text(replace_request)
    end

    def test_replace_text_online
      documents_dir = 'ExamplesData'
      request_document = File.open(File.join(documents_dir, 'Sample.docx'))
      request_replace_text = ReplaceTextParameters.new({:OldValue => 'aspose', :NewValue => 'aspose new'})
      replace_request = ReplaceTextOnlineRequest.new(document: request_document, replace_text: request_replace_text)
      @words_api.replace_text_online(replace_request)
    end

    def test_replace_with_text
      request_range_text = ReplaceRange.new({:Text => 'Replaced header'})
      replace_request = ReplaceWithTextRequest.new(name: 'Sample.docx', range_start_identifier: 'id0.0.0', range_text: request_range_text, range_end_identifier: 'id0.0.1')
      @words_api.replace_with_text(replace_request)
    end

    def test_replace_with_text_online
      documents_dir = 'ExamplesData'
      request_document = File.open(File.join(documents_dir, 'Sample.doc'))
      request_range_text = ReplaceRange.new({:Text => 'Replaced header'})
      replace_request = ReplaceWithTextOnlineRequest.new(document: request_document, range_start_identifier: 'id0.0.0', range_text: request_range_text, range_end_identifier: 'id0.0.1')
      @words_api.replace_with_text_online(replace_request)
    end

    def test_reset_cache
      reset_request = ResetCacheRequest.new()
      @words_api.reset_cache(reset_request)
    end

    def test_save_as
      request_save_options_data = SaveOptionsData.new({:SaveFormat => 'docx', :FileName => '/TestSaveAsFromPdfToDoc.docx'})
      save_request = SaveAsRequest.new(name: 'Sample.docx', save_options_data: request_save_options_data)
      @words_api.save_as(save_request)
    end

    def test_save_as_online
      documents_dir = 'ExamplesData'
      request_document = File.open(File.join(documents_dir, 'Common/test_multi_pages.docx'))
      request_save_options_data = SaveOptionsData.new({:SaveFormat => 'pdf', :FileName => '/TestSaveAs.pdf'})
      save_request = SaveAsOnlineRequest.new(document: request_document, save_options_data: request_save_options_data)
      @words_api.save_as_online(save_request)
    end

    def test_save_as_range
      request_document_parameters = RangeDocument.new({:DocumentName => '/NewDoc.docx'})
      save_request = SaveAsRangeRequest.new(name: 'Sample.docx', range_start_identifier: 'id0.0.0', document_parameters: request_document_parameters, range_end_identifier: 'id0.0.1')
      @words_api.save_as_range(save_request)
    end

    def test_save_as_range_online
      documents_dir = 'ExamplesData'
      request_document = File.open(File.join(documents_dir, 'Sample.doc'))
      request_document_parameters = RangeDocument.new({:DocumentName => '/NewDoc.docx'})
      save_request = SaveAsRangeOnlineRequest.new(document: request_document, range_start_identifier: 'id0.0.0', document_parameters: request_document_parameters, range_end_identifier: 'id0.0.1')
      @words_api.save_as_range_online(save_request)
    end

    def test_save_as_tiff
      request_save_options = TiffSaveOptionsData.new({:SaveFormat => 'tiff', :FileName => '/abc.tiff'})
      save_request = SaveAsTiffRequest.new(name: 'Sample.docx', save_options: request_save_options)
      @words_api.save_as_tiff(save_request)
    end

    def test_save_as_tiff_online
      documents_dir = 'ExamplesData'
      request_document = File.open(File.join(documents_dir, 'Common/test_multi_pages.docx'))
      request_save_options = TiffSaveOptionsData.new({:SaveFormat => 'tiff', :FileName => '/abc.tiff'})
      save_request = SaveAsTiffOnlineRequest.new(document: request_document, save_options: request_save_options)
      @words_api.save_as_tiff_online(save_request)
    end

    def test_search
      search_request = SearchRequest.new(name: 'Sample.docx', pattern: 'aspose')
      @words_api.search(search_request)
    end

    def test_search_online
      documents_dir = 'ExamplesData'
      request_document = File.open(File.join(documents_dir, 'Sample.docx'))
      search_request = SearchOnlineRequest.new(document: request_document, pattern: 'aspose')
      @words_api.search_online(search_request)
    end

    def test_split_document
      split_request = SplitDocumentRequest.new(name: 'Sample.docx', format: 'text', dest_file_name: '/TestSplitDocument.text', from: 1, to: 2)
      @words_api.split_document(split_request)
    end

    def test_split_document_online
      documents_dir = 'ExamplesData'
      request_document = File.open(File.join(documents_dir, 'Sample.docx'))
      split_request = SplitDocumentOnlineRequest.new(document: request_document, format: 'text', dest_file_name: '/TestSplitDocument.text', from: 1, to: 2)
      @words_api.split_document_online(split_request)
    end

    def test_unprotect_document
      request_protection_request = ProtectionRequest.new({:Password => 'aspose'})
      unprotect_request = UnprotectDocumentRequest.new(name: 'Sample.docx', protection_request: request_protection_request)
      @words_api.unprotect_document(unprotect_request)
    end

    def test_unprotect_document_online
      documents_dir = 'ExamplesData'
      request_document = File.open(File.join(documents_dir, 'Sample.docx'))
      request_protection_request = ProtectionRequest.new({:Password => 'aspose'})
      unprotect_request = UnprotectDocumentOnlineRequest.new(document: request_document, protection_request: request_protection_request)
      @words_api.unprotect_document_online(unprotect_request)
    end

    def test_update_bookmark
      bookmark_name= 'aspose'

      request_bookmark_data = BookmarkData.new({:Name => bookmark_name, :Text => 'This will be the text for Aspose'})
      update_request = UpdateBookmarkRequest.new(name: 'Sample.docx', bookmark_name: bookmark_name, bookmark_data: request_bookmark_data)
      @words_api.update_bookmark(update_request)
    end

    def test_update_bookmark_online
      documents_dir = 'ExamplesData'
      bookmark_name= 'aspose'

      request_document = File.open(File.join(documents_dir, 'Sample.docx'))
      request_bookmark_data = BookmarkData.new({:Name => bookmark_name, :Text => 'This will be the text for Aspose'})
      update_request = UpdateBookmarkOnlineRequest.new(document: request_document, bookmark_name: bookmark_name, bookmark_data: request_bookmark_data, dest_file_name: 'Sample.docx')
      @words_api.update_bookmark_online(update_request)
    end

    def test_update_border
      request_border_properties_color = XmlColor.new({:Web => '#AABBCC'})
      request_border_properties = Border.new({:BorderType => 'Left', :Color => request_border_properties_color, :DistanceFromText => 6.0, :LineStyle => 'DashDotStroker', :LineWidth => 2.0, :Shadow => true})
      update_request = UpdateBorderRequest.new(name: 'Sample.docx', border_type: 'left', border_properties: request_border_properties, node_path: 'tables/1/rows/0/cells/0')
      @words_api.update_border(update_request)
    end

    def test_update_border_online
      documents_dir = 'ExamplesData'
      request_document = File.open(File.join(documents_dir, 'Sample.docx'))
      request_border_properties_color = XmlColor.new({:Web => '#AABBCC'})
      request_border_properties = Border.new({:BorderType => 'Left', :Color => request_border_properties_color, :DistanceFromText => 6, :LineStyle => 'DashDotStroker', :LineWidth => 2, :Shadow => true})
      update_request = UpdateBorderOnlineRequest.new(document: request_document, border_properties: request_border_properties, border_type: 'left', node_path: 'tables/1/rows/0/cells/0')
      @words_api.update_border_online(update_request)
    end

    def test_update_comment
      request_comment_range_start_node = NodeLink.new({:NodeId => '0.3.0'})
      request_comment_range_start = DocumentPosition.new({:Node => request_comment_range_start_node, :Offset => 0})
      request_comment_range_end_node = NodeLink.new({:NodeId => '0.3.0'})
      request_comment_range_end = DocumentPosition.new({:Node => request_comment_range_end_node, :Offset => 0})
      request_comment = CommentUpdate.new({:RangeStart => request_comment_range_start, :RangeEnd => request_comment_range_end, :Initial => 'IA', :Author => 'Imran Anwar', :Text => 'A new Comment'})
      update_request = UpdateCommentRequest.new(name: 'Sample.docx', comment_index: 0, comment: request_comment)
      @words_api.update_comment(update_request)
    end

    def test_update_comment_online
      documents_dir = 'ExamplesData'
      request_document = File.open(File.join(documents_dir, 'Sample.docx'))
      request_comment_range_start_node = NodeLink.new({:NodeId => '0.3.0'})
      request_comment_range_start = DocumentPosition.new({:Node => request_comment_range_start_node, :Offset => 0})
      request_comment_range_end_node = NodeLink.new({:NodeId => '0.3.0'})
      request_comment_range_end = DocumentPosition.new({:Node => request_comment_range_end_node, :Offset => 0})
      request_comment = CommentUpdate.new({:RangeStart => request_comment_range_start, :RangeEnd => request_comment_range_end, :Initial => 'IA', :Author => 'Imran Anwar', :Text => 'A new Comment'})
      update_request = UpdateCommentOnlineRequest.new(document: request_document, comment_index: 0, comment: request_comment)
      @words_api.update_comment_online(update_request)
    end

    def test_update_custom_xml_part
      request_custom_xml_part = CustomXmlPartUpdate.new({:Data => '<data>Hello world</data>'})
      update_request = UpdateCustomXmlPartRequest.new(name: 'Sample.docx', custom_xml_part_index: 0, custom_xml_part: request_custom_xml_part)
      @words_api.update_custom_xml_part(update_request)
    end

    def test_update_custom_xml_part_online
      documents_dir = 'ExamplesData'
      request_document = File.open(File.join(documents_dir, 'Sample.docx'))
      request_custom_xml_part = CustomXmlPartUpdate.new({:Data => '<data>Hello world</data>'})
      update_request = UpdateCustomXmlPartOnlineRequest.new(document: request_document, custom_xml_part_index: 0, custom_xml_part: request_custom_xml_part)
      @words_api.update_custom_xml_part_online(update_request)
    end

    def test_update_drawing_object
      documents_dir = 'ExamplesData'
      request_drawing_object = DrawingObjectUpdate.new({:Left => 0})
      request_image_file = File.open(File.join(documents_dir, 'Common/aspose-cloud.png'))
      update_request = UpdateDrawingObjectRequest.new(name: 'Sample.docx', drawing_object: request_drawing_object, image_file: request_image_file, index: 0)
      @words_api.update_drawing_object(update_request)
    end

    def test_update_drawing_object_online
      documents_dir = 'ExamplesData'
      request_document = File.open(File.join(documents_dir, 'Sample.docx'))
      request_drawing_object = DrawingObjectUpdate.new({:Left => 0})
      request_image_file = File.open(File.join(documents_dir, 'Common/aspose-cloud.png'))
      update_request = UpdateDrawingObjectOnlineRequest.new(document: request_document, drawing_object: request_drawing_object, image_file: request_image_file, index: 0)
      @words_api.update_drawing_object_online(update_request)
    end

    def test_update_field
      request_field = FieldUpdate.new({:FieldCode => '{ NUMPAGES }'})
      update_request = UpdateFieldRequest.new(name: 'Sample.docx', index: 0, field: request_field, node_path: 'sections/0/paragraphs/0')
      @words_api.update_field(update_request)
    end

    def test_update_field_online
      documents_dir = 'ExamplesData'
      request_document = File.open(File.join(documents_dir, 'Sample.docx'))
      request_field = FieldUpdate.new({:FieldCode => '{ NUMPAGES }'})
      update_request = UpdateFieldOnlineRequest.new(document: request_document, field: request_field, index: 0, node_path: 'sections/0/paragraphs/0')
      @words_api.update_field_online(update_request)
    end

    def test_update_fields
      update_request = UpdateFieldsRequest.new(name: 'Sample.docx')
      @words_api.update_fields(update_request)
    end

    def test_update_fields_online
      documents_dir = 'ExamplesData'
      request_document = File.open(File.join(documents_dir, 'Sample.docx'))
      update_request = UpdateFieldsOnlineRequest.new(document: request_document)
      @words_api.update_fields_online(update_request)
    end

    def test_update_footnote
      request_footnote_dto = FootnoteUpdate.new({:Text => 'new text is here'})
      update_request = UpdateFootnoteRequest.new(name: 'Sample.docx', index: 0, footnote_dto: request_footnote_dto)
      @words_api.update_footnote(update_request)
    end

    def test_update_footnote_online
      documents_dir = 'ExamplesData'
      request_document = File.open(File.join(documents_dir, 'Sample.doc'))
      request_footnote_dto = FootnoteUpdate.new({:Text => 'new text is here'})
      update_request = UpdateFootnoteOnlineRequest.new(document: request_document, footnote_dto: request_footnote_dto, index: 0)
      @words_api.update_footnote_online(update_request)
    end

    def test_update_form_field
      request_form_field = FormFieldTextInput.new({:Name => 'FullName', :Enabled => true, :CalculateOnExit => true, :StatusText => '', :TextInputType => 'Regular', :TextInputDefault => 'No name'})
      update_request = UpdateFormFieldRequest.new(name: 'Sample.docx', index: 0, form_field: request_form_field)
      @words_api.update_form_field(update_request)
    end

    def test_update_form_field_online
      documents_dir = 'ExamplesData'
      request_document = File.open(File.join(documents_dir, 'Sample.docx'))
      request_form_field = FormFieldTextInput.new({:Name => 'FullName', :Enabled => true, :CalculateOnExit => true, :StatusText => '', :TextInputType => 'Regular', :TextInputDefault => 'No name'})
      update_request = UpdateFormFieldOnlineRequest.new(document: request_document, form_field: request_form_field, index: 0, node_path: 'sections/0')
      @words_api.update_form_field_online(update_request)
    end

    def test_update_list
      request_list_update = ListUpdate.new({:IsRestartAtEachSection => true})
      update_request = UpdateListRequest.new(name: 'TestGetLists.doc', list_id: 1, list_update: request_list_update)
      @words_api.update_list(update_request)
    end

    def test_update_list_level
      request_list_update = ListLevelUpdate.new({:Alignment => 'Right'})
      update_request = UpdateListLevelRequest.new(name: 'TestGetLists.doc', list_id: 1, list_level: 1, list_update: request_list_update)
      @words_api.update_list_level(update_request)
    end

    def test_update_list_level_online
      documents_dir = 'ExamplesData'
      request_document = File.open(File.join(documents_dir, 'Sample.doc'))
      request_list_update = ListLevelUpdate.new({:Alignment => 'Right'})
      update_request = UpdateListLevelOnlineRequest.new(document: request_document, list_id: 1, list_update: request_list_update, list_level: 1)
      @words_api.update_list_level_online(update_request)
    end

    def test_update_list_online
      documents_dir = 'ExamplesData'
      request_document = File.open(File.join(documents_dir, 'Sample.doc'))
      request_list_update = ListUpdate.new({:IsRestartAtEachSection => true})
      update_request = UpdateListOnlineRequest.new(document: request_document, list_id: 1, list_update: request_list_update)
      @words_api.update_list_online(update_request)
    end

    def test_update_paragraph_format
      request_paragraph_format_dto = ParagraphFormatUpdate.new({:Alignment => 'Right'})
      update_request = UpdateParagraphFormatRequest.new(name: 'Sample.docx', index: 0, paragraph_format_dto: request_paragraph_format_dto)
      @words_api.update_paragraph_format(update_request)
    end

    def test_update_paragraph_format_online
      documents_dir = 'ExamplesData'
      request_document = File.open(File.join(documents_dir, 'Sample.docx'))
      request_paragraph_format_dto = ParagraphFormatUpdate.new({:Alignment => 'Right'})
      update_request = UpdateParagraphFormatOnlineRequest.new(document: request_document, paragraph_format_dto: request_paragraph_format_dto, index: 0)
      @words_api.update_paragraph_format_online(update_request)
    end

    def test_update_paragraph_list_format
      request_list_format_dto = ListFormatUpdate.new({:ListId => 2})
      update_request = UpdateParagraphListFormatRequest.new(name: 'Sample.docx', index: 0, list_format_dto: request_list_format_dto)
      @words_api.update_paragraph_list_format(update_request)
    end

    def test_update_paragraph_list_format_online
      documents_dir = 'ExamplesData'
      request_document = File.open(File.join(documents_dir, 'Sample.doc'))
      request_list_format_dto = ListFormatUpdate.new({:ListId => 2})
      update_request = UpdateParagraphListFormatOnlineRequest.new(document: request_document, list_format_dto: request_list_format_dto, index: 0)
      @words_api.update_paragraph_list_format_online(update_request)
    end

    def test_update_run
      request_run = RunUpdate.new({:Text => 'run with text'})
      update_request = UpdateRunRequest.new(name: 'Sample.docx', paragraph_path: 'paragraphs/1', index: 0, run: request_run)
      @words_api.update_run(update_request)
    end

    def test_update_run_font
      request_font_dto = Font.new({:Bold => true})
      update_request = UpdateRunFontRequest.new(name: 'Sample.docx', paragraph_path: 'paragraphs/0', index: 0, font_dto: request_font_dto)
      @words_api.update_run_font(update_request)
    end

    def test_update_run_font_online
      documents_dir = 'ExamplesData'
      request_document = File.open(File.join(documents_dir, 'Sample.docx'))
      request_font_dto = Font.new({:Bold => true})
      update_request = UpdateRunFontOnlineRequest.new(document: request_document, paragraph_path: 'paragraphs/0', font_dto: request_font_dto, index: 0)
      @words_api.update_run_font_online(update_request)
    end

    def test_update_run_online
      documents_dir = 'ExamplesData'
      request_document = File.open(File.join(documents_dir, 'Sample.doc'))
      request_run = RunUpdate.new({:Text => 'run with text'})
      update_request = UpdateRunOnlineRequest.new(document: request_document, paragraph_path: 'paragraphs/1', run: request_run, index: 0)
      @words_api.update_run_online(update_request)
    end

    def test_update_section_page_setup
      request_page_setup = PageSetup.new({:RtlGutter => true, :LeftMargin => 10.0, :Orientation => 'Landscape', :PaperSize => 'A5'})
      update_request = UpdateSectionPageSetupRequest.new(name: 'Sample.docx', section_index: 0, page_setup: request_page_setup)
      @words_api.update_section_page_setup(update_request)
    end

    def test_update_section_page_setup_online
      documents_dir = 'ExamplesData'
      request_document = File.open(File.join(documents_dir, 'Sample.docx'))
      request_page_setup = PageSetup.new({:RtlGutter => true, :LeftMargin => 10, :Orientation => 'Landscape', :PaperSize => 'A5'})
      update_request = UpdateSectionPageSetupOnlineRequest.new(document: request_document, section_index: 0, page_setup: request_page_setup)
      @words_api.update_section_page_setup_online(update_request)
    end

    def test_update_style
      request_style_update = StyleUpdate.new({:Name => 'My Style'})
      update_request = UpdateStyleRequest.new(name: 'Sample.docx', style_name: 'Heading 1', style_update: request_style_update)
      @words_api.update_style(update_request)
    end

    def test_update_style_online
      documents_dir = 'ExamplesData'
      request_document = File.open(File.join(documents_dir, 'Sample.docx'))
      request_style_update = StyleUpdate.new({:Name => 'My Style'})
      update_request = UpdateStyleOnlineRequest.new(document: request_document, style_name: 'Heading 1', style_update: request_style_update)
      @words_api.update_style_online(update_request)
    end

    def test_update_table_cell_format
      request_format = TableCellFormat.new({:BottomPadding => 5.0, :FitText => true, :HorizontalMerge => 'First', :WrapText => true})
      update_request = UpdateTableCellFormatRequest.new(name: 'Sample.docx', table_row_path: 'sections/0/tables/2/rows/0', index: 0, format: request_format)
      @words_api.update_table_cell_format(update_request)
    end

    def test_update_table_cell_format_online
      documents_dir = 'ExamplesData'
      request_document = File.open(File.join(documents_dir, 'Sample.docx'))
      request_format = TableCellFormat.new({:BottomPadding => 5, :FitText => true, :HorizontalMerge => 'First', :WrapText => true})
      update_request = UpdateTableCellFormatOnlineRequest.new(document: request_document, table_row_path: 'sections/0/tables/2/rows/0', format: request_format, index: 0)
      @words_api.update_table_cell_format_online(update_request)
    end

    def test_update_table_properties
      request_properties = TableProperties.new({:Alignment => 'Right', :AllowAutoFit => false, :Bidi => true, :BottomPadding => 1.0, :CellSpacing => 2.0, :StyleOptions => 'ColumnBands'})
      update_request = UpdateTablePropertiesRequest.new(name: 'Sample.docx', index: 1, properties: request_properties)
      @words_api.update_table_properties(update_request)
    end

    def test_update_table_properties_online
      documents_dir = 'ExamplesData'
      request_document = File.open(File.join(documents_dir, 'Sample.docx'))
      request_properties = TableProperties.new({:Alignment => 'Right', :AllowAutoFit => false, :Bidi => true, :BottomPadding => 1, :CellSpacing => 2, :StyleOptions => 'ColumnBands'})
      update_request = UpdateTablePropertiesOnlineRequest.new(document: request_document, properties: request_properties, index: 1)
      @words_api.update_table_properties_online(update_request)
    end

    def test_update_table_row_format
      request_format = TableRowFormat.new({:AllowBreakAcrossPages => true, :HeadingFormat => true, :Height => 10.0, :HeightRule => 'Exactly'})
      update_request = UpdateTableRowFormatRequest.new(name: 'Sample.docx', table_path: 'sections/0/tables/2', index: 0, format: request_format)
      @words_api.update_table_row_format(update_request)
    end

    def test_update_table_row_format_online
      documents_dir = 'ExamplesData'
      request_document = File.open(File.join(documents_dir, 'Sample.docx'))
      request_format = TableRowFormat.new({:AllowBreakAcrossPages => true, :HeadingFormat => true, :Height => 10, :HeightRule => 'Auto'})
      update_request = UpdateTableRowFormatOnlineRequest.new(document: request_document, table_path: 'sections/0/tables/2', format: request_format, index: 0)
      @words_api.update_table_row_format_online(update_request)
    end

    def test_upload_file
      documents_dir = 'ExamplesData'
      request_file_content = File.open(File.join(documents_dir, 'Sample.docx'))
      upload_request = UploadFileRequest.new(file_content: request_file_content, path: 'Sample.docx')
      @words_api.upload_file(upload_request)
    end
  end
end