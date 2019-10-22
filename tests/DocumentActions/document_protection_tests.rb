#
# --------------------------------------------------------------------------------------------------------------------
# <copyright company="Aspose" file="document_protection_tests.rb">
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
  class DocumentProtectionTests < BaseTestContext
    def test_folder
      'DocumentActions/DocumentProtection'
    end

    #
    # Test for getting document protection
    #
    def test_get_document_protection
      filename = 'test_multi_pages.docx'
      remote_name = 'TestGetDocumentProtection.docx'

      upload_file File.join(local_common_folder, filename), File.join(remote_test_folder, test_folder, remote_name)

      request = GetDocumentProtectionRequest.new remote_name, remote_test_folder + test_folder
      result = @words_api.get_document_protection request
      assert_equal false, result.nil?
    end

    #
    # Test for inserting document protection
    #
    def test_protect_document
      filename = 'test_multi_pages.docx'
      remote_name = 'TestProtectDocument.docx'
      dest_name = remote_test_out + remote_name
      body = ProtectionRequest.new({:NewPassword => '123'})

      upload_file File.join(local_common_folder, filename), File.join(remote_test_folder, test_folder, remote_name)

      request = ProtectDocumentRequest.new remote_name, body, remote_test_folder + test_folder, nil,
                                              nil, nil, dest_name
      result = @words_api.protect_document request
      assert_equal false, result.nil?
    end

    #
    # Test for updating document protection
    #
    def test_change_document_protection
      filename = 'test_multi_pages.docx'
      remote_name = 'TestChangeDocumentProtection.docx'
      body = ProtectionRequest.new({:NewPassword => ''})

      upload_file File.join(local_common_folder, filename), File.join(remote_test_folder, test_folder, remote_name)

      request = ProtectDocumentRequest.new remote_name, body, remote_test_folder + test_folder
      result = @words_api.protect_document request
      assert_equal false, result.nil?
    end

    #
    # Test for removing document protection
    #
    def test_unprotect_document
      filename = 'SampleProtectedBlankWordDocument.docx'
      remote_name = 'TestUnprotectDocument.docx'
      body = ProtectionRequest.new({:Password => 'aspose'})

      upload_file File.join(local_test_folder, test_folder, filename), File.join(remote_test_folder, test_folder, remote_name)

      request = UnprotectDocumentRequest.new remote_name, body, remote_test_folder + test_folder
      result = @words_api.unprotect_document request
      assert_equal false, result.nil?
    end
  end
end
