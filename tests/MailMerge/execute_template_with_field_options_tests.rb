# ------------------------------------------------------------------------------------
# <copyright company="Aspose" file="ExecuteTemplateWithFieldOptions_tests.rb">
#   Copyright (c) 2022 Aspose.Words for Cloud
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
  # Example of how to perform template execution.
  #
  class ExecuteTemplateWithFieldOptionsTests < BaseTestContext
    def remote_data_folder
      remote_test_folder + '/DocumentActions/MailMerge'
    end

    def mail_merge_folder
      'DocumentActions/MailMerge'
    end


    #
    # Test for posting execute template.
    #
    def test_execute_template_with_field_options
      local_document_file = 'TestMailMergeWithOptions.docx'
      remote_file_name = 'TestMailMergeWithOptions.docx'
      local_data_file = File.read(File.join(local_test_folder, mail_merge_folder + '/TestMailMergeData.xml'))

      upload_file File.join(local_test_folder, mail_merge_folder + '/' + local_document_file), remote_data_folder + '/' + remote_file_name

      request_options_current_user = UserInformation.new({:Name => 'SdkTestUser'})
      request_options = FieldOptions.new({:CurrentUser => request_options_current_user})
      request = ExecuteMailMergeRequest.new(name: remote_file_name, data: local_data_file, options: request_options, folder: remote_data_folder, dest_file_name: remote_test_out + '/' + remote_file_name)

      result = @words_api.execute_mail_merge(request)
      assert_equal false, result.nil?
    end

    #
    # Test for execute template online.
    #
    def test_execute_template_online_with_field_options
      local_document_file = 'TestMailMergeWithOptions.docx'
      local_data_file = 'TestMailMergeData.xml'

      request_template = File.open(File.join(local_test_folder, mail_merge_folder + '/' + local_document_file))
      request_data = File.open(File.join(local_test_folder, mail_merge_folder + '/' + local_data_file))
      request_options_current_user = UserInformation.new({:Name => 'SdkTestUser'})
      request_options = FieldOptions.new({:CurrentUser => request_options_current_user})
      request = ExecuteMailMergeOnlineRequest.new(template: request_template, data: request_data, options: request_options)

      result = @words_api.execute_mail_merge_online(request)
      assert_equal false, result.nil?
    end
  end
end