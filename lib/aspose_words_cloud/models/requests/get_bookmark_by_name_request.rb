# ------------------------------------------------------------------------------------
# <copyright company="Aspose" file="get_bookmark_by_name_request.rb">
#   Copyright (c) 2024 Aspose.Words for Cloud
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
  # Request model for get_bookmark_by_name operation.
  #
  class GetBookmarkByNameRequest
    # The filename of the input document.
    attr_accessor :name

    # The name of the bookmark.
    attr_accessor :bookmark_name

    # Original document folder.
    attr_accessor :folder

    # Original document storage.
    attr_accessor :storage

    # Encoding that will be used to load an HTML (or TXT) document if the encoding is not specified in HTML.
    attr_accessor :load_encoding

    # Password of protected Word document. Use the parameter to pass a password via SDK. SDK encrypts it automatically. We don't recommend to use the parameter to pass a plain password for direct call of API.
    attr_accessor :password

    # Password of protected Word document. Use the parameter to pass an encrypted password for direct calls of API. See SDK code for encyption details.
    attr_accessor :encrypted_password

    # The value indicates whether OpenType support is on.
    attr_accessor :open_type_support

    #
    # Initializes a new instance.
    # @param name The filename of the input document.
    # @param bookmark_name The name of the bookmark.
    # @param folder Original document folder.
    # @param storage Original document storage.
    # @param load_encoding Encoding that will be used to load an HTML (or TXT) document if the encoding is not specified in HTML.
    # @param password Password of protected Word document. Use the parameter to pass a password via SDK. SDK encrypts it automatically. We don't recommend to use the parameter to pass a plain password for direct call of API.
    # @param encrypted_password Password of protected Word document. Use the parameter to pass an encrypted password for direct calls of API. See SDK code for encyption details.
    # @param open_type_support The value indicates whether OpenType support is on.

    def initialize(name:, bookmark_name:, folder: nil, storage: nil, load_encoding: nil, password: nil, encrypted_password: nil, open_type_support: nil)
      self.name = name
      self.bookmark_name = bookmark_name
      self.folder = folder
      self.storage = storage
      self.load_encoding = load_encoding
      self.password = password
      self.encrypted_password = encrypted_password
      self.open_type_support = open_type_support
    end

    # Creating batch part from request
    def to_batch_part(api_client, requestId, parentRequestId = nil)
      # verify the required parameter 'name' is set
      raise ArgumentError, 'Missing the required parameter name when calling WordsApi.get_bookmark_by_name' if api_client.config.client_side_validation && self.name.nil?
      # verify the required parameter 'bookmark_name' is set
      raise ArgumentError, 'Missing the required parameter bookmark_name when calling WordsApi.get_bookmark_by_name' if api_client.config.client_side_validation && self.bookmark_name.nil?

      # resource path
      local_var_path = '/words/{name}/bookmarks/{bookmarkName}'[7..-1]
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', self.name.nil? ? '' : self.name.to_s)
      local_var_path = local_var_path.sub('{' + downcase_first_letter('BookmarkName') + '}', self.bookmark_name.nil? ? '' : self.bookmark_name.to_s)
      local_var_path = local_var_path.sub('//', '/')

      # query parameters
      query_params = {}
      query_params[downcase_first_letter('Folder')] = self.folder unless self.folder.nil?
      query_params[downcase_first_letter('Storage')] = self.storage unless self.storage.nil?
      query_params[downcase_first_letter('LoadEncoding')] = self.load_encoding unless self.load_encoding.nil?
      query_params[downcase_first_letter('Password')] = self.password unless self.password.nil?
      query_params[downcase_first_letter('EncryptedPassword')] = self.encrypted_password unless self.encrypted_password.nil?
      query_params[downcase_first_letter('OpenTypeSupport')] = self.open_type_support unless self.open_type_support.nil?

      if query_params
        query_params.each { |key, value| local_var_path = api_client.add_param_to_query(local_var_path, key, value) }
      end

      header_params = {}
      header_params['RequestId'] = requestId

      if parentRequestId != nil
        header_params['DependsOn'] = parentRequestId
      end

      # form parameters
      form_params = []
      files_content = []

      # http body (model)
      body = api_client.build_request_body_batch(header_params, form_params, files_content)
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
      # verify the required parameter 'name' is set
      raise ArgumentError, 'Missing the required parameter name when calling WordsApi.get_bookmark_by_name' if api_client.config.client_side_validation && self.name.nil?
      # verify the required parameter 'bookmark_name' is set
      raise ArgumentError, 'Missing the required parameter bookmark_name when calling WordsApi.get_bookmark_by_name' if api_client.config.client_side_validation && self.bookmark_name.nil?

      # resource path
      local_var_path = '/words/{name}/bookmarks/{bookmarkName}'[1..-1]
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', self.name.nil? ? '' : self.name.to_s)
      local_var_path = local_var_path.sub('{' + downcase_first_letter('BookmarkName') + '}', self.bookmark_name.nil? ? '' : self.bookmark_name.to_s)
      local_var_path = local_var_path.sub('//', '/')

      # query parameters
      query_params = {}
      query_params[downcase_first_letter('Folder')] = self.folder unless self.folder.nil?
      query_params[downcase_first_letter('Storage')] = self.storage unless self.storage.nil?
      query_params[downcase_first_letter('LoadEncoding')] = self.load_encoding unless self.load_encoding.nil?
      query_params[downcase_first_letter('Password')] = self.password unless self.password.nil?
      query_params[downcase_first_letter('EncryptedPassword')] = self.encrypted_password unless self.encrypted_password.nil?
      query_params[downcase_first_letter('OpenTypeSupport')] = self.open_type_support unless self.open_type_support.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = api_client.select_header_content_type(['application/xml', 'application/json'])

      # form parameters
      form_params = []
      files_content = []
      body = api_client.build_request_body(header_params, form_params, files_content)
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
      'BookmarkResponse'
    end
  end
end
