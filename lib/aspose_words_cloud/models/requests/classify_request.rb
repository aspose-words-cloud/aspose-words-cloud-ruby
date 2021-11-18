# ------------------------------------------------------------------------------------
# <copyright company="Aspose" file="classify_request.rb">
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

  #
  # Request model for classify operation.
  #
  class ClassifyRequest
    # The text to classify.
    attr_accessor :text

    # The number of the best classes to return.
    attr_accessor :best_classes_count

    #
    # Initializes a new instance.
    # @param text The text to classify.
    # @param best_classes_count The number of the best classes to return.

    def initialize(text:, best_classes_count: nil)
      self.text = text
      self.best_classes_count = best_classes_count
    end

    # Creating batch part from request
    def to_batch_part(api_client)
      # verify the required parameter 'text' is set
      raise ArgumentError, 'Missing the required parameter text when calling WordsApi.classify' if api_client.config.client_side_validation && self.text.nil?

      # resource path
      local_var_path = '/words/classify'[7..-1]
      local_var_path = local_var_path.sub('//', '/')

      # query parameters
      query_params = {}
      query_params[downcase_first_letter('BestClassesCount')] = self.best_classes_count unless self.best_classes_count.nil?

      if query_params
        query_params.each { |key, value| local_var_path = api_client.add_param_to_query(local_var_path, key, value) }
      end

      if query_params.has_key? 'password'
        query_params.delete('password')
        query_params['encryptedPassword'] = Base64.encode64(@api_client.config.rsa_key.public_encrypt(request.password.force_encoding("utf-8")))
      end

      header_params = {}
      # header parameters
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = api_client.select_header_content_type(['application/xml', 'application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = api_client.object_to_http_body(self.text)
      body = post_body
      part = ""
      part.concat("PUT".force_encoding('UTF-8'))
      part.concat(" ".force_encoding('UTF-8'))
      part.concat(local_var_path.force_encoding('UTF-8'))
      part.concat(" \r\n".force_encoding('UTF-8'))

      header_params.each_pair {|key, value| part.concat(key.dup.force_encoding('UTF-8') , ": ".force_encoding('UTF-8'), value.dup.force_encoding('UTF-8'), "\r\n".force_encoding('UTF-8')) }
      part.concat("\r\n".force_encoding('UTF-8'))
      if body
        if body.is_a?(Hash)
          body.each do |key, value|
          part.concat(value, "\r\n")
        end
        else
          part.concat(body)
        end
      end
     part
    end

    def create_http_request(api_client)
      # verify the required parameter 'text' is set
      raise ArgumentError, 'Missing the required parameter text when calling WordsApi.classify' if api_client.config.client_side_validation && self.text.nil?

      # resource path
      local_var_path = '/words/classify'[1..-1]
      local_var_path = local_var_path.sub('//', '/')

      # query parameters
      query_params = {}
      query_params[downcase_first_letter('BestClassesCount')] = self.best_classes_count unless self.best_classes_count.nil?

      if query_params.has_key? 'password'
        query_params.delete('password')
        query_params['encryptedPassword'] = Base64.encode64(@api_client.config.rsa_key.public_encrypt(request.password.force_encoding("utf-8")))
      end

      # header parameters
      header_params = {}
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = api_client.select_header_content_type(['application/xml', 'application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = api_client.object_to_http_body(self.text)
      body = post_body
      {
        'method': :PUT,
        'path': local_var_path,
        'header_params': header_params,
        'query_params': query_params,
        'body': body,
        'auth_names': ['JWT']
      }
    end

    #
    # Helper method to convert first letter to downcase
    #
    def downcase_first_letter(str)
      str[0].downcase + str[1..-1]
    end

    # Get response type
    def get_response_type
      'ClassificationResponse'
    end
  end
end
