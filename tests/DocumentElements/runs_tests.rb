#
# --------------------------------------------------------------------------------------------------------------------
# <copyright company="Aspose" file="runs_tests.rb">
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
  class RunsTests < BaseTestContext
    def test_folder
      'DocumentElements/Runs'
    end

    #
    # Test for removing run
    #
    def test_delete_run
      filename = 'Run.doc'
      remote_name = 'TestDeleteRun.docx'
      index = 0

      upload_file File.join(local_test_folder, test_folder, filename), File.join(remote_test_folder, test_folder, remote_name)

      request = DeleteRunRequest.new remote_name, 'paragraphs/1', index, remote_test_folder + test_folder
      result = @words_api.delete_run request
      assert_equal TRUE, result.nil?
    end

    #
    # Test for updating run
    #
    def test_update_run
      filename = 'Run.doc'
      remote_name = 'TestUpdateRun.docx'
      index = 0
      run = RunUpdate.new({:Text => 'Run with text'})

      upload_file File.join(local_test_folder, test_folder, filename), File.join(remote_test_folder, test_folder, remote_name)

      request = UpdateRunRequest.new remote_name, run, 'paragraphs/1', index, remote_test_folder + test_folder
      result = @words_api.update_run request
      assert_equal FALSE, result.nil?
    end

    #
    # Test for inserting run
    #
    def test_insert_run
      filename = 'Run.doc'
      remote_name = 'TestInsertRun.docx'
      run = RunInsert.new({:Text => 'Run with text'})

      upload_file File.join(local_test_folder, test_folder, filename), File.join(remote_test_folder, test_folder, remote_name)

      request = InsertRunRequest.new remote_name,  'paragraphs/1', run, remote_test_folder + test_folder
      result = @words_api.insert_run request
      assert_equal FALSE, result.nil?
    end
  end
end
