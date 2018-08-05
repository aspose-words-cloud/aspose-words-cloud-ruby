#
# --------------------------------------------------------------------------------------------------------------------
# <copyright company="Aspose" file="runs_tests.rb">
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

      st_request = PutCreateRequest.new remote_test_folder + test_folder + '/' + remote_name, File.open(local_test_folder + test_folder + '/' + filename, "r").read       
      @storage_api.put_create st_request

      request = DeleteRunRequest.new remote_name, 'paragraphs/1', index, remote_test_folder + test_folder
      result = @words_api.delete_run request
      assert_equal 200, result.code
    end

    #
    # Test for updating run
    #
    def test_post_run
      filename = 'Run.doc'
      remote_name = 'TestPostRun.docx'
      index = 0
      run = Run.new({:Text => 'Run with text'})

      st_request = PutCreateRequest.new remote_test_folder + test_folder + '/' + remote_name, File.open(local_test_folder + test_folder + '/' + filename, "r").read       
      @storage_api.put_create st_request

      request = PostRunRequest.new remote_name, run, 'paragraphs/1', index, remote_test_folder + test_folder
      result = @words_api.post_run request
      assert_equal 200, result.code
    end

    #
    # Test for updating run
    #
    def test_put_run
      filename = 'Run.doc'
      remote_name = 'TestPutRun.docx'
      run = Run.new({:Text => 'Run with text'})

      st_request = PutCreateRequest.new remote_test_folder + test_folder + '/' + remote_name, File.open(local_test_folder + test_folder + '/' + filename, "r").read       
      @storage_api.put_create st_request

      request = PutRunRequest.new remote_name,  'paragraphs/1', run, remote_test_folder + test_folder
      result = @words_api.put_run request
      assert_equal 200, result.code
    end
  end
end
