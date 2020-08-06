# ------------------------------------------------------------------------------------
# <copyright company="Aspose" file="FormField_tests.rb">
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
  # Example of how to work with form field.
  #
  class FormFieldTests < BaseTestContext
    def remote_data_folder
      remote_test_folder + '/DocumentElements/FormFields'
    end

    def field_folder
      'DocumentElements/FormFields'
    end


    #
    # Test for posting form field.
    #
    def test_update_form_field
      remote_file_name = 'TestUpdateFormField.docx'

      upload_file File.join(local_test_folder, field_folder + '/FormFilled.docx'), remote_data_folder + '/' + remote_file_name

      request_form_field = FormFieldTextInput.new({:Name => 'FullName', :Enabled => true, :CalculateOnExit => true, :StatusText => '', :TextInputType => 'Regular', :TextInputDefault => 'No name'})
      request = UpdateFormFieldRequest.new(remote_file_name, request_form_field, 0, 'sections/0', remote_data_folder, nil, nil, nil, remote_test_out + '/' + remote_file_name, nil, nil)

      result = @words_api.update_form_field(request)
      assert_equal false, result.nil?
    end

    #
    # Test for posting form field without node path.
    #
    def test_update_form_field_without_node_path
      remote_file_name = 'TestUpdateFormFieldWithoutNodePath.docx'

      upload_file File.join(local_test_folder, field_folder + '/FormFilled.docx'), remote_data_folder + '/' + remote_file_name

      request_form_field = FormFieldTextInput.new({:Name => 'FullName', :Enabled => true, :CalculateOnExit => true, :StatusText => '', :TextInputType => 'Regular', :TextInputDefault => 'No name'})
      request = UpdateFormFieldRequest.new(remote_file_name, request_form_field, 0, nil, remote_data_folder, nil, nil, nil, remote_test_out + '/' + remote_file_name, nil, nil)

      result = @words_api.update_form_field(request)
      assert_equal false, result.nil?
    end

    #
    # Test for getting form field.
    #
    def test_get_form_field
      remote_file_name = 'TestGetFormField.docx'

      upload_file File.join(local_test_folder, field_folder + '/FormFilled.docx'), remote_data_folder + '/' + remote_file_name

      request = GetFormFieldRequest.new(remote_file_name, 0, 'sections/0', remote_data_folder, nil, nil, nil)

      result = @words_api.get_form_field(request)
      assert_equal false, result.nil?
    end

    #
    # Test for getting form field without node path.
    #
    def test_get_form_field_without_node_path
      remote_file_name = 'TestGetFormFieldWithoutNodePath.docx'

      upload_file File.join(local_test_folder, field_folder + '/FormFilled.docx'), remote_data_folder + '/' + remote_file_name

      request = GetFormFieldRequest.new(remote_file_name, 0, nil, remote_data_folder, nil, nil, nil)

      result = @words_api.get_form_field(request)
      assert_equal false, result.nil?
    end

    #
    # Test for getting form fields.
    #
    def test_get_form_fields
      remote_file_name = 'TestGetFormFields.docx'

      upload_file File.join(local_test_folder, field_folder + '/FormFilled.docx'), remote_data_folder + '/' + remote_file_name

      request = GetFormFieldsRequest.new(remote_file_name, 'sections/0', remote_data_folder, nil, nil, nil)

      result = @words_api.get_form_fields(request)
      assert_equal false, result.nil?
    end

    #
    # Test for getting form fields without node path.
    #
    def test_get_form_fields_without_node_path
      remote_file_name = 'TestGetFormFieldsWithoutNodePath.docx'

      upload_file File.join(local_test_folder, field_folder + '/FormFilled.docx'), remote_data_folder + '/' + remote_file_name

      request = GetFormFieldsRequest.new(remote_file_name, nil, remote_data_folder, nil, nil, nil)

      result = @words_api.get_form_fields(request)
      assert_equal false, result.nil?
    end

    #
    # Test for insert form field without node path.
    #
    def test_insert_form_field
      remote_file_name = 'TestInsertFormField.docx'

      upload_file File.join(local_test_folder, 'Common/test_multi_pages.docx'), remote_data_folder + '/' + remote_file_name

      request_form_field = FormFieldTextInput.new({:Name => 'FullName', :Enabled => true, :CalculateOnExit => true, :StatusText => '', :TextInputType => 'Regular', :TextInputDefault => '123', :TextInputFormat => 'UPPERCASE'})
      request = InsertFormFieldRequest.new(remote_file_name, request_form_field, 'sections/0/paragraphs/0', remote_data_folder, nil, nil, nil, remote_test_out + '/' + remote_file_name, nil, nil, nil)

      result = @words_api.insert_form_field(request)
      assert_equal false, result.nil?
    end

    #
    # Test for insert form field without node path.
    #
    def test_insert_form_field_without_node_path
      remote_file_name = 'TestInsertFormFieldWithoutNodePath.docx'

      upload_file File.join(local_test_folder, 'Common/test_multi_pages.docx'), remote_data_folder + '/' + remote_file_name

      request_form_field = FormFieldTextInput.new({:Name => 'FullName', :Enabled => true, :CalculateOnExit => true, :StatusText => '', :TextInputType => 'Regular', :TextInputDefault => '123', :TextInputFormat => 'UPPERCASE'})
      request = InsertFormFieldRequest.new(remote_file_name, request_form_field, nil, remote_data_folder, nil, nil, nil, remote_test_out + '/' + remote_file_name, nil, nil, nil)

      result = @words_api.insert_form_field(request)
      assert_equal false, result.nil?
    end

    #
    # Test for deleting form field.
    #
    def test_delete_form_field
      remote_file_name = 'TestDeleteFormField.docx'

      upload_file File.join(local_test_folder, field_folder + '/FormFilled.docx'), remote_data_folder + '/' + remote_file_name

      request = DeleteFormFieldRequest.new(remote_file_name, 0, 'sections/0', remote_data_folder, nil, nil, nil, remote_test_out + '/' + remote_file_name, nil, nil)

      @words_api.delete_form_field(request)
    end

    #
    # Test for deleting form field without node path.
    #
    def test_delete_form_field_without_node_path
      remote_file_name = 'TestDeleteFormFieldWithoutNodePath.docx'

      upload_file File.join(local_test_folder, field_folder + '/FormFilled.docx'), remote_data_folder + '/' + remote_file_name

      request = DeleteFormFieldRequest.new(remote_file_name, 0, nil, remote_data_folder, nil, nil, nil, remote_test_out + '/' + remote_file_name, nil, nil)

      @words_api.delete_form_field(request)
    end
  end
end
