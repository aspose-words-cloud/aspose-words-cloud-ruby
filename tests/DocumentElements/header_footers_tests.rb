#
# --------------------------------------------------------------------------------------------------------------------
# <copyright company="Aspose" file="header_footers_tests.rb">
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
  class HeaderFootersTests < BaseTestContext
    def test_folder
      'DocumentElements/HeaderFooters'
    end

    #
    # Test for inserting header or footer
    #
    def test_insert_header_footer
      filename = 'HeadersFooters.doc'
      remote_name = 'TestInsertHeaderFooter.doc'
      footer_type = "FooterEven"

      upload_file File.join(local_test_folder, test_folder, filename), File.join(remote_test_folder, test_folder, remote_name)

      request = InsertHeaderFooterRequest.new remote_name, footer_type, '', remote_test_folder + test_folder
      result = @words_api.insert_header_footer request
      assert_equal FALSE, result.nil?
    end

    #
    # Test for getting header/footer
    #
    def test_get_header_footer
      filename = 'HeadersFooters.doc'
      remote_name = 'TestGetHeaderFooter.doc'
      index = 0

      upload_file File.join(local_test_folder, test_folder, filename), File.join(remote_test_folder, test_folder, remote_name)

      request = GetHeaderFooterRequest.new remote_name, index, remote_test_folder + test_folder
      result = @words_api.get_header_footer request
      assert_equal FALSE, result.nil?
    end

    #
    # Test for getting headers/footers
    #
    def test_get_header_footers
      filename = 'HeadersFooters.doc'
      remote_name = 'TestGetHeaderFooters.doc'

      upload_file File.join(local_test_folder, test_folder, filename), File.join(remote_test_folder, test_folder, remote_name)

      request = GetHeaderFootersRequest.new remote_name, '', remote_test_folder + test_folder
      result = @words_api.get_header_footers request
      assert_equal FALSE, result.nil?
    end

    #
    # Test for getting section headers/footers
    #
    def test_get_header_footer_of_section
      filename = 'HeadersFooters.doc'
      remote_name = 'TestGetHeaderFooterOfSection.doc'
      index = 0
      section_index = 0

      upload_file File.join(local_test_folder, test_folder, filename), File.join(remote_test_folder, test_folder, remote_name)

      request = GetHeaderFooterOfSectionRequest.new remote_name, index, section_index, remote_test_folder + test_folder
      result = @words_api.get_header_footer_of_section request
      assert_equal FALSE, result.nil?
    end

    #
    # Test for removing header/footer
    #
    def test_delete_header_footer
      filename = 'HeadersFooters.doc'
      remote_name = 'TestDeleteHeaderFooter.doc'
      index = 0

      upload_file File.join(local_test_folder, test_folder, filename), File.join(remote_test_folder, test_folder, remote_name)

      request = DeleteHeaderFooterRequest.new remote_name, '', index, remote_test_folder + test_folder
      result = @words_api.delete_header_footer request
      assert_equal TRUE, result.nil?
    end

    #
    # Test for removing headers/footers
    #
    def test_delete_headers_footers
      filename = 'HeadersFooters.doc'
      remote_name = 'TestDeleteHeadersFooters.doc'

      upload_file File.join(local_test_folder, test_folder, filename), File.join(remote_test_folder, test_folder, remote_name)

      request = DeleteHeadersFootersRequest.new remote_name, '', remote_test_folder + test_folder
      result = @words_api.delete_headers_footers request
      assert_equal TRUE, result.nil?
    end
  end
end
