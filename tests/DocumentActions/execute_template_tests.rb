#
# --------------------------------------------------------------------------------------------------------------------
# <copyright company="Aspose" file="execute_template_tests.rb">
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
module AsposeWordsCloud
  require_relative '../base_test_context'
  class ExecuteTemplateTests < BaseTestContext
    def test_folder
      'DocumentActions/MailMerge'
    end

    #
    # Test for executing template
    #
    def test_post_execute_template
      filename = 'TestExecuteTemplate.doc'
      remote_name = 'TestPostExecuteTemplate.docx'
      dest_name = remote_test_out + remote_name
      data = File.read(local_test_folder + test_folder + '/TestExecuteTemplateData.txt')

      st_request = PutCreateRequest.new remote_test_folder + test_folder + '/' + remote_name, File.open(local_test_folder + test_folder + '/' + filename, "r").read
      @storage_api.put_create st_request

      request = PostExecuteTemplateRequest.new remote_name, data, remote_test_folder + test_folder, :dest_file_name => dest_name
      result = @words_api.post_execute_template request
      assert_equal 200, result.code
    end

    #
    # Test for executing template online
    #
    def test_put_execute_template_online
      filename = 'SampleExecuteTemplate.docx'
      file = File.open(local_test_folder + test_folder + '/' + filename, "r")
      data = File.open(local_test_folder + test_folder + '/SampleExecuteTemplateData.txt', 'r')
      request = PutExecuteTemplateOnlineRequest.new file, data
      result = @words_api.put_execute_template_online request
      assert result.length > 0, 'Error occurred while executing template'
    end
  end
end
