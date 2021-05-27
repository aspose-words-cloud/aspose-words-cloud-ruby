# ------------------------------------------------------------------------------------
# <copyright company="Aspose" file="move_folder_request.rb">
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
  # Request model for move_folder operation.
  #
  class MoveFolderRequest
    # Destination folder path to move to e.g '/dst'.
    attr_accessor :dest_path

    # Source folder path e.g. /Folder1.
    attr_accessor :src_path

    # Source storage name.
    attr_accessor :src_storage_name

    # Destination storage name.
    attr_accessor :dest_storage_name

    #
    # Initializes a new instance.
    # @param dest_path Destination folder path to move to e.g '/dst'.
    # @param src_path Source folder path e.g. /Folder1.
    # @param src_storage_name Source storage name.
    # @param dest_storage_name Destination storage name.

    def initialize(dest_path, src_path, src_storage_name = nil, dest_storage_name = nil)
      self.dest_path = dest_path
      self.src_path = src_path
      self.src_storage_name = src_storage_name
      self.dest_storage_name = dest_storage_name
    end

    # Creating batch part from request
    def to_batch_part(api_client)
      # verify the required parameter 'dest_path' is set
      raise ArgumentError, 'Missing the required parameter dest_path when calling WordsApi.move_folder' if api_client.config.client_side_validation && self.dest_path.nil?
      # verify the required parameter 'src_path' is set
      raise ArgumentError, 'Missing the required parameter src_path when calling WordsApi.move_folder' if api_client.config.client_side_validation && self.src_path.nil?

      # resource path
      local_var_path = '/words/storage/folder/move/{srcPath}'[7..-1]
      local_var_path = local_var_path.sub('{' + downcase_first_letter('SrcPath') + '}', self.src_path.nil? ? '' : self.src_path.to_s)
      local_var_path = local_var_path.sub('//', '/')

      # query parameters
      query_params = {}
      query_params[downcase_first_letter('DestPath')] = self.dest_path
      query_params[downcase_first_letter('SrcStorageName')] = self.src_storage_name unless self.src_storage_name.nil?
      query_params[downcase_first_letter('DestStorageName')] = self.dest_storage_name unless self.dest_storage_name.nil?

      if query_params
        query_params.each { |key, value| local_var_path = api_client.add_param_to_query(local_var_path, key, value) }
      end

      header_params = {}

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      body = nil
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
      # verify the required parameter 'dest_path' is set
      raise ArgumentError, 'Missing the required parameter dest_path when calling WordsApi.move_folder' if api_client.config.client_side_validation && self.dest_path.nil?
      # verify the required parameter 'src_path' is set
      raise ArgumentError, 'Missing the required parameter src_path when calling WordsApi.move_folder' if api_client.config.client_side_validation && self.src_path.nil?

      # resource path
      local_var_path = '/words/storage/folder/move/{srcPath}'[1..-1]
      local_var_path = local_var_path.sub('{' + downcase_first_letter('SrcPath') + '}', self.src_path.nil? ? '' : self.src_path.to_s)
      local_var_path = local_var_path.sub('//', '/')

      # query parameters
      query_params = {}
      query_params[downcase_first_letter('DestPath')] = self.dest_path
      query_params[downcase_first_letter('SrcStorageName')] = self.src_storage_name unless self.src_storage_name.nil?
      query_params[downcase_first_letter('DestStorageName')] = self.dest_storage_name unless self.dest_storage_name.nil?

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
      nil
    end
  end
end
