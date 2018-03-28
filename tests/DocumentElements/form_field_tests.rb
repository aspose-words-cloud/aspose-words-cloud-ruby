#
# --------------------------------------------------------------------------------------------------------------------
# <copyright company="Aspose" file="form_field_tests.rb">
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
module RubySDK
  require_relative '../base_test_context'
  require_relative '../../lib/models/requests/PostFormFieldRequest'
  require_relative '../../lib/models/requests/PutFormFieldRequest'
  require_relative '../../lib/models/requests/DeleteFormFieldRequest'
  require_relative '../../lib/models/requests/GetFormFieldRequest'
  require_relative '../../lib/models/requests/GetFormFieldsRequest'
  class FormFieldTests < BaseTestContext
    def test_folder
      'DocumentElements/FormFields'
    end

    #
    # Test for updating form field
    #
    def test_post_form_field
      filename = 'FormFilled.docx'
      remote_name = 'TestPostFormField.docx'
      dest_name = remote_test_out + remote_name
      index = 0
      body = FormFieldTextInput.new({:Name => 'FullName', :Enabled => true, :CalculateOnExit => true,
                                     :StatusText => '', :TextInputType => 'Regular', :TextInputDefault => ''})

      @storage_api.put_create remote_test_folder + test_folder + '/' + remote_name, File.open(local_test_folder + test_folder + '/' + filename, "r").read

      request = PostFormFieldRequest.new remote_name, body, index, remote_test_folder + test_folder, :dest_file_name => dest_name, :node_path => 'sections/0'
      result = @words_api.post_form_field request
      assert_equal 200, result.code
    end

    #
    # Test for creating form field
    #
    def test_put_form_field
      filename = 'test_multi_pages.docx'
      remote_name = 'TestPutFormField.docx'
      dest_name = remote_test_out + remote_name
      body = FormFieldTextInput.new({:Name => 'FullName', :Enabled => true, :CalculateOnExit => true,
                                     :StatusText => '', :TextInputType => 'Regular', :TextInputDefault => '123',
                                    :TextInputFormat => 'UPPERCASE'})

      @storage_api.put_create remote_test_folder + test_folder + '/' + remote_name, File.open(local_common_folder + filename, "r").read

      request = PutFormFieldRequest.new remote_name, body, remote_test_folder + test_folder, :dest_file_name => dest_name, :node_path => 'sections/0/paragraphs/0'
      result = @words_api.put_form_field request
      assert_equal 200, result.code
    end

    #
    # Test for removing form field
    #
    def test_delete_form_field
      filename = 'FormFilled.docx'
      remote_name = 'TestDeleteFormField.docx'
      index = 0

      @storage_api.put_create remote_test_folder + test_folder + '/' + remote_name, File.open(local_test_folder + test_folder + '/' + filename, "r").read

      request = DeleteFormFieldRequest.new remote_name, index, remote_test_folder + test_folder, :node_path => 'sections/0'
      result = @words_api.delete_form_field request
      assert_equal 200, result.code
    end

    #
    # Test for getting form field
    #
    def test_get_form_field
      filename = 'FormFilled.docx'
      remote_name = 'TestGetFormField.docx'
      index = 0

      @storage_api.put_create remote_test_folder + test_folder + '/' + remote_name, File.open(local_test_folder + test_folder + '/' + filename, "r").read

      request = GetFormFieldRequest.new remote_name, index, remote_test_folder + test_folder, :node_path => 'sections/0'
      result = @words_api.get_form_field request
      assert_equal 200, result.code
    end

    #
    # Test for getting form fields
    #
    def test_get_form_fields
      filename = 'FormFilled.docx'
      remote_name = 'TestGetFormFields.docx'

      @storage_api.put_create remote_test_folder + test_folder + '/' + remote_name, File.open(local_test_folder + test_folder + '/' + filename, "r").read

      request = GetFormFieldsRequest.new remote_name, remote_test_folder + test_folder, :node_path => 'sections/0'
      result = @words_api.get_form_fields request
      assert_equal 200, result.code
    end
  end
end
