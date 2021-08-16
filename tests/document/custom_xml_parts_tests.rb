# ------------------------------------------------------------------------------------
# <copyright company="Aspose" file="CustomXmlParts_tests.rb">
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
  # Example of how to use custom xml parts in documents.
  #
  class CustomXmlPartsTests < BaseTestContext
    def remote_data_folder
      remote_test_folder + '/CustomXmlParts'
    end

    def local_file
      'DocumentElements/CustomXmlParts/MultipleCustomXmlParts.docx'
    end


    #
    # Test for getting custom xml part by specified index.
    #
    def test_get_custom_xml_part
      remote_file_name = 'TestGetCustomXmlPart.docx'

      upload_file File.join(local_test_folder, local_file), remote_data_folder + '/' + remote_file_name

      request = GetCustomXmlPartRequest.new(remote_file_name, 0, remote_data_folder, nil, nil, nil)

      result = @words_api.get_custom_xml_part(request)
      assert_equal false, result.nil?
    end

    #
    # Test for getting custom xml part by specified index online.
    #
    def test_get_custom_xml_part_online
      request_document = File.open(File.join(local_test_folder, local_file))
      request = GetCustomXmlPartOnlineRequest.new(request_document, 0, nil, nil)

      result = @words_api.get_custom_xml_part_online(request)
      assert_equal false, result.nil?
    end

    #
    # Test for getting all custom xml parts from document.
    #
    def test_get_custom_xml_parts
      remote_file_name = 'TestGetCustomXmlParts.docx'

      upload_file File.join(local_test_folder, local_file), remote_data_folder + '/' + remote_file_name

      request = GetCustomXmlPartsRequest.new(remote_file_name, remote_data_folder, nil, nil, nil)

      result = @words_api.get_custom_xml_parts(request)
      assert_equal false, result.nil?
    end

    #
    # Test for getting all custom xml parts from document online.
    #
    def test_get_custom_xml_parts_online
      request_document = File.open(File.join(local_test_folder, local_file))
      request = GetCustomXmlPartsOnlineRequest.new(request_document, nil, nil)

      result = @words_api.get_custom_xml_parts_online(request)
      assert_equal false, result.nil?
    end

    #
    # Test for adding custom xml part.
    #
    def test_insert_custom_xml_part
      remote_file_name = 'TestInsertCustomXmlPart.docx'

      upload_file File.join(local_test_folder, local_file), remote_data_folder + '/' + remote_file_name

      request = InsertCustomXmlPartRequest.new(remote_file_name, request_custom_xml_part, remote_data_folder, nil, nil, nil, nil, nil, nil)

      result = @words_api.insert_custom_xml_part(request)
      assert_equal false, result.nil?
    end

    #
    # Test for adding custom xml part online.
    #
    def test_insert_custom_xml_part_online
      request_document = File.open(File.join(local_test_folder, local_file))

      request = InsertCustomXmlPartOnlineRequest.new(request_document, request_custom_xml_part, nil, nil, nil, nil, nil)

      result = @words_api.insert_custom_xml_part_online(request)
      assert_equal false, result.nil?
    end

    #
    # Test for updating custom xml part.
    #
    def test_update_custom_xml_part
      remote_file_name = 'TestUpdateCustomXmlPart.docx'

      upload_file File.join(local_test_folder, local_file), remote_data_folder + '/' + remote_file_name

      request = UpdateCustomXmlPartRequest.new(remote_file_name, 0, request_custom_xml_part, remote_data_folder, nil, nil, nil, nil, nil, nil)

      result = @words_api.update_custom_xml_part(request)
      assert_equal false, result.nil?
    end

    #
    # Test for updating custom xml part online.
    #
    def test_update_custom_xml_part_online
      request_document = File.open(File.join(local_test_folder, local_file))

      request = UpdateCustomXmlPartOnlineRequest.new(request_document, 0, request_custom_xml_part, nil, nil, nil, nil, nil)

      result = @words_api.update_custom_xml_part_online(request)
      assert_equal false, result.nil?
    end

    #
    # A test for DeleteCustomXmlPart.
    #
    def test_delete_custom_xml_part
      remote_file_name = 'TestDeleteCustomXmlPart.docx'

      upload_file File.join(local_test_folder, local_file), remote_data_folder + '/' + remote_file_name

      request = DeleteCustomXmlPartRequest.new(remote_file_name, 0, remote_data_folder, nil, nil, nil, remote_test_out + '/' + remote_file_name, nil, nil)

      @words_api.delete_custom_xml_part(request)
    end

    #
    # A test for DeleteCustomXmlPart online.
    #
    def test_delete_custom_xml_part_online
      request_document = File.open(File.join(local_test_folder, local_file))
      request = DeleteCustomXmlPartOnlineRequest.new(request_document, 0, nil, nil, nil, nil, nil)

      result = @words_api.delete_custom_xml_part_online(request)
      assert_equal false, result.nil?
    end

    #
    # A test for DeleteCustomXmlParts.
    #
    def test_delete_custom_xml_parts
      remote_file_name = 'TestDeleteCustomXmlPart.docx'

      upload_file File.join(local_test_folder, local_file), remote_data_folder + '/' + remote_file_name

      request = DeleteCustomXmlPartsRequest.new(remote_file_name, remote_data_folder, nil, nil, nil, remote_test_out + '/' + remote_file_name, nil, nil)

      @words_api.delete_custom_xml_parts(request)
    end

    #
    # A test for DeleteCustomXmlParts online.
    #
    def test_delete_custom_xml_parts_online
      request_document = File.open(File.join(local_test_folder, local_file))
      request = DeleteCustomXmlPartsOnlineRequest.new(request_document, nil, nil, nil, nil, nil)

      result = @words_api.delete_custom_xml_parts_online(request)
      assert_equal false, result.nil?
    end
  end
end