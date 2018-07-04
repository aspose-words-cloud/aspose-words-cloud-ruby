#
# --------------------------------------------------------------------------------------------------------------------
# <copyright company="Aspose" file="pages_tests.rb">
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
  class PagesTests < BaseTestContext
    def test_folder
      'DocumentElements/Pages'
    end

    #
    # Test for page rendering
    #
    def test_render_page
      filename = 'test_multi_pages.docx'
      remote_name = 'TestRenderPage.docx'
      page_number = 1
      format = 'png'

      st_request = PutCreateRequest.new remote_test_folder + test_folder + '/' + remote_name, File.open(local_common_folder + filename, "r").read
      @storage_api.put_create st_request

      request = RenderPageRequest.new remote_name, page_number, format, remote_test_folder + test_folder
      result = @words_api.render_page request
      assert result.length > 0, 'Error occurred while rendering'
    end

    #
    # Test for getting page setup
    #
    def test_get_section_page_setup
      filename = 'test_multi_pages.docx'
      remote_name = 'TestGetSectionPageSetup.docx'
      index = 0

      st_request = PutCreateRequest.new remote_test_folder + test_folder + '/' + remote_name, File.open(local_common_folder + filename, "r").read
      @storage_api.put_create st_request

      request = GetSectionPageSetupRequest.new remote_name, index, remote_test_folder + test_folder
      result = @words_api.get_section_page_setup request
      assert_equal 200, result.code
    end

    #
    # Test for updating page setup
    #
    def test_update_section_page_setup
      filename = 'test_multi_pages.docx'
      remote_name = 'TestUpdateSectionPageSetup.docx'
      index = 0
      body = PageSetup.new({:RtlGutter => true, :LeftMargin => 10, :Orientation => 'Landscape', :PaperSize => 'A5'})

      st_request = PutCreateRequest.new remote_test_folder + test_folder + '/' + remote_name, File.open(local_common_folder + filename, "r").read
      @storage_api.put_create st_request

      request = UpdateSectionPageSetupRequest.new remote_name, index, body, remote_test_folder + test_folder
      result = @words_api.update_section_page_setup request
      assert_equal 200, result.code
    end
  end
end
