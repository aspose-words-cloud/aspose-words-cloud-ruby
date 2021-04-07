# ------------------------------------------------------------------------------------
# <copyright company="Aspose" file="Run_tests.rb">
#   Copyright (c) 2021 Aspose.Words for Cloud
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
  # Example of how to work with runs.
  #
  class RunTests < BaseTestContext
    def remote_data_folder
      remote_test_folder + '/DocumentElements/Runs'
    end

    def local_file
      'DocumentElements/Runs/Run.doc'
    end


    #
    # Test for updating run.
    #
    def test_update_run
      remote_file_name = 'TestUpdateRun.docx'

      upload_file File.join(local_test_folder, local_file), remote_data_folder + '/' + remote_file_name

      request_run = RunUpdate.new({:Text => 'run with text'})
      request = UpdateRunRequest.new(remote_file_name, 'paragraphs/1', 0, request_run, remote_data_folder, nil, nil, nil, nil, nil, nil)

      result = @words_api.update_run(request)
      assert_equal false, result.nil?
    end

    #
    # Test for updating run online.
    #
    def test_update_run_online
      request_run = RunUpdate.new({:Text => 'run with text'})
      request = UpdateRunOnlineRequest.new(File.open(File.join(local_test_folder, local_file)), 'paragraphs/1', request_run, 0, nil, nil, nil, nil, nil)

      result = @words_api.update_run_online(request)
      assert_equal false, result.nil?
    end

    #
    # Test for adding run.
    #
    def test_insert_run
      remote_file_name = 'TestInsertRun.docx'

      upload_file File.join(local_test_folder, local_file), remote_data_folder + '/' + remote_file_name

      request_run = RunInsert.new({:Text => 'run with text'})
      request = InsertRunRequest.new(remote_file_name, 'paragraphs/1', request_run, remote_data_folder, nil, nil, nil, nil, nil, nil, nil)

      result = @words_api.insert_run(request)
      assert_equal false, result.nil?
    end

    #
    # Test for adding run online.
    #
    def test_insert_run_online
      request_run = RunInsert.new({:Text => 'run with text'})
      request = InsertRunOnlineRequest.new(File.open(File.join(local_test_folder, local_file)), 'paragraphs/1', request_run, nil, nil, nil, nil, nil, nil)

      result = @words_api.insert_run_online(request)
      assert_equal false, result.nil?
    end

    #
    # Test for deleting run.
    #
    def test_delete_run
      remote_file_name = 'TestDeleteRun.docx'

      upload_file File.join(local_test_folder, local_file), remote_data_folder + '/' + remote_file_name

      request = DeleteRunRequest.new(remote_file_name, 'paragraphs/1', 0, remote_data_folder, nil, nil, nil, nil, nil, nil)

      @words_api.delete_run(request)
    end

    #
    # Test for deleting run online.
    #
    def test_delete_run_online
      request = DeleteRunOnlineRequest.new(File.open(File.join(local_test_folder, local_file)), 'paragraphs/1', 0, nil, nil, nil, nil, nil)

      result = @words_api.delete_run_online(request)
      assert_equal false, result.nil?
    end
  end
end