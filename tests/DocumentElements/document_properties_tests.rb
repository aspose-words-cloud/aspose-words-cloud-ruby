#
# --------------------------------------------------------------------------------------------------------------------
# <copyright company="Aspose" file="document_properties_tests.rb">
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
  class DocumentPropertiesTests < BaseTestContext
    def test_folder
      'DocumentElements/DocumentProperties'
    end

    #
    # Test for adding/updating document property
    #
    def test_create_or_update_document_property
      filename = 'test_doc.docx'
      remote_name = 'TestCreateOrUpdateDocumentProperty.docx'
      property_name = 'AsposeAuthor'
      property = DocumentProperty.new({:Name => 'Author', :Value => 'Yaroslav Ekimov'})

      upload_file File.join(local_common_folder, filename), File.join(remote_test_folder, test_folder, remote_name)

      request = CreateOrUpdateDocumentPropertyRequest.new remote_name, property_name, property, remote_test_folder + test_folder
      result = @words_api.create_or_update_document_property request
      assert_equal FALSE, result.nil?
    end

    #
    # Test for deleting document property
    #
    def test_delete_document_property
      filename = 'test_multi_pages.docx'
      remote_name = 'TestDeleteDocumentProperty.docx'
      dest_name = remote_test_out + remote_name
      property_name = 'testProp'

      upload_file File.join(local_common_folder, filename), File.join(remote_test_folder, test_folder, remote_name)

      request = DeleteDocumentPropertyRequest.new remote_name, property_name, remote_test_folder + test_folder, :dest_file_name => dest_name
      result = @words_api.delete_document_property request
    end

    #
    # Test for getting document properties
    #
    def test_get_document_properties
      filename = 'test_multi_pages.docx'
      remote_name = 'TestGetDocumentProperties.docx'

      upload_file File.join(local_common_folder, filename), File.join(remote_test_folder, test_folder, remote_name)

      request = GetDocumentPropertiesRequest.new remote_name, remote_test_folder + test_folder
      result = @words_api.get_document_properties request
      assert_equal FALSE, result.nil?
    end

    #
    # Test for getting document property
    #
    def test_get_document_property
      filename = 'test_multi_pages.docx'
      remote_name = 'TestGetDocumentProperty.docx'
      property_name = 'Author'

      upload_file File.join(local_common_folder, filename), File.join(remote_test_folder, test_folder, remote_name)

      request = GetDocumentPropertyRequest.new remote_name, property_name, remote_test_folder + test_folder
      result = @words_api.get_document_property request
      assert_equal FALSE, result.nil?
    end
  end
end
