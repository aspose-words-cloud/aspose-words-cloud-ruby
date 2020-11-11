# ------------------------------------------------------------------------------------
# <copyright company="Aspose" file="Section_tests.rb">
#   Copyright (c) 2020 Aspose.Words for Cloud
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
  # Example of how to work with sections.
  #
  class SectionTests < BaseTestContext
    def remote_data_folder
      remote_test_folder + "/DocumentElements/Section"
    end

    def local_file
      "Common/test_multi_pages.docx"
    end


    #
    # Test for getting section by index.
    #
    def test_get_section
      remote_file_name = "TestGetSection.docx"

      upload_file File.join(local_test_folder, local_file), remote_data_folder + "/" + remote_file_name

      request = GetSectionRequest.new(remote_file_name, 0, remote_data_folder, nil, nil, nil)

      result = @words_api.get_section(request)
      assert_equal false, result.nil?
      assert_equal false, result.section.nil?
      assert_equal false, result.section.child_nodes.nil?
      assert_equal 13, result.section.child_nodes.length
      assert_equal "0.3.0", result.section.child_nodes[0].node_id
    end

    #
    # Test for getting sections.
    #
    def test_get_sections
      remote_file_name = "TestGetSections.docx"

      upload_file File.join(local_test_folder, local_file), remote_data_folder + "/" + remote_file_name

      request = GetSectionsRequest.new(remote_file_name, remote_data_folder, nil, nil, nil)

      result = @words_api.get_sections(request)
      assert_equal false, result.nil?
      assert_equal false, result.sections.nil?
      assert_equal false, result.sections.section_link_list.nil?
      assert_equal 1, result.sections.section_link_list.length
      assert_equal "0", result.sections.section_link_list[0].node_id
    end

    #
    # Test for delete a section.
    #
    def test_delete_section
      remote_file_name = "TestDeleteSection.docx"

      upload_file File.join(local_test_folder, local_file), remote_data_folder + "/" + remote_file_name

      request = DeleteSectionRequest.new(remote_file_name, 0, remote_data_folder, nil, nil, nil, nil, nil, nil)

      @words_api.delete_section(request)
    end
  end
end
