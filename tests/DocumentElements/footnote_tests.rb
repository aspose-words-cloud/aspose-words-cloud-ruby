#
# --------------------------------------------------------------------------------------------------------------------
# <copyright company="Aspose" file="footnote_tests.rb">
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
module WordsRubySdk
  require_relative '../base_test_context'
  class FootnoteTests < BaseTestContext
    def test_folder
      'DocumentElements/Footnotes'
    end

    #
    # Test for getting footnote
    #
    def test_get_footnote
      filename = 'Footnote.doc'
      remote_name = 'TestGetFootnote.docx'
      index = 0

      st_request = PutCreateRequest.new remote_test_folder + test_folder + '/' + remote_name, File.open(local_test_folder + test_folder + '/' + filename, "r").read       
      @storage_api.put_create st_request

      request = GetFootnoteRequest.new remote_name, index, remote_test_folder + test_folder
      result = @words_api.get_footnote request
      assert_equal 200, result.code
    end

    #
    # Test for getting footnotes
    #
    def test_get_footnotes
      filename = 'Footnote.doc'
      remote_name = 'TestGetFootnotes.docx'

      st_request = PutCreateRequest.new remote_test_folder + test_folder + '/' + remote_name, File.open(local_test_folder + test_folder + '/' + filename, "r").read       
      @storage_api.put_create st_request

      request = GetFootnotesRequest.new remote_name, remote_test_folder + test_folder
      result = @words_api.get_footnotes request
      assert_equal 200, result.code
    end

    #
    # Test for removing footnote
    #
    def test_delete_footnote
      filename = 'Footnote.doc'
      remote_name = 'TestDeleteFootnote.docx'
      index = 0

      st_request = PutCreateRequest.new remote_test_folder + test_folder + '/' + remote_name, File.open(local_test_folder + test_folder + '/' + filename, "r").read       
      @storage_api.put_create st_request

      request = DeleteFootnoteRequest.new remote_name, index, remote_test_folder + test_folder
      result = @words_api.delete_footnote request
      assert_equal 200, result.code
    end

    #
    # Test for updating footnote
    #
    def test_post_footnote
      filename = 'Footnote.doc'
      remote_name = 'TestPostFootnote.docx'
      index = 0
      footnote = Footnote.new({:Text => 'new text is here'})

      st_request = PutCreateRequest.new remote_test_folder + test_folder + '/' + remote_name, File.open(local_test_folder + test_folder + '/' + filename, "r").read       
      @storage_api.put_create st_request

      request = PostFootnoteRequest.new remote_name, footnote, index, remote_test_folder + test_folder
      result = @words_api.post_footnote request
      assert_equal 200, result.code
    end

    #
    # Test for creating footnote
    #
    def test_put_footnote
      filename = 'Footnote.doc'
      remote_name = 'TestPutFootnote.docx'
      footnote = Footnote.new({:Text => 'test endnote', :FootnoteType => 'Endnote'})

      st_request = PutCreateRequest.new remote_test_folder + test_folder + '/' + remote_name, File.open(local_test_folder + test_folder + '/' + filename, "r").read       
      @storage_api.put_create st_request

      request = PutFootnoteRequest.new remote_name, footnote, remote_test_folder + test_folder
      result = @words_api.put_footnote request
      assert_equal 200, result.code
    end
  end
end
