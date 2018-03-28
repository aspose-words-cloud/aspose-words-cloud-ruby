#
# --------------------------------------------------------------------------------------------------------------------
# <copyright company="Aspose" file="error_handling_tests.rb">
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
module RubySDK
  require_relative '../base_test_context'
  require_relative '../../lib/models/requests/GetSectionRequest'
  class ErrorHandlingTests < BaseTestContext

    #
    # Test for checking handle of server errors
    #
    def test_handle_server_errors
      remote_name = 'noFileWithThisName.docx'
      request = GetSectionRequest.new remote_name, ''
      begin
        @words_api.get_section request
        assert_throws 'FAILED'
      end
    rescue ApiError => e
      assert_equal 400, e.code
    end
  end
end
