#
# --------------------------------------------------------------------------------------------------------------------
# <copyright company="Aspose" file="fields_tests.rb">
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
  class FieldsTests < BaseTestContext
    def test_folder
      'DocumentElements/Fields'
    end

    #
    # Test for getting fields from document
    #
    def test_get_fields
      filename = 'GetField.docx'
      remote_name = 'TestGetFields.docx'

      upload_file File.join(local_test_folder, test_folder, filename), File.join(remote_test_folder, test_folder, remote_name)

      request = GetFieldsRequest.new remote_name, 'sections/0', remote_test_folder + test_folder
      result = @words_api.get_fields request
      assert_equal FALSE, result.nil?
    end

    #
    # Test for getting fields from document without node path
    #
    def test_get_fields_without_node_path
      filename = 'GetField.docx'
      remote_name = 'TestGetFieldsWithoutNodePath.docx'

      upload_file File.join(local_test_folder, test_folder, filename), File.join(remote_test_folder, test_folder, remote_name)

      request = GetFieldsWithoutNodePathRequest.new remote_name, remote_test_folder + test_folder
      result = @words_api.get_fields_without_node_path request
      assert_equal FALSE, result.nil?
    end

    #
    # Test for getting field from document
    #
    def test_get_field
      filename = 'GetField.docx'
      remote_name = 'TestGetField.docx'
      index = 0

      upload_file File.join(local_test_folder, test_folder, filename), File.join(remote_test_folder, test_folder, remote_name)

      request = GetFieldRequest.new remote_name, 'sections/0/paragraphs/0', index, remote_test_folder + test_folder
      result = @words_api.get_field request
      assert_equal FALSE, result.nil?
    end

    #
    # Test for getting field from document without node path
    #
    def test_get_field_without_node_path
      filename = 'GetField.docx'
      remote_name = 'TestGetFieldWithoutNodePath.docx'
      index = 0

      upload_file File.join(local_test_folder, test_folder, filename), File.join(remote_test_folder, test_folder, remote_name)

      request = GetFieldWithoutNodePathRequest.new remote_name, index, remote_test_folder + test_folder
      result = @words_api.get_field_without_node_path request
      assert_equal FALSE, result.nil?
    end

    #
    # Test for updating document field
    #
    def test_update_field
      filename = 'GetField.docx'
      remote_name = 'TestUpdateField.docx'
      dest_name = remote_test_out + remote_name
      index = 0
      body = Field.new({ :FieldCode => '{ NUMPAGES }', :NodeId => '0.0.3' })

      upload_file File.join(local_test_folder, test_folder, filename), File.join(remote_test_folder, test_folder, remote_name)

      request = UpdateFieldRequest.new remote_name, body, "sections/0/paragraphs/0", index, remote_test_folder + test_folder,
                                     nil, nil, nil, dest_name, nil,
                                     nil
      result = @words_api.update_field request
      assert_equal FALSE, result.nil?
    end

    #
    # Test for inserting document field
    #
    def test_insert_field
      filename = 'GetField.docx'
      remote_name = 'TestInsertField.docx'
      body = Field.new({:Result => 3, :FieldCode => '{ NUMPAGES }', :NodeId => '0.0.3'})

      upload_file File.join(local_test_folder, test_folder, filename), File.join(remote_test_folder, test_folder, remote_name)

      request = InsertFieldRequest.new remote_name, body,'sections/0/paragraphs/0', remote_test_folder + test_folder
      result = @words_api.insert_field request
      assert_equal FALSE, result.nil?
    end

    #
    # Test for inserting document field without node path
    #
    def test_insert_field_without_node_path
      filename = 'GetField.docx'
      remote_name = 'TestInsertFieldWithoutNodePath.docx'
      body = Field.new({:Result => 3, :FieldCode => '{ NUMPAGES }', :NodeId => '0.0.3'})

      upload_file File.join(local_test_folder, test_folder, filename), File.join(remote_test_folder, test_folder, remote_name)

      request = InsertFieldWithoutNodePathRequest.new remote_name, body, remote_test_folder + test_folder
      result = @words_api.insert_field_without_node_path request
      assert_equal FALSE, result.nil?
    end

    #
    # Test for reevaluating fields in document
    #
    def test_update_fields
      filename = 'test_multi_pages.docx'
      remote_name = 'TestUpdateFields.docx'

      upload_file File.join(local_common_folder, filename), File.join(remote_test_folder, test_folder, remote_name)

      request = UpdateFieldsRequest.new remote_name, remote_test_folder + test_folder
      result = @words_api.update_fields request
      assert_equal FALSE, result.nil?
    end

    #
    # Test for inserting page numbers
    #
    def test_insert_page_numbers
      filename = 'test_multi_pages.docx'
      remote_name = 'TestInsertPageNumbers.docx'
      dest_name = remote_test_out + remote_name
      body = PageNumber.new({:Alignment => 'center', :Format => '{PAGE} of { NUMPAGES }'})

      upload_file File.join(local_common_folder, filename), File.join(remote_test_folder, test_folder, remote_name)

      request = InsertPageNumbersRequest.new remote_name, body, remote_test_folder + test_folder, :dest_file_name => dest_name
      result = @words_api.insert_page_numbers request
      assert_equal FALSE, result.nil?
    end

    #
    # Test for removing field
    #
    def test_delete_field
      filename = 'GetField.docx'
      remote_name = 'TestDeleteField.docx'
      index = 0

      upload_file File.join(local_test_folder, test_folder, filename), File.join(remote_test_folder, test_folder, remote_name)

      request = DeleteFieldRequest.new remote_name, 'sections/0/paragraphs/0', index, remote_test_folder + test_folder
      result = @words_api.delete_field request
      assert_equal TRUE, result.nil?
    end

    #
    # Test for removing field without node path
    #
    def test_delete_field_without_node_path
      filename = 'GetField.docx'
      remote_name = 'TestDeleteFieldWithoutNodePath.docx'
      index = 0

      upload_file File.join(local_test_folder, test_folder, filename), File.join(remote_test_folder, test_folder, remote_name)

      request = DeleteFieldWithoutNodePathRequest.new remote_name, index, remote_test_folder + test_folder
      result = @words_api.delete_field_without_node_path request
      assert_equal TRUE, result.nil?
    end

    #
    # Test for removing field
    #
    def test_delete_fields
      filename = 'test_multi_pages.docx'
      remote_name = 'TestDeleteFields.docx'

      upload_file File.join(local_common_folder, filename), File.join(remote_test_folder, test_folder, remote_name)

      request = DeleteFieldsRequest.new remote_name, '', remote_test_folder + test_folder
      result = @words_api.delete_fields request
      assert_equal TRUE, result.nil?
    end

    #
    # Test for removing field without node path
    #
    def test_delete_fields_without_node_path
      filename = 'test_multi_pages.docx'
      remote_name = 'TestDeleteFieldsWithoutNodePath.docx'

      upload_file File.join(local_common_folder, filename), File.join(remote_test_folder, test_folder, remote_name)

      request = DeleteFieldsWithoutNodePathRequest.new remote_name, remote_test_folder + test_folder
      result = @words_api.delete_fields_without_node_path request
      assert_equal TRUE, result.nil?
    end
  end
end
