# ------------------------------------------------------------------------------------
# <copyright company="Aspose" file="get_files_list_request.rb">
#   Copyright (c) 2022 Aspose.Words for Cloud
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
  # Request model for get_files_list operation.
  #
  class GetFilesListRequest
    # Folder path e.g. '/folder'.
    attr_accessor :path

    # Storage name.
    attr_accessor :storage_name

    #
    # Initializes a new instance.
    # @param path Folder path e.g. '/folder'.
    # @param storage_name Storage name.

    def initialize(path:, storage_name: nil)
      self.path = path
      self.storage_name = storage_name
    end

    # Creating batch part from request
    def to_batch_part(api_client, guid)
      # verify the required parameter 'path' is set
      raise ArgumentError, 'Missing the required parameter path when calling WordsApi.get_files_list' if api_client.config.client_side_validation && self.path.nil?

      # resource path
      local_var_path = '/words/storage/folder/{path}'[7..-1]
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Path') + '}', self.path.nil? ? '' : self.path.to_s)
      local_var_path = local_var_path.sub('//', '/')

      # query parameters
      query_params = {}
      query_params[downcase_first_letter('StorageName')] = self.storage_name unless self.storage_name.nil?

      if query_params
        query_params.each { |key, value| local_var_path = api_client.add_param_to_query(local_var_path, key, value) }
      end

      header_params = {}
      header_params['RequestId'] = guid

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      body = nil
      part = ""
      part.concat("GET".force_encoding('UTF-8'))
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
      # verify the required parameter 'path' is set
      raise ArgumentError, 'Missing the required parameter path when calling WordsApi.get_files_list' if api_client.config.client_side_validation && self.path.nil?

      # resource path
      local_var_path = '/words/storage/folder/{path}'[1..-1]
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Path') + '}', self.path.nil? ? '' : self.path.to_s)
      local_var_path = local_var_path.sub('//', '/')

      # query parameters
      query_params = {}
      query_params[downcase_first_letter('StorageName')] = self.storage_name unless self.storage_name.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = api_client.select_header_content_type(['application/xml', 'application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      body = api_client.build_request_body(header_params, form_params, post_body)
      {
        'method': :GET,
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
      'FilesList'
    end
  end
end
