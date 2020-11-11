# ------------------------------------------------------------------------------------
# <copyright company="Aspose" file="Styles_tests.rb">
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
  # Example of how to work with styles.
  #
  class StylesTests < BaseTestContext
    def remote_data_folder
      remote_test_folder + "/DocumentElements/Styles"
    end

    def local_file
      "DocumentElements/Styles/GetStyles.docx"
    end


    #
    # Test for getting styles from document.
    #
    def test_get_styles
      remote_file_name = "TestGetStyles.docx"

      upload_file File.join(local_test_folder, local_file), remote_data_folder + "/" + remote_file_name

      request = GetStylesRequest.new(remote_file_name, remote_data_folder, nil, nil, nil)

      result = @words_api.get_styles(request)
      assert_equal false, result.nil?
      assert_equal false, result.styles.nil?
      assert_equal 22, result.styles.length
      assert_equal "Default Paragraph Font", result.styles[0].name
    end

    #
    # Test for getting style from document.
    #
    def test_get_style
      remote_file_name = "TestGetStyle.docx"

      upload_file File.join(local_test_folder, local_file), remote_data_folder + "/" + remote_file_name

      request = GetStyleRequest.new(remote_file_name, "Heading 1", remote_data_folder, nil, nil, nil)

      result = @words_api.get_style(request)
      assert_equal false, result.nil?
      assert_equal false, result.style.nil?
      assert_equal "Heading 1", result.style.name
    end

    #
    # Test for updating style from document.
    #
    def test_update_style
      remote_file_name = "TestUpdateStyle.docx"

      upload_file File.join(local_test_folder, local_file), remote_data_folder + "/" + remote_file_name

      request_style_update = StyleUpdate.new({:Name => "My Style"})
      request = UpdateStyleRequest.new(remote_file_name, request_style_update, "Heading 1", remote_data_folder, nil, nil, nil, nil, nil, nil)

      result = @words_api.update_style(request)
      assert_equal false, result.nil?
      assert_equal false, result.style.nil?
      assert_equal "My Style", result.style.name
    end

    #
    # Test for inserting style from document.
    #
    def test_insert_style
      remote_file_name = "TestInsertStyle.docx"

      upload_file File.join(local_test_folder, local_file), remote_data_folder + "/" + remote_file_name

      request_style_insert = StyleInsert.new({:StyleName => "My Style", :StyleType => 'Paragraph'})
      request = InsertStyleRequest.new(remote_file_name, request_style_insert, remote_data_folder, nil, nil, nil, nil, nil, nil)

      result = @words_api.insert_style(request)
      assert_equal false, result.nil?
      assert_equal false, result.style.nil?
      assert_equal "My Style", result.style.name
    end

    #
    # Test for coping style from document.
    #
    def test_copy_style
      remote_file_name = "TestCopyStyle.docx"

      upload_file File.join(local_test_folder, local_file), remote_data_folder + "/" + remote_file_name

      request_style_copy = StyleCopy.new({:StyleName => "Heading 1"})
      request = CopyStyleRequest.new(remote_file_name, request_style_copy, remote_data_folder, nil, nil, nil, nil, nil, nil)

      result = @words_api.copy_style(request)
      assert_equal false, result.nil?
      assert_equal false, result.style.nil?
      assert_equal "Heading 1_0", result.style.name
    end

    #
    # Test for getting style from document element.
    #
    def test_get_style_from_document_element
      remote_file_name = "TestGetStyleFromDocumentElement.docx"

      upload_file File.join(local_test_folder, local_file), remote_data_folder + "/" + remote_file_name

      request = GetStyleFromDocumentElementRequest.new(remote_file_name, "paragraphs/1/paragraphFormat", remote_data_folder, nil, nil, nil)

      result = @words_api.get_style_from_document_element(request)
      assert_equal false, result.nil?
      assert_equal false, result.style.nil?
      assert_equal "TOC 1", result.style.name
    end

    #
    # Test for applying style to document element.
    #
    def test_apply_style_to_document_element
      remote_file_name = "TestApplyStyleToDocumentElement.docx"

      upload_file File.join(local_test_folder, local_file), remote_data_folder + "/" + remote_file_name

      request_style_apply = StyleApply.new({:StyleName => "Heading 1"})
      request = ApplyStyleToDocumentElementRequest.new(remote_file_name, request_style_apply, "paragraphs/1/paragraphFormat", remote_data_folder, nil, nil, nil, nil, nil, nil)

      result = @words_api.apply_style_to_document_element(request)
      assert_equal false, result.nil?
    end
  end
end
