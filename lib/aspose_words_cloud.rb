# ------------------------------------------------------------------------------------
# <copyright company="Aspose" file="aspose_words_cloud.rb">
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
# ------------------------------------------------------------------------------------

# Common files
require_relative 'aspose_words_cloud/api_client'
require_relative 'aspose_words_cloud/api_error'
require_relative 'aspose_words_cloud/version'
require_relative 'aspose_words_cloud/configuration'

# Models
require_relative 'aspose_words_cloud/models/bookmark_data'
require_relative 'aspose_words_cloud/models/bookmarks_outline_level_data'
require_relative 'aspose_words_cloud/models/classification_result'
require_relative 'aspose_words_cloud/models/compare_data'
require_relative 'aspose_words_cloud/models/document'
require_relative 'aspose_words_cloud/models/document_entry'
require_relative 'aspose_words_cloud/models/document_entry_list'
require_relative 'aspose_words_cloud/models/document_position'
require_relative 'aspose_words_cloud/models/document_stat_data'
require_relative 'aspose_words_cloud/models/downsample_options_data'
require_relative 'aspose_words_cloud/models/error'
require_relative 'aspose_words_cloud/models/error_details'
require_relative 'aspose_words_cloud/models/files_list'
require_relative 'aspose_words_cloud/models/files_upload_result'
require_relative 'aspose_words_cloud/models/font_info'
require_relative 'aspose_words_cloud/models/footnotes_stat_data'
require_relative 'aspose_words_cloud/models/graphics_quality_options_data'
require_relative 'aspose_words_cloud/models/link'
require_relative 'aspose_words_cloud/models/link_element'
require_relative 'aspose_words_cloud/models/load_web_document_data'
require_relative 'aspose_words_cloud/models/metafile_rendering_options_data'
require_relative 'aspose_words_cloud/models/modification_operation_result'
require_relative 'aspose_words_cloud/models/outline_options_data'
require_relative 'aspose_words_cloud/models/page_number'
require_relative 'aspose_words_cloud/models/page_stat_data'
require_relative 'aspose_words_cloud/models/paragraph_insert'
require_relative 'aspose_words_cloud/models/pdf_digital_signature_details_data'
require_relative 'aspose_words_cloud/models/pdf_encryption_details_data'
require_relative 'aspose_words_cloud/models/preferred_width'
require_relative 'aspose_words_cloud/models/protection_data'
require_relative 'aspose_words_cloud/models/protection_request'
require_relative 'aspose_words_cloud/models/range_document'
require_relative 'aspose_words_cloud/models/replace_range'
require_relative 'aspose_words_cloud/models/replace_text_parameters'
require_relative 'aspose_words_cloud/models/response_error'
require_relative 'aspose_words_cloud/models/save_options_data'
require_relative 'aspose_words_cloud/models/save_result'
require_relative 'aspose_words_cloud/models/search_result'
require_relative 'aspose_words_cloud/models/split_document_result'
require_relative 'aspose_words_cloud/models/storage_file'
require_relative 'aspose_words_cloud/models/story_child_nodes'
require_relative 'aspose_words_cloud/models/string_format_data'
require_relative 'aspose_words_cloud/models/table_cell_insert'
require_relative 'aspose_words_cloud/models/table_insert'
require_relative 'aspose_words_cloud/models/table_row_insert'
require_relative 'aspose_words_cloud/models/watermark_text'
require_relative 'aspose_words_cloud/models/words_response'
require_relative 'aspose_words_cloud/models/xml_color'
require_relative 'aspose_words_cloud/models/available_fonts_response'
require_relative 'aspose_words_cloud/models/bookmark'
require_relative 'aspose_words_cloud/models/bookmark_response'
require_relative 'aspose_words_cloud/models/bookmarks'
require_relative 'aspose_words_cloud/models/bookmarks_response'
require_relative 'aspose_words_cloud/models/border'
require_relative 'aspose_words_cloud/models/border_response'
require_relative 'aspose_words_cloud/models/borders_collection'
require_relative 'aspose_words_cloud/models/borders_response'
require_relative 'aspose_words_cloud/models/classification_response'
require_relative 'aspose_words_cloud/models/comment_link'
require_relative 'aspose_words_cloud/models/comment_response'
require_relative 'aspose_words_cloud/models/comments_collection'
require_relative 'aspose_words_cloud/models/comments_response'
require_relative 'aspose_words_cloud/models/doc_save_options_data'
require_relative 'aspose_words_cloud/models/document_properties'
require_relative 'aspose_words_cloud/models/document_properties_response'
require_relative 'aspose_words_cloud/models/document_property'
require_relative 'aspose_words_cloud/models/document_property_response'
require_relative 'aspose_words_cloud/models/document_response'
require_relative 'aspose_words_cloud/models/drawing_object_collection'
require_relative 'aspose_words_cloud/models/drawing_object_response'
require_relative 'aspose_words_cloud/models/drawing_objects_response'
require_relative 'aspose_words_cloud/models/field_collection'
require_relative 'aspose_words_cloud/models/field_names'
require_relative 'aspose_words_cloud/models/field_names_response'
require_relative 'aspose_words_cloud/models/field_response'
require_relative 'aspose_words_cloud/models/fields_response'
require_relative 'aspose_words_cloud/models/file_link'
require_relative 'aspose_words_cloud/models/fixed_page_save_options_data'
require_relative 'aspose_words_cloud/models/font'
require_relative 'aspose_words_cloud/models/font_response'
require_relative 'aspose_words_cloud/models/footnote_collection'
require_relative 'aspose_words_cloud/models/footnote_response'
require_relative 'aspose_words_cloud/models/footnotes_response'
require_relative 'aspose_words_cloud/models/form_field_collection'
require_relative 'aspose_words_cloud/models/form_field_response'
require_relative 'aspose_words_cloud/models/form_fields_response'
require_relative 'aspose_words_cloud/models/header_footer_link'
require_relative 'aspose_words_cloud/models/header_footer_link_collection'
require_relative 'aspose_words_cloud/models/header_footer_response'
require_relative 'aspose_words_cloud/models/header_footers_response'
require_relative 'aspose_words_cloud/models/html_save_options_data'
require_relative 'aspose_words_cloud/models/hyperlink'
require_relative 'aspose_words_cloud/models/hyperlink_response'
require_relative 'aspose_words_cloud/models/hyperlinks'
require_relative 'aspose_words_cloud/models/hyperlinks_response'
require_relative 'aspose_words_cloud/models/node_link'
require_relative 'aspose_words_cloud/models/odt_save_options_data'
require_relative 'aspose_words_cloud/models/office_math_object_response'
require_relative 'aspose_words_cloud/models/office_math_objects_collection'
require_relative 'aspose_words_cloud/models/office_math_objects_response'
require_relative 'aspose_words_cloud/models/ooxml_save_options_data'
require_relative 'aspose_words_cloud/models/page_setup'
require_relative 'aspose_words_cloud/models/paragraph_format'
require_relative 'aspose_words_cloud/models/paragraph_format_response'
require_relative 'aspose_words_cloud/models/paragraph_link_collection'
require_relative 'aspose_words_cloud/models/paragraph_link_collection_response'
require_relative 'aspose_words_cloud/models/paragraph_response'
require_relative 'aspose_words_cloud/models/protection_data_response'
require_relative 'aspose_words_cloud/models/range_text_response'
require_relative 'aspose_words_cloud/models/replace_text_response'
require_relative 'aspose_words_cloud/models/revisions_modification_response'
require_relative 'aspose_words_cloud/models/rtf_save_options_data'
require_relative 'aspose_words_cloud/models/run_response'
require_relative 'aspose_words_cloud/models/runs'
require_relative 'aspose_words_cloud/models/runs_response'
require_relative 'aspose_words_cloud/models/save_response'
require_relative 'aspose_words_cloud/models/search_response'
require_relative 'aspose_words_cloud/models/search_results_collection'
require_relative 'aspose_words_cloud/models/section'
require_relative 'aspose_words_cloud/models/section_link'
require_relative 'aspose_words_cloud/models/section_link_collection'
require_relative 'aspose_words_cloud/models/section_link_collection_response'
require_relative 'aspose_words_cloud/models/section_page_setup_response'
require_relative 'aspose_words_cloud/models/section_response'
require_relative 'aspose_words_cloud/models/split_document_response'
require_relative 'aspose_words_cloud/models/stat_data_response'
require_relative 'aspose_words_cloud/models/table_cell_format'
require_relative 'aspose_words_cloud/models/table_cell_format_response'
require_relative 'aspose_words_cloud/models/table_cell_response'
require_relative 'aspose_words_cloud/models/table_link_collection'
require_relative 'aspose_words_cloud/models/table_link_collection_response'
require_relative 'aspose_words_cloud/models/table_properties'
require_relative 'aspose_words_cloud/models/table_properties_response'
require_relative 'aspose_words_cloud/models/table_response'
require_relative 'aspose_words_cloud/models/table_row_format'
require_relative 'aspose_words_cloud/models/table_row_format_response'
require_relative 'aspose_words_cloud/models/table_row_response'
require_relative 'aspose_words_cloud/models/text_save_options_data'
require_relative 'aspose_words_cloud/models/word_ml_save_options_data'
require_relative 'aspose_words_cloud/models/words_api_error_response'
require_relative 'aspose_words_cloud/models/words_api_link'
require_relative 'aspose_words_cloud/models/xaml_flow_save_options_data'
require_relative 'aspose_words_cloud/models/comment'
require_relative 'aspose_words_cloud/models/drawing_object_link'
require_relative 'aspose_words_cloud/models/epub_save_options_data'
require_relative 'aspose_words_cloud/models/field_link'
require_relative 'aspose_words_cloud/models/footnote_link'
require_relative 'aspose_words_cloud/models/form_field'
require_relative 'aspose_words_cloud/models/header_footer'
require_relative 'aspose_words_cloud/models/html_fixed_save_options_data'
require_relative 'aspose_words_cloud/models/image_save_options_data'
require_relative 'aspose_words_cloud/models/mhtml_save_options_data'
require_relative 'aspose_words_cloud/models/office_math_link'
require_relative 'aspose_words_cloud/models/paragraph'
require_relative 'aspose_words_cloud/models/paragraph_link'
require_relative 'aspose_words_cloud/models/pcl_save_options_data'
require_relative 'aspose_words_cloud/models/pdf_save_options_data'
require_relative 'aspose_words_cloud/models/ps_save_options_data'
require_relative 'aspose_words_cloud/models/run_link'
require_relative 'aspose_words_cloud/models/svg_save_options_data'
require_relative 'aspose_words_cloud/models/table'
require_relative 'aspose_words_cloud/models/table_cell'
require_relative 'aspose_words_cloud/models/table_link'
require_relative 'aspose_words_cloud/models/table_row'
require_relative 'aspose_words_cloud/models/xaml_fixed_save_options_data'
require_relative 'aspose_words_cloud/models/xps_save_options_data'
require_relative 'aspose_words_cloud/models/bmp_save_options_data'
require_relative 'aspose_words_cloud/models/drawing_object'
require_relative 'aspose_words_cloud/models/emf_save_options_data'
require_relative 'aspose_words_cloud/models/field'
require_relative 'aspose_words_cloud/models/footnote'
require_relative 'aspose_words_cloud/models/form_field_checkbox'
require_relative 'aspose_words_cloud/models/form_field_drop_down'
require_relative 'aspose_words_cloud/models/form_field_text_input'
require_relative 'aspose_words_cloud/models/gif_save_options_data'
require_relative 'aspose_words_cloud/models/jpeg_save_options_data'
require_relative 'aspose_words_cloud/models/office_math_object'
require_relative 'aspose_words_cloud/models/png_save_options_data'
require_relative 'aspose_words_cloud/models/run'
require_relative 'aspose_words_cloud/models/tiff_save_options_data'

# APIs
require_relative 'aspose_words_cloud/api/words_api'

module AsposeWordsCloud
  # Main module
  class << self
    # Configure sdk using block.
    # AsposeWordsCloud.configure do |config|
    #   config.username = "xxx"
    #   config.password = "xxx"
    # end
    # If no block given, return the configuration singleton instance.
    def configure
      if block_given?
        yield Configuration.default
      else
        Configuration.default
      end
    end
  end
end
