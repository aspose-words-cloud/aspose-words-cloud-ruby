# ------------------------------------------------------------------------------------
# <copyright company="Aspose" file="DocumentProtection_tests.rb">
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
  # Example of how to set document protection.
  #
  class DocumentProtectionTests < BaseTestContext
    def remote_data_folder
      remote_test_folder + "/DocumentElements/DocumentProtection"
    end

    def local_file
      "Common/test_multi_pages.docx"
    end


    #
    # Test for setting document protection.
    #
    def test_protect_document
      remote_file_name = "TestProtectDocument.docx"

      upload_file File.join(local_test_folder, local_file), remote_data_folder + "/" + remote_file_name

      request_protection_request = ProtectionRequest.new({:Password => "123", :ProtectionType => "ReadOnly"})
      request = ProtectDocumentRequest.new(remote_file_name, request_protection_request, remote_data_folder, nil, nil, nil, remote_test_out + "/" + remote_file_name)

      result = @words_api.protect_document(request)
      assert_equal false, result.nil?
    end

    #
    # Test for setting document protection.
    #
    def test_protect_document_online
      request_protection_request = ProtectionRequest.new({:NewPassword => "123"})
      request = ProtectDocumentOnlineRequest.new(File.open(File.join(local_test_folder, local_file)), request_protection_request, nil, nil, nil)

      result = @words_api.protect_document_online(request)
      assert_equal false, result.nil?
    end

    #
    # Test for getting document protection.
    #
    def test_get_document_protection
      local_file_path = "DocumentActions/DocumentProtection/SampleProtectedBlankWordDocument.docx"
      remote_file_name = "TestGetDocumentProtection.docx"

      upload_file File.join(local_test_folder, local_file_path), remote_data_folder + "/" + remote_file_name

      request = GetDocumentProtectionRequest.new(remote_file_name, remote_data_folder, nil, nil, nil)

      result = @words_api.get_document_protection(request)
      assert_equal false, result.nil?
    end

    #
    # Test for getting document protection.
    #
    def test_get_document_protection_online
      request = GetDocumentProtectionOnlineRequest.new(File.open(File.join(local_test_folder, local_file)), nil, nil)

      result = @words_api.get_document_protection_online(request)
      assert_equal false, result.nil?
    end

    #
    # Test for deleting unprotect document.
    #
    def test_delete_unprotect_document
      local_file_path = "DocumentActions/DocumentProtection/SampleProtectedBlankWordDocument.docx"
      remote_file_name = "TestDeleteUnprotectDocument.docx"

      upload_file File.join(local_test_folder, local_file_path), remote_data_folder + "/" + remote_file_name

      request_protection_request = ProtectionRequest.new({:Password => "aspose"})
      request = UnprotectDocumentRequest.new(remote_file_name, request_protection_request, remote_data_folder, nil, nil, nil, nil)

      result = @words_api.unprotect_document(request)
      assert_equal false, result.nil?
    end

    #
    # Test for deleting unprotect document.
    #
    def test_delete_unprotect_document_online
      local_file_path = "DocumentActions/DocumentProtection/SampleProtectedBlankWordDocument.docx"

      request_protection_request = ProtectionRequest.new({:Password => "aspose"})
      request = UnprotectDocumentOnlineRequest.new(File.open(File.join(local_test_folder, local_file_path)), request_protection_request, nil, nil, nil)

      result = @words_api.unprotect_document_online(request)
      assert_equal false, result.nil?
    end
  end
end
