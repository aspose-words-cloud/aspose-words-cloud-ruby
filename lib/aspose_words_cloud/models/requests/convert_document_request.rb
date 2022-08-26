# ------------------------------------------------------------------------------------
# <copyright company="Aspose" file="convert_document_request.rb">
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
  # Request model for convert_document operation.
  #
  class ConvertDocumentRequest
    # Converting document.
    attr_accessor :document

    # The format to convert.
    attr_accessor :format

    # The path to the output document on a local storage.
    attr_accessor :out_path

    # The filename of the output document, that will be used when the resulting document has a dynamic field {filename}. If it is not set, the "sourceFilename" will be used instead.
    attr_accessor :file_name_field_value

    # Original document storage.
    attr_accessor :storage

    # Folder in filestorage with custom fonts.
    attr_accessor :fonts_location

    #
    # Initializes a new instance.
    # @param document Converting document.
    # @param format The format to convert.
    # @param out_path The path to the output document on a local storage.
    # @param file_name_field_value The filename of the output document, that will be used when the resulting document has a dynamic field {filename}. If it is not set, the "sourceFilename" will be used instead.
    # @param storage Original document storage.
    # @param fonts_location Folder in filestorage with custom fonts.

    def initialize(document:, format:, out_path: nil, file_name_field_value: nil, storage: nil, fonts_location: nil)
      self.document = document
      self.format = format
      self.out_path = out_path
      self.file_name_field_value = file_name_field_value
      self.storage = storage
      self.fonts_location = fonts_location
    end

    # Creating batch part from request
    def to_batch_part(api_client, requestId, parentRequestId = nil)
      # verify the required parameter 'document' is set
      raise ArgumentError, 'Missing the required parameter document when calling WordsApi.convert_document' if api_client.config.client_side_validation && self.document.nil?
      # verify the required parameter 'format' is set
      raise ArgumentError, 'Missing the required parameter format when calling WordsApi.convert_document' if api_client.config.client_side_validation && self.format.nil?

      # resource path
      local_var_path = '/words/convert'[7..-1]
      local_var_path = local_var_path.sub('//', '/')

      # query parameters
      query_params = {}
      query_params[downcase_first_letter('Format')] = self.format
      query_params[downcase_first_letter('OutPath')] = self.out_path unless self.out_path.nil?
      query_params[downcase_first_letter('FileNameFieldValue')] = self.file_name_field_value unless self.file_name_field_value.nil?
      query_params[downcase_first_letter('Storage')] = self.storage unless self.storage.nil?
      query_params[downcase_first_letter('FontsLocation')] = self.fonts_location unless self.fonts_location.nil?

      if query_params
        query_params.each { |key, value| local_var_path = api_client.add_param_to_query(local_var_path, key, value) }
      end

      header_params = {}
      # header parameters
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = api_client.select_header_content_type(['multipart/form-data'])
      header_params['RequestId'] = requestId

      if parentRequestId != nil
        header_params['DependsOn'] = parentRequestId
      end

      # form parameters
      form_params = []
      files_content = []
      if self.document.nil?
        raise "Parameter Document is required."
      end
      unless self.document.nil?
        form_params.push({:'Name' => 'document', :'Data' => self.document, :'MimeType' =>'application/octet-stream'})
      end


      # http body (model)
      body = api_client.build_request_body_batch(header_params, form_params, files_content)
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
      raise ArgumentError, 'Missing the required parameter document when calling WordsApi.convert_document' if api_client.config.client_side_validation && self.document.nil?
      # verify the required parameter 'format' is set
      raise ArgumentError, 'Missing the required parameter format when calling WordsApi.convert_document' if api_client.config.client_side_validation && self.format.nil?

      # resource path
      local_var_path = '/words/convert'[1..-1]
      local_var_path = local_var_path.sub('//', '/')

      # query parameters
      query_params = {}
      query_params[downcase_first_letter('Format')] = self.format
      query_params[downcase_first_letter('OutPath')] = self.out_path unless self.out_path.nil?
      query_params[downcase_first_letter('FileNameFieldValue')] = self.file_name_field_value unless self.file_name_field_value.nil?
      query_params[downcase_first_letter('Storage')] = self.storage unless self.storage.nil?
      query_params[downcase_first_letter('FontsLocation')] = self.fonts_location unless self.fonts_location.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = api_client.select_header_content_type(['multipart/form-data'])

      # form parameters
      form_params = []
      files_content = []
      if self.document.nil?
        raise "Parameter Document is required."
      end
      unless self.document.nil?
        form_params.push({:'Name' => 'document', :'Data' => self.document, :'MimeType' =>'application/octet-stream'})
      end

      body = api_client.build_request_body(header_params, form_params, files_content)
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
