#
# --------------------------------------------------------------------------------------------------------------------
# <copyright company="Aspose" file="range_tests.rb">
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
    class RangeTests < BaseTestContext
        def test_folder
            'TestData/DocumentElements/Range'
        end
  
        #
        # Test for getting range text from document
        #
        def test_get_range_text
            range_start = 'id0.0.0'
            range_end = 'id0.0.1'
            expected_text = 'This is HEADER '

            local_name = 'RangeGet.doc'
            remote_name = 'TestGetRangeText.doc'

            upload_file File.join(test_folder, local_name), File.join(remote_test_folder + test_folder, remote_name)

            request = GetRangeTextRequest.new remote_name, range_start, range_end, remote_test_folder + test_folder
            result = @words_api.get_range_text request
            assert_equal expected_text, result.text
        end

        #
        # Test for removing range text from document
        #
        def test_remove_range
            range_start = 'id0.0.0'
            range_end = 'id0.0.1'

            local_name = 'RangeGet.doc'
            remote_name = 'TestRemoveRange.doc'

            upload_file File.join(test_folder, local_name), File.join(remote_test_folder + test_folder, remote_name)

            request = RemoveRangeRequest.new remote_name, range_start, range_end, remote_test_folder + test_folder
            result = @words_api.remove_range request
            assert_equal FALSE, result.nil?
        end

        #
        # Test for saving as range
        #
        def test_save_as_range
            range_start = 'id0.0.0'
            range_end = 'id0.0.1'
            new_doc_name = File.join remote_test_folder + test_folder, "NewDoc.docx"
            range_doc = RangeDocument.new :DocumentName => new_doc_name
            debug range_doc.document_name
            local_name = 'RangeGet.doc'
            remote_name = 'TestSaveAsRange.doc'

            upload_file File.join(test_folder, local_name), File.join(remote_test_folder + test_folder + test_folder, remote_name)

            request = SaveAsRangeRequest.new remote_name, range_start, range_doc, range_end, remote_test_folder + test_folder + test_folder
            result = @words_api.save_as_range request

            result = @words_api.download_file DownloadFileRequest.new(new_doc_name)
            assert_equal FALSE, result.nil?
        end

        #
        # Test for replacing range with text
        #
        def test_replace_with_text
            range_start = 'id0.0.0'
            range_end = 'id0.0.1'
            new_text = 'Replace header'
            replacement = ReplaceRange.new :Text => new_text

            local_name = 'RangeGet.doc'
            remote_name = 'TestRemoveRange.doc'

            upload_file File.join(test_folder, local_name), File.join(remote_test_folder + test_folder + test_folder, remote_name)

            request = ReplaceWithTextRequest.new remote_name, range_start, replacement, range_end, remote_test_folder + test_folder + test_folder
            result = @words_api.replace_with_text request
            assert_equal FALSE, result.nil?
        end
    end
end
  