# ------------------------------------------------------------------------------------
# <copyright company="Aspose" file="batch_part_request.rb">
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
require 'securerandom'
module AsposeWordsCloud

  #
  # Class to wrap other request to batch part.
  #
  class BatchPartRequest

    # The request to send
    attr_accessor :request

    # The request_id of the request
    attr_accessor :request_id

    # The parent request_id in case this request is child
    attr_accessor :parent_request_id

    def initialize(request)
      self.request = request
      self.request_id = SecureRandom.uuid
      self.parent_request_id = nil
    end

    def resultOf
      part = ""
      part.concat("resultOf(".force_encoding('UTF-8'))
      part.concat(self.request_id.force_encoding('UTF-8'))
      part.concat(")".force_encoding('UTF-8'))
      part
    end

  end
end
