# ------------------------------------------------------------------------------------
# <copyright company="Aspose" file="Field_tests.rb">
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
  # Example of how to work with field.
  #
  class FieldTests < BaseTestContext
    def remote_data_folder
      remote_test_folder + '/DocumentElements/Fields'
    end

    def text_folder
      'DocumentElements/Text'
    end

    def field_folder
      'DocumentElements/Fields'
    end


    #
    # Test for getting fields.
    #
    def test_get_fields
      local_file_name = 'GetField.docx'
      remote_file_name = 'TestGetFields.docx'

      upload_file File.join(local_test_folder, field_folder + '/' + local_file_name), remote_data_folder + '/' + remote_file_name

      request = GetFieldsRequest.new(remote_file_name, 'sections/0', remote_data_folder, nil, nil, nil)

      result = @words_api.get_fields(request)
      assert_equal false, result.nil?
      assert_equal false, result.fields.nil?
      assert_equal false, result.fields.list.nil?
      assert_equal 1, result.fields.list.length
      assert_equal '1', result.fields.list[0].result
    end

    #
    # Test for getting fields without node path.
    #
    def test_get_fields_without_node_path
      local_file_name = 'GetField.docx'
      remote_file_name = 'TestGetFieldsWithoutNodePath.docx'

      upload_file File.join(local_test_folder, field_folder + '/' + local_file_name), remote_data_folder + '/' + remote_file_name

      request = GetFieldsRequest.new(remote_file_name, nil, remote_data_folder, nil, nil, nil)

      result = @words_api.get_fields(request)
      assert_equal false, result.nil?
      assert_equal false, result.fields.nil?
      assert_equal false, result.fields.list.nil?
      assert_equal 1, result.fields.list.length
      assert_equal '1', result.fields.list[0].result
    end

    #
    # Test for getting field by index.
    #
    def test_get_field
      local_file_name = 'GetField.docx'
      remote_file_name = 'TestGetField.docx'

      upload_file File.join(local_test_folder, field_folder + '/' + local_file_name), remote_data_folder + '/' + remote_file_name

      request = GetFieldRequest.new(remote_file_name, 0, 'sections/0/paragraphs/0', remote_data_folder, nil, nil, nil)

      result = @words_api.get_field(request)
      assert_equal false, result.nil?
      assert_equal false, result.field.nil?
      assert_equal '1', result.field.result
    end

    #
    # Test for getting field by index without node path.
    #
    def test_get_field_without_node_path
      local_file_name = 'GetField.docx'
      remote_file_name = 'TestGetFieldWithoutNodePath.docx'

      upload_file File.join(local_test_folder, field_folder + '/' + local_file_name), remote_data_folder + '/' + remote_file_name

      request = GetFieldRequest.new(remote_file_name, 0, nil, remote_data_folder, nil, nil, nil)

      result = @words_api.get_field(request)
      assert_equal false, result.nil?
      assert_equal false, result.field.nil?
      assert_equal '1', result.field.result
    end

    #
    # Test for putting field.
    #
    def test_insert_field
      local_file_name = 'SampleWordDocument.docx'
      remote_file_name = 'TestInsertField.docx'

      upload_file File.join(local_test_folder, text_folder + '/' + local_file_name), remote_data_folder + '/' + remote_file_name

      request_field = FieldInsert.new({:FieldCode => '{ NUMPAGES }'})
      request = InsertFieldRequest.new(remote_file_name, request_field, 'sections/0/paragraphs/0', remote_data_folder, nil, nil, nil, nil, nil, nil, nil)

      result = @words_api.insert_field(request)
      assert_equal false, result.nil?
      assert_equal false, result.field.nil?
      assert_equal '{ NUMPAGES }', result.field.field_code
      assert_equal '0.0.0.1', result.field.node_id
    end

    #
    # Test for putting field without node path.
    #
    def test_insert_field_without_node_path
      local_file_name = 'SampleWordDocument.docx'
      remote_file_name = 'TestInsertFieldWithoutNodePath.docx'

      upload_file File.join(local_test_folder, text_folder + '/' + local_file_name), remote_data_folder + '/' + remote_file_name

      request_field = FieldInsert.new({:FieldCode => '{ NUMPAGES }'})
      request = InsertFieldRequest.new(remote_file_name, request_field, nil, remote_data_folder, nil, nil, nil, nil, nil, nil, nil)

      result = @words_api.insert_field(request)
      assert_equal false, result.nil?
      assert_equal false, result.field.nil?
      assert_equal '{ NUMPAGES }', result.field.field_code
      assert_equal '5.0.22.0', result.field.node_id
    end

    #
    # Test for posting field.
    #
    def test_update_field
      local_file_name = 'GetField.docx'
      remote_file_name = 'TestUpdateField.docx'

      upload_file File.join(local_test_folder, field_folder + '/' + local_file_name), remote_data_folder + '/' + remote_file_name

      request_field = FieldUpdate.new({:FieldCode => '{ NUMPAGES }'})
      request = UpdateFieldRequest.new(remote_file_name, request_field, 0, 'sections/0/paragraphs/0', remote_data_folder, nil, nil, nil, nil, nil, nil)

      result = @words_api.update_field(request)
      assert_equal false, result.nil?
      assert_equal false, result.field.nil?
      assert_equal '{ NUMPAGES }', result.field.field_code
      assert_equal '0.0.0.0', result.field.node_id
    end

    #
    # Test for inserting page numbers field.
    #
    def test_insert_page_numbers
      local_file_name = 'test_multi_pages.docx'
      remote_file_name = 'TestInsertPageNumbers.docx'

      upload_file File.join(local_test_folder, 'Common/' + local_file_name), remote_data_folder + '/' + remote_file_name

      request_page_number = PageNumber.new({:Alignment => 'center', :Format => '{PAGE} of {NUMPAGES}'})
      request = InsertPageNumbersRequest.new(remote_file_name, request_page_number, remote_data_folder, nil, nil, nil, remote_test_out + '/' + remote_file_name, nil, nil)

      result = @words_api.insert_page_numbers(request)
      assert_equal false, result.nil?
      assert_equal false, result.document.nil?
      assert_equal 'TestInsertPageNumbers.docx', result.document.file_name
    end

    #
    # Test for deleting field.
    #
    def test_delete_field
      local_file_name = 'GetField.docx'
      remote_file_name = 'TestDeleteField.docx'

      upload_file File.join(local_test_folder, field_folder + '/' + local_file_name), remote_data_folder + '/' + remote_file_name

      request = DeleteFieldRequest.new(remote_file_name, 0, 'sections/0/paragraphs/0', remote_data_folder, nil, nil, nil, nil, nil, nil)

      @words_api.delete_field(request)
    end

    #
    # Test for deleting field without node path.
    #
    def test_delete_field_without_node_path
      local_file_name = 'GetField.docx'
      remote_file_name = 'TestDeleteFieldWithoutNodePath.docx'

      upload_file File.join(local_test_folder, field_folder + '/' + local_file_name), remote_data_folder + '/' + remote_file_name

      request = DeleteFieldRequest.new(remote_file_name, 0, nil, remote_data_folder, nil, nil, nil, nil, nil, nil)

      @words_api.delete_field(request)
    end

    #
    # Test for deleting paragraph fields.
    #
    def test_delete_paragraph_fields
      local_file_name = 'test_multi_pages.docx'
      remote_file_name = 'TestDeleteParagraphFields.docx'

      upload_file File.join(local_test_folder, 'Common/' + local_file_name), remote_data_folder + '/' + remote_file_name

      request = DeleteFieldsRequest.new(remote_file_name, 'paragraphs/0', remote_data_folder, nil, nil, nil, nil, nil, nil)

      @words_api.delete_fields(request)
    end

    #
    # Test for deleting paragraph fields without node path.
    #
    def test_delete_paragraph_fields_without_node_path
      local_file_name = 'test_multi_pages.docx'
      remote_file_name = 'TestDeleteParagraphFieldsWithoutNodePath.docx'

      upload_file File.join(local_test_folder, 'Common/' + local_file_name), remote_data_folder + '/' + remote_file_name

      request = DeleteFieldsRequest.new(remote_file_name, nil, remote_data_folder, nil, nil, nil, nil, nil, nil)

      @words_api.delete_fields(request)
    end

    #
    # Test for deleting section fields.
    #
    def test_delete_section_fields
      local_file_name = 'test_multi_pages.docx'
      remote_file_name = 'TestDeleteSectionFields.docx'

      upload_file File.join(local_test_folder, 'Common/' + local_file_name), remote_data_folder + '/' + remote_file_name

      request = DeleteFieldsRequest.new(remote_file_name, 'sections/0', remote_data_folder, nil, nil, nil, nil, nil, nil)

      @words_api.delete_fields(request)
    end

    #
    # Test for deleting section fields without node path.
    #
    def test_delete_section_fields_without_node_path
      local_file_name = 'test_multi_pages.docx'
      remote_file_name = 'TestDeleteSectionFieldsWithoutNodePath.docx'

      upload_file File.join(local_test_folder, 'Common/' + local_file_name), remote_data_folder + '/' + remote_file_name

      request = DeleteFieldsRequest.new(remote_file_name, nil, remote_data_folder, nil, nil, nil, nil, nil, nil)

      @words_api.delete_fields(request)
    end

    #
    # Test for deleting paragraph fields in section.
    #
    def test_delete_section_paragraph_fields
      local_file_name = 'test_multi_pages.docx'
      remote_file_name = 'TestDeleteSectionParagraphFields.docx'

      upload_file File.join(local_test_folder, 'Common/' + local_file_name), remote_data_folder + '/' + remote_file_name

      request = DeleteFieldsRequest.new(remote_file_name, 'sections/0/paragraphs/0', remote_data_folder, nil, nil, nil, nil, nil, nil)

      @words_api.delete_fields(request)
    end

    #
    # Test for deleting fields.
    #
    def test_delete_document_fields
      local_file_name = 'test_multi_pages.docx'
      remote_file_name = 'TestDeleteSectionParagraphFields.docx'

      upload_file File.join(local_test_folder, 'Common/' + local_file_name), remote_data_folder + '/' + remote_file_name

      request = DeleteFieldsRequest.new(remote_file_name, '', remote_data_folder, nil, nil, nil, nil, nil, nil)

      @words_api.delete_fields(request)
    end

    #
    # Test for posting updated fields.
    #
    def test_update_document_fields
      local_file_name = 'test_multi_pages.docx'
      remote_file_name = 'TestUpdateDocumentFields.docx'

      upload_file File.join(local_test_folder, 'Common/' + local_file_name), remote_data_folder + '/' + remote_file_name

      request = UpdateFieldsRequest.new(remote_file_name, remote_data_folder, nil, nil, nil, nil)

      result = @words_api.update_fields(request)
      assert_equal false, result.nil?
      assert_equal false, result.document.nil?
      assert_equal 'TestUpdateDocumentFields.docx', result.document.file_name
    end
  end
end
