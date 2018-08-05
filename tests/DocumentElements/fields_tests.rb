#
# --------------------------------------------------------------------------------------------------------------------
# <copyright company="Aspose" file="fields_tests.rb">
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
  class FieldsTests < BaseTestContext
    def test_folder
      'DocumentElements/Fields'
    end

    #
    # Test for getting fields from document
    #
    def test_get_fields
      filename = 'GetField.docx'
      remote_name = 'TestGetFields.docx'

      st_request = PutCreateRequest.new remote_test_folder + test_folder + '/' + remote_name, File.open(local_test_folder + test_folder + '/' + filename, "r").read       
      @storage_api.put_create st_request

      request = GetFieldsRequest.new remote_name, remote_test_folder + test_folder, :node_path => 'sections/0'
      result = @words_api.get_fields request
      assert_equal 200, result.code
    end

    #
    # Test for getting field from document
    #
    def test_get_field
      filename = 'GetField.docx'
      remote_name = 'TestGetField.docx'
      index = 0

      st_request = PutCreateRequest.new remote_test_folder + test_folder + '/' + remote_name, File.open(local_test_folder + test_folder + '/' + filename, "r").read       
      @storage_api.put_create st_request

      request = GetFieldRequest.new remote_name, index, remote_test_folder + test_folder, :node_path => 'sections/0/paragraphs/0'
      result = @words_api.get_field request
      assert_equal 200, result.code
    end

    #
    # Test for updating document field
    #
    def test_post_field
      filename = 'GetField.docx'
      remote_name = 'TestPostField.docx'
      dest_name = remote_test_out + remote_name
      index = 0
      body = Field.new({ :FieldCode => '{ NUMPAGES }', :NodeId => '0.0.3' })

      st_request = PutCreateRequest.new remote_test_folder + test_folder + '/' + remote_name, File.open(local_test_folder + test_folder + '/' + filename, "r").read       
      @storage_api.put_create st_request

      request = PostFieldRequest.new remote_name, body, index, remote_test_folder + test_folder,
                                     nil, nil, nil, dest_name, nil,
                                     nil, "sections/0/paragraphs/0"
      result = @words_api.post_field request
      assert_equal 200, result.code
    end

    #
    # Test for inserting document field
    #
    def test_put_field
      filename = 'GetField.docx'
      remote_name = 'TestPutField.docx'
      body = Field.new({:Result => 3, :FieldCode => '{ NUMPAGES }', :NodeId => '0.0.3'})

      st_request = PutCreateRequest.new remote_test_folder + test_folder + '/' + remote_name, File.open(local_test_folder + test_folder + '/' + filename, "r").read       
      @storage_api.put_create st_request

      request = PutFieldRequest.new remote_name, body, remote_test_folder + test_folder, :node_path => 'sections/0/paragraphs/0'
      result = @words_api.put_field request
      assert_equal 200, result.code
    end

    #
    # Test for reevaluating fields in document
    #
    def test_post_update_document_fields
      filename = 'test_multi_pages.docx'
      remote_name = 'TestPostUpdateDocumentFields.docx'

      st_request = PutCreateRequest.new remote_test_folder + test_folder + '/' + remote_name, File.open(local_common_folder + filename, "r").read
      @storage_api.put_create st_request

      request = PostUpdateDocumentFieldsRequest.new remote_name, remote_test_folder + test_folder
      result = @words_api.post_update_document_fields request
      assert_equal 200, result.code
    end

    #
    # Test for inserting page numbers
    #
    def test_post_insert_page_numbers
      filename = 'test_multi_pages.docx'
      remote_name = 'TestPostInsertPageNumbers.docx'
      dest_name = remote_test_out + remote_name
      body = PageNumber.new({:Alignment => 'center', :Format => '{PAGE} of { NUMPAGES }'})

      st_request = PutCreateRequest.new remote_test_folder + test_folder + '/' + remote_name, File.open(local_common_folder + filename, "r").read
      @storage_api.put_create st_request

      request = PostInsertPageNumbersRequest.new remote_name, body, remote_test_folder + test_folder, :dest_file_name => dest_name
      result = @words_api.post_insert_page_numbers request
      assert_equal 200, result.code
    end

    #
    # Test for removing field
    #
    def test_delete_field
      filename = 'GetField.docx'
      remote_name = 'TestDeleteField.docx'
      index = 0

      st_request = PutCreateRequest.new remote_test_folder + test_folder + '/' + remote_name, File.open(local_test_folder + test_folder + '/' + filename, "r").read       
      @storage_api.put_create st_request

      request = DeleteFieldRequest.new remote_name, index, remote_test_folder + test_folder, :node_path => 'sections/0/paragraphs/0'
      result = @words_api.delete_field request
      assert_equal 200, result.code
    end

    #
    # Test for removing field
    #
    def test_delete_fields
      filename = 'test_multi_pages.docx'
      remote_name = 'TestDeleteFields.docx'

      st_request = PutCreateRequest.new remote_test_folder + test_folder + '/' + remote_name, File.open(local_common_folder + filename, "r").read
      @storage_api.put_create st_request

      request = DeleteFieldsRequest.new remote_name, remote_test_folder + test_folder
      result = @words_api.delete_fields request
      assert_equal 200, result.code
    end
  end
end
