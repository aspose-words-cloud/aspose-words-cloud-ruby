# ------------------------------------------------------------------------------------
# <copyright company="Aspose" file="execute_mail_merge_online_request.rb">
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
  # Request model for execute_mail_merge_online operation.
  #
  class ExecuteMailMergeOnlineRequest
    # File with template.
    attr_accessor :template

    # File with mailmerge data.
    attr_accessor :data

    # The flag indicating whether to execute Mail Merge operation with regions.
    attr_accessor :with_regions

    # The cleanup options.
    attr_accessor :cleanup

    # The filename of the output document, that will be used when the resulting document has a dynamic field {filename}. If it is not set, the "template" will be used instead.
    attr_accessor :document_file_name

    #
    # Initializes a new instance.
    # @param template File with template.
    # @param data File with mailmerge data.
    # @param with_regions The flag indicating whether to execute Mail Merge operation with regions.
    # @param cleanup The cleanup options.
    # @param document_file_name The filename of the output document, that will be used when the resulting document has a dynamic field {filename}. If it is not set, the "template" will be used instead.

    def initialize(template:, data:, with_regions: nil, cleanup: nil, document_file_name: nil)
      self.template = template
      self.data = data
      self.with_regions = with_regions
      self.cleanup = cleanup
      self.document_file_name = document_file_name
    end

    # Creating batch part from request
    def to_batch_part(api_client)
      # verify the required parameter 'template' is set
      raise ArgumentError, 'Missing the required parameter template when calling WordsApi.execute_mail_merge_online' if api_client.config.client_side_validation && self.template.nil?
      # verify the required parameter 'data' is set
      raise ArgumentError, 'Missing the required parameter data when calling WordsApi.execute_mail_merge_online' if api_client.config.client_side_validation && self.data.nil?

      # resource path
      local_var_path = '/words/MailMerge'[7..-1]
      local_var_path = local_var_path.sub('//', '/')

      # query parameters
      query_params = {}
      query_params[downcase_first_letter('WithRegions')] = self.with_regions unless self.with_regions.nil?
      query_params[downcase_first_letter('Cleanup')] = self.cleanup unless self.cleanup.nil?
      query_params[downcase_first_letter('DocumentFileName')] = self.document_file_name unless self.document_file_name.nil?

      if query_params
        query_params.each { |key, value| local_var_path = api_client.add_param_to_query(local_var_path, key, value) }
      end

      header_params = {}
      # header parameters
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = api_client.select_header_content_type(['multipart/form-data'])

      # form parameters
      form_params = {}
      form_params[downcase_first_letter('Template')] = self.template
      form_params[downcase_first_letter('Data')] = self.data

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
      # verify the required parameter 'template' is set
      raise ArgumentError, 'Missing the required parameter template when calling WordsApi.execute_mail_merge_online' if api_client.config.client_side_validation && self.template.nil?
      # verify the required parameter 'data' is set
      raise ArgumentError, 'Missing the required parameter data when calling WordsApi.execute_mail_merge_online' if api_client.config.client_side_validation && self.data.nil?

      # resource path
      local_var_path = '/words/MailMerge'[1..-1]
      local_var_path = local_var_path.sub('//', '/')

      # query parameters
      query_params = {}
      query_params[downcase_first_letter('WithRegions')] = self.with_regions unless self.with_regions.nil?
      query_params[downcase_first_letter('Cleanup')] = self.cleanup unless self.cleanup.nil?
      query_params[downcase_first_letter('DocumentFileName')] = self.document_file_name unless self.document_file_name.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = api_client.select_header_content_type(['multipart/form-data'])

      # form parameters
      form_params = {}
      form_params[downcase_first_letter('Template')] = self.template
      form_params[downcase_first_letter('Data')] = self.data

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
      'File'
    end
  end
end
