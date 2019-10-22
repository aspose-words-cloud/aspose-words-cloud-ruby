#
# --------------------------------------------------------------------------------------------------------------------
# <copyright company="Aspose" file="form_field_tests.rb">
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
  class FormFieldTests < BaseTestContext
    def test_folder
      'DocumentElements/FormFields'
    end

    #
    # Test for updating form field
    #
    def test_update_form_field
      filename = 'FormFilled.docx'
      remote_name = 'TestUpdateFormField.docx'
      dest_name = remote_test_out + remote_name
      index = 0
      body = FormFieldTextInput.new({:Name => 'FullName', :Enabled => true, :CalculateOnExit => true,
                                     :StatusText => '', :TextInputType => 'Regular', :TextInputDefault => ''})

      upload_file File.join(local_test_folder, test_folder, filename), File.join(remote_test_folder, test_folder, remote_name)

      request = UpdateFormFieldRequest.new remote_name, body, 'sections/0', index, remote_test_folder + test_folder, :dest_file_name => dest_name
      result = @words_api.update_form_field request
      assert_equal FALSE, result.nil?
    end

    #
    # Test for updating form field without node path
    #
    def test_update_form_field_without_node_path
      filename = 'FormFilled.docx'
      remote_name = 'TestUpdateFormFieldWithoutNodePath.docx'
      dest_name = remote_test_out + remote_name
      index = 0
      body = FormFieldTextInput.new({:Name => 'FullName', :Enabled => true, :CalculateOnExit => true,
                                     :StatusText => '', :TextInputType => 'Regular', :TextInputDefault => ''})

      upload_file File.join(local_test_folder, test_folder, filename), File.join(remote_test_folder, test_folder, remote_name)

      request = UpdateFormFieldWithoutNodePathRequest.new remote_name, body, index, remote_test_folder + test_folder, :dest_file_name => dest_name
      result = @words_api.update_form_field_without_node_path request
      assert_equal FALSE, result.nil?
    end

    #
    # Test for creating form field
    #
    def test_insert_form_field
      filename = 'test_multi_pages.docx'
      remote_name = 'TestInsertFormField.docx'
      dest_name = remote_test_out + remote_name
      body = FormFieldTextInput.new({:Name => 'FullName', :Enabled => true, :CalculateOnExit => true,
                                     :StatusText => '', :TextInputType => 'Regular', :TextInputDefault => '123',
                                    :TextInputFormat => 'UPPERCASE'})

      upload_file File.join(local_common_folder, filename), File.join(remote_test_folder, test_folder, remote_name)

      request = InsertFormFieldRequest.new remote_name, body, 'sections/0/paragraphs/0', remote_test_folder + test_folder, :dest_file_name => dest_name
      result = @words_api.insert_form_field request
      assert_equal FALSE, result.nil?
    end

    #
    # Test for creating form field without node path
    #
    def test_insert_form_field_without_node_path
      filename = 'test_multi_pages.docx'
      remote_name = 'TestInsertFormFieldWithoutNodePath.docx'
      dest_name = remote_test_out + remote_name
      body = FormFieldTextInput.new({:Name => 'FullName', :Enabled => true, :CalculateOnExit => true,
                                     :StatusText => '', :TextInputType => 'Regular', :TextInputDefault => '123',
                                    :TextInputFormat => 'UPPERCASE'})

      upload_file File.join(local_common_folder, filename), File.join(remote_test_folder, test_folder, remote_name)

      request = InsertFormFieldWithoutNodePathRequest.new remote_name, body, remote_test_folder + test_folder, :dest_file_name => dest_name
      result = @words_api.insert_form_field_without_node_path request
      assert_equal FALSE, result.nil?
    end

    #
    # Test for removing form field
    #
    def test_delete_form_field
      filename = 'FormFilled.docx'
      remote_name = 'TestDeleteFormField.docx'
      index = 0

      upload_file File.join(local_test_folder, test_folder, filename), File.join(remote_test_folder, test_folder, remote_name)

      request = DeleteFormFieldRequest.new remote_name,'sections/0', index, remote_test_folder + test_folder
      result = @words_api.delete_form_field request
      assert_equal TRUE, result.nil?
    end

    #
    # Test for removing form field without node path
    #
    def test_delete_form_field_without_node_path
      filename = 'FormFilled.docx'
      remote_name = 'TestDeleteFormFieldWithoutNodePath.docx'
      index = 0

      upload_file File.join(local_test_folder, test_folder, filename), File.join(remote_test_folder, test_folder, remote_name)

      request = DeleteFormFieldWithoutNodePathRequest.new remote_name, index, remote_test_folder + test_folder
      result = @words_api.delete_form_field_without_node_path request
      assert_equal TRUE, result.nil?
    end

    #
    # Test for getting form field
    #
    def test_get_form_field
      filename = 'FormFilled.docx'
      remote_name = 'TestGetFormField.docx'
      index = 0

      upload_file File.join(local_test_folder, test_folder, filename), File.join(remote_test_folder, test_folder, remote_name)

      request = GetFormFieldRequest.new remote_name, 'sections/0', index, remote_test_folder + test_folder
      result = @words_api.get_form_field request
      assert_equal FALSE, result.nil?
    end

    #
    # Test for getting form field without node path
    #
    def test_get_form_field_without_node_path
      filename = 'FormFilled.docx'
      remote_name = 'TestGetFormFieldWithoutNodePath.docx'
      index = 0

      upload_file File.join(local_test_folder, test_folder, filename), File.join(remote_test_folder, test_folder, remote_name)

      request = GetFormFieldWithoutNodePathRequest.new remote_name, index, remote_test_folder + test_folder
      result = @words_api.get_form_field_without_node_path request
      assert_equal FALSE, result.nil?
    end

    #
    # Test for getting form fields
    #
    def test_get_form_fields
      filename = 'FormFilled.docx'
      remote_name = 'TestGetFormFields.docx'

      upload_file File.join(local_test_folder, test_folder, filename), File.join(remote_test_folder, test_folder, remote_name)

      request = GetFormFieldsRequest.new remote_name, 'sections/0', remote_test_folder + test_folder
      result = @words_api.get_form_fields request
      assert_equal FALSE, result.nil?
    end

    #
    # Test for getting form fields without node path
    #
    def test_get_form_fields_without_node_path
      filename = 'FormFilled.docx'
      remote_name = 'TestGetFormFieldsWithoutNodePath.docx'

      upload_file File.join(local_test_folder, test_folder, filename), File.join(remote_test_folder, test_folder, remote_name)

      request = GetFormFieldsWithoutNodePathRequest.new remote_name, remote_test_folder + test_folder
      result = @words_api.get_form_fields_without_node_path request
      assert_equal FALSE, result.nil?
    end
  end
end
