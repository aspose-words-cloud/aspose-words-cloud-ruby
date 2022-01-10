# ------------------------------------------------------------------------------------
# <copyright company="Aspose" file="update_run_online_request.rb">
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
  # Request model for update_run_online operation.
  #
  class UpdateRunOnlineRequest
    # The document.
    attr_accessor :document

    # The path to the paragraph in the document tree.
    attr_accessor :paragraph_path

    # Run data.
    attr_accessor :run

    # Object index.
    attr_accessor :index

    # Encoding that will be used to load an HTML (or TXT) document if the encoding is not specified in HTML.
    attr_accessor :load_encoding

    # Password of protected Word document. Use the parameter to pass a password via SDK. SDK encrypts it automatically. We don't recommend to use the parameter to pass a plain password for direct call of API.
    attr_accessor :password

    # Password of protected Word document. Use the parameter to pass an encrypted password for direct calls of API. See SDK code for encyption details.
    attr_accessor :encrypted_password

    # Result path of the document after the operation. If this parameter is omitted then result of the operation will be saved as the source document.
    attr_accessor :dest_file_name

    # Initials of the author to use for revisions.If you set this parameter and then make some changes to the document programmatically, save the document and later open the document in MS Word you will see these changes as revisions.
    attr_accessor :revision_author

    # The date and time to use for revisions.
    attr_accessor :revision_date_time

    #
    # Initializes a new instance.
    # @param document The document.
    # @param paragraph_path The path to the paragraph in the document tree.
    # @param run Run data.
    # @param index Object index.
    # @param load_encoding Encoding that will be used to load an HTML (or TXT) document if the encoding is not specified in HTML.
    # @param password Password of protected Word document. Use the parameter to pass a password via SDK. SDK encrypts it automatically. We don't recommend to use the parameter to pass a plain password for direct call of API.
    # @param encrypted_password Password of protected Word document. Use the parameter to pass an encrypted password for direct calls of API. See SDK code for encyption details.
    # @param dest_file_name Result path of the document after the operation. If this parameter is omitted then result of the operation will be saved as the source document.
    # @param revision_author Initials of the author to use for revisions.If you set this parameter and then make some changes to the document programmatically, save the document and later open the document in MS Word you will see these changes as revisions.
    # @param revision_date_time The date and time to use for revisions.

    def initialize(document:, paragraph_path:, run:, index:, load_encoding: nil, password: nil, encrypted_password: nil, dest_file_name: nil, revision_author: nil, revision_date_time: nil)
      self.document = document
      self.paragraph_path = paragraph_path
      self.run = run
      self.index = index
      self.load_encoding = load_encoding
      self.password = password
      self.encrypted_password = encrypted_password
      self.dest_file_name = dest_file_name
      self.revision_author = revision_author
      self.revision_date_time = revision_date_time
    end

    # Creating batch part from request
    def to_batch_part(api_client, guid)
      # verify the required parameter 'document' is set
      raise ArgumentError, 'Missing the required parameter document when calling WordsApi.update_run_online' if api_client.config.client_side_validation && self.document.nil?
      # verify the required parameter 'paragraph_path' is set
      raise ArgumentError, 'Missing the required parameter paragraph_path when calling WordsApi.update_run_online' if api_client.config.client_side_validation && self.paragraph_path.nil?
      # verify the required parameter 'run' is set
      raise ArgumentError, 'Missing the required parameter run when calling WordsApi.update_run_online' if api_client.config.client_side_validation && self.run.nil?
      # verify the required parameter 'index' is set
      raise ArgumentError, 'Missing the required parameter index when calling WordsApi.update_run_online' if api_client.config.client_side_validation && self.index.nil?

      # resource path
      local_var_path = '/words/online/put/{paragraphPath}/runs/{index}'[7..-1]
      local_var_path = local_var_path.sub('{' + downcase_first_letter('ParagraphPath') + '}', self.paragraph_path.nil? ? '' : self.paragraph_path.to_s)
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Index') + '}', self.index.nil? ? '' : self.index.to_s)
      local_var_path = local_var_path.sub('//', '/')

      # query parameters
      query_params = {}
      query_params[downcase_first_letter('LoadEncoding')] = self.load_encoding unless self.load_encoding.nil?
      query_params[downcase_first_letter('Password')] = self.password unless self.password.nil?
      query_params[downcase_first_letter('EncryptedPassword')] = self.encrypted_password unless self.encrypted_password.nil?
      query_params[downcase_first_letter('DestFileName')] = self.dest_file_name unless self.dest_file_name.nil?
      query_params[downcase_first_letter('RevisionAuthor')] = self.revision_author unless self.revision_author.nil?
      query_params[downcase_first_letter('RevisionDateTime')] = self.revision_date_time unless self.revision_date_time.nil?

      if query_params
        query_params.each { |key, value| local_var_path = api_client.add_param_to_query(local_var_path, key, value) }
      end

      header_params = {}
      # header parameters
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = api_client.select_header_content_type(['multipart/form-data'])
      header_params['RequestId'] = guid

      # form parameters
      form_params = {}
      form_params[downcase_first_letter('Document')] = self.document
      form_params[downcase_first_letter('Run')] = self.run.to_body.to_json

      # http body (model)
      post_body = nil
      body = api_client.build_request_body_batch(header_params, form_params, post_body)
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
      # verify the required parameter 'document' is set
      raise ArgumentError, 'Missing the required parameter document when calling WordsApi.update_run_online' if api_client.config.client_side_validation && self.document.nil?
      # verify the required parameter 'paragraph_path' is set
      raise ArgumentError, 'Missing the required parameter paragraph_path when calling WordsApi.update_run_online' if api_client.config.client_side_validation && self.paragraph_path.nil?
      # verify the required parameter 'run' is set
      raise ArgumentError, 'Missing the required parameter run when calling WordsApi.update_run_online' if api_client.config.client_side_validation && self.run.nil?
      # verify the required parameter 'index' is set
      raise ArgumentError, 'Missing the required parameter index when calling WordsApi.update_run_online' if api_client.config.client_side_validation && self.index.nil?

      # resource path
      local_var_path = '/words/online/put/{paragraphPath}/runs/{index}'[1..-1]
      local_var_path = local_var_path.sub('{' + downcase_first_letter('ParagraphPath') + '}', self.paragraph_path.nil? ? '' : self.paragraph_path.to_s)
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Index') + '}', self.index.nil? ? '' : self.index.to_s)
      local_var_path = local_var_path.sub('//', '/')

      # query parameters
      query_params = {}
      query_params[downcase_first_letter('LoadEncoding')] = self.load_encoding unless self.load_encoding.nil?
      query_params[downcase_first_letter('Password')] = self.password unless self.password.nil?
      query_params[downcase_first_letter('EncryptedPassword')] = self.encrypted_password unless self.encrypted_password.nil?
      query_params[downcase_first_letter('DestFileName')] = self.dest_file_name unless self.dest_file_name.nil?
      query_params[downcase_first_letter('RevisionAuthor')] = self.revision_author unless self.revision_author.nil?
      query_params[downcase_first_letter('RevisionDateTime')] = self.revision_date_time unless self.revision_date_time.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = api_client.select_header_content_type(['multipart/form-data'])

      # form parameters
      form_params = {}
      form_params[downcase_first_letter('Document')] = self.document
      form_params[downcase_first_letter('Run')] = self.run.to_body.to_json

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
      'UpdateRunOnlineResponse'
    end
  end
end
