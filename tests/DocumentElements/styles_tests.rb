#
# --------------------------------------------------------------------------------------------------------------------
# <copyright company="Aspose" file="styles_tests.rb">
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
    class StylesTests < BaseTestContext
        def test_folder
            'TestData/DocumentElements/Styles'
        end

        def local_name
            'GetStyles.docx'
        end
  
        #
        # Test for getting styles
        #
        def test_get_styles
            remote_name = 'TestGetStyles.docx'
            upload_file File.join(test_folder, local_name), File.join(remote_test_folder + test_folder, remote_name)
            request = GetStylesRequest.new remote_name, remote_test_folder + test_folder
            @words_api.get_styles request
        end

        #
        # Test for getting style
        #
        def test_get_style
            remote_name = 'TestGetStyle.docx'
            upload_file File.join(test_folder, local_name), File.join(remote_test_folder + test_folder, remote_name)
            request = GetStyleRequest.new remote_name, 'Heading 1', remote_test_folder + test_folder
            @words_api.get_style request
        end

        #
        # Test for updating style
        #
        def test_update_style
            remote_name = 'TestUpdateStyle.docx'
            upload_file File.join(test_folder, local_name), File.join(remote_test_folder + test_folder, remote_name)
            data = StyleUpdate.new
            data.name = 'My Style'
            request = UpdateStyleRequest.new remote_name, data,'Heading 1', remote_test_folder + test_folder
            @words_api.update_style request
        end

        #
        # Test for inserting style
        #
        def test_insert_style
            remote_name = 'TestInsertStyle.docx'
            upload_file File.join(test_folder, local_name), File.join(remote_test_folder + test_folder, remote_name)
            data = StyleInsert.new
            data.style_name = 'My Style'
            data.style_type = 'Paragraph'
            request = InsertStyleRequest.new remote_name, data, remote_test_folder + test_folder
            @words_api.insert_style request
        end

        #
        # Test for coping style
        #
        def test_copy_style
            remote_name = 'TestCopyStyle.docx'
            upload_file File.join(test_folder, local_name), File.join(remote_test_folder + test_folder, remote_name)
            data = StyleCopy.new
            data.style_name = 'Heading 1'
            request = CopyStyleRequest.new remote_name, data, remote_test_folder + test_folder
            @words_api.copy_style request
        end
    end
end
  