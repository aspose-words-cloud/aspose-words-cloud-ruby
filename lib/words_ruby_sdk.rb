 #
 # --------------------------------------------------------------------------------------------------------------------
 # <copyright company="Aspose" file="words_ruby_sdk.rb">
 #   Copyright (c) 2018 Aspose.Words for Cloud
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

# Common files
require_relative 'words_ruby_sdk/api_client'
require_relative 'words_ruby_sdk/api_error'
require_relative 'words_ruby_sdk/version'
require_relative 'words_ruby_sdk/configuration'

# Models
require_relative 'words_ruby_sdk/models/aspose_response'
require_relative 'words_ruby_sdk/models/bookmark_data'
require_relative 'words_ruby_sdk/models/bookmarks_outline_level_data'
require_relative 'words_ruby_sdk/models/compare_data'
require_relative 'words_ruby_sdk/models/document'
require_relative 'words_ruby_sdk/models/document_entry'
require_relative 'words_ruby_sdk/models/document_entry_list'
require_relative 'words_ruby_sdk/models/document_position'
require_relative 'words_ruby_sdk/models/document_stat_data'
require_relative 'words_ruby_sdk/models/downsample_options_data'
require_relative 'words_ruby_sdk/models/footnotes_stat_data'
require_relative 'words_ruby_sdk/models/graphics_quality_options_data'
require_relative 'words_ruby_sdk/models/link'
require_relative 'words_ruby_sdk/models/link_element'
require_relative 'words_ruby_sdk/models/load_web_document_data'
require_relative 'words_ruby_sdk/models/metafile_rendering_options_data'
require_relative 'words_ruby_sdk/models/modification_operation_result'
require_relative 'words_ruby_sdk/models/outline_options_data'
require_relative 'words_ruby_sdk/models/page_number'
require_relative 'words_ruby_sdk/models/page_stat_data'
require_relative 'words_ruby_sdk/models/paragraph_insert'
require_relative 'words_ruby_sdk/models/pdf_digital_signature_details_data'
require_relative 'words_ruby_sdk/models/pdf_encryption_details_data'
require_relative 'words_ruby_sdk/models/preferred_width'
require_relative 'words_ruby_sdk/models/protection_data'
require_relative 'words_ruby_sdk/models/protection_request'
require_relative 'words_ruby_sdk/models/replace_text_request'
require_relative 'words_ruby_sdk/models/save_options_data'
require_relative 'words_ruby_sdk/models/save_result'
require_relative 'words_ruby_sdk/models/search_result'
require_relative 'words_ruby_sdk/models/split_document_result'
require_relative 'words_ruby_sdk/models/story_child_nodes'
require_relative 'words_ruby_sdk/models/string_format_data'
require_relative 'words_ruby_sdk/models/table_cell_insert'
require_relative 'words_ruby_sdk/models/table_insert'
require_relative 'words_ruby_sdk/models/table_row_insert'
require_relative 'words_ruby_sdk/models/watermark_text'
require_relative 'words_ruby_sdk/models/xml_color'
require_relative 'words_ruby_sdk/models/bookmark'
require_relative 'words_ruby_sdk/models/bookmark_response'
require_relative 'words_ruby_sdk/models/bookmarks'
require_relative 'words_ruby_sdk/models/bookmarks_response'
require_relative 'words_ruby_sdk/models/border'
require_relative 'words_ruby_sdk/models/border_response'
require_relative 'words_ruby_sdk/models/borders_collection'
require_relative 'words_ruby_sdk/models/borders_response'
require_relative 'words_ruby_sdk/models/comment_link'
require_relative 'words_ruby_sdk/models/comment_response'
require_relative 'words_ruby_sdk/models/comments_collection'
require_relative 'words_ruby_sdk/models/comments_response'
require_relative 'words_ruby_sdk/models/doc_save_options_data'
require_relative 'words_ruby_sdk/models/document_properties'
require_relative 'words_ruby_sdk/models/document_properties_response'
require_relative 'words_ruby_sdk/models/document_property'
require_relative 'words_ruby_sdk/models/document_property_response'
require_relative 'words_ruby_sdk/models/document_response'
require_relative 'words_ruby_sdk/models/drawing_object_collection'
require_relative 'words_ruby_sdk/models/drawing_object_response'
require_relative 'words_ruby_sdk/models/drawing_objects_response'
require_relative 'words_ruby_sdk/models/field_collection'
require_relative 'words_ruby_sdk/models/field_names'
require_relative 'words_ruby_sdk/models/field_names_response'
require_relative 'words_ruby_sdk/models/field_response'
require_relative 'words_ruby_sdk/models/fields_response'
require_relative 'words_ruby_sdk/models/file_link'
require_relative 'words_ruby_sdk/models/fixed_page_save_options_data'
require_relative 'words_ruby_sdk/models/font'
require_relative 'words_ruby_sdk/models/font_response'
require_relative 'words_ruby_sdk/models/footnote_collection'
require_relative 'words_ruby_sdk/models/footnote_response'
require_relative 'words_ruby_sdk/models/footnotes_response'
require_relative 'words_ruby_sdk/models/form_field_collection'
require_relative 'words_ruby_sdk/models/form_field_response'
require_relative 'words_ruby_sdk/models/form_fields_response'
require_relative 'words_ruby_sdk/models/header_footer_link'
require_relative 'words_ruby_sdk/models/header_footer_link_collection'
require_relative 'words_ruby_sdk/models/header_footer_response'
require_relative 'words_ruby_sdk/models/header_footers_response'
require_relative 'words_ruby_sdk/models/html_save_options_data'
require_relative 'words_ruby_sdk/models/hyperlink'
require_relative 'words_ruby_sdk/models/hyperlink_response'
require_relative 'words_ruby_sdk/models/hyperlinks'
require_relative 'words_ruby_sdk/models/hyperlinks_response'
require_relative 'words_ruby_sdk/models/node_link'
require_relative 'words_ruby_sdk/models/odt_save_options_data'
require_relative 'words_ruby_sdk/models/office_math_object_response'
require_relative 'words_ruby_sdk/models/office_math_objects_collection'
require_relative 'words_ruby_sdk/models/office_math_objects_response'
require_relative 'words_ruby_sdk/models/ooxml_save_options_data'
require_relative 'words_ruby_sdk/models/page_setup'
require_relative 'words_ruby_sdk/models/paragraph_link_collection'
require_relative 'words_ruby_sdk/models/paragraph_link_collection_response'
require_relative 'words_ruby_sdk/models/paragraph_response'
require_relative 'words_ruby_sdk/models/protection_data_response'
require_relative 'words_ruby_sdk/models/protection_response'
require_relative 'words_ruby_sdk/models/replace_text_response'
require_relative 'words_ruby_sdk/models/revisions_modification_response'
require_relative 'words_ruby_sdk/models/rtf_save_options_data'
require_relative 'words_ruby_sdk/models/run_response'
require_relative 'words_ruby_sdk/models/runs'
require_relative 'words_ruby_sdk/models/runs_response'
require_relative 'words_ruby_sdk/models/save_response'
require_relative 'words_ruby_sdk/models/search_response'
require_relative 'words_ruby_sdk/models/search_results_collection'
require_relative 'words_ruby_sdk/models/section'
require_relative 'words_ruby_sdk/models/section_link'
require_relative 'words_ruby_sdk/models/section_link_collection'
require_relative 'words_ruby_sdk/models/section_link_collection_response'
require_relative 'words_ruby_sdk/models/section_page_setup_response'
require_relative 'words_ruby_sdk/models/section_response'
require_relative 'words_ruby_sdk/models/split_document_response'
require_relative 'words_ruby_sdk/models/stat_data_response'
require_relative 'words_ruby_sdk/models/table_cell_format'
require_relative 'words_ruby_sdk/models/table_cell_format_response'
require_relative 'words_ruby_sdk/models/table_cell_response'
require_relative 'words_ruby_sdk/models/table_link_collection'
require_relative 'words_ruby_sdk/models/table_link_collection_response'
require_relative 'words_ruby_sdk/models/table_properties'
require_relative 'words_ruby_sdk/models/table_properties_response'
require_relative 'words_ruby_sdk/models/table_response'
require_relative 'words_ruby_sdk/models/table_row_format'
require_relative 'words_ruby_sdk/models/table_row_format_response'
require_relative 'words_ruby_sdk/models/table_row_response'
require_relative 'words_ruby_sdk/models/text_item'
require_relative 'words_ruby_sdk/models/text_items'
require_relative 'words_ruby_sdk/models/text_items_response'
require_relative 'words_ruby_sdk/models/text_save_options_data'
require_relative 'words_ruby_sdk/models/word_ml_save_options_data'
require_relative 'words_ruby_sdk/models/words_api_error_response'
require_relative 'words_ruby_sdk/models/words_api_link'
require_relative 'words_ruby_sdk/models/xaml_flow_save_options_data'
require_relative 'words_ruby_sdk/models/comment'
require_relative 'words_ruby_sdk/models/drawing_object_link'
require_relative 'words_ruby_sdk/models/epub_save_options_data'
require_relative 'words_ruby_sdk/models/field_link'
require_relative 'words_ruby_sdk/models/footnote_link'
require_relative 'words_ruby_sdk/models/form_field'
require_relative 'words_ruby_sdk/models/header_footer'
require_relative 'words_ruby_sdk/models/html_fixed_save_options_data'
require_relative 'words_ruby_sdk/models/image_save_options_data'
require_relative 'words_ruby_sdk/models/mhtml_save_options_data'
require_relative 'words_ruby_sdk/models/office_math_link'
require_relative 'words_ruby_sdk/models/paragraph'
require_relative 'words_ruby_sdk/models/paragraph_link'
require_relative 'words_ruby_sdk/models/pcl_save_options_data'
require_relative 'words_ruby_sdk/models/pdf_save_options_data'
require_relative 'words_ruby_sdk/models/ps_save_options_data'
require_relative 'words_ruby_sdk/models/run_link'
require_relative 'words_ruby_sdk/models/svg_save_options_data'
require_relative 'words_ruby_sdk/models/table'
require_relative 'words_ruby_sdk/models/table_cell'
require_relative 'words_ruby_sdk/models/table_link'
require_relative 'words_ruby_sdk/models/table_row'
require_relative 'words_ruby_sdk/models/xaml_fixed_save_options_data'
require_relative 'words_ruby_sdk/models/xps_save_options_data'
require_relative 'words_ruby_sdk/models/bmp_save_options_data'
require_relative 'words_ruby_sdk/models/drawing_object'
require_relative 'words_ruby_sdk/models/emf_save_options_data'
require_relative 'words_ruby_sdk/models/field'
require_relative 'words_ruby_sdk/models/footnote'
require_relative 'words_ruby_sdk/models/form_field_checkbox'
require_relative 'words_ruby_sdk/models/form_field_drop_down'
require_relative 'words_ruby_sdk/models/form_field_text_input'
require_relative 'words_ruby_sdk/models/gif_save_options_data'
require_relative 'words_ruby_sdk/models/jpeg_save_options_data'
require_relative 'words_ruby_sdk/models/office_math_object'
require_relative 'words_ruby_sdk/models/png_save_options_data'
require_relative 'words_ruby_sdk/models/run'
require_relative 'words_ruby_sdk/models/tiff_save_options_data'

# APIs
require_relative 'words_ruby_sdk/api/words_api'

module WordsRubySdk
  class << self
    # Configure sdk using block.
    # WordsRubySdk.configure do |config|
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
