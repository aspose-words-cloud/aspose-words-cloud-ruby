# -----------------------------------------------------------------------------------
# <copyright company="Aspose" file="words_api.rb">
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
# -----------------------------------------------------------------------------------

require 'uri'

module AsposeWordsCloud
  #
  # Aspose.Words for Cloud API
  #
  class WordsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
      require_all '../models/requests'
      request_token
    end

    # Accepts all revisions in document.
    # 
    # @param request AcceptAllRevisionsRequest
    # @return [nil]
    def accept_all_revisions(request)
      begin
        data, _status_code, _headers = accept_all_revisions_with_http_info(request)
        rescue ApiError => e
          if e.code == 401
            request_token
            data, _status_code, _headers = accept_all_revisions_with_http_info(request)
          else
            raise
          end
      end			
      data
    end

    # Accepts all revisions in document.
    # 
    # @param request AcceptAllRevisionsRequest
    # @return [Array<(nil, Fixnum, Hash)>]
    # nil, response status code and response headers
    private def accept_all_revisions_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? AcceptAllRevisionsRequest

      @api_client.config.logger.debug 'Calling API: WordsApi.accept_all_revisions ...' if @api_client.config.debugging
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.accept_all_revisions' if @api_client.config.client_side_validation && request..nil?
      # resource path
      local_var_path = '/words/{name}/revisions/acceptAll'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request..to_s)

      # query parameters
      query_params = {}
      if local_var_path.include? downcase_first_letter('Folder')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Folder') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Folder')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('Storage')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Storage') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Storage')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('LoadEncoding')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('LoadEncoding') + '}', request..to_s)
      else
        query_params[downcase_first_letter('LoadEncoding')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('Password')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Password') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Password')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('DestFileName')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('DestFileName') + '}', request..to_s)
      else
        query_params[downcase_first_letter('DestFileName')] = request. unless request..nil?
      end

      # header parameters
      header_params = {}

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['JWT']
	  
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#accept_all_revisions\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Appends documents to original document.
    # 
    # @param request AppendDocumentRequest
    # @return [nil]
    def append_document(request)
      begin
        data, _status_code, _headers = append_document_with_http_info(request)
        rescue ApiError => e
          if e.code == 401
            request_token
            data, _status_code, _headers = append_document_with_http_info(request)
          else
            raise
          end
      end			
      data
    end

    # Appends documents to original document.
    # 
    # @param request AppendDocumentRequest
    # @return [Array<(nil, Fixnum, Hash)>]
    # nil, response status code and response headers
    private def append_document_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? AppendDocumentRequest

      @api_client.config.logger.debug 'Calling API: WordsApi.append_document ...' if @api_client.config.debugging
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.append_document' if @api_client.config.client_side_validation && request..nil?
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.append_document' if @api_client.config.client_side_validation && request..nil?
      # resource path
      local_var_path = '/words/{name}/appendDocument'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request..to_s)

      # query parameters
      query_params = {}
      if local_var_path.include? downcase_first_letter('Folder')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Folder') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Folder')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('Storage')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Storage') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Storage')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('LoadEncoding')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('LoadEncoding') + '}', request..to_s)
      else
        query_params[downcase_first_letter('LoadEncoding')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('Password')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Password') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Password')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('DestFileName')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('DestFileName') + '}', request..to_s)
      else
        query_params[downcase_first_letter('DestFileName')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('RevisionAuthor')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('RevisionAuthor') + '}', request..to_s)
      else
        query_params[downcase_first_letter('RevisionAuthor')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('RevisionDateTime')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('RevisionDateTime') + '}', request..to_s)
      else
        query_params[downcase_first_letter('RevisionDateTime')] = request. unless request..nil?
      end

      # header parameters
      header_params = {}

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(request.)
      auth_names = ['JWT']
	  
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#append_document\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Classifies raw text.
    # 
    # @param request ClassifyRequest
    # @return [nil]
    def classify(request)
      begin
        data, _status_code, _headers = classify_with_http_info(request)
        rescue ApiError => e
          if e.code == 401
            request_token
            data, _status_code, _headers = classify_with_http_info(request)
          else
            raise
          end
      end			
      data
    end

    # Classifies raw text.
    # 
    # @param request ClassifyRequest
    # @return [Array<(nil, Fixnum, Hash)>]
    # nil, response status code and response headers
    private def classify_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? ClassifyRequest

      @api_client.config.logger.debug 'Calling API: WordsApi.classify ...' if @api_client.config.debugging
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.classify' if @api_client.config.client_side_validation && request..nil?
      # resource path
      local_var_path = '/words/classify'

      # query parameters
      query_params = {}
      if local_var_path.include? downcase_first_letter('BestClassesCount')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('BestClassesCount') + '}', request..to_s)
      else
        query_params[downcase_first_letter('BestClassesCount')] = request. unless request..nil?
      end

      # header parameters
      header_params = {}

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(request.)
      auth_names = ['JWT']
	  
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#classify\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Classifies document.
    # 
    # @param request ClassifyDocumentRequest
    # @return [nil]
    def classify_document(request)
      begin
        data, _status_code, _headers = classify_document_with_http_info(request)
        rescue ApiError => e
          if e.code == 401
            request_token
            data, _status_code, _headers = classify_document_with_http_info(request)
          else
            raise
          end
      end			
      data
    end

    # Classifies document.
    # 
    # @param request ClassifyDocumentRequest
    # @return [Array<(nil, Fixnum, Hash)>]
    # nil, response status code and response headers
    private def classify_document_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? ClassifyDocumentRequest

      @api_client.config.logger.debug 'Calling API: WordsApi.classify_document ...' if @api_client.config.debugging
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.classify_document' if @api_client.config.client_side_validation && request..nil?
      # resource path
      local_var_path = '/words/{documentName}/classify'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('DocumentName') + '}', request..to_s)

      # query parameters
      query_params = {}
      if local_var_path.include? downcase_first_letter('Folder')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Folder') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Folder')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('Storage')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Storage') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Storage')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('LoadEncoding')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('LoadEncoding') + '}', request..to_s)
      else
        query_params[downcase_first_letter('LoadEncoding')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('Password')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Password') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Password')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('BestClassesCount')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('BestClassesCount') + '}', request..to_s)
      else
        query_params[downcase_first_letter('BestClassesCount')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('Taxonomy')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Taxonomy') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Taxonomy')] = request. unless request..nil?
      end

      # header parameters
      header_params = {}

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['JWT']
	  
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#classify_document\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Compares document with original document.
    # 
    # @param request CompareDocumentRequest
    # @return [nil]
    def compare_document(request)
      begin
        data, _status_code, _headers = compare_document_with_http_info(request)
        rescue ApiError => e
          if e.code == 401
            request_token
            data, _status_code, _headers = compare_document_with_http_info(request)
          else
            raise
          end
      end			
      data
    end

    # Compares document with original document.
    # 
    # @param request CompareDocumentRequest
    # @return [Array<(nil, Fixnum, Hash)>]
    # nil, response status code and response headers
    private def compare_document_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? CompareDocumentRequest

      @api_client.config.logger.debug 'Calling API: WordsApi.compare_document ...' if @api_client.config.debugging
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.compare_document' if @api_client.config.client_side_validation && request..nil?
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.compare_document' if @api_client.config.client_side_validation && request..nil?
      # resource path
      local_var_path = '/words/{name}/compareDocument'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request..to_s)

      # query parameters
      query_params = {}
      if local_var_path.include? downcase_first_letter('Folder')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Folder') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Folder')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('Storage')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Storage') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Storage')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('LoadEncoding')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('LoadEncoding') + '}', request..to_s)
      else
        query_params[downcase_first_letter('LoadEncoding')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('Password')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Password') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Password')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('DestFileName')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('DestFileName') + '}', request..to_s)
      else
        query_params[downcase_first_letter('DestFileName')] = request. unless request..nil?
      end

      # header parameters
      header_params = {}

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(request.)
      auth_names = ['JWT']
	  
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#compare_document\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Converts document from the request's content to the specified format .
    # 
    # @param request ConvertDocumentRequest
    # @return [nil]
    def convert_document(request)
      begin
        data, _status_code, _headers = convert_document_with_http_info(request)
        rescue ApiError => e
          if e.code == 401
            request_token
            data, _status_code, _headers = convert_document_with_http_info(request)
          else
            raise
          end
      end			
      data
    end

    # Converts document from the request&#39;s content to the specified format .
    # 
    # @param request ConvertDocumentRequest
    # @return [Array<(nil, Fixnum, Hash)>]
    # nil, response status code and response headers
    private def convert_document_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? ConvertDocumentRequest

      @api_client.config.logger.debug 'Calling API: WordsApi.convert_document ...' if @api_client.config.debugging
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.convert_document' if @api_client.config.client_side_validation && request..nil?
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.convert_document' if @api_client.config.client_side_validation && request..nil?
      # resource path
      local_var_path = '/words/convert'

      # query parameters
      query_params = {}
      query_params[downcase_first_letter('Format')] = request.

      if local_var_path.include? downcase_first_letter('Storage')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Storage') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Storage')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('OutPath')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('OutPath') + '}', request..to_s)
      else
        query_params[downcase_first_letter('OutPath')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('FileNameFieldValue')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('FileNameFieldValue') + '}', request..to_s)
      else
        query_params[downcase_first_letter('FileNameFieldValue')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('FontsLocation')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('FontsLocation') + '}', request..to_s)
      else
        query_params[downcase_first_letter('FontsLocation')] = request. unless request..nil?
      end

      # header parameters
      header_params = {}

      # form parameters
      form_params = {}
      form_params[downcase_first_letter('Document')] = request.

      # http body (model)
      post_body = nil
      auth_names = ['JWT']
	  
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#convert_document\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Copy file
    # 
    # @param request CopyFileRequest
    # @return [nil]
    def copy_file(request)
      begin
        data, _status_code, _headers = copy_file_with_http_info(request)
        rescue ApiError => e
          if e.code == 401
            request_token
            data, _status_code, _headers = copy_file_with_http_info(request)
          else
            raise
          end
      end			
      nil
    end

    # Copy file
    # 
    # @param request CopyFileRequest
    # @return [Array<(nil, Fixnum, Hash)>]
    # nil, response status code and response headers
    private def copy_file_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? CopyFileRequest

      @api_client.config.logger.debug 'Calling API: WordsApi.copy_file ...' if @api_client.config.debugging
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.copy_file' if @api_client.config.client_side_validation && request..nil?
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.copy_file' if @api_client.config.client_side_validation && request..nil?
      # resource path
      local_var_path = '/words/storage/file/copy/{srcPath}'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('SrcPath') + '}', request..to_s)

      # query parameters
      query_params = {}
      query_params[downcase_first_letter('DestPath')] = request.

      if local_var_path.include? downcase_first_letter('SrcStorageName')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('SrcStorageName') + '}', request..to_s)
      else
        query_params[downcase_first_letter('SrcStorageName')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('DestStorageName')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('DestStorageName') + '}', request..to_s)
      else
        query_params[downcase_first_letter('DestStorageName')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('VersionId')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('VersionId') + '}', request..to_s)
      else
        query_params[downcase_first_letter('VersionId')] = request. unless request..nil?
      end

      # header parameters
      header_params = {}

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['JWT']
	  
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#copy_file\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Copy folder
    # 
    # @param request CopyFolderRequest
    # @return [nil]
    def copy_folder(request)
      begin
        data, _status_code, _headers = copy_folder_with_http_info(request)
        rescue ApiError => e
          if e.code == 401
            request_token
            data, _status_code, _headers = copy_folder_with_http_info(request)
          else
            raise
          end
      end			
      nil
    end

    # Copy folder
    # 
    # @param request CopyFolderRequest
    # @return [Array<(nil, Fixnum, Hash)>]
    # nil, response status code and response headers
    private def copy_folder_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? CopyFolderRequest

      @api_client.config.logger.debug 'Calling API: WordsApi.copy_folder ...' if @api_client.config.debugging
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.copy_folder' if @api_client.config.client_side_validation && request..nil?
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.copy_folder' if @api_client.config.client_side_validation && request..nil?
      # resource path
      local_var_path = '/words/storage/folder/copy/{srcPath}'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('SrcPath') + '}', request..to_s)

      # query parameters
      query_params = {}
      query_params[downcase_first_letter('DestPath')] = request.

      if local_var_path.include? downcase_first_letter('SrcStorageName')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('SrcStorageName') + '}', request..to_s)
      else
        query_params[downcase_first_letter('SrcStorageName')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('DestStorageName')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('DestStorageName') + '}', request..to_s)
      else
        query_params[downcase_first_letter('DestStorageName')] = request. unless request..nil?
      end

      # header parameters
      header_params = {}

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['JWT']
	  
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#copy_folder\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Creates new document. Document is created with format which is recognized from file extensions. Supported extensions: \".doc\", \".docx\", \".docm\", \".dot\", \".dotm\", \".dotx\", \".flatopc\", \".fopc\", \".flatopc_macro\", \".fopc_macro\", \".flatopc_template\", \".fopc_template\", \".flatopc_template_macro\", \".fopc_template_macro\", \".wordml\", \".wml\", \".rtf\".
    # 
    # @param request CreateDocumentRequest
    # @return [nil]
    def create_document(request)
      begin
        data, _status_code, _headers = create_document_with_http_info(request)
        rescue ApiError => e
          if e.code == 401
            request_token
            data, _status_code, _headers = create_document_with_http_info(request)
          else
            raise
          end
      end			
      data
    end

    # Creates new document. Document is created with format which is recognized from file extensions. Supported extensions: \&quot;.doc\&quot;, \&quot;.docx\&quot;, \&quot;.docm\&quot;, \&quot;.dot\&quot;, \&quot;.dotm\&quot;, \&quot;.dotx\&quot;, \&quot;.flatopc\&quot;, \&quot;.fopc\&quot;, \&quot;.flatopc_macro\&quot;, \&quot;.fopc_macro\&quot;, \&quot;.flatopc_template\&quot;, \&quot;.fopc_template\&quot;, \&quot;.flatopc_template_macro\&quot;, \&quot;.fopc_template_macro\&quot;, \&quot;.wordml\&quot;, \&quot;.wml\&quot;, \&quot;.rtf\&quot;.
    # 
    # @param request CreateDocumentRequest
    # @return [Array<(nil, Fixnum, Hash)>]
    # nil, response status code and response headers
    private def create_document_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? CreateDocumentRequest

      @api_client.config.logger.debug 'Calling API: WordsApi.create_document ...' if @api_client.config.debugging
      # resource path
      local_var_path = '/words/create'

      # query parameters
      query_params = {}
      if local_var_path.include? downcase_first_letter('Storage')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Storage') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Storage')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('FileName')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('FileName') + '}', request..to_s)
      else
        query_params[downcase_first_letter('FileName')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('Folder')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Folder') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Folder')] = request. unless request..nil?
      end

      # header parameters
      header_params = {}

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['JWT']
	  
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#create_document\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Create the folder
    # 
    # @param request CreateFolderRequest
    # @return [nil]
    def create_folder(request)
      begin
        data, _status_code, _headers = create_folder_with_http_info(request)
        rescue ApiError => e
          if e.code == 401
            request_token
            data, _status_code, _headers = create_folder_with_http_info(request)
          else
            raise
          end
      end			
      nil
    end

    # Create the folder
    # 
    # @param request CreateFolderRequest
    # @return [Array<(nil, Fixnum, Hash)>]
    # nil, response status code and response headers
    private def create_folder_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? CreateFolderRequest

      @api_client.config.logger.debug 'Calling API: WordsApi.create_folder ...' if @api_client.config.debugging
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.create_folder' if @api_client.config.client_side_validation && request..nil?
      # resource path
      local_var_path = '/words/storage/folder/{path}'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Path') + '}', request..to_s)

      # query parameters
      query_params = {}
      if local_var_path.include? downcase_first_letter('StorageName')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('StorageName') + '}', request..to_s)
      else
        query_params[downcase_first_letter('StorageName')] = request. unless request..nil?
      end

      # header parameters
      header_params = {}

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['JWT']
	  
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#create_folder\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Adds new or update existing document property.
    # 
    # @param request CreateOrUpdateDocumentPropertyRequest
    # @return [nil]
    def create_or_update_document_property(request)
      begin
        data, _status_code, _headers = create_or_update_document_property_with_http_info(request)
        rescue ApiError => e
          if e.code == 401
            request_token
            data, _status_code, _headers = create_or_update_document_property_with_http_info(request)
          else
            raise
          end
      end			
      data
    end

    # Adds new or update existing document property.
    # 
    # @param request CreateOrUpdateDocumentPropertyRequest
    # @return [Array<(nil, Fixnum, Hash)>]
    # nil, response status code and response headers
    private def create_or_update_document_property_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? CreateOrUpdateDocumentPropertyRequest

      @api_client.config.logger.debug 'Calling API: WordsApi.create_or_update_document_property ...' if @api_client.config.debugging
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.create_or_update_document_property' if @api_client.config.client_side_validation && request..nil?
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.create_or_update_document_property' if @api_client.config.client_side_validation && request..nil?
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.create_or_update_document_property' if @api_client.config.client_side_validation && request..nil?
      # resource path
      local_var_path = '/words/{name}/documentProperties/{propertyName}'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request..to_s)
      local_var_path = local_var_path.sub('{' + downcase_first_letter('PropertyName') + '}', request..to_s)

      # query parameters
      query_params = {}
      if local_var_path.include? downcase_first_letter('Folder')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Folder') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Folder')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('Storage')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Storage') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Storage')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('LoadEncoding')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('LoadEncoding') + '}', request..to_s)
      else
        query_params[downcase_first_letter('LoadEncoding')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('Password')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Password') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Password')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('DestFileName')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('DestFileName') + '}', request..to_s)
      else
        query_params[downcase_first_letter('DestFileName')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('RevisionAuthor')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('RevisionAuthor') + '}', request..to_s)
      else
        query_params[downcase_first_letter('RevisionAuthor')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('RevisionDateTime')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('RevisionDateTime') + '}', request..to_s)
      else
        query_params[downcase_first_letter('RevisionDateTime')] = request. unless request..nil?
      end

      # header parameters
      header_params = {}

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(request.)
      auth_names = ['JWT']
	  
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#create_or_update_document_property\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Resets border properties to default values.             
    # 'nodePath' should refer to paragraph, cell or row.
    # @param request DeleteBorderRequest
    # @return [nil]
    def delete_border(request)
      begin
        data, _status_code, _headers = delete_border_with_http_info(request)
        rescue ApiError => e
          if e.code == 401
            request_token
            data, _status_code, _headers = delete_border_with_http_info(request)
          else
            raise
          end
      end			
      data
    end

    # Resets border properties to default values.             
    # &#39;nodePath&#39; should refer to paragraph, cell or row.
    # @param request DeleteBorderRequest
    # @return [Array<(nil, Fixnum, Hash)>]
    # nil, response status code and response headers
    private def delete_border_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? DeleteBorderRequest

      @api_client.config.logger.debug 'Calling API: WordsApi.delete_border ...' if @api_client.config.debugging
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.delete_border' if @api_client.config.client_side_validation && request..nil?
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.delete_border' if @api_client.config.client_side_validation && request..nil?
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.delete_border' if @api_client.config.client_side_validation && request..nil?
      # resource path
      local_var_path = '/words/{name}/{nodePath}/borders/{borderType}'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request..to_s)
      local_var_path = local_var_path.sub('{' + downcase_first_letter('NodePath') + '}', request..to_s)
      local_var_path = local_var_path.sub('{' + downcase_first_letter('BorderType') + '}', request..to_s)

      # query parameters
      query_params = {}
      if local_var_path.include? downcase_first_letter('Folder')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Folder') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Folder')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('Storage')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Storage') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Storage')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('LoadEncoding')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('LoadEncoding') + '}', request..to_s)
      else
        query_params[downcase_first_letter('LoadEncoding')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('Password')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Password') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Password')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('DestFileName')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('DestFileName') + '}', request..to_s)
      else
        query_params[downcase_first_letter('DestFileName')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('RevisionAuthor')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('RevisionAuthor') + '}', request..to_s)
      else
        query_params[downcase_first_letter('RevisionAuthor')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('RevisionDateTime')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('RevisionDateTime') + '}', request..to_s)
      else
        query_params[downcase_first_letter('RevisionDateTime')] = request. unless request..nil?
      end

      # header parameters
      header_params = {}

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['JWT']
	  
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#delete_border\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Resets borders properties to default values.             
    # 'nodePath' should refer to paragraph, cell or row.
    # @param request DeleteBordersRequest
    # @return [nil]
    def delete_borders(request)
      begin
        data, _status_code, _headers = delete_borders_with_http_info(request)
        rescue ApiError => e
          if e.code == 401
            request_token
            data, _status_code, _headers = delete_borders_with_http_info(request)
          else
            raise
          end
      end			
      data
    end

    # Resets borders properties to default values.             
    # &#39;nodePath&#39; should refer to paragraph, cell or row.
    # @param request DeleteBordersRequest
    # @return [Array<(nil, Fixnum, Hash)>]
    # nil, response status code and response headers
    private def delete_borders_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? DeleteBordersRequest

      @api_client.config.logger.debug 'Calling API: WordsApi.delete_borders ...' if @api_client.config.debugging
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.delete_borders' if @api_client.config.client_side_validation && request..nil?
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.delete_borders' if @api_client.config.client_side_validation && request..nil?
      # resource path
      local_var_path = '/words/{name}/{nodePath}/borders'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request..to_s)
      local_var_path = local_var_path.sub('{' + downcase_first_letter('NodePath') + '}', request..to_s)

      # query parameters
      query_params = {}
      if local_var_path.include? downcase_first_letter('Folder')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Folder') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Folder')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('Storage')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Storage') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Storage')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('LoadEncoding')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('LoadEncoding') + '}', request..to_s)
      else
        query_params[downcase_first_letter('LoadEncoding')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('Password')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Password') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Password')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('DestFileName')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('DestFileName') + '}', request..to_s)
      else
        query_params[downcase_first_letter('DestFileName')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('RevisionAuthor')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('RevisionAuthor') + '}', request..to_s)
      else
        query_params[downcase_first_letter('RevisionAuthor')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('RevisionDateTime')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('RevisionDateTime') + '}', request..to_s)
      else
        query_params[downcase_first_letter('RevisionDateTime')] = request. unless request..nil?
      end

      # header parameters
      header_params = {}

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['JWT']
	  
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#delete_borders\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Removes comment from document.
    # 
    # @param request DeleteCommentRequest
    # @return [nil]
    def delete_comment(request)
      begin
        data, _status_code, _headers = delete_comment_with_http_info(request)
        rescue ApiError => e
          if e.code == 401
            request_token
            data, _status_code, _headers = delete_comment_with_http_info(request)
          else
            raise
          end
      end			
      nil
    end

    # Removes comment from document.
    # 
    # @param request DeleteCommentRequest
    # @return [Array<(nil, Fixnum, Hash)>]
    # nil, response status code and response headers
    private def delete_comment_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? DeleteCommentRequest

      @api_client.config.logger.debug 'Calling API: WordsApi.delete_comment ...' if @api_client.config.debugging
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.delete_comment' if @api_client.config.client_side_validation && request..nil?
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.delete_comment' if @api_client.config.client_side_validation && request..nil?
      # resource path
      local_var_path = '/words/{name}/comments/{commentIndex}'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request..to_s)
      local_var_path = local_var_path.sub('{' + downcase_first_letter('CommentIndex') + '}', request..to_s)

      # query parameters
      query_params = {}
      if local_var_path.include? downcase_first_letter('Folder')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Folder') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Folder')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('Storage')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Storage') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Storage')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('LoadEncoding')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('LoadEncoding') + '}', request..to_s)
      else
        query_params[downcase_first_letter('LoadEncoding')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('Password')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Password') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Password')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('DestFileName')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('DestFileName') + '}', request..to_s)
      else
        query_params[downcase_first_letter('DestFileName')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('RevisionAuthor')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('RevisionAuthor') + '}', request..to_s)
      else
        query_params[downcase_first_letter('RevisionAuthor')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('RevisionDateTime')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('RevisionDateTime') + '}', request..to_s)
      else
        query_params[downcase_first_letter('RevisionDateTime')] = request. unless request..nil?
      end

      # header parameters
      header_params = {}

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['JWT']
	  
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#delete_comment\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Deletes document property.
    # 
    # @param request DeleteDocumentPropertyRequest
    # @return [nil]
    def delete_document_property(request)
      begin
        data, _status_code, _headers = delete_document_property_with_http_info(request)
        rescue ApiError => e
          if e.code == 401
            request_token
            data, _status_code, _headers = delete_document_property_with_http_info(request)
          else
            raise
          end
      end			
      nil
    end

    # Deletes document property.
    # 
    # @param request DeleteDocumentPropertyRequest
    # @return [Array<(nil, Fixnum, Hash)>]
    # nil, response status code and response headers
    private def delete_document_property_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? DeleteDocumentPropertyRequest

      @api_client.config.logger.debug 'Calling API: WordsApi.delete_document_property ...' if @api_client.config.debugging
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.delete_document_property' if @api_client.config.client_side_validation && request..nil?
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.delete_document_property' if @api_client.config.client_side_validation && request..nil?
      # resource path
      local_var_path = '/words/{name}/documentProperties/{propertyName}'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request..to_s)
      local_var_path = local_var_path.sub('{' + downcase_first_letter('PropertyName') + '}', request..to_s)

      # query parameters
      query_params = {}
      if local_var_path.include? downcase_first_letter('Folder')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Folder') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Folder')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('Storage')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Storage') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Storage')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('LoadEncoding')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('LoadEncoding') + '}', request..to_s)
      else
        query_params[downcase_first_letter('LoadEncoding')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('Password')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Password') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Password')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('DestFileName')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('DestFileName') + '}', request..to_s)
      else
        query_params[downcase_first_letter('DestFileName')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('RevisionAuthor')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('RevisionAuthor') + '}', request..to_s)
      else
        query_params[downcase_first_letter('RevisionAuthor')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('RevisionDateTime')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('RevisionDateTime') + '}', request..to_s)
      else
        query_params[downcase_first_letter('RevisionDateTime')] = request. unless request..nil?
      end

      # header parameters
      header_params = {}

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['JWT']
	  
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#delete_document_property\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Removes drawing object from document.
    # 
    # @param request DeleteDrawingObjectRequest
    # @return [nil]
    def delete_drawing_object(request)
      begin
        data, _status_code, _headers = delete_drawing_object_with_http_info(request)
        rescue ApiError => e
          if e.code == 401
            request_token
            data, _status_code, _headers = delete_drawing_object_with_http_info(request)
          else
            raise
          end
      end			
      nil
    end

    # Removes drawing object from document.
    # 
    # @param request DeleteDrawingObjectRequest
    # @return [Array<(nil, Fixnum, Hash)>]
    # nil, response status code and response headers
    private def delete_drawing_object_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? DeleteDrawingObjectRequest

      @api_client.config.logger.debug 'Calling API: WordsApi.delete_drawing_object ...' if @api_client.config.debugging
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.delete_drawing_object' if @api_client.config.client_side_validation && request..nil?
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.delete_drawing_object' if @api_client.config.client_side_validation && request..nil?
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.delete_drawing_object' if @api_client.config.client_side_validation && request..nil?
      # resource path
      local_var_path = '/words/{name}/{nodePath}/drawingObjects/{index}'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request..to_s)
      local_var_path = local_var_path.sub('{' + downcase_first_letter('NodePath') + '}', request..to_s)
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Index') + '}', request..to_s)

      # query parameters
      query_params = {}
      if local_var_path.include? downcase_first_letter('Folder')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Folder') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Folder')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('Storage')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Storage') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Storage')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('LoadEncoding')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('LoadEncoding') + '}', request..to_s)
      else
        query_params[downcase_first_letter('LoadEncoding')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('Password')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Password') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Password')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('DestFileName')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('DestFileName') + '}', request..to_s)
      else
        query_params[downcase_first_letter('DestFileName')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('RevisionAuthor')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('RevisionAuthor') + '}', request..to_s)
      else
        query_params[downcase_first_letter('RevisionAuthor')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('RevisionDateTime')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('RevisionDateTime') + '}', request..to_s)
      else
        query_params[downcase_first_letter('RevisionDateTime')] = request. unless request..nil?
      end

      # header parameters
      header_params = {}

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['JWT']
	  
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#delete_drawing_object\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Removes drawing object from document.
    # 
    # @param request DeleteDrawingObjectWithoutNodePathRequest
    # @return [nil]
    def delete_drawing_object_without_node_path(request)
      begin
        data, _status_code, _headers = delete_drawing_object_without_node_path_with_http_info(request)
        rescue ApiError => e
          if e.code == 401
            request_token
            data, _status_code, _headers = delete_drawing_object_without_node_path_with_http_info(request)
          else
            raise
          end
      end			
      nil
    end

    # Removes drawing object from document.
    # 
    # @param request DeleteDrawingObjectWithoutNodePathRequest
    # @return [Array<(nil, Fixnum, Hash)>]
    # nil, response status code and response headers
    private def delete_drawing_object_without_node_path_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? DeleteDrawingObjectWithoutNodePathRequest

      @api_client.config.logger.debug 'Calling API: WordsApi.delete_drawing_object_without_node_path ...' if @api_client.config.debugging
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.delete_drawing_object_without_node_path' if @api_client.config.client_side_validation && request..nil?
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.delete_drawing_object_without_node_path' if @api_client.config.client_side_validation && request..nil?
      # resource path
      local_var_path = '/words/{name}/drawingObjects/{index}'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request..to_s)
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Index') + '}', request..to_s)

      # query parameters
      query_params = {}
      if local_var_path.include? downcase_first_letter('Folder')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Folder') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Folder')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('Storage')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Storage') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Storage')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('LoadEncoding')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('LoadEncoding') + '}', request..to_s)
      else
        query_params[downcase_first_letter('LoadEncoding')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('Password')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Password') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Password')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('DestFileName')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('DestFileName') + '}', request..to_s)
      else
        query_params[downcase_first_letter('DestFileName')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('RevisionAuthor')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('RevisionAuthor') + '}', request..to_s)
      else
        query_params[downcase_first_letter('RevisionAuthor')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('RevisionDateTime')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('RevisionDateTime') + '}', request..to_s)
      else
        query_params[downcase_first_letter('RevisionDateTime')] = request. unless request..nil?
      end

      # header parameters
      header_params = {}

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['JWT']
	  
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#delete_drawing_object_without_node_path\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Deletes field from document.
    # 
    # @param request DeleteFieldRequest
    # @return [nil]
    def delete_field(request)
      begin
        data, _status_code, _headers = delete_field_with_http_info(request)
        rescue ApiError => e
          if e.code == 401
            request_token
            data, _status_code, _headers = delete_field_with_http_info(request)
          else
            raise
          end
      end			
      nil
    end

    # Deletes field from document.
    # 
    # @param request DeleteFieldRequest
    # @return [Array<(nil, Fixnum, Hash)>]
    # nil, response status code and response headers
    private def delete_field_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? DeleteFieldRequest

      @api_client.config.logger.debug 'Calling API: WordsApi.delete_field ...' if @api_client.config.debugging
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.delete_field' if @api_client.config.client_side_validation && request..nil?
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.delete_field' if @api_client.config.client_side_validation && request..nil?
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.delete_field' if @api_client.config.client_side_validation && request..nil?
      # resource path
      local_var_path = '/words/{name}/{nodePath}/fields/{index}'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request..to_s)
      local_var_path = local_var_path.sub('{' + downcase_first_letter('NodePath') + '}', request..to_s)
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Index') + '}', request..to_s)

      # query parameters
      query_params = {}
      if local_var_path.include? downcase_first_letter('Folder')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Folder') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Folder')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('Storage')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Storage') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Storage')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('LoadEncoding')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('LoadEncoding') + '}', request..to_s)
      else
        query_params[downcase_first_letter('LoadEncoding')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('Password')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Password') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Password')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('DestFileName')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('DestFileName') + '}', request..to_s)
      else
        query_params[downcase_first_letter('DestFileName')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('RevisionAuthor')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('RevisionAuthor') + '}', request..to_s)
      else
        query_params[downcase_first_letter('RevisionAuthor')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('RevisionDateTime')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('RevisionDateTime') + '}', request..to_s)
      else
        query_params[downcase_first_letter('RevisionDateTime')] = request. unless request..nil?
      end

      # header parameters
      header_params = {}

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['JWT']
	  
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#delete_field\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Deletes field from document.
    # 
    # @param request DeleteFieldWithoutNodePathRequest
    # @return [nil]
    def delete_field_without_node_path(request)
      begin
        data, _status_code, _headers = delete_field_without_node_path_with_http_info(request)
        rescue ApiError => e
          if e.code == 401
            request_token
            data, _status_code, _headers = delete_field_without_node_path_with_http_info(request)
          else
            raise
          end
      end			
      nil
    end

    # Deletes field from document.
    # 
    # @param request DeleteFieldWithoutNodePathRequest
    # @return [Array<(nil, Fixnum, Hash)>]
    # nil, response status code and response headers
    private def delete_field_without_node_path_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? DeleteFieldWithoutNodePathRequest

      @api_client.config.logger.debug 'Calling API: WordsApi.delete_field_without_node_path ...' if @api_client.config.debugging
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.delete_field_without_node_path' if @api_client.config.client_side_validation && request..nil?
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.delete_field_without_node_path' if @api_client.config.client_side_validation && request..nil?
      # resource path
      local_var_path = '/words/{name}/fields/{index}'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request..to_s)
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Index') + '}', request..to_s)

      # query parameters
      query_params = {}
      if local_var_path.include? downcase_first_letter('Folder')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Folder') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Folder')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('Storage')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Storage') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Storage')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('LoadEncoding')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('LoadEncoding') + '}', request..to_s)
      else
        query_params[downcase_first_letter('LoadEncoding')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('Password')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Password') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Password')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('DestFileName')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('DestFileName') + '}', request..to_s)
      else
        query_params[downcase_first_letter('DestFileName')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('RevisionAuthor')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('RevisionAuthor') + '}', request..to_s)
      else
        query_params[downcase_first_letter('RevisionAuthor')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('RevisionDateTime')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('RevisionDateTime') + '}', request..to_s)
      else
        query_params[downcase_first_letter('RevisionDateTime')] = request. unless request..nil?
      end

      # header parameters
      header_params = {}

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['JWT']
	  
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#delete_field_without_node_path\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Removes fields from section paragraph.
    # 
    # @param request DeleteFieldsRequest
    # @return [nil]
    def delete_fields(request)
      begin
        data, _status_code, _headers = delete_fields_with_http_info(request)
        rescue ApiError => e
          if e.code == 401
            request_token
            data, _status_code, _headers = delete_fields_with_http_info(request)
          else
            raise
          end
      end			
      nil
    end

    # Removes fields from section paragraph.
    # 
    # @param request DeleteFieldsRequest
    # @return [Array<(nil, Fixnum, Hash)>]
    # nil, response status code and response headers
    private def delete_fields_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? DeleteFieldsRequest

      @api_client.config.logger.debug 'Calling API: WordsApi.delete_fields ...' if @api_client.config.debugging
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.delete_fields' if @api_client.config.client_side_validation && request..nil?
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.delete_fields' if @api_client.config.client_side_validation && request..nil?
      # resource path
      local_var_path = '/words/{name}/{nodePath}/fields'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request..to_s)
      local_var_path = local_var_path.sub('{' + downcase_first_letter('NodePath') + '}', request..to_s)

      # query parameters
      query_params = {}
      if local_var_path.include? downcase_first_letter('Folder')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Folder') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Folder')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('Storage')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Storage') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Storage')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('LoadEncoding')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('LoadEncoding') + '}', request..to_s)
      else
        query_params[downcase_first_letter('LoadEncoding')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('Password')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Password') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Password')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('DestFileName')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('DestFileName') + '}', request..to_s)
      else
        query_params[downcase_first_letter('DestFileName')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('RevisionAuthor')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('RevisionAuthor') + '}', request..to_s)
      else
        query_params[downcase_first_letter('RevisionAuthor')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('RevisionDateTime')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('RevisionDateTime') + '}', request..to_s)
      else
        query_params[downcase_first_letter('RevisionDateTime')] = request. unless request..nil?
      end

      # header parameters
      header_params = {}

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['JWT']
	  
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#delete_fields\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Removes fields from section paragraph.
    # 
    # @param request DeleteFieldsWithoutNodePathRequest
    # @return [nil]
    def delete_fields_without_node_path(request)
      begin
        data, _status_code, _headers = delete_fields_without_node_path_with_http_info(request)
        rescue ApiError => e
          if e.code == 401
            request_token
            data, _status_code, _headers = delete_fields_without_node_path_with_http_info(request)
          else
            raise
          end
      end			
      nil
    end

    # Removes fields from section paragraph.
    # 
    # @param request DeleteFieldsWithoutNodePathRequest
    # @return [Array<(nil, Fixnum, Hash)>]
    # nil, response status code and response headers
    private def delete_fields_without_node_path_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? DeleteFieldsWithoutNodePathRequest

      @api_client.config.logger.debug 'Calling API: WordsApi.delete_fields_without_node_path ...' if @api_client.config.debugging
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.delete_fields_without_node_path' if @api_client.config.client_side_validation && request..nil?
      # resource path
      local_var_path = '/words/{name}/fields'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request..to_s)

      # query parameters
      query_params = {}
      if local_var_path.include? downcase_first_letter('Folder')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Folder') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Folder')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('Storage')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Storage') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Storage')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('LoadEncoding')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('LoadEncoding') + '}', request..to_s)
      else
        query_params[downcase_first_letter('LoadEncoding')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('Password')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Password') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Password')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('DestFileName')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('DestFileName') + '}', request..to_s)
      else
        query_params[downcase_first_letter('DestFileName')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('RevisionAuthor')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('RevisionAuthor') + '}', request..to_s)
      else
        query_params[downcase_first_letter('RevisionAuthor')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('RevisionDateTime')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('RevisionDateTime') + '}', request..to_s)
      else
        query_params[downcase_first_letter('RevisionDateTime')] = request. unless request..nil?
      end

      # header parameters
      header_params = {}

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['JWT']
	  
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#delete_fields_without_node_path\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Delete file
    # 
    # @param request DeleteFileRequest
    # @return [nil]
    def delete_file(request)
      begin
        data, _status_code, _headers = delete_file_with_http_info(request)
        rescue ApiError => e
          if e.code == 401
            request_token
            data, _status_code, _headers = delete_file_with_http_info(request)
          else
            raise
          end
      end			
      nil
    end

    # Delete file
    # 
    # @param request DeleteFileRequest
    # @return [Array<(nil, Fixnum, Hash)>]
    # nil, response status code and response headers
    private def delete_file_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? DeleteFileRequest

      @api_client.config.logger.debug 'Calling API: WordsApi.delete_file ...' if @api_client.config.debugging
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.delete_file' if @api_client.config.client_side_validation && request..nil?
      # resource path
      local_var_path = '/words/storage/file/{path}'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Path') + '}', request..to_s)

      # query parameters
      query_params = {}
      if local_var_path.include? downcase_first_letter('StorageName')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('StorageName') + '}', request..to_s)
      else
        query_params[downcase_first_letter('StorageName')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('VersionId')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('VersionId') + '}', request..to_s)
      else
        query_params[downcase_first_letter('VersionId')] = request. unless request..nil?
      end

      # header parameters
      header_params = {}

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['JWT']
	  
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#delete_file\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Delete folder
    # 
    # @param request DeleteFolderRequest
    # @return [nil]
    def delete_folder(request)
      begin
        data, _status_code, _headers = delete_folder_with_http_info(request)
        rescue ApiError => e
          if e.code == 401
            request_token
            data, _status_code, _headers = delete_folder_with_http_info(request)
          else
            raise
          end
      end			
      nil
    end

    # Delete folder
    # 
    # @param request DeleteFolderRequest
    # @return [Array<(nil, Fixnum, Hash)>]
    # nil, response status code and response headers
    private def delete_folder_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? DeleteFolderRequest

      @api_client.config.logger.debug 'Calling API: WordsApi.delete_folder ...' if @api_client.config.debugging
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.delete_folder' if @api_client.config.client_side_validation && request..nil?
      # resource path
      local_var_path = '/words/storage/folder/{path}'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Path') + '}', request..to_s)

      # query parameters
      query_params = {}
      if local_var_path.include? downcase_first_letter('StorageName')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('StorageName') + '}', request..to_s)
      else
        query_params[downcase_first_letter('StorageName')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('Recursive')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Recursive') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Recursive')] = request. unless request..nil?
      end

      # header parameters
      header_params = {}

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['JWT']
	  
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#delete_folder\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Removes footnote from document.
    # 
    # @param request DeleteFootnoteRequest
    # @return [nil]
    def delete_footnote(request)
      begin
        data, _status_code, _headers = delete_footnote_with_http_info(request)
        rescue ApiError => e
          if e.code == 401
            request_token
            data, _status_code, _headers = delete_footnote_with_http_info(request)
          else
            raise
          end
      end			
      nil
    end

    # Removes footnote from document.
    # 
    # @param request DeleteFootnoteRequest
    # @return [Array<(nil, Fixnum, Hash)>]
    # nil, response status code and response headers
    private def delete_footnote_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? DeleteFootnoteRequest

      @api_client.config.logger.debug 'Calling API: WordsApi.delete_footnote ...' if @api_client.config.debugging
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.delete_footnote' if @api_client.config.client_side_validation && request..nil?
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.delete_footnote' if @api_client.config.client_side_validation && request..nil?
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.delete_footnote' if @api_client.config.client_side_validation && request..nil?
      # resource path
      local_var_path = '/words/{name}/{nodePath}/footnotes/{index}'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request..to_s)
      local_var_path = local_var_path.sub('{' + downcase_first_letter('NodePath') + '}', request..to_s)
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Index') + '}', request..to_s)

      # query parameters
      query_params = {}
      if local_var_path.include? downcase_first_letter('Folder')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Folder') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Folder')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('Storage')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Storage') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Storage')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('LoadEncoding')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('LoadEncoding') + '}', request..to_s)
      else
        query_params[downcase_first_letter('LoadEncoding')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('Password')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Password') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Password')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('DestFileName')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('DestFileName') + '}', request..to_s)
      else
        query_params[downcase_first_letter('DestFileName')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('RevisionAuthor')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('RevisionAuthor') + '}', request..to_s)
      else
        query_params[downcase_first_letter('RevisionAuthor')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('RevisionDateTime')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('RevisionDateTime') + '}', request..to_s)
      else
        query_params[downcase_first_letter('RevisionDateTime')] = request. unless request..nil?
      end

      # header parameters
      header_params = {}

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['JWT']
	  
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#delete_footnote\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Removes footnote from document.
    # 
    # @param request DeleteFootnoteWithoutNodePathRequest
    # @return [nil]
    def delete_footnote_without_node_path(request)
      begin
        data, _status_code, _headers = delete_footnote_without_node_path_with_http_info(request)
        rescue ApiError => e
          if e.code == 401
            request_token
            data, _status_code, _headers = delete_footnote_without_node_path_with_http_info(request)
          else
            raise
          end
      end			
      nil
    end

    # Removes footnote from document.
    # 
    # @param request DeleteFootnoteWithoutNodePathRequest
    # @return [Array<(nil, Fixnum, Hash)>]
    # nil, response status code and response headers
    private def delete_footnote_without_node_path_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? DeleteFootnoteWithoutNodePathRequest

      @api_client.config.logger.debug 'Calling API: WordsApi.delete_footnote_without_node_path ...' if @api_client.config.debugging
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.delete_footnote_without_node_path' if @api_client.config.client_side_validation && request..nil?
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.delete_footnote_without_node_path' if @api_client.config.client_side_validation && request..nil?
      # resource path
      local_var_path = '/words/{name}/footnotes/{index}'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request..to_s)
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Index') + '}', request..to_s)

      # query parameters
      query_params = {}
      if local_var_path.include? downcase_first_letter('Folder')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Folder') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Folder')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('Storage')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Storage') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Storage')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('LoadEncoding')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('LoadEncoding') + '}', request..to_s)
      else
        query_params[downcase_first_letter('LoadEncoding')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('Password')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Password') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Password')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('DestFileName')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('DestFileName') + '}', request..to_s)
      else
        query_params[downcase_first_letter('DestFileName')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('RevisionAuthor')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('RevisionAuthor') + '}', request..to_s)
      else
        query_params[downcase_first_letter('RevisionAuthor')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('RevisionDateTime')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('RevisionDateTime') + '}', request..to_s)
      else
        query_params[downcase_first_letter('RevisionDateTime')] = request. unless request..nil?
      end

      # header parameters
      header_params = {}

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['JWT']
	  
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#delete_footnote_without_node_path\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Removes form field from document.
    # 
    # @param request DeleteFormFieldRequest
    # @return [nil]
    def delete_form_field(request)
      begin
        data, _status_code, _headers = delete_form_field_with_http_info(request)
        rescue ApiError => e
          if e.code == 401
            request_token
            data, _status_code, _headers = delete_form_field_with_http_info(request)
          else
            raise
          end
      end			
      nil
    end

    # Removes form field from document.
    # 
    # @param request DeleteFormFieldRequest
    # @return [Array<(nil, Fixnum, Hash)>]
    # nil, response status code and response headers
    private def delete_form_field_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? DeleteFormFieldRequest

      @api_client.config.logger.debug 'Calling API: WordsApi.delete_form_field ...' if @api_client.config.debugging
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.delete_form_field' if @api_client.config.client_side_validation && request..nil?
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.delete_form_field' if @api_client.config.client_side_validation && request..nil?
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.delete_form_field' if @api_client.config.client_side_validation && request..nil?
      # resource path
      local_var_path = '/words/{name}/{nodePath}/formfields/{index}'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request..to_s)
      local_var_path = local_var_path.sub('{' + downcase_first_letter('NodePath') + '}', request..to_s)
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Index') + '}', request..to_s)

      # query parameters
      query_params = {}
      if local_var_path.include? downcase_first_letter('Folder')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Folder') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Folder')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('Storage')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Storage') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Storage')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('LoadEncoding')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('LoadEncoding') + '}', request..to_s)
      else
        query_params[downcase_first_letter('LoadEncoding')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('Password')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Password') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Password')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('DestFileName')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('DestFileName') + '}', request..to_s)
      else
        query_params[downcase_first_letter('DestFileName')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('RevisionAuthor')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('RevisionAuthor') + '}', request..to_s)
      else
        query_params[downcase_first_letter('RevisionAuthor')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('RevisionDateTime')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('RevisionDateTime') + '}', request..to_s)
      else
        query_params[downcase_first_letter('RevisionDateTime')] = request. unless request..nil?
      end

      # header parameters
      header_params = {}

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['JWT']
	  
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#delete_form_field\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Removes form field from document.
    # 
    # @param request DeleteFormFieldWithoutNodePathRequest
    # @return [nil]
    def delete_form_field_without_node_path(request)
      begin
        data, _status_code, _headers = delete_form_field_without_node_path_with_http_info(request)
        rescue ApiError => e
          if e.code == 401
            request_token
            data, _status_code, _headers = delete_form_field_without_node_path_with_http_info(request)
          else
            raise
          end
      end			
      nil
    end

    # Removes form field from document.
    # 
    # @param request DeleteFormFieldWithoutNodePathRequest
    # @return [Array<(nil, Fixnum, Hash)>]
    # nil, response status code and response headers
    private def delete_form_field_without_node_path_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? DeleteFormFieldWithoutNodePathRequest

      @api_client.config.logger.debug 'Calling API: WordsApi.delete_form_field_without_node_path ...' if @api_client.config.debugging
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.delete_form_field_without_node_path' if @api_client.config.client_side_validation && request..nil?
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.delete_form_field_without_node_path' if @api_client.config.client_side_validation && request..nil?
      # resource path
      local_var_path = '/words/{name}/formfields/{index}'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request..to_s)
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Index') + '}', request..to_s)

      # query parameters
      query_params = {}
      if local_var_path.include? downcase_first_letter('Folder')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Folder') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Folder')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('Storage')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Storage') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Storage')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('LoadEncoding')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('LoadEncoding') + '}', request..to_s)
      else
        query_params[downcase_first_letter('LoadEncoding')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('Password')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Password') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Password')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('DestFileName')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('DestFileName') + '}', request..to_s)
      else
        query_params[downcase_first_letter('DestFileName')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('RevisionAuthor')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('RevisionAuthor') + '}', request..to_s)
      else
        query_params[downcase_first_letter('RevisionAuthor')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('RevisionDateTime')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('RevisionDateTime') + '}', request..to_s)
      else
        query_params[downcase_first_letter('RevisionDateTime')] = request. unless request..nil?
      end

      # header parameters
      header_params = {}

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['JWT']
	  
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#delete_form_field_without_node_path\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Deletes header/footer from document.
    # 
    # @param request DeleteHeaderFooterRequest
    # @return [nil]
    def delete_header_footer(request)
      begin
        data, _status_code, _headers = delete_header_footer_with_http_info(request)
        rescue ApiError => e
          if e.code == 401
            request_token
            data, _status_code, _headers = delete_header_footer_with_http_info(request)
          else
            raise
          end
      end			
      nil
    end

    # Deletes header/footer from document.
    # 
    # @param request DeleteHeaderFooterRequest
    # @return [Array<(nil, Fixnum, Hash)>]
    # nil, response status code and response headers
    private def delete_header_footer_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? DeleteHeaderFooterRequest

      @api_client.config.logger.debug 'Calling API: WordsApi.delete_header_footer ...' if @api_client.config.debugging
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.delete_header_footer' if @api_client.config.client_side_validation && request..nil?
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.delete_header_footer' if @api_client.config.client_side_validation && request..nil?
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.delete_header_footer' if @api_client.config.client_side_validation && request..nil?
      # resource path
      local_var_path = '/words/{name}/{sectionPath}/headersfooters/{index}'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request..to_s)
      local_var_path = local_var_path.sub('{' + downcase_first_letter('SectionPath') + '}', request..to_s)
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Index') + '}', request..to_s)

      # query parameters
      query_params = {}
      if local_var_path.include? downcase_first_letter('Folder')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Folder') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Folder')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('Storage')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Storage') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Storage')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('LoadEncoding')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('LoadEncoding') + '}', request..to_s)
      else
        query_params[downcase_first_letter('LoadEncoding')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('Password')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Password') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Password')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('DestFileName')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('DestFileName') + '}', request..to_s)
      else
        query_params[downcase_first_letter('DestFileName')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('RevisionAuthor')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('RevisionAuthor') + '}', request..to_s)
      else
        query_params[downcase_first_letter('RevisionAuthor')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('RevisionDateTime')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('RevisionDateTime') + '}', request..to_s)
      else
        query_params[downcase_first_letter('RevisionDateTime')] = request. unless request..nil?
      end

      # header parameters
      header_params = {}

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['JWT']
	  
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#delete_header_footer\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Deletes document headers and footers.
    # 
    # @param request DeleteHeadersFootersRequest
    # @return [nil]
    def delete_headers_footers(request)
      begin
        data, _status_code, _headers = delete_headers_footers_with_http_info(request)
        rescue ApiError => e
          if e.code == 401
            request_token
            data, _status_code, _headers = delete_headers_footers_with_http_info(request)
          else
            raise
          end
      end			
      nil
    end

    # Deletes document headers and footers.
    # 
    # @param request DeleteHeadersFootersRequest
    # @return [Array<(nil, Fixnum, Hash)>]
    # nil, response status code and response headers
    private def delete_headers_footers_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? DeleteHeadersFootersRequest

      @api_client.config.logger.debug 'Calling API: WordsApi.delete_headers_footers ...' if @api_client.config.debugging
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.delete_headers_footers' if @api_client.config.client_side_validation && request..nil?
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.delete_headers_footers' if @api_client.config.client_side_validation && request..nil?
      # resource path
      local_var_path = '/words/{name}/{sectionPath}/headersfooters'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request..to_s)
      local_var_path = local_var_path.sub('{' + downcase_first_letter('SectionPath') + '}', request..to_s)

      # query parameters
      query_params = {}
      if local_var_path.include? downcase_first_letter('Folder')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Folder') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Folder')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('Storage')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Storage') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Storage')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('LoadEncoding')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('LoadEncoding') + '}', request..to_s)
      else
        query_params[downcase_first_letter('LoadEncoding')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('Password')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Password') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Password')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('DestFileName')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('DestFileName') + '}', request..to_s)
      else
        query_params[downcase_first_letter('DestFileName')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('RevisionAuthor')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('RevisionAuthor') + '}', request..to_s)
      else
        query_params[downcase_first_letter('RevisionAuthor')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('RevisionDateTime')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('RevisionDateTime') + '}', request..to_s)
      else
        query_params[downcase_first_letter('RevisionDateTime')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('HeadersFootersTypes')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('HeadersFootersTypes') + '}', request..to_s)
      else
        query_params[downcase_first_letter('HeadersFootersTypes')] = request. unless request..nil?
      end

      # header parameters
      header_params = {}

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['JWT']
	  
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#delete_headers_footers\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Removes macros from document.
    # 
    # @param request DeleteMacrosRequest
    # @return [nil]
    def delete_macros(request)
      begin
        data, _status_code, _headers = delete_macros_with_http_info(request)
        rescue ApiError => e
          if e.code == 401
            request_token
            data, _status_code, _headers = delete_macros_with_http_info(request)
          else
            raise
          end
      end			
      nil
    end

    # Removes macros from document.
    # 
    # @param request DeleteMacrosRequest
    # @return [Array<(nil, Fixnum, Hash)>]
    # nil, response status code and response headers
    private def delete_macros_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? DeleteMacrosRequest

      @api_client.config.logger.debug 'Calling API: WordsApi.delete_macros ...' if @api_client.config.debugging
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.delete_macros' if @api_client.config.client_side_validation && request..nil?
      # resource path
      local_var_path = '/words/{name}/macros'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request..to_s)

      # query parameters
      query_params = {}
      if local_var_path.include? downcase_first_letter('Folder')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Folder') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Folder')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('Storage')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Storage') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Storage')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('LoadEncoding')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('LoadEncoding') + '}', request..to_s)
      else
        query_params[downcase_first_letter('LoadEncoding')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('Password')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Password') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Password')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('DestFileName')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('DestFileName') + '}', request..to_s)
      else
        query_params[downcase_first_letter('DestFileName')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('RevisionAuthor')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('RevisionAuthor') + '}', request..to_s)
      else
        query_params[downcase_first_letter('RevisionAuthor')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('RevisionDateTime')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('RevisionDateTime') + '}', request..to_s)
      else
        query_params[downcase_first_letter('RevisionDateTime')] = request. unless request..nil?
      end

      # header parameters
      header_params = {}

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['JWT']
	  
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#delete_macros\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Removes OfficeMath object from document.
    # 
    # @param request DeleteOfficeMathObjectRequest
    # @return [nil]
    def delete_office_math_object(request)
      begin
        data, _status_code, _headers = delete_office_math_object_with_http_info(request)
        rescue ApiError => e
          if e.code == 401
            request_token
            data, _status_code, _headers = delete_office_math_object_with_http_info(request)
          else
            raise
          end
      end			
      nil
    end

    # Removes OfficeMath object from document.
    # 
    # @param request DeleteOfficeMathObjectRequest
    # @return [Array<(nil, Fixnum, Hash)>]
    # nil, response status code and response headers
    private def delete_office_math_object_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? DeleteOfficeMathObjectRequest

      @api_client.config.logger.debug 'Calling API: WordsApi.delete_office_math_object ...' if @api_client.config.debugging
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.delete_office_math_object' if @api_client.config.client_side_validation && request..nil?
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.delete_office_math_object' if @api_client.config.client_side_validation && request..nil?
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.delete_office_math_object' if @api_client.config.client_side_validation && request..nil?
      # resource path
      local_var_path = '/words/{name}/{nodePath}/OfficeMathObjects/{index}'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request..to_s)
      local_var_path = local_var_path.sub('{' + downcase_first_letter('NodePath') + '}', request..to_s)
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Index') + '}', request..to_s)

      # query parameters
      query_params = {}
      if local_var_path.include? downcase_first_letter('Folder')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Folder') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Folder')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('Storage')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Storage') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Storage')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('LoadEncoding')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('LoadEncoding') + '}', request..to_s)
      else
        query_params[downcase_first_letter('LoadEncoding')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('Password')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Password') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Password')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('DestFileName')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('DestFileName') + '}', request..to_s)
      else
        query_params[downcase_first_letter('DestFileName')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('RevisionAuthor')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('RevisionAuthor') + '}', request..to_s)
      else
        query_params[downcase_first_letter('RevisionAuthor')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('RevisionDateTime')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('RevisionDateTime') + '}', request..to_s)
      else
        query_params[downcase_first_letter('RevisionDateTime')] = request. unless request..nil?
      end

      # header parameters
      header_params = {}

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['JWT']
	  
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#delete_office_math_object\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Removes OfficeMath object from document.
    # 
    # @param request DeleteOfficeMathObjectWithoutNodePathRequest
    # @return [nil]
    def delete_office_math_object_without_node_path(request)
      begin
        data, _status_code, _headers = delete_office_math_object_without_node_path_with_http_info(request)
        rescue ApiError => e
          if e.code == 401
            request_token
            data, _status_code, _headers = delete_office_math_object_without_node_path_with_http_info(request)
          else
            raise
          end
      end			
      nil
    end

    # Removes OfficeMath object from document.
    # 
    # @param request DeleteOfficeMathObjectWithoutNodePathRequest
    # @return [Array<(nil, Fixnum, Hash)>]
    # nil, response status code and response headers
    private def delete_office_math_object_without_node_path_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? DeleteOfficeMathObjectWithoutNodePathRequest

      @api_client.config.logger.debug 'Calling API: WordsApi.delete_office_math_object_without_node_path ...' if @api_client.config.debugging
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.delete_office_math_object_without_node_path' if @api_client.config.client_side_validation && request..nil?
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.delete_office_math_object_without_node_path' if @api_client.config.client_side_validation && request..nil?
      # resource path
      local_var_path = '/words/{name}/OfficeMathObjects/{index}'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request..to_s)
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Index') + '}', request..to_s)

      # query parameters
      query_params = {}
      if local_var_path.include? downcase_first_letter('Folder')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Folder') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Folder')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('Storage')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Storage') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Storage')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('LoadEncoding')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('LoadEncoding') + '}', request..to_s)
      else
        query_params[downcase_first_letter('LoadEncoding')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('Password')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Password') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Password')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('DestFileName')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('DestFileName') + '}', request..to_s)
      else
        query_params[downcase_first_letter('DestFileName')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('RevisionAuthor')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('RevisionAuthor') + '}', request..to_s)
      else
        query_params[downcase_first_letter('RevisionAuthor')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('RevisionDateTime')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('RevisionDateTime') + '}', request..to_s)
      else
        query_params[downcase_first_letter('RevisionDateTime')] = request. unless request..nil?
      end

      # header parameters
      header_params = {}

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['JWT']
	  
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#delete_office_math_object_without_node_path\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Removes paragraph from section.
    # 
    # @param request DeleteParagraphRequest
    # @return [nil]
    def delete_paragraph(request)
      begin
        data, _status_code, _headers = delete_paragraph_with_http_info(request)
        rescue ApiError => e
          if e.code == 401
            request_token
            data, _status_code, _headers = delete_paragraph_with_http_info(request)
          else
            raise
          end
      end			
      nil
    end

    # Removes paragraph from section.
    # 
    # @param request DeleteParagraphRequest
    # @return [Array<(nil, Fixnum, Hash)>]
    # nil, response status code and response headers
    private def delete_paragraph_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? DeleteParagraphRequest

      @api_client.config.logger.debug 'Calling API: WordsApi.delete_paragraph ...' if @api_client.config.debugging
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.delete_paragraph' if @api_client.config.client_side_validation && request..nil?
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.delete_paragraph' if @api_client.config.client_side_validation && request..nil?
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.delete_paragraph' if @api_client.config.client_side_validation && request..nil?
      # resource path
      local_var_path = '/words/{name}/{nodePath}/paragraphs/{index}'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request..to_s)
      local_var_path = local_var_path.sub('{' + downcase_first_letter('NodePath') + '}', request..to_s)
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Index') + '}', request..to_s)

      # query parameters
      query_params = {}
      if local_var_path.include? downcase_first_letter('Folder')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Folder') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Folder')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('Storage')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Storage') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Storage')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('LoadEncoding')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('LoadEncoding') + '}', request..to_s)
      else
        query_params[downcase_first_letter('LoadEncoding')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('Password')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Password') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Password')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('DestFileName')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('DestFileName') + '}', request..to_s)
      else
        query_params[downcase_first_letter('DestFileName')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('RevisionAuthor')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('RevisionAuthor') + '}', request..to_s)
      else
        query_params[downcase_first_letter('RevisionAuthor')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('RevisionDateTime')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('RevisionDateTime') + '}', request..to_s)
      else
        query_params[downcase_first_letter('RevisionDateTime')] = request. unless request..nil?
      end

      # header parameters
      header_params = {}

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['JWT']
	  
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#delete_paragraph\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Removes paragraph from section.
    # 
    # @param request DeleteParagraphWithoutNodePathRequest
    # @return [nil]
    def delete_paragraph_without_node_path(request)
      begin
        data, _status_code, _headers = delete_paragraph_without_node_path_with_http_info(request)
        rescue ApiError => e
          if e.code == 401
            request_token
            data, _status_code, _headers = delete_paragraph_without_node_path_with_http_info(request)
          else
            raise
          end
      end			
      nil
    end

    # Removes paragraph from section.
    # 
    # @param request DeleteParagraphWithoutNodePathRequest
    # @return [Array<(nil, Fixnum, Hash)>]
    # nil, response status code and response headers
    private def delete_paragraph_without_node_path_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? DeleteParagraphWithoutNodePathRequest

      @api_client.config.logger.debug 'Calling API: WordsApi.delete_paragraph_without_node_path ...' if @api_client.config.debugging
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.delete_paragraph_without_node_path' if @api_client.config.client_side_validation && request..nil?
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.delete_paragraph_without_node_path' if @api_client.config.client_side_validation && request..nil?
      # resource path
      local_var_path = '/words/{name}/paragraphs/{index}'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request..to_s)
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Index') + '}', request..to_s)

      # query parameters
      query_params = {}
      if local_var_path.include? downcase_first_letter('Folder')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Folder') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Folder')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('Storage')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Storage') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Storage')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('LoadEncoding')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('LoadEncoding') + '}', request..to_s)
      else
        query_params[downcase_first_letter('LoadEncoding')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('Password')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Password') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Password')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('DestFileName')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('DestFileName') + '}', request..to_s)
      else
        query_params[downcase_first_letter('DestFileName')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('RevisionAuthor')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('RevisionAuthor') + '}', request..to_s)
      else
        query_params[downcase_first_letter('RevisionAuthor')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('RevisionDateTime')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('RevisionDateTime') + '}', request..to_s)
      else
        query_params[downcase_first_letter('RevisionDateTime')] = request. unless request..nil?
      end

      # header parameters
      header_params = {}

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['JWT']
	  
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#delete_paragraph_without_node_path\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Removes run from document.
    # 
    # @param request DeleteRunRequest
    # @return [nil]
    def delete_run(request)
      begin
        data, _status_code, _headers = delete_run_with_http_info(request)
        rescue ApiError => e
          if e.code == 401
            request_token
            data, _status_code, _headers = delete_run_with_http_info(request)
          else
            raise
          end
      end			
      nil
    end

    # Removes run from document.
    # 
    # @param request DeleteRunRequest
    # @return [Array<(nil, Fixnum, Hash)>]
    # nil, response status code and response headers
    private def delete_run_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? DeleteRunRequest

      @api_client.config.logger.debug 'Calling API: WordsApi.delete_run ...' if @api_client.config.debugging
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.delete_run' if @api_client.config.client_side_validation && request..nil?
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.delete_run' if @api_client.config.client_side_validation && request..nil?
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.delete_run' if @api_client.config.client_side_validation && request..nil?
      # resource path
      local_var_path = '/words/{name}/{paragraphPath}/runs/{index}'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request..to_s)
      local_var_path = local_var_path.sub('{' + downcase_first_letter('ParagraphPath') + '}', request..to_s)
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Index') + '}', request..to_s)

      # query parameters
      query_params = {}
      if local_var_path.include? downcase_first_letter('Folder')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Folder') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Folder')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('Storage')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Storage') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Storage')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('LoadEncoding')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('LoadEncoding') + '}', request..to_s)
      else
        query_params[downcase_first_letter('LoadEncoding')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('Password')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Password') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Password')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('DestFileName')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('DestFileName') + '}', request..to_s)
      else
        query_params[downcase_first_letter('DestFileName')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('RevisionAuthor')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('RevisionAuthor') + '}', request..to_s)
      else
        query_params[downcase_first_letter('RevisionAuthor')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('RevisionDateTime')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('RevisionDateTime') + '}', request..to_s)
      else
        query_params[downcase_first_letter('RevisionDateTime')] = request. unless request..nil?
      end

      # header parameters
      header_params = {}

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['JWT']
	  
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#delete_run\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Removes section from document.
    # 
    # @param request DeleteSectionRequest
    # @return [nil]
    def delete_section(request)
      begin
        data, _status_code, _headers = delete_section_with_http_info(request)
        rescue ApiError => e
          if e.code == 401
            request_token
            data, _status_code, _headers = delete_section_with_http_info(request)
          else
            raise
          end
      end			
      nil
    end

    # Removes section from document.
    # 
    # @param request DeleteSectionRequest
    # @return [Array<(nil, Fixnum, Hash)>]
    # nil, response status code and response headers
    private def delete_section_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? DeleteSectionRequest

      @api_client.config.logger.debug 'Calling API: WordsApi.delete_section ...' if @api_client.config.debugging
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.delete_section' if @api_client.config.client_side_validation && request..nil?
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.delete_section' if @api_client.config.client_side_validation && request..nil?
      # resource path
      local_var_path = '/words/{name}/sections/{sectionIndex}'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request..to_s)
      local_var_path = local_var_path.sub('{' + downcase_first_letter('SectionIndex') + '}', request..to_s)

      # query parameters
      query_params = {}
      if local_var_path.include? downcase_first_letter('Folder')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Folder') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Folder')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('Storage')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Storage') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Storage')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('LoadEncoding')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('LoadEncoding') + '}', request..to_s)
      else
        query_params[downcase_first_letter('LoadEncoding')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('Password')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Password') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Password')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('DestFileName')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('DestFileName') + '}', request..to_s)
      else
        query_params[downcase_first_letter('DestFileName')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('RevisionAuthor')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('RevisionAuthor') + '}', request..to_s)
      else
        query_params[downcase_first_letter('RevisionAuthor')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('RevisionDateTime')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('RevisionDateTime') + '}', request..to_s)
      else
        query_params[downcase_first_letter('RevisionDateTime')] = request. unless request..nil?
      end

      # header parameters
      header_params = {}

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['JWT']
	  
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#delete_section\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Deletes a table.
    # 
    # @param request DeleteTableRequest
    # @return [nil]
    def delete_table(request)
      begin
        data, _status_code, _headers = delete_table_with_http_info(request)
        rescue ApiError => e
          if e.code == 401
            request_token
            data, _status_code, _headers = delete_table_with_http_info(request)
          else
            raise
          end
      end			
      nil
    end

    # Deletes a table.
    # 
    # @param request DeleteTableRequest
    # @return [Array<(nil, Fixnum, Hash)>]
    # nil, response status code and response headers
    private def delete_table_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? DeleteTableRequest

      @api_client.config.logger.debug 'Calling API: WordsApi.delete_table ...' if @api_client.config.debugging
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.delete_table' if @api_client.config.client_side_validation && request..nil?
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.delete_table' if @api_client.config.client_side_validation && request..nil?
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.delete_table' if @api_client.config.client_side_validation && request..nil?
      # resource path
      local_var_path = '/words/{name}/{nodePath}/tables/{index}'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request..to_s)
      local_var_path = local_var_path.sub('{' + downcase_first_letter('NodePath') + '}', request..to_s)
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Index') + '}', request..to_s)

      # query parameters
      query_params = {}
      if local_var_path.include? downcase_first_letter('Folder')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Folder') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Folder')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('Storage')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Storage') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Storage')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('LoadEncoding')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('LoadEncoding') + '}', request..to_s)
      else
        query_params[downcase_first_letter('LoadEncoding')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('Password')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Password') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Password')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('DestFileName')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('DestFileName') + '}', request..to_s)
      else
        query_params[downcase_first_letter('DestFileName')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('RevisionAuthor')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('RevisionAuthor') + '}', request..to_s)
      else
        query_params[downcase_first_letter('RevisionAuthor')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('RevisionDateTime')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('RevisionDateTime') + '}', request..to_s)
      else
        query_params[downcase_first_letter('RevisionDateTime')] = request. unless request..nil?
      end

      # header parameters
      header_params = {}

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['JWT']
	  
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#delete_table\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Deletes a table cell.
    # 
    # @param request DeleteTableCellRequest
    # @return [nil]
    def delete_table_cell(request)
      begin
        data, _status_code, _headers = delete_table_cell_with_http_info(request)
        rescue ApiError => e
          if e.code == 401
            request_token
            data, _status_code, _headers = delete_table_cell_with_http_info(request)
          else
            raise
          end
      end			
      nil
    end

    # Deletes a table cell.
    # 
    # @param request DeleteTableCellRequest
    # @return [Array<(nil, Fixnum, Hash)>]
    # nil, response status code and response headers
    private def delete_table_cell_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? DeleteTableCellRequest

      @api_client.config.logger.debug 'Calling API: WordsApi.delete_table_cell ...' if @api_client.config.debugging
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.delete_table_cell' if @api_client.config.client_side_validation && request..nil?
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.delete_table_cell' if @api_client.config.client_side_validation && request..nil?
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.delete_table_cell' if @api_client.config.client_side_validation && request..nil?
      # resource path
      local_var_path = '/words/{name}/{tableRowPath}/cells/{index}'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request..to_s)
      local_var_path = local_var_path.sub('{' + downcase_first_letter('TableRowPath') + '}', request..to_s)
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Index') + '}', request..to_s)

      # query parameters
      query_params = {}
      if local_var_path.include? downcase_first_letter('Folder')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Folder') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Folder')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('Storage')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Storage') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Storage')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('LoadEncoding')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('LoadEncoding') + '}', request..to_s)
      else
        query_params[downcase_first_letter('LoadEncoding')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('Password')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Password') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Password')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('DestFileName')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('DestFileName') + '}', request..to_s)
      else
        query_params[downcase_first_letter('DestFileName')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('RevisionAuthor')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('RevisionAuthor') + '}', request..to_s)
      else
        query_params[downcase_first_letter('RevisionAuthor')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('RevisionDateTime')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('RevisionDateTime') + '}', request..to_s)
      else
        query_params[downcase_first_letter('RevisionDateTime')] = request. unless request..nil?
      end

      # header parameters
      header_params = {}

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['JWT']
	  
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#delete_table_cell\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Deletes a table row.
    # 
    # @param request DeleteTableRowRequest
    # @return [nil]
    def delete_table_row(request)
      begin
        data, _status_code, _headers = delete_table_row_with_http_info(request)
        rescue ApiError => e
          if e.code == 401
            request_token
            data, _status_code, _headers = delete_table_row_with_http_info(request)
          else
            raise
          end
      end			
      nil
    end

    # Deletes a table row.
    # 
    # @param request DeleteTableRowRequest
    # @return [Array<(nil, Fixnum, Hash)>]
    # nil, response status code and response headers
    private def delete_table_row_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? DeleteTableRowRequest

      @api_client.config.logger.debug 'Calling API: WordsApi.delete_table_row ...' if @api_client.config.debugging
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.delete_table_row' if @api_client.config.client_side_validation && request..nil?
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.delete_table_row' if @api_client.config.client_side_validation && request..nil?
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.delete_table_row' if @api_client.config.client_side_validation && request..nil?
      # resource path
      local_var_path = '/words/{name}/{tablePath}/rows/{index}'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request..to_s)
      local_var_path = local_var_path.sub('{' + downcase_first_letter('TablePath') + '}', request..to_s)
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Index') + '}', request..to_s)

      # query parameters
      query_params = {}
      if local_var_path.include? downcase_first_letter('Folder')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Folder') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Folder')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('Storage')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Storage') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Storage')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('LoadEncoding')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('LoadEncoding') + '}', request..to_s)
      else
        query_params[downcase_first_letter('LoadEncoding')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('Password')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Password') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Password')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('DestFileName')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('DestFileName') + '}', request..to_s)
      else
        query_params[downcase_first_letter('DestFileName')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('RevisionAuthor')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('RevisionAuthor') + '}', request..to_s)
      else
        query_params[downcase_first_letter('RevisionAuthor')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('RevisionDateTime')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('RevisionDateTime') + '}', request..to_s)
      else
        query_params[downcase_first_letter('RevisionDateTime')] = request. unless request..nil?
      end

      # header parameters
      header_params = {}

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['JWT']
	  
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#delete_table_row\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Deletes a table.
    # 
    # @param request DeleteTableWithoutNodePathRequest
    # @return [nil]
    def delete_table_without_node_path(request)
      begin
        data, _status_code, _headers = delete_table_without_node_path_with_http_info(request)
        rescue ApiError => e
          if e.code == 401
            request_token
            data, _status_code, _headers = delete_table_without_node_path_with_http_info(request)
          else
            raise
          end
      end			
      nil
    end

    # Deletes a table.
    # 
    # @param request DeleteTableWithoutNodePathRequest
    # @return [Array<(nil, Fixnum, Hash)>]
    # nil, response status code and response headers
    private def delete_table_without_node_path_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? DeleteTableWithoutNodePathRequest

      @api_client.config.logger.debug 'Calling API: WordsApi.delete_table_without_node_path ...' if @api_client.config.debugging
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.delete_table_without_node_path' if @api_client.config.client_side_validation && request..nil?
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.delete_table_without_node_path' if @api_client.config.client_side_validation && request..nil?
      # resource path
      local_var_path = '/words/{name}/tables/{index}'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request..to_s)
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Index') + '}', request..to_s)

      # query parameters
      query_params = {}
      if local_var_path.include? downcase_first_letter('Folder')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Folder') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Folder')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('Storage')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Storage') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Storage')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('LoadEncoding')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('LoadEncoding') + '}', request..to_s)
      else
        query_params[downcase_first_letter('LoadEncoding')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('Password')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Password') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Password')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('DestFileName')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('DestFileName') + '}', request..to_s)
      else
        query_params[downcase_first_letter('DestFileName')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('RevisionAuthor')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('RevisionAuthor') + '}', request..to_s)
      else
        query_params[downcase_first_letter('RevisionAuthor')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('RevisionDateTime')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('RevisionDateTime') + '}', request..to_s)
      else
        query_params[downcase_first_letter('RevisionDateTime')] = request. unless request..nil?
      end

      # header parameters
      header_params = {}

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['JWT']
	  
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#delete_table_without_node_path\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Deletes watermark (for deleting last watermark from the document).
    # 
    # @param request DeleteWatermarkRequest
    # @return [nil]
    def delete_watermark(request)
      begin
        data, _status_code, _headers = delete_watermark_with_http_info(request)
        rescue ApiError => e
          if e.code == 401
            request_token
            data, _status_code, _headers = delete_watermark_with_http_info(request)
          else
            raise
          end
      end			
      data
    end

    # Deletes watermark (for deleting last watermark from the document).
    # 
    # @param request DeleteWatermarkRequest
    # @return [Array<(nil, Fixnum, Hash)>]
    # nil, response status code and response headers
    private def delete_watermark_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? DeleteWatermarkRequest

      @api_client.config.logger.debug 'Calling API: WordsApi.delete_watermark ...' if @api_client.config.debugging
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.delete_watermark' if @api_client.config.client_side_validation && request..nil?
      # resource path
      local_var_path = '/words/{name}/watermarks/deleteLast'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request..to_s)

      # query parameters
      query_params = {}
      if local_var_path.include? downcase_first_letter('Folder')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Folder') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Folder')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('Storage')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Storage') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Storage')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('LoadEncoding')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('LoadEncoding') + '}', request..to_s)
      else
        query_params[downcase_first_letter('LoadEncoding')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('Password')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Password') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Password')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('DestFileName')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('DestFileName') + '}', request..to_s)
      else
        query_params[downcase_first_letter('DestFileName')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('RevisionAuthor')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('RevisionAuthor') + '}', request..to_s)
      else
        query_params[downcase_first_letter('RevisionAuthor')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('RevisionDateTime')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('RevisionDateTime') + '}', request..to_s)
      else
        query_params[downcase_first_letter('RevisionDateTime')] = request. unless request..nil?
      end

      # header parameters
      header_params = {}

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['JWT']
	  
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#delete_watermark\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Download file
    # 
    # @param request DownloadFileRequest
    # @return [nil]
    def download_file(request)
      begin
        data, _status_code, _headers = download_file_with_http_info(request)
        rescue ApiError => e
          if e.code == 401
            request_token
            data, _status_code, _headers = download_file_with_http_info(request)
          else
            raise
          end
      end			
      data
    end

    # Download file
    # 
    # @param request DownloadFileRequest
    # @return [Array<(nil, Fixnum, Hash)>]
    # nil, response status code and response headers
    private def download_file_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? DownloadFileRequest

      @api_client.config.logger.debug 'Calling API: WordsApi.download_file ...' if @api_client.config.debugging
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.download_file' if @api_client.config.client_side_validation && request..nil?
      # resource path
      local_var_path = '/words/storage/file/{path}'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Path') + '}', request..to_s)

      # query parameters
      query_params = {}
      if local_var_path.include? downcase_first_letter('StorageName')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('StorageName') + '}', request..to_s)
      else
        query_params[downcase_first_letter('StorageName')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('VersionId')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('VersionId') + '}', request..to_s)
      else
        query_params[downcase_first_letter('VersionId')] = request. unless request..nil?
      end

      # header parameters
      header_params = {}

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['JWT']
	  
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#download_file\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Executes document mail merge operation.
    # 
    # @param request ExecuteMailMergeRequest
    # @return [nil]
    def execute_mail_merge(request)
      begin
        data, _status_code, _headers = execute_mail_merge_with_http_info(request)
        rescue ApiError => e
          if e.code == 401
            request_token
            data, _status_code, _headers = execute_mail_merge_with_http_info(request)
          else
            raise
          end
      end			
      data
    end

    # Executes document mail merge operation.
    # 
    # @param request ExecuteMailMergeRequest
    # @return [Array<(nil, Fixnum, Hash)>]
    # nil, response status code and response headers
    private def execute_mail_merge_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? ExecuteMailMergeRequest

      @api_client.config.logger.debug 'Calling API: WordsApi.execute_mail_merge ...' if @api_client.config.debugging
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.execute_mail_merge' if @api_client.config.client_side_validation && request..nil?
      # resource path
      local_var_path = '/words/{name}/MailMerge'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request..to_s)

      # query parameters
      query_params = {}
      if local_var_path.include? downcase_first_letter('Folder')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Folder') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Folder')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('Storage')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Storage') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Storage')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('LoadEncoding')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('LoadEncoding') + '}', request..to_s)
      else
        query_params[downcase_first_letter('LoadEncoding')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('Password')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Password') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Password')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('WithRegions')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('WithRegions') + '}', request..to_s)
      else
        query_params[downcase_first_letter('WithRegions')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('MailMergeDataFile')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('MailMergeDataFile') + '}', request..to_s)
      else
        query_params[downcase_first_letter('MailMergeDataFile')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('Cleanup')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Cleanup') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Cleanup')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('UseWholeParagraphAsRegion')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('UseWholeParagraphAsRegion') + '}', request..to_s)
      else
        query_params[downcase_first_letter('UseWholeParagraphAsRegion')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('DestFileName')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('DestFileName') + '}', request..to_s)
      else
        query_params[downcase_first_letter('DestFileName')] = request. unless request..nil?
      end

      # header parameters
      header_params = {}

      # form parameters
      form_params = {}
      form_params[downcase_first_letter('Data')] = request. unless request..nil?

      # http body (model)
      post_body = nil
      auth_names = ['JWT']
	  
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#execute_mail_merge\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Executes document mail merge online.
    # 
    # @param request ExecuteMailMergeOnlineRequest
    # @return [nil]
    def execute_mail_merge_online(request)
      begin
        data, _status_code, _headers = execute_mail_merge_online_with_http_info(request)
        rescue ApiError => e
          if e.code == 401
            request_token
            data, _status_code, _headers = execute_mail_merge_online_with_http_info(request)
          else
            raise
          end
      end			
      data
    end

    # Executes document mail merge online.
    # 
    # @param request ExecuteMailMergeOnlineRequest
    # @return [Array<(nil, Fixnum, Hash)>]
    # nil, response status code and response headers
    private def execute_mail_merge_online_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? ExecuteMailMergeOnlineRequest

      @api_client.config.logger.debug 'Calling API: WordsApi.execute_mail_merge_online ...' if @api_client.config.debugging
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.execute_mail_merge_online' if @api_client.config.client_side_validation && request..nil?
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.execute_mail_merge_online' if @api_client.config.client_side_validation && request..nil?
      # resource path
      local_var_path = '/words/MailMerge'

      # query parameters
      query_params = {}
      if local_var_path.include? downcase_first_letter('WithRegions')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('WithRegions') + '}', request..to_s)
      else
        query_params[downcase_first_letter('WithRegions')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('Cleanup')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Cleanup') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Cleanup')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('DocumentFileName')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('DocumentFileName') + '}', request..to_s)
      else
        query_params[downcase_first_letter('DocumentFileName')] = request. unless request..nil?
      end

      # header parameters
      header_params = {}

      # form parameters
      form_params = {}
      form_params[downcase_first_letter('Template')] = request.
      form_params[downcase_first_letter('Data')] = request.

      # http body (model)
      post_body = nil
      auth_names = ['JWT']
	  
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#execute_mail_merge_online\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Gets the list of fonts, available for document processing.
    # 
    # @param request GetAvailableFontsRequest
    # @return [nil]
    def get_available_fonts(request)
      begin
        data, _status_code, _headers = get_available_fonts_with_http_info(request)
        rescue ApiError => e
          if e.code == 401
            request_token
            data, _status_code, _headers = get_available_fonts_with_http_info(request)
          else
            raise
          end
      end			
      data
    end

    # Gets the list of fonts, available for document processing.
    # 
    # @param request GetAvailableFontsRequest
    # @return [Array<(nil, Fixnum, Hash)>]
    # nil, response status code and response headers
    private def get_available_fonts_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? GetAvailableFontsRequest

      @api_client.config.logger.debug 'Calling API: WordsApi.get_available_fonts ...' if @api_client.config.debugging
      # resource path
      local_var_path = '/words/fonts/available'

      # query parameters
      query_params = {}
      if local_var_path.include? downcase_first_letter('FontsLocation')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('FontsLocation') + '}', request..to_s)
      else
        query_params[downcase_first_letter('FontsLocation')] = request. unless request..nil?
      end

      # header parameters
      header_params = {}

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['JWT']
	  
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#get_available_fonts\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Reads document bookmark data by its name.
    # 
    # @param request GetBookmarkByNameRequest
    # @return [nil]
    def get_bookmark_by_name(request)
      begin
        data, _status_code, _headers = get_bookmark_by_name_with_http_info(request)
        rescue ApiError => e
          if e.code == 401
            request_token
            data, _status_code, _headers = get_bookmark_by_name_with_http_info(request)
          else
            raise
          end
      end			
      data
    end

    # Reads document bookmark data by its name.
    # 
    # @param request GetBookmarkByNameRequest
    # @return [Array<(nil, Fixnum, Hash)>]
    # nil, response status code and response headers
    private def get_bookmark_by_name_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? GetBookmarkByNameRequest

      @api_client.config.logger.debug 'Calling API: WordsApi.get_bookmark_by_name ...' if @api_client.config.debugging
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.get_bookmark_by_name' if @api_client.config.client_side_validation && request..nil?
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.get_bookmark_by_name' if @api_client.config.client_side_validation && request..nil?
      # resource path
      local_var_path = '/words/{name}/bookmarks/{bookmarkName}'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request..to_s)
      local_var_path = local_var_path.sub('{' + downcase_first_letter('BookmarkName') + '}', request..to_s)

      # query parameters
      query_params = {}
      if local_var_path.include? downcase_first_letter('Folder')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Folder') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Folder')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('Storage')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Storage') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Storage')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('LoadEncoding')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('LoadEncoding') + '}', request..to_s)
      else
        query_params[downcase_first_letter('LoadEncoding')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('Password')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Password') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Password')] = request. unless request..nil?
      end

      # header parameters
      header_params = {}

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['JWT']
	  
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#get_bookmark_by_name\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Reads document bookmarks common info.
    # 
    # @param request GetBookmarksRequest
    # @return [nil]
    def get_bookmarks(request)
      begin
        data, _status_code, _headers = get_bookmarks_with_http_info(request)
        rescue ApiError => e
          if e.code == 401
            request_token
            data, _status_code, _headers = get_bookmarks_with_http_info(request)
          else
            raise
          end
      end			
      data
    end

    # Reads document bookmarks common info.
    # 
    # @param request GetBookmarksRequest
    # @return [Array<(nil, Fixnum, Hash)>]
    # nil, response status code and response headers
    private def get_bookmarks_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? GetBookmarksRequest

      @api_client.config.logger.debug 'Calling API: WordsApi.get_bookmarks ...' if @api_client.config.debugging
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.get_bookmarks' if @api_client.config.client_side_validation && request..nil?
      # resource path
      local_var_path = '/words/{name}/bookmarks'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request..to_s)

      # query parameters
      query_params = {}
      if local_var_path.include? downcase_first_letter('Folder')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Folder') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Folder')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('Storage')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Storage') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Storage')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('LoadEncoding')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('LoadEncoding') + '}', request..to_s)
      else
        query_params[downcase_first_letter('LoadEncoding')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('Password')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Password') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Password')] = request. unless request..nil?
      end

      # header parameters
      header_params = {}

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['JWT']
	  
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#get_bookmarks\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Returns a border.
    # 'nodePath' should refer to paragraph, cell or row.
    # @param request GetBorderRequest
    # @return [nil]
    def get_border(request)
      begin
        data, _status_code, _headers = get_border_with_http_info(request)
        rescue ApiError => e
          if e.code == 401
            request_token
            data, _status_code, _headers = get_border_with_http_info(request)
          else
            raise
          end
      end			
      data
    end

    # Returns a border.
    # &#39;nodePath&#39; should refer to paragraph, cell or row.
    # @param request GetBorderRequest
    # @return [Array<(nil, Fixnum, Hash)>]
    # nil, response status code and response headers
    private def get_border_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? GetBorderRequest

      @api_client.config.logger.debug 'Calling API: WordsApi.get_border ...' if @api_client.config.debugging
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.get_border' if @api_client.config.client_side_validation && request..nil?
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.get_border' if @api_client.config.client_side_validation && request..nil?
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.get_border' if @api_client.config.client_side_validation && request..nil?
      # resource path
      local_var_path = '/words/{name}/{nodePath}/borders/{borderType}'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request..to_s)
      local_var_path = local_var_path.sub('{' + downcase_first_letter('NodePath') + '}', request..to_s)
      local_var_path = local_var_path.sub('{' + downcase_first_letter('BorderType') + '}', request..to_s)

      # query parameters
      query_params = {}
      if local_var_path.include? downcase_first_letter('Folder')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Folder') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Folder')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('Storage')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Storage') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Storage')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('LoadEncoding')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('LoadEncoding') + '}', request..to_s)
      else
        query_params[downcase_first_letter('LoadEncoding')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('Password')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Password') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Password')] = request. unless request..nil?
      end

      # header parameters
      header_params = {}

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['JWT']
	  
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#get_border\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Returns a collection of borders.
    # 'nodePath' should refer to paragraph, cell or row.
    # @param request GetBordersRequest
    # @return [nil]
    def get_borders(request)
      begin
        data, _status_code, _headers = get_borders_with_http_info(request)
        rescue ApiError => e
          if e.code == 401
            request_token
            data, _status_code, _headers = get_borders_with_http_info(request)
          else
            raise
          end
      end			
      data
    end

    # Returns a collection of borders.
    # &#39;nodePath&#39; should refer to paragraph, cell or row.
    # @param request GetBordersRequest
    # @return [Array<(nil, Fixnum, Hash)>]
    # nil, response status code and response headers
    private def get_borders_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? GetBordersRequest

      @api_client.config.logger.debug 'Calling API: WordsApi.get_borders ...' if @api_client.config.debugging
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.get_borders' if @api_client.config.client_side_validation && request..nil?
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.get_borders' if @api_client.config.client_side_validation && request..nil?
      # resource path
      local_var_path = '/words/{name}/{nodePath}/borders'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request..to_s)
      local_var_path = local_var_path.sub('{' + downcase_first_letter('NodePath') + '}', request..to_s)

      # query parameters
      query_params = {}
      if local_var_path.include? downcase_first_letter('Folder')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Folder') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Folder')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('Storage')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Storage') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Storage')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('LoadEncoding')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('LoadEncoding') + '}', request..to_s)
      else
        query_params[downcase_first_letter('LoadEncoding')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('Password')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Password') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Password')] = request. unless request..nil?
      end

      # header parameters
      header_params = {}

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['JWT']
	  
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#get_borders\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Gets comment from document.
    # 
    # @param request GetCommentRequest
    # @return [nil]
    def get_comment(request)
      begin
        data, _status_code, _headers = get_comment_with_http_info(request)
        rescue ApiError => e
          if e.code == 401
            request_token
            data, _status_code, _headers = get_comment_with_http_info(request)
          else
            raise
          end
      end			
      data
    end

    # Gets comment from document.
    # 
    # @param request GetCommentRequest
    # @return [Array<(nil, Fixnum, Hash)>]
    # nil, response status code and response headers
    private def get_comment_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? GetCommentRequest

      @api_client.config.logger.debug 'Calling API: WordsApi.get_comment ...' if @api_client.config.debugging
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.get_comment' if @api_client.config.client_side_validation && request..nil?
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.get_comment' if @api_client.config.client_side_validation && request..nil?
      # resource path
      local_var_path = '/words/{name}/comments/{commentIndex}'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request..to_s)
      local_var_path = local_var_path.sub('{' + downcase_first_letter('CommentIndex') + '}', request..to_s)

      # query parameters
      query_params = {}
      if local_var_path.include? downcase_first_letter('Folder')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Folder') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Folder')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('Storage')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Storage') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Storage')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('LoadEncoding')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('LoadEncoding') + '}', request..to_s)
      else
        query_params[downcase_first_letter('LoadEncoding')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('Password')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Password') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Password')] = request. unless request..nil?
      end

      # header parameters
      header_params = {}

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['JWT']
	  
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#get_comment\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Gets comments from document.
    # 
    # @param request GetCommentsRequest
    # @return [nil]
    def get_comments(request)
      begin
        data, _status_code, _headers = get_comments_with_http_info(request)
        rescue ApiError => e
          if e.code == 401
            request_token
            data, _status_code, _headers = get_comments_with_http_info(request)
          else
            raise
          end
      end			
      data
    end

    # Gets comments from document.
    # 
    # @param request GetCommentsRequest
    # @return [Array<(nil, Fixnum, Hash)>]
    # nil, response status code and response headers
    private def get_comments_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? GetCommentsRequest

      @api_client.config.logger.debug 'Calling API: WordsApi.get_comments ...' if @api_client.config.debugging
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.get_comments' if @api_client.config.client_side_validation && request..nil?
      # resource path
      local_var_path = '/words/{name}/comments'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request..to_s)

      # query parameters
      query_params = {}
      if local_var_path.include? downcase_first_letter('Folder')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Folder') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Folder')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('Storage')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Storage') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Storage')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('LoadEncoding')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('LoadEncoding') + '}', request..to_s)
      else
        query_params[downcase_first_letter('LoadEncoding')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('Password')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Password') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Password')] = request. unless request..nil?
      end

      # header parameters
      header_params = {}

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['JWT']
	  
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#get_comments\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Reads document common info.
    # 
    # @param request GetDocumentRequest
    # @return [nil]
    def get_document(request)
      begin
        data, _status_code, _headers = get_document_with_http_info(request)
        rescue ApiError => e
          if e.code == 401
            request_token
            data, _status_code, _headers = get_document_with_http_info(request)
          else
            raise
          end
      end			
      data
    end

    # Reads document common info.
    # 
    # @param request GetDocumentRequest
    # @return [Array<(nil, Fixnum, Hash)>]
    # nil, response status code and response headers
    private def get_document_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? GetDocumentRequest

      @api_client.config.logger.debug 'Calling API: WordsApi.get_document ...' if @api_client.config.debugging
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.get_document' if @api_client.config.client_side_validation && request..nil?
      # resource path
      local_var_path = '/words/{documentName}'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('DocumentName') + '}', request..to_s)

      # query parameters
      query_params = {}
      if local_var_path.include? downcase_first_letter('Folder')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Folder') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Folder')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('Storage')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Storage') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Storage')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('LoadEncoding')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('LoadEncoding') + '}', request..to_s)
      else
        query_params[downcase_first_letter('LoadEncoding')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('Password')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Password') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Password')] = request. unless request..nil?
      end

      # header parameters
      header_params = {}

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['JWT']
	  
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#get_document\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Reads document drawing object common info by its index or convert to format specified.
    # 
    # @param request GetDocumentDrawingObjectByIndexRequest
    # @return [nil]
    def get_document_drawing_object_by_index(request)
      begin
        data, _status_code, _headers = get_document_drawing_object_by_index_with_http_info(request)
        rescue ApiError => e
          if e.code == 401
            request_token
            data, _status_code, _headers = get_document_drawing_object_by_index_with_http_info(request)
          else
            raise
          end
      end			
      data
    end

    # Reads document drawing object common info by its index or convert to format specified.
    # 
    # @param request GetDocumentDrawingObjectByIndexRequest
    # @return [Array<(nil, Fixnum, Hash)>]
    # nil, response status code and response headers
    private def get_document_drawing_object_by_index_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? GetDocumentDrawingObjectByIndexRequest

      @api_client.config.logger.debug 'Calling API: WordsApi.get_document_drawing_object_by_index ...' if @api_client.config.debugging
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.get_document_drawing_object_by_index' if @api_client.config.client_side_validation && request..nil?
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.get_document_drawing_object_by_index' if @api_client.config.client_side_validation && request..nil?
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.get_document_drawing_object_by_index' if @api_client.config.client_side_validation && request..nil?
      # resource path
      local_var_path = '/words/{name}/{nodePath}/drawingObjects/{index}'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request..to_s)
      local_var_path = local_var_path.sub('{' + downcase_first_letter('NodePath') + '}', request..to_s)
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Index') + '}', request..to_s)

      # query parameters
      query_params = {}
      if local_var_path.include? downcase_first_letter('Folder')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Folder') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Folder')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('Storage')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Storage') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Storage')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('LoadEncoding')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('LoadEncoding') + '}', request..to_s)
      else
        query_params[downcase_first_letter('LoadEncoding')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('Password')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Password') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Password')] = request. unless request..nil?
      end

      # header parameters
      header_params = {}

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['JWT']
	  
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#get_document_drawing_object_by_index\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Reads document drawing object common info by its index or convert to format specified.
    # 
    # @param request GetDocumentDrawingObjectByIndexWithoutNodePathRequest
    # @return [nil]
    def get_document_drawing_object_by_index_without_node_path(request)
      begin
        data, _status_code, _headers = get_document_drawing_object_by_index_without_node_path_with_http_info(request)
        rescue ApiError => e
          if e.code == 401
            request_token
            data, _status_code, _headers = get_document_drawing_object_by_index_without_node_path_with_http_info(request)
          else
            raise
          end
      end			
      data
    end

    # Reads document drawing object common info by its index or convert to format specified.
    # 
    # @param request GetDocumentDrawingObjectByIndexWithoutNodePathRequest
    # @return [Array<(nil, Fixnum, Hash)>]
    # nil, response status code and response headers
    private def get_document_drawing_object_by_index_without_node_path_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? GetDocumentDrawingObjectByIndexWithoutNodePathRequest

      @api_client.config.logger.debug 'Calling API: WordsApi.get_document_drawing_object_by_index_without_node_path ...' if @api_client.config.debugging
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.get_document_drawing_object_by_index_without_node_path' if @api_client.config.client_side_validation && request..nil?
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.get_document_drawing_object_by_index_without_node_path' if @api_client.config.client_side_validation && request..nil?
      # resource path
      local_var_path = '/words/{name}/drawingObjects/{index}'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request..to_s)
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Index') + '}', request..to_s)

      # query parameters
      query_params = {}
      if local_var_path.include? downcase_first_letter('Folder')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Folder') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Folder')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('Storage')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Storage') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Storage')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('LoadEncoding')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('LoadEncoding') + '}', request..to_s)
      else
        query_params[downcase_first_letter('LoadEncoding')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('Password')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Password') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Password')] = request. unless request..nil?
      end

      # header parameters
      header_params = {}

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['JWT']
	  
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#get_document_drawing_object_by_index_without_node_path\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Reads drawing object image data.
    # 
    # @param request GetDocumentDrawingObjectImageDataRequest
    # @return [nil]
    def get_document_drawing_object_image_data(request)
      begin
        data, _status_code, _headers = get_document_drawing_object_image_data_with_http_info(request)
        rescue ApiError => e
          if e.code == 401
            request_token
            data, _status_code, _headers = get_document_drawing_object_image_data_with_http_info(request)
          else
            raise
          end
      end			
      data
    end

    # Reads drawing object image data.
    # 
    # @param request GetDocumentDrawingObjectImageDataRequest
    # @return [Array<(nil, Fixnum, Hash)>]
    # nil, response status code and response headers
    private def get_document_drawing_object_image_data_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? GetDocumentDrawingObjectImageDataRequest

      @api_client.config.logger.debug 'Calling API: WordsApi.get_document_drawing_object_image_data ...' if @api_client.config.debugging
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.get_document_drawing_object_image_data' if @api_client.config.client_side_validation && request..nil?
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.get_document_drawing_object_image_data' if @api_client.config.client_side_validation && request..nil?
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.get_document_drawing_object_image_data' if @api_client.config.client_side_validation && request..nil?
      # resource path
      local_var_path = '/words/{name}/{nodePath}/drawingObjects/{index}/imageData'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request..to_s)
      local_var_path = local_var_path.sub('{' + downcase_first_letter('NodePath') + '}', request..to_s)
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Index') + '}', request..to_s)

      # query parameters
      query_params = {}
      if local_var_path.include? downcase_first_letter('Folder')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Folder') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Folder')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('Storage')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Storage') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Storage')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('LoadEncoding')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('LoadEncoding') + '}', request..to_s)
      else
        query_params[downcase_first_letter('LoadEncoding')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('Password')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Password') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Password')] = request. unless request..nil?
      end

      # header parameters
      header_params = {}

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['JWT']
	  
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#get_document_drawing_object_image_data\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Reads drawing object image data.
    # 
    # @param request GetDocumentDrawingObjectImageDataWithoutNodePathRequest
    # @return [nil]
    def get_document_drawing_object_image_data_without_node_path(request)
      begin
        data, _status_code, _headers = get_document_drawing_object_image_data_without_node_path_with_http_info(request)
        rescue ApiError => e
          if e.code == 401
            request_token
            data, _status_code, _headers = get_document_drawing_object_image_data_without_node_path_with_http_info(request)
          else
            raise
          end
      end			
      data
    end

    # Reads drawing object image data.
    # 
    # @param request GetDocumentDrawingObjectImageDataWithoutNodePathRequest
    # @return [Array<(nil, Fixnum, Hash)>]
    # nil, response status code and response headers
    private def get_document_drawing_object_image_data_without_node_path_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? GetDocumentDrawingObjectImageDataWithoutNodePathRequest

      @api_client.config.logger.debug 'Calling API: WordsApi.get_document_drawing_object_image_data_without_node_path ...' if @api_client.config.debugging
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.get_document_drawing_object_image_data_without_node_path' if @api_client.config.client_side_validation && request..nil?
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.get_document_drawing_object_image_data_without_node_path' if @api_client.config.client_side_validation && request..nil?
      # resource path
      local_var_path = '/words/{name}/drawingObjects/{index}/imageData'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request..to_s)
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Index') + '}', request..to_s)

      # query parameters
      query_params = {}
      if local_var_path.include? downcase_first_letter('Folder')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Folder') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Folder')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('Storage')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Storage') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Storage')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('LoadEncoding')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('LoadEncoding') + '}', request..to_s)
      else
        query_params[downcase_first_letter('LoadEncoding')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('Password')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Password') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Password')] = request. unless request..nil?
      end

      # header parameters
      header_params = {}

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['JWT']
	  
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#get_document_drawing_object_image_data_without_node_path\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Gets drawing object OLE data.
    # 
    # @param request GetDocumentDrawingObjectOleDataRequest
    # @return [nil]
    def get_document_drawing_object_ole_data(request)
      begin
        data, _status_code, _headers = get_document_drawing_object_ole_data_with_http_info(request)
        rescue ApiError => e
          if e.code == 401
            request_token
            data, _status_code, _headers = get_document_drawing_object_ole_data_with_http_info(request)
          else
            raise
          end
      end			
      data
    end

    # Gets drawing object OLE data.
    # 
    # @param request GetDocumentDrawingObjectOleDataRequest
    # @return [Array<(nil, Fixnum, Hash)>]
    # nil, response status code and response headers
    private def get_document_drawing_object_ole_data_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? GetDocumentDrawingObjectOleDataRequest

      @api_client.config.logger.debug 'Calling API: WordsApi.get_document_drawing_object_ole_data ...' if @api_client.config.debugging
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.get_document_drawing_object_ole_data' if @api_client.config.client_side_validation && request..nil?
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.get_document_drawing_object_ole_data' if @api_client.config.client_side_validation && request..nil?
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.get_document_drawing_object_ole_data' if @api_client.config.client_side_validation && request..nil?
      # resource path
      local_var_path = '/words/{name}/{nodePath}/drawingObjects/{index}/oleData'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request..to_s)
      local_var_path = local_var_path.sub('{' + downcase_first_letter('NodePath') + '}', request..to_s)
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Index') + '}', request..to_s)

      # query parameters
      query_params = {}
      if local_var_path.include? downcase_first_letter('Folder')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Folder') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Folder')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('Storage')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Storage') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Storage')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('LoadEncoding')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('LoadEncoding') + '}', request..to_s)
      else
        query_params[downcase_first_letter('LoadEncoding')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('Password')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Password') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Password')] = request. unless request..nil?
      end

      # header parameters
      header_params = {}

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['JWT']
	  
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#get_document_drawing_object_ole_data\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Gets drawing object OLE data.
    # 
    # @param request GetDocumentDrawingObjectOleDataWithoutNodePathRequest
    # @return [nil]
    def get_document_drawing_object_ole_data_without_node_path(request)
      begin
        data, _status_code, _headers = get_document_drawing_object_ole_data_without_node_path_with_http_info(request)
        rescue ApiError => e
          if e.code == 401
            request_token
            data, _status_code, _headers = get_document_drawing_object_ole_data_without_node_path_with_http_info(request)
          else
            raise
          end
      end			
      data
    end

    # Gets drawing object OLE data.
    # 
    # @param request GetDocumentDrawingObjectOleDataWithoutNodePathRequest
    # @return [Array<(nil, Fixnum, Hash)>]
    # nil, response status code and response headers
    private def get_document_drawing_object_ole_data_without_node_path_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? GetDocumentDrawingObjectOleDataWithoutNodePathRequest

      @api_client.config.logger.debug 'Calling API: WordsApi.get_document_drawing_object_ole_data_without_node_path ...' if @api_client.config.debugging
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.get_document_drawing_object_ole_data_without_node_path' if @api_client.config.client_side_validation && request..nil?
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.get_document_drawing_object_ole_data_without_node_path' if @api_client.config.client_side_validation && request..nil?
      # resource path
      local_var_path = '/words/{name}/drawingObjects/{index}/oleData'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request..to_s)
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Index') + '}', request..to_s)

      # query parameters
      query_params = {}
      if local_var_path.include? downcase_first_letter('Folder')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Folder') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Folder')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('Storage')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Storage') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Storage')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('LoadEncoding')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('LoadEncoding') + '}', request..to_s)
      else
        query_params[downcase_first_letter('LoadEncoding')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('Password')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Password') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Password')] = request. unless request..nil?
      end

      # header parameters
      header_params = {}

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['JWT']
	  
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#get_document_drawing_object_ole_data_without_node_path\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Reads document drawing objects common info.
    # 
    # @param request GetDocumentDrawingObjectsRequest
    # @return [nil]
    def get_document_drawing_objects(request)
      begin
        data, _status_code, _headers = get_document_drawing_objects_with_http_info(request)
        rescue ApiError => e
          if e.code == 401
            request_token
            data, _status_code, _headers = get_document_drawing_objects_with_http_info(request)
          else
            raise
          end
      end			
      data
    end

    # Reads document drawing objects common info.
    # 
    # @param request GetDocumentDrawingObjectsRequest
    # @return [Array<(nil, Fixnum, Hash)>]
    # nil, response status code and response headers
    private def get_document_drawing_objects_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? GetDocumentDrawingObjectsRequest

      @api_client.config.logger.debug 'Calling API: WordsApi.get_document_drawing_objects ...' if @api_client.config.debugging
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.get_document_drawing_objects' if @api_client.config.client_side_validation && request..nil?
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.get_document_drawing_objects' if @api_client.config.client_side_validation && request..nil?
      # resource path
      local_var_path = '/words/{name}/{nodePath}/drawingObjects'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request..to_s)
      local_var_path = local_var_path.sub('{' + downcase_first_letter('NodePath') + '}', request..to_s)

      # query parameters
      query_params = {}
      if local_var_path.include? downcase_first_letter('Folder')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Folder') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Folder')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('Storage')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Storage') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Storage')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('LoadEncoding')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('LoadEncoding') + '}', request..to_s)
      else
        query_params[downcase_first_letter('LoadEncoding')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('Password')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Password') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Password')] = request. unless request..nil?
      end

      # header parameters
      header_params = {}

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['JWT']
	  
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#get_document_drawing_objects\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Reads document drawing objects common info.
    # 
    # @param request GetDocumentDrawingObjectsWithoutNodePathRequest
    # @return [nil]
    def get_document_drawing_objects_without_node_path(request)
      begin
        data, _status_code, _headers = get_document_drawing_objects_without_node_path_with_http_info(request)
        rescue ApiError => e
          if e.code == 401
            request_token
            data, _status_code, _headers = get_document_drawing_objects_without_node_path_with_http_info(request)
          else
            raise
          end
      end			
      data
    end

    # Reads document drawing objects common info.
    # 
    # @param request GetDocumentDrawingObjectsWithoutNodePathRequest
    # @return [Array<(nil, Fixnum, Hash)>]
    # nil, response status code and response headers
    private def get_document_drawing_objects_without_node_path_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? GetDocumentDrawingObjectsWithoutNodePathRequest

      @api_client.config.logger.debug 'Calling API: WordsApi.get_document_drawing_objects_without_node_path ...' if @api_client.config.debugging
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.get_document_drawing_objects_without_node_path' if @api_client.config.client_side_validation && request..nil?
      # resource path
      local_var_path = '/words/{name}/drawingObjects'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request..to_s)

      # query parameters
      query_params = {}
      if local_var_path.include? downcase_first_letter('Folder')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Folder') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Folder')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('Storage')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Storage') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Storage')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('LoadEncoding')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('LoadEncoding') + '}', request..to_s)
      else
        query_params[downcase_first_letter('LoadEncoding')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('Password')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Password') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Password')] = request. unless request..nil?
      end

      # header parameters
      header_params = {}

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['JWT']
	  
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#get_document_drawing_objects_without_node_path\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Reads document field names.
    # 
    # @param request GetDocumentFieldNamesRequest
    # @return [nil]
    def get_document_field_names(request)
      begin
        data, _status_code, _headers = get_document_field_names_with_http_info(request)
        rescue ApiError => e
          if e.code == 401
            request_token
            data, _status_code, _headers = get_document_field_names_with_http_info(request)
          else
            raise
          end
      end			
      data
    end

    # Reads document field names.
    # 
    # @param request GetDocumentFieldNamesRequest
    # @return [Array<(nil, Fixnum, Hash)>]
    # nil, response status code and response headers
    private def get_document_field_names_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? GetDocumentFieldNamesRequest

      @api_client.config.logger.debug 'Calling API: WordsApi.get_document_field_names ...' if @api_client.config.debugging
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.get_document_field_names' if @api_client.config.client_side_validation && request..nil?
      # resource path
      local_var_path = '/words/{name}/mailMerge/FieldNames'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request..to_s)

      # query parameters
      query_params = {}
      if local_var_path.include? downcase_first_letter('Folder')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Folder') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Folder')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('Storage')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Storage') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Storage')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('LoadEncoding')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('LoadEncoding') + '}', request..to_s)
      else
        query_params[downcase_first_letter('LoadEncoding')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('Password')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Password') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Password')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('UseNonMergeFields')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('UseNonMergeFields') + '}', request..to_s)
      else
        query_params[downcase_first_letter('UseNonMergeFields')] = request. unless request..nil?
      end

      # header parameters
      header_params = {}

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['JWT']
	  
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#get_document_field_names\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Reads document field names.
    # 
    # @param request GetDocumentFieldNamesOnlineRequest
    # @return [nil]
    def get_document_field_names_online(request)
      begin
        data, _status_code, _headers = get_document_field_names_online_with_http_info(request)
        rescue ApiError => e
          if e.code == 401
            request_token
            data, _status_code, _headers = get_document_field_names_online_with_http_info(request)
          else
            raise
          end
      end			
      data
    end

    # Reads document field names.
    # 
    # @param request GetDocumentFieldNamesOnlineRequest
    # @return [Array<(nil, Fixnum, Hash)>]
    # nil, response status code and response headers
    private def get_document_field_names_online_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? GetDocumentFieldNamesOnlineRequest

      @api_client.config.logger.debug 'Calling API: WordsApi.get_document_field_names_online ...' if @api_client.config.debugging
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.get_document_field_names_online' if @api_client.config.client_side_validation && request..nil?
      # resource path
      local_var_path = '/words/mailMerge/FieldNames'

      # query parameters
      query_params = {}
      if local_var_path.include? downcase_first_letter('UseNonMergeFields')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('UseNonMergeFields') + '}', request..to_s)
      else
        query_params[downcase_first_letter('UseNonMergeFields')] = request. unless request..nil?
      end

      # header parameters
      header_params = {}

      # form parameters
      form_params = {}
      form_params[downcase_first_letter('Template')] = request.

      # http body (model)
      post_body = nil
      auth_names = ['JWT']
	  
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#get_document_field_names_online\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Reads document hyperlink by its index.
    # 
    # @param request GetDocumentHyperlinkByIndexRequest
    # @return [nil]
    def get_document_hyperlink_by_index(request)
      begin
        data, _status_code, _headers = get_document_hyperlink_by_index_with_http_info(request)
        rescue ApiError => e
          if e.code == 401
            request_token
            data, _status_code, _headers = get_document_hyperlink_by_index_with_http_info(request)
          else
            raise
          end
      end			
      data
    end

    # Reads document hyperlink by its index.
    # 
    # @param request GetDocumentHyperlinkByIndexRequest
    # @return [Array<(nil, Fixnum, Hash)>]
    # nil, response status code and response headers
    private def get_document_hyperlink_by_index_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? GetDocumentHyperlinkByIndexRequest

      @api_client.config.logger.debug 'Calling API: WordsApi.get_document_hyperlink_by_index ...' if @api_client.config.debugging
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.get_document_hyperlink_by_index' if @api_client.config.client_side_validation && request..nil?
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.get_document_hyperlink_by_index' if @api_client.config.client_side_validation && request..nil?
      # resource path
      local_var_path = '/words/{name}/hyperlinks/{hyperlinkIndex}'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request..to_s)
      local_var_path = local_var_path.sub('{' + downcase_first_letter('HyperlinkIndex') + '}', request..to_s)

      # query parameters
      query_params = {}
      if local_var_path.include? downcase_first_letter('Folder')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Folder') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Folder')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('Storage')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Storage') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Storage')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('LoadEncoding')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('LoadEncoding') + '}', request..to_s)
      else
        query_params[downcase_first_letter('LoadEncoding')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('Password')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Password') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Password')] = request. unless request..nil?
      end

      # header parameters
      header_params = {}

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['JWT']
	  
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#get_document_hyperlink_by_index\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Reads document hyperlinks common info.
    # 
    # @param request GetDocumentHyperlinksRequest
    # @return [nil]
    def get_document_hyperlinks(request)
      begin
        data, _status_code, _headers = get_document_hyperlinks_with_http_info(request)
        rescue ApiError => e
          if e.code == 401
            request_token
            data, _status_code, _headers = get_document_hyperlinks_with_http_info(request)
          else
            raise
          end
      end			
      data
    end

    # Reads document hyperlinks common info.
    # 
    # @param request GetDocumentHyperlinksRequest
    # @return [Array<(nil, Fixnum, Hash)>]
    # nil, response status code and response headers
    private def get_document_hyperlinks_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? GetDocumentHyperlinksRequest

      @api_client.config.logger.debug 'Calling API: WordsApi.get_document_hyperlinks ...' if @api_client.config.debugging
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.get_document_hyperlinks' if @api_client.config.client_side_validation && request..nil?
      # resource path
      local_var_path = '/words/{name}/hyperlinks'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request..to_s)

      # query parameters
      query_params = {}
      if local_var_path.include? downcase_first_letter('Folder')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Folder') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Folder')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('Storage')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Storage') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Storage')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('LoadEncoding')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('LoadEncoding') + '}', request..to_s)
      else
        query_params[downcase_first_letter('LoadEncoding')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('Password')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Password') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Password')] = request. unless request..nil?
      end

      # header parameters
      header_params = {}

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['JWT']
	  
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#get_document_hyperlinks\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Reads document properties info.
    # 
    # @param request GetDocumentPropertiesRequest
    # @return [nil]
    def get_document_properties(request)
      begin
        data, _status_code, _headers = get_document_properties_with_http_info(request)
        rescue ApiError => e
          if e.code == 401
            request_token
            data, _status_code, _headers = get_document_properties_with_http_info(request)
          else
            raise
          end
      end			
      data
    end

    # Reads document properties info.
    # 
    # @param request GetDocumentPropertiesRequest
    # @return [Array<(nil, Fixnum, Hash)>]
    # nil, response status code and response headers
    private def get_document_properties_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? GetDocumentPropertiesRequest

      @api_client.config.logger.debug 'Calling API: WordsApi.get_document_properties ...' if @api_client.config.debugging
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.get_document_properties' if @api_client.config.client_side_validation && request..nil?
      # resource path
      local_var_path = '/words/{name}/documentProperties'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request..to_s)

      # query parameters
      query_params = {}
      if local_var_path.include? downcase_first_letter('Folder')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Folder') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Folder')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('Storage')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Storage') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Storage')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('LoadEncoding')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('LoadEncoding') + '}', request..to_s)
      else
        query_params[downcase_first_letter('LoadEncoding')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('Password')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Password') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Password')] = request. unless request..nil?
      end

      # header parameters
      header_params = {}

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['JWT']
	  
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#get_document_properties\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Reads document property info by the property name.
    # 
    # @param request GetDocumentPropertyRequest
    # @return [nil]
    def get_document_property(request)
      begin
        data, _status_code, _headers = get_document_property_with_http_info(request)
        rescue ApiError => e
          if e.code == 401
            request_token
            data, _status_code, _headers = get_document_property_with_http_info(request)
          else
            raise
          end
      end			
      data
    end

    # Reads document property info by the property name.
    # 
    # @param request GetDocumentPropertyRequest
    # @return [Array<(nil, Fixnum, Hash)>]
    # nil, response status code and response headers
    private def get_document_property_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? GetDocumentPropertyRequest

      @api_client.config.logger.debug 'Calling API: WordsApi.get_document_property ...' if @api_client.config.debugging
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.get_document_property' if @api_client.config.client_side_validation && request..nil?
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.get_document_property' if @api_client.config.client_side_validation && request..nil?
      # resource path
      local_var_path = '/words/{name}/documentProperties/{propertyName}'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request..to_s)
      local_var_path = local_var_path.sub('{' + downcase_first_letter('PropertyName') + '}', request..to_s)

      # query parameters
      query_params = {}
      if local_var_path.include? downcase_first_letter('Folder')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Folder') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Folder')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('Storage')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Storage') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Storage')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('LoadEncoding')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('LoadEncoding') + '}', request..to_s)
      else
        query_params[downcase_first_letter('LoadEncoding')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('Password')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Password') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Password')] = request. unless request..nil?
      end

      # header parameters
      header_params = {}

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['JWT']
	  
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#get_document_property\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Reads document protection common info.
    # 
    # @param request GetDocumentProtectionRequest
    # @return [nil]
    def get_document_protection(request)
      begin
        data, _status_code, _headers = get_document_protection_with_http_info(request)
        rescue ApiError => e
          if e.code == 401
            request_token
            data, _status_code, _headers = get_document_protection_with_http_info(request)
          else
            raise
          end
      end			
      data
    end

    # Reads document protection common info.
    # 
    # @param request GetDocumentProtectionRequest
    # @return [Array<(nil, Fixnum, Hash)>]
    # nil, response status code and response headers
    private def get_document_protection_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? GetDocumentProtectionRequest

      @api_client.config.logger.debug 'Calling API: WordsApi.get_document_protection ...' if @api_client.config.debugging
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.get_document_protection' if @api_client.config.client_side_validation && request..nil?
      # resource path
      local_var_path = '/words/{name}/protection'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request..to_s)

      # query parameters
      query_params = {}
      if local_var_path.include? downcase_first_letter('Folder')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Folder') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Folder')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('Storage')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Storage') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Storage')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('LoadEncoding')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('LoadEncoding') + '}', request..to_s)
      else
        query_params[downcase_first_letter('LoadEncoding')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('Password')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Password') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Password')] = request. unless request..nil?
      end

      # header parameters
      header_params = {}

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['JWT']
	  
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#get_document_protection\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Reads document statistics.
    # 
    # @param request GetDocumentStatisticsRequest
    # @return [nil]
    def get_document_statistics(request)
      begin
        data, _status_code, _headers = get_document_statistics_with_http_info(request)
        rescue ApiError => e
          if e.code == 401
            request_token
            data, _status_code, _headers = get_document_statistics_with_http_info(request)
          else
            raise
          end
      end			
      data
    end

    # Reads document statistics.
    # 
    # @param request GetDocumentStatisticsRequest
    # @return [Array<(nil, Fixnum, Hash)>]
    # nil, response status code and response headers
    private def get_document_statistics_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? GetDocumentStatisticsRequest

      @api_client.config.logger.debug 'Calling API: WordsApi.get_document_statistics ...' if @api_client.config.debugging
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.get_document_statistics' if @api_client.config.client_side_validation && request..nil?
      # resource path
      local_var_path = '/words/{name}/statistics'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request..to_s)

      # query parameters
      query_params = {}
      if local_var_path.include? downcase_first_letter('Folder')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Folder') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Folder')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('Storage')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Storage') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Storage')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('LoadEncoding')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('LoadEncoding') + '}', request..to_s)
      else
        query_params[downcase_first_letter('LoadEncoding')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('Password')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Password') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Password')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('IncludeComments')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('IncludeComments') + '}', request..to_s)
      else
        query_params[downcase_first_letter('IncludeComments')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('IncludeFootnotes')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('IncludeFootnotes') + '}', request..to_s)
      else
        query_params[downcase_first_letter('IncludeFootnotes')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('IncludeTextInShapes')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('IncludeTextInShapes') + '}', request..to_s)
      else
        query_params[downcase_first_letter('IncludeTextInShapes')] = request. unless request..nil?
      end

      # header parameters
      header_params = {}

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['JWT']
	  
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#get_document_statistics\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Exports the document into the specified format.
    # 
    # @param request GetDocumentWithFormatRequest
    # @return [nil]
    def get_document_with_format(request)
      begin
        data, _status_code, _headers = get_document_with_format_with_http_info(request)
        rescue ApiError => e
          if e.code == 401
            request_token
            data, _status_code, _headers = get_document_with_format_with_http_info(request)
          else
            raise
          end
      end			
      data
    end

    # Exports the document into the specified format.
    # 
    # @param request GetDocumentWithFormatRequest
    # @return [Array<(nil, Fixnum, Hash)>]
    # nil, response status code and response headers
    private def get_document_with_format_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? GetDocumentWithFormatRequest

      @api_client.config.logger.debug 'Calling API: WordsApi.get_document_with_format ...' if @api_client.config.debugging
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.get_document_with_format' if @api_client.config.client_side_validation && request..nil?
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.get_document_with_format' if @api_client.config.client_side_validation && request..nil?
      # resource path
      local_var_path = '/words/{name}'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request..to_s)

      # query parameters
      query_params = {}
      query_params[downcase_first_letter('Format')] = request.

      if local_var_path.include? downcase_first_letter('Folder')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Folder') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Folder')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('Storage')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Storage') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Storage')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('LoadEncoding')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('LoadEncoding') + '}', request..to_s)
      else
        query_params[downcase_first_letter('LoadEncoding')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('Password')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Password') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Password')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('OutPath')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('OutPath') + '}', request..to_s)
      else
        query_params[downcase_first_letter('OutPath')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('FontsLocation')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('FontsLocation') + '}', request..to_s)
      else
        query_params[downcase_first_letter('FontsLocation')] = request. unless request..nil?
      end

      # header parameters
      header_params = {}

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['JWT']
	  
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#get_document_with_format\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Gets field from document.
    # 
    # @param request GetFieldRequest
    # @return [nil]
    def get_field(request)
      begin
        data, _status_code, _headers = get_field_with_http_info(request)
        rescue ApiError => e
          if e.code == 401
            request_token
            data, _status_code, _headers = get_field_with_http_info(request)
          else
            raise
          end
      end			
      data
    end

    # Gets field from document.
    # 
    # @param request GetFieldRequest
    # @return [Array<(nil, Fixnum, Hash)>]
    # nil, response status code and response headers
    private def get_field_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? GetFieldRequest

      @api_client.config.logger.debug 'Calling API: WordsApi.get_field ...' if @api_client.config.debugging
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.get_field' if @api_client.config.client_side_validation && request..nil?
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.get_field' if @api_client.config.client_side_validation && request..nil?
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.get_field' if @api_client.config.client_side_validation && request..nil?
      # resource path
      local_var_path = '/words/{name}/{nodePath}/fields/{index}'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request..to_s)
      local_var_path = local_var_path.sub('{' + downcase_first_letter('NodePath') + '}', request..to_s)
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Index') + '}', request..to_s)

      # query parameters
      query_params = {}
      if local_var_path.include? downcase_first_letter('Folder')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Folder') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Folder')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('Storage')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Storage') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Storage')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('LoadEncoding')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('LoadEncoding') + '}', request..to_s)
      else
        query_params[downcase_first_letter('LoadEncoding')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('Password')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Password') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Password')] = request. unless request..nil?
      end

      # header parameters
      header_params = {}

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['JWT']
	  
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#get_field\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Gets field from document.
    # 
    # @param request GetFieldWithoutNodePathRequest
    # @return [nil]
    def get_field_without_node_path(request)
      begin
        data, _status_code, _headers = get_field_without_node_path_with_http_info(request)
        rescue ApiError => e
          if e.code == 401
            request_token
            data, _status_code, _headers = get_field_without_node_path_with_http_info(request)
          else
            raise
          end
      end			
      data
    end

    # Gets field from document.
    # 
    # @param request GetFieldWithoutNodePathRequest
    # @return [Array<(nil, Fixnum, Hash)>]
    # nil, response status code and response headers
    private def get_field_without_node_path_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? GetFieldWithoutNodePathRequest

      @api_client.config.logger.debug 'Calling API: WordsApi.get_field_without_node_path ...' if @api_client.config.debugging
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.get_field_without_node_path' if @api_client.config.client_side_validation && request..nil?
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.get_field_without_node_path' if @api_client.config.client_side_validation && request..nil?
      # resource path
      local_var_path = '/words/{name}/fields/{index}'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request..to_s)
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Index') + '}', request..to_s)

      # query parameters
      query_params = {}
      if local_var_path.include? downcase_first_letter('Folder')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Folder') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Folder')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('Storage')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Storage') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Storage')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('LoadEncoding')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('LoadEncoding') + '}', request..to_s)
      else
        query_params[downcase_first_letter('LoadEncoding')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('Password')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Password') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Password')] = request. unless request..nil?
      end

      # header parameters
      header_params = {}

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['JWT']
	  
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#get_field_without_node_path\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Get fields from document.
    # 
    # @param request GetFieldsRequest
    # @return [nil]
    def get_fields(request)
      begin
        data, _status_code, _headers = get_fields_with_http_info(request)
        rescue ApiError => e
          if e.code == 401
            request_token
            data, _status_code, _headers = get_fields_with_http_info(request)
          else
            raise
          end
      end			
      data
    end

    # Get fields from document.
    # 
    # @param request GetFieldsRequest
    # @return [Array<(nil, Fixnum, Hash)>]
    # nil, response status code and response headers
    private def get_fields_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? GetFieldsRequest

      @api_client.config.logger.debug 'Calling API: WordsApi.get_fields ...' if @api_client.config.debugging
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.get_fields' if @api_client.config.client_side_validation && request..nil?
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.get_fields' if @api_client.config.client_side_validation && request..nil?
      # resource path
      local_var_path = '/words/{name}/{nodePath}/fields'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request..to_s)
      local_var_path = local_var_path.sub('{' + downcase_first_letter('NodePath') + '}', request..to_s)

      # query parameters
      query_params = {}
      if local_var_path.include? downcase_first_letter('Folder')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Folder') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Folder')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('Storage')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Storage') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Storage')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('LoadEncoding')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('LoadEncoding') + '}', request..to_s)
      else
        query_params[downcase_first_letter('LoadEncoding')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('Password')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Password') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Password')] = request. unless request..nil?
      end

      # header parameters
      header_params = {}

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['JWT']
	  
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#get_fields\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Get fields from document.
    # 
    # @param request GetFieldsWithoutNodePathRequest
    # @return [nil]
    def get_fields_without_node_path(request)
      begin
        data, _status_code, _headers = get_fields_without_node_path_with_http_info(request)
        rescue ApiError => e
          if e.code == 401
            request_token
            data, _status_code, _headers = get_fields_without_node_path_with_http_info(request)
          else
            raise
          end
      end			
      data
    end

    # Get fields from document.
    # 
    # @param request GetFieldsWithoutNodePathRequest
    # @return [Array<(nil, Fixnum, Hash)>]
    # nil, response status code and response headers
    private def get_fields_without_node_path_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? GetFieldsWithoutNodePathRequest

      @api_client.config.logger.debug 'Calling API: WordsApi.get_fields_without_node_path ...' if @api_client.config.debugging
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.get_fields_without_node_path' if @api_client.config.client_side_validation && request..nil?
      # resource path
      local_var_path = '/words/{name}/fields'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request..to_s)

      # query parameters
      query_params = {}
      if local_var_path.include? downcase_first_letter('Folder')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Folder') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Folder')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('Storage')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Storage') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Storage')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('LoadEncoding')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('LoadEncoding') + '}', request..to_s)
      else
        query_params[downcase_first_letter('LoadEncoding')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('Password')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Password') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Password')] = request. unless request..nil?
      end

      # header parameters
      header_params = {}

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['JWT']
	  
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#get_fields_without_node_path\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Get all files and folders within a folder
    # 
    # @param request GetFilesListRequest
    # @return [nil]
    def get_files_list(request)
      begin
        data, _status_code, _headers = get_files_list_with_http_info(request)
        rescue ApiError => e
          if e.code == 401
            request_token
            data, _status_code, _headers = get_files_list_with_http_info(request)
          else
            raise
          end
      end			
      data
    end

    # Get all files and folders within a folder
    # 
    # @param request GetFilesListRequest
    # @return [Array<(nil, Fixnum, Hash)>]
    # nil, response status code and response headers
    private def get_files_list_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? GetFilesListRequest

      @api_client.config.logger.debug 'Calling API: WordsApi.get_files_list ...' if @api_client.config.debugging
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.get_files_list' if @api_client.config.client_side_validation && request..nil?
      # resource path
      local_var_path = '/words/storage/folder/{path}'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Path') + '}', request..to_s)

      # query parameters
      query_params = {}
      if local_var_path.include? downcase_first_letter('StorageName')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('StorageName') + '}', request..to_s)
      else
        query_params[downcase_first_letter('StorageName')] = request. unless request..nil?
      end

      # header parameters
      header_params = {}

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['JWT']
	  
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#get_files_list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Reads footnote by index.
    # 
    # @param request GetFootnoteRequest
    # @return [nil]
    def get_footnote(request)
      begin
        data, _status_code, _headers = get_footnote_with_http_info(request)
        rescue ApiError => e
          if e.code == 401
            request_token
            data, _status_code, _headers = get_footnote_with_http_info(request)
          else
            raise
          end
      end			
      data
    end

    # Reads footnote by index.
    # 
    # @param request GetFootnoteRequest
    # @return [Array<(nil, Fixnum, Hash)>]
    # nil, response status code and response headers
    private def get_footnote_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? GetFootnoteRequest

      @api_client.config.logger.debug 'Calling API: WordsApi.get_footnote ...' if @api_client.config.debugging
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.get_footnote' if @api_client.config.client_side_validation && request..nil?
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.get_footnote' if @api_client.config.client_side_validation && request..nil?
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.get_footnote' if @api_client.config.client_side_validation && request..nil?
      # resource path
      local_var_path = '/words/{name}/{nodePath}/footnotes/{index}'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request..to_s)
      local_var_path = local_var_path.sub('{' + downcase_first_letter('NodePath') + '}', request..to_s)
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Index') + '}', request..to_s)

      # query parameters
      query_params = {}
      if local_var_path.include? downcase_first_letter('Folder')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Folder') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Folder')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('Storage')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Storage') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Storage')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('LoadEncoding')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('LoadEncoding') + '}', request..to_s)
      else
        query_params[downcase_first_letter('LoadEncoding')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('Password')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Password') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Password')] = request. unless request..nil?
      end

      # header parameters
      header_params = {}

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['JWT']
	  
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#get_footnote\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Reads footnote by index.
    # 
    # @param request GetFootnoteWithoutNodePathRequest
    # @return [nil]
    def get_footnote_without_node_path(request)
      begin
        data, _status_code, _headers = get_footnote_without_node_path_with_http_info(request)
        rescue ApiError => e
          if e.code == 401
            request_token
            data, _status_code, _headers = get_footnote_without_node_path_with_http_info(request)
          else
            raise
          end
      end			
      data
    end

    # Reads footnote by index.
    # 
    # @param request GetFootnoteWithoutNodePathRequest
    # @return [Array<(nil, Fixnum, Hash)>]
    # nil, response status code and response headers
    private def get_footnote_without_node_path_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? GetFootnoteWithoutNodePathRequest

      @api_client.config.logger.debug 'Calling API: WordsApi.get_footnote_without_node_path ...' if @api_client.config.debugging
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.get_footnote_without_node_path' if @api_client.config.client_side_validation && request..nil?
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.get_footnote_without_node_path' if @api_client.config.client_side_validation && request..nil?
      # resource path
      local_var_path = '/words/{name}/footnotes/{index}'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request..to_s)
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Index') + '}', request..to_s)

      # query parameters
      query_params = {}
      if local_var_path.include? downcase_first_letter('Folder')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Folder') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Folder')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('Storage')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Storage') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Storage')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('LoadEncoding')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('LoadEncoding') + '}', request..to_s)
      else
        query_params[downcase_first_letter('LoadEncoding')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('Password')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Password') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Password')] = request. unless request..nil?
      end

      # header parameters
      header_params = {}

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['JWT']
	  
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#get_footnote_without_node_path\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Gets footnotes from document.
    # 
    # @param request GetFootnotesRequest
    # @return [nil]
    def get_footnotes(request)
      begin
        data, _status_code, _headers = get_footnotes_with_http_info(request)
        rescue ApiError => e
          if e.code == 401
            request_token
            data, _status_code, _headers = get_footnotes_with_http_info(request)
          else
            raise
          end
      end			
      data
    end

    # Gets footnotes from document.
    # 
    # @param request GetFootnotesRequest
    # @return [Array<(nil, Fixnum, Hash)>]
    # nil, response status code and response headers
    private def get_footnotes_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? GetFootnotesRequest

      @api_client.config.logger.debug 'Calling API: WordsApi.get_footnotes ...' if @api_client.config.debugging
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.get_footnotes' if @api_client.config.client_side_validation && request..nil?
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.get_footnotes' if @api_client.config.client_side_validation && request..nil?
      # resource path
      local_var_path = '/words/{name}/{nodePath}/footnotes'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request..to_s)
      local_var_path = local_var_path.sub('{' + downcase_first_letter('NodePath') + '}', request..to_s)

      # query parameters
      query_params = {}
      if local_var_path.include? downcase_first_letter('Folder')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Folder') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Folder')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('Storage')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Storage') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Storage')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('LoadEncoding')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('LoadEncoding') + '}', request..to_s)
      else
        query_params[downcase_first_letter('LoadEncoding')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('Password')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Password') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Password')] = request. unless request..nil?
      end

      # header parameters
      header_params = {}

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['JWT']
	  
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#get_footnotes\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Gets footnotes from document.
    # 
    # @param request GetFootnotesWithoutNodePathRequest
    # @return [nil]
    def get_footnotes_without_node_path(request)
      begin
        data, _status_code, _headers = get_footnotes_without_node_path_with_http_info(request)
        rescue ApiError => e
          if e.code == 401
            request_token
            data, _status_code, _headers = get_footnotes_without_node_path_with_http_info(request)
          else
            raise
          end
      end			
      data
    end

    # Gets footnotes from document.
    # 
    # @param request GetFootnotesWithoutNodePathRequest
    # @return [Array<(nil, Fixnum, Hash)>]
    # nil, response status code and response headers
    private def get_footnotes_without_node_path_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? GetFootnotesWithoutNodePathRequest

      @api_client.config.logger.debug 'Calling API: WordsApi.get_footnotes_without_node_path ...' if @api_client.config.debugging
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.get_footnotes_without_node_path' if @api_client.config.client_side_validation && request..nil?
      # resource path
      local_var_path = '/words/{name}/footnotes'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request..to_s)

      # query parameters
      query_params = {}
      if local_var_path.include? downcase_first_letter('Folder')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Folder') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Folder')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('Storage')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Storage') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Storage')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('LoadEncoding')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('LoadEncoding') + '}', request..to_s)
      else
        query_params[downcase_first_letter('LoadEncoding')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('Password')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Password') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Password')] = request. unless request..nil?
      end

      # header parameters
      header_params = {}

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['JWT']
	  
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#get_footnotes_without_node_path\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Returns representation of an one of the form field.
    # 
    # @param request GetFormFieldRequest
    # @return [nil]
    def get_form_field(request)
      begin
        data, _status_code, _headers = get_form_field_with_http_info(request)
        rescue ApiError => e
          if e.code == 401
            request_token
            data, _status_code, _headers = get_form_field_with_http_info(request)
          else
            raise
          end
      end			
      data
    end

    # Returns representation of an one of the form field.
    # 
    # @param request GetFormFieldRequest
    # @return [Array<(nil, Fixnum, Hash)>]
    # nil, response status code and response headers
    private def get_form_field_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? GetFormFieldRequest

      @api_client.config.logger.debug 'Calling API: WordsApi.get_form_field ...' if @api_client.config.debugging
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.get_form_field' if @api_client.config.client_side_validation && request..nil?
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.get_form_field' if @api_client.config.client_side_validation && request..nil?
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.get_form_field' if @api_client.config.client_side_validation && request..nil?
      # resource path
      local_var_path = '/words/{name}/{nodePath}/formfields/{index}'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request..to_s)
      local_var_path = local_var_path.sub('{' + downcase_first_letter('NodePath') + '}', request..to_s)
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Index') + '}', request..to_s)

      # query parameters
      query_params = {}
      if local_var_path.include? downcase_first_letter('Folder')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Folder') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Folder')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('Storage')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Storage') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Storage')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('LoadEncoding')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('LoadEncoding') + '}', request..to_s)
      else
        query_params[downcase_first_letter('LoadEncoding')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('Password')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Password') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Password')] = request. unless request..nil?
      end

      # header parameters
      header_params = {}

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['JWT']
	  
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#get_form_field\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Returns representation of an one of the form field.
    # 
    # @param request GetFormFieldWithoutNodePathRequest
    # @return [nil]
    def get_form_field_without_node_path(request)
      begin
        data, _status_code, _headers = get_form_field_without_node_path_with_http_info(request)
        rescue ApiError => e
          if e.code == 401
            request_token
            data, _status_code, _headers = get_form_field_without_node_path_with_http_info(request)
          else
            raise
          end
      end			
      data
    end

    # Returns representation of an one of the form field.
    # 
    # @param request GetFormFieldWithoutNodePathRequest
    # @return [Array<(nil, Fixnum, Hash)>]
    # nil, response status code and response headers
    private def get_form_field_without_node_path_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? GetFormFieldWithoutNodePathRequest

      @api_client.config.logger.debug 'Calling API: WordsApi.get_form_field_without_node_path ...' if @api_client.config.debugging
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.get_form_field_without_node_path' if @api_client.config.client_side_validation && request..nil?
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.get_form_field_without_node_path' if @api_client.config.client_side_validation && request..nil?
      # resource path
      local_var_path = '/words/{name}/formfields/{index}'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request..to_s)
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Index') + '}', request..to_s)

      # query parameters
      query_params = {}
      if local_var_path.include? downcase_first_letter('Folder')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Folder') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Folder')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('Storage')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Storage') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Storage')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('LoadEncoding')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('LoadEncoding') + '}', request..to_s)
      else
        query_params[downcase_first_letter('LoadEncoding')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('Password')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Password') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Password')] = request. unless request..nil?
      end

      # header parameters
      header_params = {}

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['JWT']
	  
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#get_form_field_without_node_path\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Gets form fields from document.
    # 
    # @param request GetFormFieldsRequest
    # @return [nil]
    def get_form_fields(request)
      begin
        data, _status_code, _headers = get_form_fields_with_http_info(request)
        rescue ApiError => e
          if e.code == 401
            request_token
            data, _status_code, _headers = get_form_fields_with_http_info(request)
          else
            raise
          end
      end			
      data
    end

    # Gets form fields from document.
    # 
    # @param request GetFormFieldsRequest
    # @return [Array<(nil, Fixnum, Hash)>]
    # nil, response status code and response headers
    private def get_form_fields_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? GetFormFieldsRequest

      @api_client.config.logger.debug 'Calling API: WordsApi.get_form_fields ...' if @api_client.config.debugging
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.get_form_fields' if @api_client.config.client_side_validation && request..nil?
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.get_form_fields' if @api_client.config.client_side_validation && request..nil?
      # resource path
      local_var_path = '/words/{name}/{nodePath}/formfields'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request..to_s)
      local_var_path = local_var_path.sub('{' + downcase_first_letter('NodePath') + '}', request..to_s)

      # query parameters
      query_params = {}
      if local_var_path.include? downcase_first_letter('Folder')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Folder') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Folder')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('Storage')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Storage') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Storage')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('LoadEncoding')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('LoadEncoding') + '}', request..to_s)
      else
        query_params[downcase_first_letter('LoadEncoding')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('Password')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Password') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Password')] = request. unless request..nil?
      end

      # header parameters
      header_params = {}

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['JWT']
	  
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#get_form_fields\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Gets form fields from document.
    # 
    # @param request GetFormFieldsWithoutNodePathRequest
    # @return [nil]
    def get_form_fields_without_node_path(request)
      begin
        data, _status_code, _headers = get_form_fields_without_node_path_with_http_info(request)
        rescue ApiError => e
          if e.code == 401
            request_token
            data, _status_code, _headers = get_form_fields_without_node_path_with_http_info(request)
          else
            raise
          end
      end			
      data
    end

    # Gets form fields from document.
    # 
    # @param request GetFormFieldsWithoutNodePathRequest
    # @return [Array<(nil, Fixnum, Hash)>]
    # nil, response status code and response headers
    private def get_form_fields_without_node_path_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? GetFormFieldsWithoutNodePathRequest

      @api_client.config.logger.debug 'Calling API: WordsApi.get_form_fields_without_node_path ...' if @api_client.config.debugging
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.get_form_fields_without_node_path' if @api_client.config.client_side_validation && request..nil?
      # resource path
      local_var_path = '/words/{name}/formfields'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request..to_s)

      # query parameters
      query_params = {}
      if local_var_path.include? downcase_first_letter('Folder')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Folder') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Folder')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('Storage')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Storage') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Storage')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('LoadEncoding')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('LoadEncoding') + '}', request..to_s)
      else
        query_params[downcase_first_letter('LoadEncoding')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('Password')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Password') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Password')] = request. unless request..nil?
      end

      # header parameters
      header_params = {}

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['JWT']
	  
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#get_form_fields_without_node_path\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Returns a header/footer from the document by index.
    # 
    # @param request GetHeaderFooterRequest
    # @return [nil]
    def get_header_footer(request)
      begin
        data, _status_code, _headers = get_header_footer_with_http_info(request)
        rescue ApiError => e
          if e.code == 401
            request_token
            data, _status_code, _headers = get_header_footer_with_http_info(request)
          else
            raise
          end
      end			
      data
    end

    # Returns a header/footer from the document by index.
    # 
    # @param request GetHeaderFooterRequest
    # @return [Array<(nil, Fixnum, Hash)>]
    # nil, response status code and response headers
    private def get_header_footer_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? GetHeaderFooterRequest

      @api_client.config.logger.debug 'Calling API: WordsApi.get_header_footer ...' if @api_client.config.debugging
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.get_header_footer' if @api_client.config.client_side_validation && request..nil?
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.get_header_footer' if @api_client.config.client_side_validation && request..nil?
      # resource path
      local_var_path = '/words/{name}/headersfooters/{headerFooterIndex}'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request..to_s)
      local_var_path = local_var_path.sub('{' + downcase_first_letter('HeaderFooterIndex') + '}', request..to_s)

      # query parameters
      query_params = {}
      if local_var_path.include? downcase_first_letter('Folder')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Folder') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Folder')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('Storage')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Storage') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Storage')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('LoadEncoding')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('LoadEncoding') + '}', request..to_s)
      else
        query_params[downcase_first_letter('LoadEncoding')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('Password')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Password') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Password')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('FilterByType')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('FilterByType') + '}', request..to_s)
      else
        query_params[downcase_first_letter('FilterByType')] = request. unless request..nil?
      end

      # header parameters
      header_params = {}

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['JWT']
	  
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#get_header_footer\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Returns a header/footer from the document section.
    # 
    # @param request GetHeaderFooterOfSectionRequest
    # @return [nil]
    def get_header_footer_of_section(request)
      begin
        data, _status_code, _headers = get_header_footer_of_section_with_http_info(request)
        rescue ApiError => e
          if e.code == 401
            request_token
            data, _status_code, _headers = get_header_footer_of_section_with_http_info(request)
          else
            raise
          end
      end			
      data
    end

    # Returns a header/footer from the document section.
    # 
    # @param request GetHeaderFooterOfSectionRequest
    # @return [Array<(nil, Fixnum, Hash)>]
    # nil, response status code and response headers
    private def get_header_footer_of_section_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? GetHeaderFooterOfSectionRequest

      @api_client.config.logger.debug 'Calling API: WordsApi.get_header_footer_of_section ...' if @api_client.config.debugging
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.get_header_footer_of_section' if @api_client.config.client_side_validation && request..nil?
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.get_header_footer_of_section' if @api_client.config.client_side_validation && request..nil?
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.get_header_footer_of_section' if @api_client.config.client_side_validation && request..nil?
      # resource path
      local_var_path = '/words/{name}/sections/{sectionIndex}/headersfooters/{headerFooterIndex}'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request..to_s)
      local_var_path = local_var_path.sub('{' + downcase_first_letter('HeaderFooterIndex') + '}', request..to_s)
      local_var_path = local_var_path.sub('{' + downcase_first_letter('SectionIndex') + '}', request..to_s)

      # query parameters
      query_params = {}
      if local_var_path.include? downcase_first_letter('Folder')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Folder') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Folder')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('Storage')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Storage') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Storage')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('LoadEncoding')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('LoadEncoding') + '}', request..to_s)
      else
        query_params[downcase_first_letter('LoadEncoding')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('Password')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Password') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Password')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('FilterByType')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('FilterByType') + '}', request..to_s)
      else
        query_params[downcase_first_letter('FilterByType')] = request. unless request..nil?
      end

      # header parameters
      header_params = {}

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['JWT']
	  
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#get_header_footer_of_section\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Returns a list of header/footers from the document.
    # 
    # @param request GetHeaderFootersRequest
    # @return [nil]
    def get_header_footers(request)
      begin
        data, _status_code, _headers = get_header_footers_with_http_info(request)
        rescue ApiError => e
          if e.code == 401
            request_token
            data, _status_code, _headers = get_header_footers_with_http_info(request)
          else
            raise
          end
      end			
      data
    end

    # Returns a list of header/footers from the document.
    # 
    # @param request GetHeaderFootersRequest
    # @return [Array<(nil, Fixnum, Hash)>]
    # nil, response status code and response headers
    private def get_header_footers_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? GetHeaderFootersRequest

      @api_client.config.logger.debug 'Calling API: WordsApi.get_header_footers ...' if @api_client.config.debugging
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.get_header_footers' if @api_client.config.client_side_validation && request..nil?
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.get_header_footers' if @api_client.config.client_side_validation && request..nil?
      # resource path
      local_var_path = '/words/{name}/{sectionPath}/headersfooters'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request..to_s)
      local_var_path = local_var_path.sub('{' + downcase_first_letter('SectionPath') + '}', request..to_s)

      # query parameters
      query_params = {}
      if local_var_path.include? downcase_first_letter('Folder')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Folder') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Folder')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('Storage')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Storage') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Storage')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('LoadEncoding')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('LoadEncoding') + '}', request..to_s)
      else
        query_params[downcase_first_letter('LoadEncoding')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('Password')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Password') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Password')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('FilterByType')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('FilterByType') + '}', request..to_s)
      else
        query_params[downcase_first_letter('FilterByType')] = request. unless request..nil?
      end

      # header parameters
      header_params = {}

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['JWT']
	  
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#get_header_footers\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Reads OfficeMath object by index.
    # 
    # @param request GetOfficeMathObjectRequest
    # @return [nil]
    def get_office_math_object(request)
      begin
        data, _status_code, _headers = get_office_math_object_with_http_info(request)
        rescue ApiError => e
          if e.code == 401
            request_token
            data, _status_code, _headers = get_office_math_object_with_http_info(request)
          else
            raise
          end
      end			
      data
    end

    # Reads OfficeMath object by index.
    # 
    # @param request GetOfficeMathObjectRequest
    # @return [Array<(nil, Fixnum, Hash)>]
    # nil, response status code and response headers
    private def get_office_math_object_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? GetOfficeMathObjectRequest

      @api_client.config.logger.debug 'Calling API: WordsApi.get_office_math_object ...' if @api_client.config.debugging
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.get_office_math_object' if @api_client.config.client_side_validation && request..nil?
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.get_office_math_object' if @api_client.config.client_side_validation && request..nil?
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.get_office_math_object' if @api_client.config.client_side_validation && request..nil?
      # resource path
      local_var_path = '/words/{name}/{nodePath}/OfficeMathObjects/{index}'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request..to_s)
      local_var_path = local_var_path.sub('{' + downcase_first_letter('NodePath') + '}', request..to_s)
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Index') + '}', request..to_s)

      # query parameters
      query_params = {}
      if local_var_path.include? downcase_first_letter('Folder')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Folder') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Folder')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('Storage')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Storage') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Storage')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('LoadEncoding')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('LoadEncoding') + '}', request..to_s)
      else
        query_params[downcase_first_letter('LoadEncoding')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('Password')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Password') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Password')] = request. unless request..nil?
      end

      # header parameters
      header_params = {}

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['JWT']
	  
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#get_office_math_object\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Reads OfficeMath object by index.
    # 
    # @param request GetOfficeMathObjectWithoutNodePathRequest
    # @return [nil]
    def get_office_math_object_without_node_path(request)
      begin
        data, _status_code, _headers = get_office_math_object_without_node_path_with_http_info(request)
        rescue ApiError => e
          if e.code == 401
            request_token
            data, _status_code, _headers = get_office_math_object_without_node_path_with_http_info(request)
          else
            raise
          end
      end			
      data
    end

    # Reads OfficeMath object by index.
    # 
    # @param request GetOfficeMathObjectWithoutNodePathRequest
    # @return [Array<(nil, Fixnum, Hash)>]
    # nil, response status code and response headers
    private def get_office_math_object_without_node_path_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? GetOfficeMathObjectWithoutNodePathRequest

      @api_client.config.logger.debug 'Calling API: WordsApi.get_office_math_object_without_node_path ...' if @api_client.config.debugging
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.get_office_math_object_without_node_path' if @api_client.config.client_side_validation && request..nil?
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.get_office_math_object_without_node_path' if @api_client.config.client_side_validation && request..nil?
      # resource path
      local_var_path = '/words/{name}/OfficeMathObjects/{index}'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request..to_s)
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Index') + '}', request..to_s)

      # query parameters
      query_params = {}
      if local_var_path.include? downcase_first_letter('Folder')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Folder') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Folder')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('Storage')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Storage') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Storage')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('LoadEncoding')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('LoadEncoding') + '}', request..to_s)
      else
        query_params[downcase_first_letter('LoadEncoding')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('Password')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Password') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Password')] = request. unless request..nil?
      end

      # header parameters
      header_params = {}

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['JWT']
	  
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#get_office_math_object_without_node_path\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Gets OfficeMath objects from document.
    # 
    # @param request GetOfficeMathObjectsRequest
    # @return [nil]
    def get_office_math_objects(request)
      begin
        data, _status_code, _headers = get_office_math_objects_with_http_info(request)
        rescue ApiError => e
          if e.code == 401
            request_token
            data, _status_code, _headers = get_office_math_objects_with_http_info(request)
          else
            raise
          end
      end			
      data
    end

    # Gets OfficeMath objects from document.
    # 
    # @param request GetOfficeMathObjectsRequest
    # @return [Array<(nil, Fixnum, Hash)>]
    # nil, response status code and response headers
    private def get_office_math_objects_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? GetOfficeMathObjectsRequest

      @api_client.config.logger.debug 'Calling API: WordsApi.get_office_math_objects ...' if @api_client.config.debugging
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.get_office_math_objects' if @api_client.config.client_side_validation && request..nil?
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.get_office_math_objects' if @api_client.config.client_side_validation && request..nil?
      # resource path
      local_var_path = '/words/{name}/{nodePath}/OfficeMathObjects'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request..to_s)
      local_var_path = local_var_path.sub('{' + downcase_first_letter('NodePath') + '}', request..to_s)

      # query parameters
      query_params = {}
      if local_var_path.include? downcase_first_letter('Folder')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Folder') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Folder')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('Storage')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Storage') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Storage')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('LoadEncoding')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('LoadEncoding') + '}', request..to_s)
      else
        query_params[downcase_first_letter('LoadEncoding')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('Password')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Password') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Password')] = request. unless request..nil?
      end

      # header parameters
      header_params = {}

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['JWT']
	  
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#get_office_math_objects\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Gets OfficeMath objects from document.
    # 
    # @param request GetOfficeMathObjectsWithoutNodePathRequest
    # @return [nil]
    def get_office_math_objects_without_node_path(request)
      begin
        data, _status_code, _headers = get_office_math_objects_without_node_path_with_http_info(request)
        rescue ApiError => e
          if e.code == 401
            request_token
            data, _status_code, _headers = get_office_math_objects_without_node_path_with_http_info(request)
          else
            raise
          end
      end			
      data
    end

    # Gets OfficeMath objects from document.
    # 
    # @param request GetOfficeMathObjectsWithoutNodePathRequest
    # @return [Array<(nil, Fixnum, Hash)>]
    # nil, response status code and response headers
    private def get_office_math_objects_without_node_path_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? GetOfficeMathObjectsWithoutNodePathRequest

      @api_client.config.logger.debug 'Calling API: WordsApi.get_office_math_objects_without_node_path ...' if @api_client.config.debugging
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.get_office_math_objects_without_node_path' if @api_client.config.client_side_validation && request..nil?
      # resource path
      local_var_path = '/words/{name}/OfficeMathObjects'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request..to_s)

      # query parameters
      query_params = {}
      if local_var_path.include? downcase_first_letter('Folder')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Folder') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Folder')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('Storage')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Storage') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Storage')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('LoadEncoding')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('LoadEncoding') + '}', request..to_s)
      else
        query_params[downcase_first_letter('LoadEncoding')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('Password')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Password') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Password')] = request. unless request..nil?
      end

      # header parameters
      header_params = {}

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['JWT']
	  
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#get_office_math_objects_without_node_path\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # This resource represents one of the paragraphs contained in the document.
    # 
    # @param request GetParagraphRequest
    # @return [nil]
    def get_paragraph(request)
      begin
        data, _status_code, _headers = get_paragraph_with_http_info(request)
        rescue ApiError => e
          if e.code == 401
            request_token
            data, _status_code, _headers = get_paragraph_with_http_info(request)
          else
            raise
          end
      end			
      data
    end

    # This resource represents one of the paragraphs contained in the document.
    # 
    # @param request GetParagraphRequest
    # @return [Array<(nil, Fixnum, Hash)>]
    # nil, response status code and response headers
    private def get_paragraph_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? GetParagraphRequest

      @api_client.config.logger.debug 'Calling API: WordsApi.get_paragraph ...' if @api_client.config.debugging
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.get_paragraph' if @api_client.config.client_side_validation && request..nil?
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.get_paragraph' if @api_client.config.client_side_validation && request..nil?
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.get_paragraph' if @api_client.config.client_side_validation && request..nil?
      # resource path
      local_var_path = '/words/{name}/{nodePath}/paragraphs/{index}'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request..to_s)
      local_var_path = local_var_path.sub('{' + downcase_first_letter('NodePath') + '}', request..to_s)
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Index') + '}', request..to_s)

      # query parameters
      query_params = {}
      if local_var_path.include? downcase_first_letter('Folder')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Folder') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Folder')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('Storage')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Storage') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Storage')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('LoadEncoding')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('LoadEncoding') + '}', request..to_s)
      else
        query_params[downcase_first_letter('LoadEncoding')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('Password')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Password') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Password')] = request. unless request..nil?
      end

      # header parameters
      header_params = {}

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['JWT']
	  
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#get_paragraph\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Represents all the formatting for a paragraph.
    # 
    # @param request GetParagraphFormatRequest
    # @return [nil]
    def get_paragraph_format(request)
      begin
        data, _status_code, _headers = get_paragraph_format_with_http_info(request)
        rescue ApiError => e
          if e.code == 401
            request_token
            data, _status_code, _headers = get_paragraph_format_with_http_info(request)
          else
            raise
          end
      end			
      data
    end

    # Represents all the formatting for a paragraph.
    # 
    # @param request GetParagraphFormatRequest
    # @return [Array<(nil, Fixnum, Hash)>]
    # nil, response status code and response headers
    private def get_paragraph_format_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? GetParagraphFormatRequest

      @api_client.config.logger.debug 'Calling API: WordsApi.get_paragraph_format ...' if @api_client.config.debugging
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.get_paragraph_format' if @api_client.config.client_side_validation && request..nil?
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.get_paragraph_format' if @api_client.config.client_side_validation && request..nil?
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.get_paragraph_format' if @api_client.config.client_side_validation && request..nil?
      # resource path
      local_var_path = '/words/{name}/{nodePath}/paragraphs/{index}/format'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request..to_s)
      local_var_path = local_var_path.sub('{' + downcase_first_letter('NodePath') + '}', request..to_s)
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Index') + '}', request..to_s)

      # query parameters
      query_params = {}
      if local_var_path.include? downcase_first_letter('Folder')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Folder') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Folder')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('Storage')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Storage') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Storage')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('LoadEncoding')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('LoadEncoding') + '}', request..to_s)
      else
        query_params[downcase_first_letter('LoadEncoding')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('Password')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Password') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Password')] = request. unless request..nil?
      end

      # header parameters
      header_params = {}

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['JWT']
	  
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#get_paragraph_format\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Represents all the formatting for a paragraph.
    # 
    # @param request GetParagraphFormatWithoutNodePathRequest
    # @return [nil]
    def get_paragraph_format_without_node_path(request)
      begin
        data, _status_code, _headers = get_paragraph_format_without_node_path_with_http_info(request)
        rescue ApiError => e
          if e.code == 401
            request_token
            data, _status_code, _headers = get_paragraph_format_without_node_path_with_http_info(request)
          else
            raise
          end
      end			
      data
    end

    # Represents all the formatting for a paragraph.
    # 
    # @param request GetParagraphFormatWithoutNodePathRequest
    # @return [Array<(nil, Fixnum, Hash)>]
    # nil, response status code and response headers
    private def get_paragraph_format_without_node_path_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? GetParagraphFormatWithoutNodePathRequest

      @api_client.config.logger.debug 'Calling API: WordsApi.get_paragraph_format_without_node_path ...' if @api_client.config.debugging
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.get_paragraph_format_without_node_path' if @api_client.config.client_side_validation && request..nil?
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.get_paragraph_format_without_node_path' if @api_client.config.client_side_validation && request..nil?
      # resource path
      local_var_path = '/words/{name}/paragraphs/{index}/format'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request..to_s)
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Index') + '}', request..to_s)

      # query parameters
      query_params = {}
      if local_var_path.include? downcase_first_letter('Folder')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Folder') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Folder')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('Storage')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Storage') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Storage')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('LoadEncoding')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('LoadEncoding') + '}', request..to_s)
      else
        query_params[downcase_first_letter('LoadEncoding')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('Password')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Password') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Password')] = request. unless request..nil?
      end

      # header parameters
      header_params = {}

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['JWT']
	  
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#get_paragraph_format_without_node_path\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # This resource represents one of the paragraphs contained in the document.
    # 
    # @param request GetParagraphWithoutNodePathRequest
    # @return [nil]
    def get_paragraph_without_node_path(request)
      begin
        data, _status_code, _headers = get_paragraph_without_node_path_with_http_info(request)
        rescue ApiError => e
          if e.code == 401
            request_token
            data, _status_code, _headers = get_paragraph_without_node_path_with_http_info(request)
          else
            raise
          end
      end			
      data
    end

    # This resource represents one of the paragraphs contained in the document.
    # 
    # @param request GetParagraphWithoutNodePathRequest
    # @return [Array<(nil, Fixnum, Hash)>]
    # nil, response status code and response headers
    private def get_paragraph_without_node_path_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? GetParagraphWithoutNodePathRequest

      @api_client.config.logger.debug 'Calling API: WordsApi.get_paragraph_without_node_path ...' if @api_client.config.debugging
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.get_paragraph_without_node_path' if @api_client.config.client_side_validation && request..nil?
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.get_paragraph_without_node_path' if @api_client.config.client_side_validation && request..nil?
      # resource path
      local_var_path = '/words/{name}/paragraphs/{index}'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request..to_s)
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Index') + '}', request..to_s)

      # query parameters
      query_params = {}
      if local_var_path.include? downcase_first_letter('Folder')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Folder') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Folder')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('Storage')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Storage') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Storage')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('LoadEncoding')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('LoadEncoding') + '}', request..to_s)
      else
        query_params[downcase_first_letter('LoadEncoding')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('Password')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Password') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Password')] = request. unless request..nil?
      end

      # header parameters
      header_params = {}

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['JWT']
	  
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#get_paragraph_without_node_path\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Returns a list of paragraphs that are contained in the document.
    # 
    # @param request GetParagraphsRequest
    # @return [nil]
    def get_paragraphs(request)
      begin
        data, _status_code, _headers = get_paragraphs_with_http_info(request)
        rescue ApiError => e
          if e.code == 401
            request_token
            data, _status_code, _headers = get_paragraphs_with_http_info(request)
          else
            raise
          end
      end			
      data
    end

    # Returns a list of paragraphs that are contained in the document.
    # 
    # @param request GetParagraphsRequest
    # @return [Array<(nil, Fixnum, Hash)>]
    # nil, response status code and response headers
    private def get_paragraphs_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? GetParagraphsRequest

      @api_client.config.logger.debug 'Calling API: WordsApi.get_paragraphs ...' if @api_client.config.debugging
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.get_paragraphs' if @api_client.config.client_side_validation && request..nil?
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.get_paragraphs' if @api_client.config.client_side_validation && request..nil?
      # resource path
      local_var_path = '/words/{name}/{nodePath}/paragraphs'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request..to_s)
      local_var_path = local_var_path.sub('{' + downcase_first_letter('NodePath') + '}', request..to_s)

      # query parameters
      query_params = {}
      if local_var_path.include? downcase_first_letter('Folder')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Folder') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Folder')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('Storage')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Storage') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Storage')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('LoadEncoding')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('LoadEncoding') + '}', request..to_s)
      else
        query_params[downcase_first_letter('LoadEncoding')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('Password')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Password') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Password')] = request. unless request..nil?
      end

      # header parameters
      header_params = {}

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['JWT']
	  
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#get_paragraphs\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Returns a list of paragraphs that are contained in the document.
    # 
    # @param request GetParagraphsWithoutNodePathRequest
    # @return [nil]
    def get_paragraphs_without_node_path(request)
      begin
        data, _status_code, _headers = get_paragraphs_without_node_path_with_http_info(request)
        rescue ApiError => e
          if e.code == 401
            request_token
            data, _status_code, _headers = get_paragraphs_without_node_path_with_http_info(request)
          else
            raise
          end
      end			
      data
    end

    # Returns a list of paragraphs that are contained in the document.
    # 
    # @param request GetParagraphsWithoutNodePathRequest
    # @return [Array<(nil, Fixnum, Hash)>]
    # nil, response status code and response headers
    private def get_paragraphs_without_node_path_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? GetParagraphsWithoutNodePathRequest

      @api_client.config.logger.debug 'Calling API: WordsApi.get_paragraphs_without_node_path ...' if @api_client.config.debugging
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.get_paragraphs_without_node_path' if @api_client.config.client_side_validation && request..nil?
      # resource path
      local_var_path = '/words/{name}/paragraphs'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request..to_s)

      # query parameters
      query_params = {}
      if local_var_path.include? downcase_first_letter('Folder')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Folder') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Folder')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('Storage')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Storage') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Storage')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('LoadEncoding')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('LoadEncoding') + '}', request..to_s)
      else
        query_params[downcase_first_letter('LoadEncoding')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('Password')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Password') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Password')] = request. unless request..nil?
      end

      # header parameters
      header_params = {}

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['JWT']
	  
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#get_paragraphs_without_node_path\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Gets the text from the range.
    # 
    # @param request GetRangeTextRequest
    # @return [nil]
    def get_range_text(request)
      begin
        data, _status_code, _headers = get_range_text_with_http_info(request)
        rescue ApiError => e
          if e.code == 401
            request_token
            data, _status_code, _headers = get_range_text_with_http_info(request)
          else
            raise
          end
      end			
      data
    end

    # Gets the text from the range.
    # 
    # @param request GetRangeTextRequest
    # @return [Array<(nil, Fixnum, Hash)>]
    # nil, response status code and response headers
    private def get_range_text_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? GetRangeTextRequest

      @api_client.config.logger.debug 'Calling API: WordsApi.get_range_text ...' if @api_client.config.debugging
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.get_range_text' if @api_client.config.client_side_validation && request..nil?
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.get_range_text' if @api_client.config.client_side_validation && request..nil?
      # resource path
      local_var_path = '/words/{name}/range/{rangeStartIdentifier}/{rangeEndIdentifier}'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request..to_s)
      local_var_path = local_var_path.sub('{' + downcase_first_letter('RangeStartIdentifier') + '}', request..to_s)
      local_var_path = local_var_path.sub('{' + downcase_first_letter('RangeEndIdentifier') + '}', request..to_s)

      # query parameters
      query_params = {}
      if local_var_path.include? downcase_first_letter('Folder')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Folder') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Folder')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('Storage')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Storage') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Storage')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('LoadEncoding')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('LoadEncoding') + '}', request..to_s)
      else
        query_params[downcase_first_letter('LoadEncoding')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('Password')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Password') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Password')] = request. unless request..nil?
      end

      # header parameters
      header_params = {}

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['JWT']
	  
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#get_range_text\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # This resource represents run of text contained in the document.
    # 
    # @param request GetRunRequest
    # @return [nil]
    def get_run(request)
      begin
        data, _status_code, _headers = get_run_with_http_info(request)
        rescue ApiError => e
          if e.code == 401
            request_token
            data, _status_code, _headers = get_run_with_http_info(request)
          else
            raise
          end
      end			
      data
    end

    # This resource represents run of text contained in the document.
    # 
    # @param request GetRunRequest
    # @return [Array<(nil, Fixnum, Hash)>]
    # nil, response status code and response headers
    private def get_run_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? GetRunRequest

      @api_client.config.logger.debug 'Calling API: WordsApi.get_run ...' if @api_client.config.debugging
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.get_run' if @api_client.config.client_side_validation && request..nil?
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.get_run' if @api_client.config.client_side_validation && request..nil?
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.get_run' if @api_client.config.client_side_validation && request..nil?
      # resource path
      local_var_path = '/words/{name}/{paragraphPath}/runs/{index}'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request..to_s)
      local_var_path = local_var_path.sub('{' + downcase_first_letter('ParagraphPath') + '}', request..to_s)
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Index') + '}', request..to_s)

      # query parameters
      query_params = {}
      if local_var_path.include? downcase_first_letter('Folder')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Folder') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Folder')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('Storage')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Storage') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Storage')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('LoadEncoding')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('LoadEncoding') + '}', request..to_s)
      else
        query_params[downcase_first_letter('LoadEncoding')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('Password')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Password') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Password')] = request. unless request..nil?
      end

      # header parameters
      header_params = {}

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['JWT']
	  
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#get_run\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # This resource represents font of run.
    # 
    # @param request GetRunFontRequest
    # @return [nil]
    def get_run_font(request)
      begin
        data, _status_code, _headers = get_run_font_with_http_info(request)
        rescue ApiError => e
          if e.code == 401
            request_token
            data, _status_code, _headers = get_run_font_with_http_info(request)
          else
            raise
          end
      end			
      data
    end

    # This resource represents font of run.
    # 
    # @param request GetRunFontRequest
    # @return [Array<(nil, Fixnum, Hash)>]
    # nil, response status code and response headers
    private def get_run_font_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? GetRunFontRequest

      @api_client.config.logger.debug 'Calling API: WordsApi.get_run_font ...' if @api_client.config.debugging
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.get_run_font' if @api_client.config.client_side_validation && request..nil?
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.get_run_font' if @api_client.config.client_side_validation && request..nil?
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.get_run_font' if @api_client.config.client_side_validation && request..nil?
      # resource path
      local_var_path = '/words/{name}/{paragraphPath}/runs/{index}/font'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request..to_s)
      local_var_path = local_var_path.sub('{' + downcase_first_letter('ParagraphPath') + '}', request..to_s)
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Index') + '}', request..to_s)

      # query parameters
      query_params = {}
      if local_var_path.include? downcase_first_letter('Folder')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Folder') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Folder')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('Storage')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Storage') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Storage')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('LoadEncoding')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('LoadEncoding') + '}', request..to_s)
      else
        query_params[downcase_first_letter('LoadEncoding')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('Password')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Password') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Password')] = request. unless request..nil?
      end

      # header parameters
      header_params = {}

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['JWT']
	  
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#get_run_font\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # This resource represents collection of runs in the paragraph.
    # 
    # @param request GetRunsRequest
    # @return [nil]
    def get_runs(request)
      begin
        data, _status_code, _headers = get_runs_with_http_info(request)
        rescue ApiError => e
          if e.code == 401
            request_token
            data, _status_code, _headers = get_runs_with_http_info(request)
          else
            raise
          end
      end			
      data
    end

    # This resource represents collection of runs in the paragraph.
    # 
    # @param request GetRunsRequest
    # @return [Array<(nil, Fixnum, Hash)>]
    # nil, response status code and response headers
    private def get_runs_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? GetRunsRequest

      @api_client.config.logger.debug 'Calling API: WordsApi.get_runs ...' if @api_client.config.debugging
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.get_runs' if @api_client.config.client_side_validation && request..nil?
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.get_runs' if @api_client.config.client_side_validation && request..nil?
      # resource path
      local_var_path = '/words/{name}/{paragraphPath}/runs'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request..to_s)
      local_var_path = local_var_path.sub('{' + downcase_first_letter('ParagraphPath') + '}', request..to_s)

      # query parameters
      query_params = {}
      if local_var_path.include? downcase_first_letter('Folder')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Folder') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Folder')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('Storage')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Storage') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Storage')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('LoadEncoding')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('LoadEncoding') + '}', request..to_s)
      else
        query_params[downcase_first_letter('LoadEncoding')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('Password')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Password') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Password')] = request. unless request..nil?
      end

      # header parameters
      header_params = {}

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['JWT']
	  
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#get_runs\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Gets document section by index.
    # 
    # @param request GetSectionRequest
    # @return [nil]
    def get_section(request)
      begin
        data, _status_code, _headers = get_section_with_http_info(request)
        rescue ApiError => e
          if e.code == 401
            request_token
            data, _status_code, _headers = get_section_with_http_info(request)
          else
            raise
          end
      end			
      data
    end

    # Gets document section by index.
    # 
    # @param request GetSectionRequest
    # @return [Array<(nil, Fixnum, Hash)>]
    # nil, response status code and response headers
    private def get_section_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? GetSectionRequest

      @api_client.config.logger.debug 'Calling API: WordsApi.get_section ...' if @api_client.config.debugging
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.get_section' if @api_client.config.client_side_validation && request..nil?
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.get_section' if @api_client.config.client_side_validation && request..nil?
      # resource path
      local_var_path = '/words/{name}/sections/{sectionIndex}'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request..to_s)
      local_var_path = local_var_path.sub('{' + downcase_first_letter('SectionIndex') + '}', request..to_s)

      # query parameters
      query_params = {}
      if local_var_path.include? downcase_first_letter('Folder')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Folder') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Folder')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('Storage')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Storage') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Storage')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('LoadEncoding')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('LoadEncoding') + '}', request..to_s)
      else
        query_params[downcase_first_letter('LoadEncoding')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('Password')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Password') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Password')] = request. unless request..nil?
      end

      # header parameters
      header_params = {}

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['JWT']
	  
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#get_section\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Gets page setup of section.
    # 
    # @param request GetSectionPageSetupRequest
    # @return [nil]
    def get_section_page_setup(request)
      begin
        data, _status_code, _headers = get_section_page_setup_with_http_info(request)
        rescue ApiError => e
          if e.code == 401
            request_token
            data, _status_code, _headers = get_section_page_setup_with_http_info(request)
          else
            raise
          end
      end			
      data
    end

    # Gets page setup of section.
    # 
    # @param request GetSectionPageSetupRequest
    # @return [Array<(nil, Fixnum, Hash)>]
    # nil, response status code and response headers
    private def get_section_page_setup_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? GetSectionPageSetupRequest

      @api_client.config.logger.debug 'Calling API: WordsApi.get_section_page_setup ...' if @api_client.config.debugging
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.get_section_page_setup' if @api_client.config.client_side_validation && request..nil?
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.get_section_page_setup' if @api_client.config.client_side_validation && request..nil?
      # resource path
      local_var_path = '/words/{name}/sections/{sectionIndex}/pageSetup'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request..to_s)
      local_var_path = local_var_path.sub('{' + downcase_first_letter('SectionIndex') + '}', request..to_s)

      # query parameters
      query_params = {}
      if local_var_path.include? downcase_first_letter('Folder')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Folder') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Folder')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('Storage')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Storage') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Storage')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('LoadEncoding')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('LoadEncoding') + '}', request..to_s)
      else
        query_params[downcase_first_letter('LoadEncoding')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('Password')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Password') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Password')] = request. unless request..nil?
      end

      # header parameters
      header_params = {}

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['JWT']
	  
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#get_section_page_setup\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Returns a list of sections that are contained in the document.
    # 
    # @param request GetSectionsRequest
    # @return [nil]
    def get_sections(request)
      begin
        data, _status_code, _headers = get_sections_with_http_info(request)
        rescue ApiError => e
          if e.code == 401
            request_token
            data, _status_code, _headers = get_sections_with_http_info(request)
          else
            raise
          end
      end			
      data
    end

    # Returns a list of sections that are contained in the document.
    # 
    # @param request GetSectionsRequest
    # @return [Array<(nil, Fixnum, Hash)>]
    # nil, response status code and response headers
    private def get_sections_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? GetSectionsRequest

      @api_client.config.logger.debug 'Calling API: WordsApi.get_sections ...' if @api_client.config.debugging
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.get_sections' if @api_client.config.client_side_validation && request..nil?
      # resource path
      local_var_path = '/words/{name}/sections'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request..to_s)

      # query parameters
      query_params = {}
      if local_var_path.include? downcase_first_letter('Folder')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Folder') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Folder')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('Storage')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Storage') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Storage')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('LoadEncoding')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('LoadEncoding') + '}', request..to_s)
      else
        query_params[downcase_first_letter('LoadEncoding')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('Password')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Password') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Password')] = request. unless request..nil?
      end

      # header parameters
      header_params = {}

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['JWT']
	  
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#get_sections\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Returns a table.
    # 
    # @param request GetTableRequest
    # @return [nil]
    def get_table(request)
      begin
        data, _status_code, _headers = get_table_with_http_info(request)
        rescue ApiError => e
          if e.code == 401
            request_token
            data, _status_code, _headers = get_table_with_http_info(request)
          else
            raise
          end
      end			
      data
    end

    # Returns a table.
    # 
    # @param request GetTableRequest
    # @return [Array<(nil, Fixnum, Hash)>]
    # nil, response status code and response headers
    private def get_table_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? GetTableRequest

      @api_client.config.logger.debug 'Calling API: WordsApi.get_table ...' if @api_client.config.debugging
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.get_table' if @api_client.config.client_side_validation && request..nil?
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.get_table' if @api_client.config.client_side_validation && request..nil?
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.get_table' if @api_client.config.client_side_validation && request..nil?
      # resource path
      local_var_path = '/words/{name}/{nodePath}/tables/{index}'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request..to_s)
      local_var_path = local_var_path.sub('{' + downcase_first_letter('NodePath') + '}', request..to_s)
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Index') + '}', request..to_s)

      # query parameters
      query_params = {}
      if local_var_path.include? downcase_first_letter('Folder')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Folder') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Folder')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('Storage')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Storage') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Storage')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('LoadEncoding')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('LoadEncoding') + '}', request..to_s)
      else
        query_params[downcase_first_letter('LoadEncoding')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('Password')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Password') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Password')] = request. unless request..nil?
      end

      # header parameters
      header_params = {}

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['JWT']
	  
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#get_table\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Returns a table cell.
    # 
    # @param request GetTableCellRequest
    # @return [nil]
    def get_table_cell(request)
      begin
        data, _status_code, _headers = get_table_cell_with_http_info(request)
        rescue ApiError => e
          if e.code == 401
            request_token
            data, _status_code, _headers = get_table_cell_with_http_info(request)
          else
            raise
          end
      end			
      data
    end

    # Returns a table cell.
    # 
    # @param request GetTableCellRequest
    # @return [Array<(nil, Fixnum, Hash)>]
    # nil, response status code and response headers
    private def get_table_cell_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? GetTableCellRequest

      @api_client.config.logger.debug 'Calling API: WordsApi.get_table_cell ...' if @api_client.config.debugging
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.get_table_cell' if @api_client.config.client_side_validation && request..nil?
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.get_table_cell' if @api_client.config.client_side_validation && request..nil?
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.get_table_cell' if @api_client.config.client_side_validation && request..nil?
      # resource path
      local_var_path = '/words/{name}/{tableRowPath}/cells/{index}'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request..to_s)
      local_var_path = local_var_path.sub('{' + downcase_first_letter('TableRowPath') + '}', request..to_s)
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Index') + '}', request..to_s)

      # query parameters
      query_params = {}
      if local_var_path.include? downcase_first_letter('Folder')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Folder') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Folder')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('Storage')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Storage') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Storage')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('LoadEncoding')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('LoadEncoding') + '}', request..to_s)
      else
        query_params[downcase_first_letter('LoadEncoding')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('Password')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Password') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Password')] = request. unless request..nil?
      end

      # header parameters
      header_params = {}

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['JWT']
	  
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#get_table_cell\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Returns a table cell format.
    # 
    # @param request GetTableCellFormatRequest
    # @return [nil]
    def get_table_cell_format(request)
      begin
        data, _status_code, _headers = get_table_cell_format_with_http_info(request)
        rescue ApiError => e
          if e.code == 401
            request_token
            data, _status_code, _headers = get_table_cell_format_with_http_info(request)
          else
            raise
          end
      end			
      data
    end

    # Returns a table cell format.
    # 
    # @param request GetTableCellFormatRequest
    # @return [Array<(nil, Fixnum, Hash)>]
    # nil, response status code and response headers
    private def get_table_cell_format_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? GetTableCellFormatRequest

      @api_client.config.logger.debug 'Calling API: WordsApi.get_table_cell_format ...' if @api_client.config.debugging
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.get_table_cell_format' if @api_client.config.client_side_validation && request..nil?
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.get_table_cell_format' if @api_client.config.client_side_validation && request..nil?
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.get_table_cell_format' if @api_client.config.client_side_validation && request..nil?
      # resource path
      local_var_path = '/words/{name}/{tableRowPath}/cells/{index}/cellformat'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request..to_s)
      local_var_path = local_var_path.sub('{' + downcase_first_letter('TableRowPath') + '}', request..to_s)
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Index') + '}', request..to_s)

      # query parameters
      query_params = {}
      if local_var_path.include? downcase_first_letter('Folder')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Folder') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Folder')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('Storage')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Storage') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Storage')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('LoadEncoding')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('LoadEncoding') + '}', request..to_s)
      else
        query_params[downcase_first_letter('LoadEncoding')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('Password')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Password') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Password')] = request. unless request..nil?
      end

      # header parameters
      header_params = {}

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['JWT']
	  
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#get_table_cell_format\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Returns a table properties.
    # 
    # @param request GetTablePropertiesRequest
    # @return [nil]
    def get_table_properties(request)
      begin
        data, _status_code, _headers = get_table_properties_with_http_info(request)
        rescue ApiError => e
          if e.code == 401
            request_token
            data, _status_code, _headers = get_table_properties_with_http_info(request)
          else
            raise
          end
      end			
      data
    end

    # Returns a table properties.
    # 
    # @param request GetTablePropertiesRequest
    # @return [Array<(nil, Fixnum, Hash)>]
    # nil, response status code and response headers
    private def get_table_properties_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? GetTablePropertiesRequest

      @api_client.config.logger.debug 'Calling API: WordsApi.get_table_properties ...' if @api_client.config.debugging
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.get_table_properties' if @api_client.config.client_side_validation && request..nil?
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.get_table_properties' if @api_client.config.client_side_validation && request..nil?
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.get_table_properties' if @api_client.config.client_side_validation && request..nil?
      # resource path
      local_var_path = '/words/{name}/{nodePath}/tables/{index}/properties'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request..to_s)
      local_var_path = local_var_path.sub('{' + downcase_first_letter('NodePath') + '}', request..to_s)
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Index') + '}', request..to_s)

      # query parameters
      query_params = {}
      if local_var_path.include? downcase_first_letter('Folder')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Folder') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Folder')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('Storage')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Storage') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Storage')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('LoadEncoding')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('LoadEncoding') + '}', request..to_s)
      else
        query_params[downcase_first_letter('LoadEncoding')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('Password')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Password') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Password')] = request. unless request..nil?
      end

      # header parameters
      header_params = {}

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['JWT']
	  
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#get_table_properties\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Returns a table properties.
    # 
    # @param request GetTablePropertiesWithoutNodePathRequest
    # @return [nil]
    def get_table_properties_without_node_path(request)
      begin
        data, _status_code, _headers = get_table_properties_without_node_path_with_http_info(request)
        rescue ApiError => e
          if e.code == 401
            request_token
            data, _status_code, _headers = get_table_properties_without_node_path_with_http_info(request)
          else
            raise
          end
      end			
      data
    end

    # Returns a table properties.
    # 
    # @param request GetTablePropertiesWithoutNodePathRequest
    # @return [Array<(nil, Fixnum, Hash)>]
    # nil, response status code and response headers
    private def get_table_properties_without_node_path_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? GetTablePropertiesWithoutNodePathRequest

      @api_client.config.logger.debug 'Calling API: WordsApi.get_table_properties_without_node_path ...' if @api_client.config.debugging
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.get_table_properties_without_node_path' if @api_client.config.client_side_validation && request..nil?
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.get_table_properties_without_node_path' if @api_client.config.client_side_validation && request..nil?
      # resource path
      local_var_path = '/words/{name}/tables/{index}/properties'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request..to_s)
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Index') + '}', request..to_s)

      # query parameters
      query_params = {}
      if local_var_path.include? downcase_first_letter('Folder')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Folder') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Folder')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('Storage')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Storage') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Storage')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('LoadEncoding')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('LoadEncoding') + '}', request..to_s)
      else
        query_params[downcase_first_letter('LoadEncoding')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('Password')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Password') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Password')] = request. unless request..nil?
      end

      # header parameters
      header_params = {}

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['JWT']
	  
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#get_table_properties_without_node_path\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Returns a table row.
    # 
    # @param request GetTableRowRequest
    # @return [nil]
    def get_table_row(request)
      begin
        data, _status_code, _headers = get_table_row_with_http_info(request)
        rescue ApiError => e
          if e.code == 401
            request_token
            data, _status_code, _headers = get_table_row_with_http_info(request)
          else
            raise
          end
      end			
      data
    end

    # Returns a table row.
    # 
    # @param request GetTableRowRequest
    # @return [Array<(nil, Fixnum, Hash)>]
    # nil, response status code and response headers
    private def get_table_row_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? GetTableRowRequest

      @api_client.config.logger.debug 'Calling API: WordsApi.get_table_row ...' if @api_client.config.debugging
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.get_table_row' if @api_client.config.client_side_validation && request..nil?
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.get_table_row' if @api_client.config.client_side_validation && request..nil?
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.get_table_row' if @api_client.config.client_side_validation && request..nil?
      # resource path
      local_var_path = '/words/{name}/{tablePath}/rows/{index}'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request..to_s)
      local_var_path = local_var_path.sub('{' + downcase_first_letter('TablePath') + '}', request..to_s)
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Index') + '}', request..to_s)

      # query parameters
      query_params = {}
      if local_var_path.include? downcase_first_letter('Folder')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Folder') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Folder')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('Storage')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Storage') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Storage')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('LoadEncoding')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('LoadEncoding') + '}', request..to_s)
      else
        query_params[downcase_first_letter('LoadEncoding')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('Password')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Password') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Password')] = request. unless request..nil?
      end

      # header parameters
      header_params = {}

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['JWT']
	  
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#get_table_row\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Returns a table row format.
    # 
    # @param request GetTableRowFormatRequest
    # @return [nil]
    def get_table_row_format(request)
      begin
        data, _status_code, _headers = get_table_row_format_with_http_info(request)
        rescue ApiError => e
          if e.code == 401
            request_token
            data, _status_code, _headers = get_table_row_format_with_http_info(request)
          else
            raise
          end
      end			
      data
    end

    # Returns a table row format.
    # 
    # @param request GetTableRowFormatRequest
    # @return [Array<(nil, Fixnum, Hash)>]
    # nil, response status code and response headers
    private def get_table_row_format_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? GetTableRowFormatRequest

      @api_client.config.logger.debug 'Calling API: WordsApi.get_table_row_format ...' if @api_client.config.debugging
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.get_table_row_format' if @api_client.config.client_side_validation && request..nil?
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.get_table_row_format' if @api_client.config.client_side_validation && request..nil?
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.get_table_row_format' if @api_client.config.client_side_validation && request..nil?
      # resource path
      local_var_path = '/words/{name}/{tablePath}/rows/{index}/rowformat'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request..to_s)
      local_var_path = local_var_path.sub('{' + downcase_first_letter('TablePath') + '}', request..to_s)
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Index') + '}', request..to_s)

      # query parameters
      query_params = {}
      if local_var_path.include? downcase_first_letter('Folder')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Folder') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Folder')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('Storage')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Storage') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Storage')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('LoadEncoding')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('LoadEncoding') + '}', request..to_s)
      else
        query_params[downcase_first_letter('LoadEncoding')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('Password')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Password') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Password')] = request. unless request..nil?
      end

      # header parameters
      header_params = {}

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['JWT']
	  
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#get_table_row_format\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Returns a table.
    # 
    # @param request GetTableWithoutNodePathRequest
    # @return [nil]
    def get_table_without_node_path(request)
      begin
        data, _status_code, _headers = get_table_without_node_path_with_http_info(request)
        rescue ApiError => e
          if e.code == 401
            request_token
            data, _status_code, _headers = get_table_without_node_path_with_http_info(request)
          else
            raise
          end
      end			
      data
    end

    # Returns a table.
    # 
    # @param request GetTableWithoutNodePathRequest
    # @return [Array<(nil, Fixnum, Hash)>]
    # nil, response status code and response headers
    private def get_table_without_node_path_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? GetTableWithoutNodePathRequest

      @api_client.config.logger.debug 'Calling API: WordsApi.get_table_without_node_path ...' if @api_client.config.debugging
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.get_table_without_node_path' if @api_client.config.client_side_validation && request..nil?
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.get_table_without_node_path' if @api_client.config.client_side_validation && request..nil?
      # resource path
      local_var_path = '/words/{name}/tables/{index}'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request..to_s)
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Index') + '}', request..to_s)

      # query parameters
      query_params = {}
      if local_var_path.include? downcase_first_letter('Folder')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Folder') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Folder')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('Storage')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Storage') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Storage')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('LoadEncoding')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('LoadEncoding') + '}', request..to_s)
      else
        query_params[downcase_first_letter('LoadEncoding')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('Password')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Password') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Password')] = request. unless request..nil?
      end

      # header parameters
      header_params = {}

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['JWT']
	  
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#get_table_without_node_path\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Returns a list of tables that are contained in the document.
    # 
    # @param request GetTablesRequest
    # @return [nil]
    def get_tables(request)
      begin
        data, _status_code, _headers = get_tables_with_http_info(request)
        rescue ApiError => e
          if e.code == 401
            request_token
            data, _status_code, _headers = get_tables_with_http_info(request)
          else
            raise
          end
      end			
      data
    end

    # Returns a list of tables that are contained in the document.
    # 
    # @param request GetTablesRequest
    # @return [Array<(nil, Fixnum, Hash)>]
    # nil, response status code and response headers
    private def get_tables_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? GetTablesRequest

      @api_client.config.logger.debug 'Calling API: WordsApi.get_tables ...' if @api_client.config.debugging
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.get_tables' if @api_client.config.client_side_validation && request..nil?
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.get_tables' if @api_client.config.client_side_validation && request..nil?
      # resource path
      local_var_path = '/words/{name}/{nodePath}/tables'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request..to_s)
      local_var_path = local_var_path.sub('{' + downcase_first_letter('NodePath') + '}', request..to_s)

      # query parameters
      query_params = {}
      if local_var_path.include? downcase_first_letter('Folder')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Folder') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Folder')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('Storage')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Storage') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Storage')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('LoadEncoding')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('LoadEncoding') + '}', request..to_s)
      else
        query_params[downcase_first_letter('LoadEncoding')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('Password')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Password') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Password')] = request. unless request..nil?
      end

      # header parameters
      header_params = {}

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['JWT']
	  
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#get_tables\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Returns a list of tables that are contained in the document.
    # 
    # @param request GetTablesWithoutNodePathRequest
    # @return [nil]
    def get_tables_without_node_path(request)
      begin
        data, _status_code, _headers = get_tables_without_node_path_with_http_info(request)
        rescue ApiError => e
          if e.code == 401
            request_token
            data, _status_code, _headers = get_tables_without_node_path_with_http_info(request)
          else
            raise
          end
      end			
      data
    end

    # Returns a list of tables that are contained in the document.
    # 
    # @param request GetTablesWithoutNodePathRequest
    # @return [Array<(nil, Fixnum, Hash)>]
    # nil, response status code and response headers
    private def get_tables_without_node_path_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? GetTablesWithoutNodePathRequest

      @api_client.config.logger.debug 'Calling API: WordsApi.get_tables_without_node_path ...' if @api_client.config.debugging
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.get_tables_without_node_path' if @api_client.config.client_side_validation && request..nil?
      # resource path
      local_var_path = '/words/{name}/tables'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request..to_s)

      # query parameters
      query_params = {}
      if local_var_path.include? downcase_first_letter('Folder')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Folder') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Folder')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('Storage')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Storage') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Storage')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('LoadEncoding')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('LoadEncoding') + '}', request..to_s)
      else
        query_params[downcase_first_letter('LoadEncoding')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('Password')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Password') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Password')] = request. unless request..nil?
      end

      # header parameters
      header_params = {}

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['JWT']
	  
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#get_tables_without_node_path\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Adds comment to document, returns inserted comment data.
    # 
    # @param request InsertCommentRequest
    # @return [nil]
    def insert_comment(request)
      begin
        data, _status_code, _headers = insert_comment_with_http_info(request)
        rescue ApiError => e
          if e.code == 401
            request_token
            data, _status_code, _headers = insert_comment_with_http_info(request)
          else
            raise
          end
      end			
      data
    end

    # Adds comment to document, returns inserted comment data.
    # 
    # @param request InsertCommentRequest
    # @return [Array<(nil, Fixnum, Hash)>]
    # nil, response status code and response headers
    private def insert_comment_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? InsertCommentRequest

      @api_client.config.logger.debug 'Calling API: WordsApi.insert_comment ...' if @api_client.config.debugging
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.insert_comment' if @api_client.config.client_side_validation && request..nil?
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.insert_comment' if @api_client.config.client_side_validation && request..nil?
      # resource path
      local_var_path = '/words/{name}/comments'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request..to_s)

      # query parameters
      query_params = {}
      if local_var_path.include? downcase_first_letter('Folder')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Folder') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Folder')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('Storage')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Storage') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Storage')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('LoadEncoding')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('LoadEncoding') + '}', request..to_s)
      else
        query_params[downcase_first_letter('LoadEncoding')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('Password')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Password') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Password')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('DestFileName')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('DestFileName') + '}', request..to_s)
      else
        query_params[downcase_first_letter('DestFileName')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('RevisionAuthor')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('RevisionAuthor') + '}', request..to_s)
      else
        query_params[downcase_first_letter('RevisionAuthor')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('RevisionDateTime')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('RevisionDateTime') + '}', request..to_s)
      else
        query_params[downcase_first_letter('RevisionDateTime')] = request. unless request..nil?
      end

      # header parameters
      header_params = {}

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(request.)
      auth_names = ['JWT']
	  
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#insert_comment\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Adds drawing object to document, returns added  drawing object's data.
    # 
    # @param request InsertDrawingObjectRequest
    # @return [nil]
    def insert_drawing_object(request)
      begin
        data, _status_code, _headers = insert_drawing_object_with_http_info(request)
        rescue ApiError => e
          if e.code == 401
            request_token
            data, _status_code, _headers = insert_drawing_object_with_http_info(request)
          else
            raise
          end
      end			
      data
    end

    # Adds drawing object to document, returns added  drawing object&#39;s data.
    # 
    # @param request InsertDrawingObjectRequest
    # @return [Array<(nil, Fixnum, Hash)>]
    # nil, response status code and response headers
    private def insert_drawing_object_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? InsertDrawingObjectRequest

      @api_client.config.logger.debug 'Calling API: WordsApi.insert_drawing_object ...' if @api_client.config.debugging
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.insert_drawing_object' if @api_client.config.client_side_validation && request..nil?
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.insert_drawing_object' if @api_client.config.client_side_validation && request..nil?
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.insert_drawing_object' if @api_client.config.client_side_validation && request..nil?
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.insert_drawing_object' if @api_client.config.client_side_validation && request..nil?
      # resource path
      local_var_path = '/words/{name}/{nodePath}/drawingObjects'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request..to_s)
      local_var_path = local_var_path.sub('{' + downcase_first_letter('NodePath') + '}', request..to_s)

      # query parameters
      query_params = {}
      if local_var_path.include? downcase_first_letter('Folder')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Folder') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Folder')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('Storage')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Storage') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Storage')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('LoadEncoding')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('LoadEncoding') + '}', request..to_s)
      else
        query_params[downcase_first_letter('LoadEncoding')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('Password')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Password') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Password')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('DestFileName')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('DestFileName') + '}', request..to_s)
      else
        query_params[downcase_first_letter('DestFileName')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('RevisionAuthor')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('RevisionAuthor') + '}', request..to_s)
      else
        query_params[downcase_first_letter('RevisionAuthor')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('RevisionDateTime')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('RevisionDateTime') + '}', request..to_s)
      else
        query_params[downcase_first_letter('RevisionDateTime')] = request. unless request..nil?
      end

      # header parameters
      header_params = {}

      # form parameters
      form_params = {}
      form_params[downcase_first_letter('DrawingObject')] = request.
      form_params[downcase_first_letter('ImageFile')] = request.

      # http body (model)
      post_body = nil
      auth_names = ['JWT']
	  
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#insert_drawing_object\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Adds drawing object to document, returns added  drawing object's data.
    # 
    # @param request InsertDrawingObjectWithoutNodePathRequest
    # @return [nil]
    def insert_drawing_object_without_node_path(request)
      begin
        data, _status_code, _headers = insert_drawing_object_without_node_path_with_http_info(request)
        rescue ApiError => e
          if e.code == 401
            request_token
            data, _status_code, _headers = insert_drawing_object_without_node_path_with_http_info(request)
          else
            raise
          end
      end			
      data
    end

    # Adds drawing object to document, returns added  drawing object&#39;s data.
    # 
    # @param request InsertDrawingObjectWithoutNodePathRequest
    # @return [Array<(nil, Fixnum, Hash)>]
    # nil, response status code and response headers
    private def insert_drawing_object_without_node_path_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? InsertDrawingObjectWithoutNodePathRequest

      @api_client.config.logger.debug 'Calling API: WordsApi.insert_drawing_object_without_node_path ...' if @api_client.config.debugging
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.insert_drawing_object_without_node_path' if @api_client.config.client_side_validation && request..nil?
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.insert_drawing_object_without_node_path' if @api_client.config.client_side_validation && request..nil?
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.insert_drawing_object_without_node_path' if @api_client.config.client_side_validation && request..nil?
      # resource path
      local_var_path = '/words/{name}/drawingObjects'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request..to_s)

      # query parameters
      query_params = {}
      if local_var_path.include? downcase_first_letter('Folder')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Folder') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Folder')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('Storage')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Storage') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Storage')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('LoadEncoding')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('LoadEncoding') + '}', request..to_s)
      else
        query_params[downcase_first_letter('LoadEncoding')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('Password')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Password') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Password')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('DestFileName')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('DestFileName') + '}', request..to_s)
      else
        query_params[downcase_first_letter('DestFileName')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('RevisionAuthor')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('RevisionAuthor') + '}', request..to_s)
      else
        query_params[downcase_first_letter('RevisionAuthor')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('RevisionDateTime')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('RevisionDateTime') + '}', request..to_s)
      else
        query_params[downcase_first_letter('RevisionDateTime')] = request. unless request..nil?
      end

      # header parameters
      header_params = {}

      # form parameters
      form_params = {}
      form_params[downcase_first_letter('DrawingObject')] = request.
      form_params[downcase_first_letter('ImageFile')] = request.

      # http body (model)
      post_body = nil
      auth_names = ['JWT']
	  
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#insert_drawing_object_without_node_path\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Adds field to document, returns inserted field's data.
    # 
    # @param request InsertFieldRequest
    # @return [nil]
    def insert_field(request)
      begin
        data, _status_code, _headers = insert_field_with_http_info(request)
        rescue ApiError => e
          if e.code == 401
            request_token
            data, _status_code, _headers = insert_field_with_http_info(request)
          else
            raise
          end
      end			
      data
    end

    # Adds field to document, returns inserted field&#39;s data.
    # 
    # @param request InsertFieldRequest
    # @return [Array<(nil, Fixnum, Hash)>]
    # nil, response status code and response headers
    private def insert_field_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? InsertFieldRequest

      @api_client.config.logger.debug 'Calling API: WordsApi.insert_field ...' if @api_client.config.debugging
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.insert_field' if @api_client.config.client_side_validation && request..nil?
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.insert_field' if @api_client.config.client_side_validation && request..nil?
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.insert_field' if @api_client.config.client_side_validation && request..nil?
      # resource path
      local_var_path = '/words/{name}/{nodePath}/fields'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request..to_s)
      local_var_path = local_var_path.sub('{' + downcase_first_letter('NodePath') + '}', request..to_s)

      # query parameters
      query_params = {}
      if local_var_path.include? downcase_first_letter('Folder')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Folder') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Folder')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('Storage')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Storage') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Storage')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('LoadEncoding')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('LoadEncoding') + '}', request..to_s)
      else
        query_params[downcase_first_letter('LoadEncoding')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('Password')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Password') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Password')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('DestFileName')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('DestFileName') + '}', request..to_s)
      else
        query_params[downcase_first_letter('DestFileName')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('RevisionAuthor')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('RevisionAuthor') + '}', request..to_s)
      else
        query_params[downcase_first_letter('RevisionAuthor')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('RevisionDateTime')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('RevisionDateTime') + '}', request..to_s)
      else
        query_params[downcase_first_letter('RevisionDateTime')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('InsertBeforeNode')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('InsertBeforeNode') + '}', request..to_s)
      else
        query_params[downcase_first_letter('InsertBeforeNode')] = request. unless request..nil?
      end

      # header parameters
      header_params = {}

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(request.)
      auth_names = ['JWT']
	  
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#insert_field\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Adds field to document, returns inserted field's data.
    # 
    # @param request InsertFieldWithoutNodePathRequest
    # @return [nil]
    def insert_field_without_node_path(request)
      begin
        data, _status_code, _headers = insert_field_without_node_path_with_http_info(request)
        rescue ApiError => e
          if e.code == 401
            request_token
            data, _status_code, _headers = insert_field_without_node_path_with_http_info(request)
          else
            raise
          end
      end			
      data
    end

    # Adds field to document, returns inserted field&#39;s data.
    # 
    # @param request InsertFieldWithoutNodePathRequest
    # @return [Array<(nil, Fixnum, Hash)>]
    # nil, response status code and response headers
    private def insert_field_without_node_path_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? InsertFieldWithoutNodePathRequest

      @api_client.config.logger.debug 'Calling API: WordsApi.insert_field_without_node_path ...' if @api_client.config.debugging
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.insert_field_without_node_path' if @api_client.config.client_side_validation && request..nil?
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.insert_field_without_node_path' if @api_client.config.client_side_validation && request..nil?
      # resource path
      local_var_path = '/words/{name}/fields'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request..to_s)

      # query parameters
      query_params = {}
      if local_var_path.include? downcase_first_letter('Folder')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Folder') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Folder')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('Storage')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Storage') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Storage')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('LoadEncoding')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('LoadEncoding') + '}', request..to_s)
      else
        query_params[downcase_first_letter('LoadEncoding')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('Password')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Password') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Password')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('DestFileName')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('DestFileName') + '}', request..to_s)
      else
        query_params[downcase_first_letter('DestFileName')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('RevisionAuthor')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('RevisionAuthor') + '}', request..to_s)
      else
        query_params[downcase_first_letter('RevisionAuthor')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('RevisionDateTime')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('RevisionDateTime') + '}', request..to_s)
      else
        query_params[downcase_first_letter('RevisionDateTime')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('InsertBeforeNode')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('InsertBeforeNode') + '}', request..to_s)
      else
        query_params[downcase_first_letter('InsertBeforeNode')] = request. unless request..nil?
      end

      # header parameters
      header_params = {}

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(request.)
      auth_names = ['JWT']
	  
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#insert_field_without_node_path\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Adds footnote to document, returns added footnote's data.
    # 
    # @param request InsertFootnoteRequest
    # @return [nil]
    def insert_footnote(request)
      begin
        data, _status_code, _headers = insert_footnote_with_http_info(request)
        rescue ApiError => e
          if e.code == 401
            request_token
            data, _status_code, _headers = insert_footnote_with_http_info(request)
          else
            raise
          end
      end			
      data
    end

    # Adds footnote to document, returns added footnote&#39;s data.
    # 
    # @param request InsertFootnoteRequest
    # @return [Array<(nil, Fixnum, Hash)>]
    # nil, response status code and response headers
    private def insert_footnote_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? InsertFootnoteRequest

      @api_client.config.logger.debug 'Calling API: WordsApi.insert_footnote ...' if @api_client.config.debugging
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.insert_footnote' if @api_client.config.client_side_validation && request..nil?
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.insert_footnote' if @api_client.config.client_side_validation && request..nil?
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.insert_footnote' if @api_client.config.client_side_validation && request..nil?
      # resource path
      local_var_path = '/words/{name}/{nodePath}/footnotes'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request..to_s)
      local_var_path = local_var_path.sub('{' + downcase_first_letter('NodePath') + '}', request..to_s)

      # query parameters
      query_params = {}
      if local_var_path.include? downcase_first_letter('Folder')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Folder') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Folder')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('Storage')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Storage') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Storage')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('LoadEncoding')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('LoadEncoding') + '}', request..to_s)
      else
        query_params[downcase_first_letter('LoadEncoding')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('Password')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Password') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Password')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('DestFileName')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('DestFileName') + '}', request..to_s)
      else
        query_params[downcase_first_letter('DestFileName')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('RevisionAuthor')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('RevisionAuthor') + '}', request..to_s)
      else
        query_params[downcase_first_letter('RevisionAuthor')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('RevisionDateTime')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('RevisionDateTime') + '}', request..to_s)
      else
        query_params[downcase_first_letter('RevisionDateTime')] = request. unless request..nil?
      end

      # header parameters
      header_params = {}

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(request.)
      auth_names = ['JWT']
	  
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#insert_footnote\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Adds footnote to document, returns added footnote's data.
    # 
    # @param request InsertFootnoteWithoutNodePathRequest
    # @return [nil]
    def insert_footnote_without_node_path(request)
      begin
        data, _status_code, _headers = insert_footnote_without_node_path_with_http_info(request)
        rescue ApiError => e
          if e.code == 401
            request_token
            data, _status_code, _headers = insert_footnote_without_node_path_with_http_info(request)
          else
            raise
          end
      end			
      data
    end

    # Adds footnote to document, returns added footnote&#39;s data.
    # 
    # @param request InsertFootnoteWithoutNodePathRequest
    # @return [Array<(nil, Fixnum, Hash)>]
    # nil, response status code and response headers
    private def insert_footnote_without_node_path_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? InsertFootnoteWithoutNodePathRequest

      @api_client.config.logger.debug 'Calling API: WordsApi.insert_footnote_without_node_path ...' if @api_client.config.debugging
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.insert_footnote_without_node_path' if @api_client.config.client_side_validation && request..nil?
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.insert_footnote_without_node_path' if @api_client.config.client_side_validation && request..nil?
      # resource path
      local_var_path = '/words/{name}/footnotes'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request..to_s)

      # query parameters
      query_params = {}
      if local_var_path.include? downcase_first_letter('Folder')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Folder') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Folder')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('Storage')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Storage') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Storage')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('LoadEncoding')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('LoadEncoding') + '}', request..to_s)
      else
        query_params[downcase_first_letter('LoadEncoding')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('Password')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Password') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Password')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('DestFileName')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('DestFileName') + '}', request..to_s)
      else
        query_params[downcase_first_letter('DestFileName')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('RevisionAuthor')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('RevisionAuthor') + '}', request..to_s)
      else
        query_params[downcase_first_letter('RevisionAuthor')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('RevisionDateTime')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('RevisionDateTime') + '}', request..to_s)
      else
        query_params[downcase_first_letter('RevisionDateTime')] = request. unless request..nil?
      end

      # header parameters
      header_params = {}

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(request.)
      auth_names = ['JWT']
	  
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#insert_footnote_without_node_path\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Adds form field to paragraph, returns added form field's data.
    # 
    # @param request InsertFormFieldRequest
    # @return [nil]
    def insert_form_field(request)
      begin
        data, _status_code, _headers = insert_form_field_with_http_info(request)
        rescue ApiError => e
          if e.code == 401
            request_token
            data, _status_code, _headers = insert_form_field_with_http_info(request)
          else
            raise
          end
      end			
      data
    end

    # Adds form field to paragraph, returns added form field&#39;s data.
    # 
    # @param request InsertFormFieldRequest
    # @return [Array<(nil, Fixnum, Hash)>]
    # nil, response status code and response headers
    private def insert_form_field_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? InsertFormFieldRequest

      @api_client.config.logger.debug 'Calling API: WordsApi.insert_form_field ...' if @api_client.config.debugging
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.insert_form_field' if @api_client.config.client_side_validation && request..nil?
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.insert_form_field' if @api_client.config.client_side_validation && request..nil?
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.insert_form_field' if @api_client.config.client_side_validation && request..nil?
      # resource path
      local_var_path = '/words/{name}/{nodePath}/formfields'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request..to_s)
      local_var_path = local_var_path.sub('{' + downcase_first_letter('NodePath') + '}', request..to_s)

      # query parameters
      query_params = {}
      if local_var_path.include? downcase_first_letter('Folder')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Folder') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Folder')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('Storage')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Storage') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Storage')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('LoadEncoding')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('LoadEncoding') + '}', request..to_s)
      else
        query_params[downcase_first_letter('LoadEncoding')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('Password')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Password') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Password')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('DestFileName')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('DestFileName') + '}', request..to_s)
      else
        query_params[downcase_first_letter('DestFileName')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('RevisionAuthor')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('RevisionAuthor') + '}', request..to_s)
      else
        query_params[downcase_first_letter('RevisionAuthor')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('RevisionDateTime')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('RevisionDateTime') + '}', request..to_s)
      else
        query_params[downcase_first_letter('RevisionDateTime')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('InsertBeforeNode')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('InsertBeforeNode') + '}', request..to_s)
      else
        query_params[downcase_first_letter('InsertBeforeNode')] = request. unless request..nil?
      end

      # header parameters
      header_params = {}

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(request.)
      auth_names = ['JWT']
	  
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#insert_form_field\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Adds form field to paragraph, returns added form field's data.
    # 
    # @param request InsertFormFieldWithoutNodePathRequest
    # @return [nil]
    def insert_form_field_without_node_path(request)
      begin
        data, _status_code, _headers = insert_form_field_without_node_path_with_http_info(request)
        rescue ApiError => e
          if e.code == 401
            request_token
            data, _status_code, _headers = insert_form_field_without_node_path_with_http_info(request)
          else
            raise
          end
      end			
      data
    end

    # Adds form field to paragraph, returns added form field&#39;s data.
    # 
    # @param request InsertFormFieldWithoutNodePathRequest
    # @return [Array<(nil, Fixnum, Hash)>]
    # nil, response status code and response headers
    private def insert_form_field_without_node_path_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? InsertFormFieldWithoutNodePathRequest

      @api_client.config.logger.debug 'Calling API: WordsApi.insert_form_field_without_node_path ...' if @api_client.config.debugging
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.insert_form_field_without_node_path' if @api_client.config.client_side_validation && request..nil?
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.insert_form_field_without_node_path' if @api_client.config.client_side_validation && request..nil?
      # resource path
      local_var_path = '/words/{name}/formfields'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request..to_s)

      # query parameters
      query_params = {}
      if local_var_path.include? downcase_first_letter('Folder')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Folder') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Folder')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('Storage')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Storage') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Storage')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('LoadEncoding')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('LoadEncoding') + '}', request..to_s)
      else
        query_params[downcase_first_letter('LoadEncoding')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('Password')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Password') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Password')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('DestFileName')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('DestFileName') + '}', request..to_s)
      else
        query_params[downcase_first_letter('DestFileName')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('RevisionAuthor')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('RevisionAuthor') + '}', request..to_s)
      else
        query_params[downcase_first_letter('RevisionAuthor')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('RevisionDateTime')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('RevisionDateTime') + '}', request..to_s)
      else
        query_params[downcase_first_letter('RevisionDateTime')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('InsertBeforeNode')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('InsertBeforeNode') + '}', request..to_s)
      else
        query_params[downcase_first_letter('InsertBeforeNode')] = request. unless request..nil?
      end

      # header parameters
      header_params = {}

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(request.)
      auth_names = ['JWT']
	  
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#insert_form_field_without_node_path\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Inserts to document header or footer.
    # 
    # @param request InsertHeaderFooterRequest
    # @return [nil]
    def insert_header_footer(request)
      begin
        data, _status_code, _headers = insert_header_footer_with_http_info(request)
        rescue ApiError => e
          if e.code == 401
            request_token
            data, _status_code, _headers = insert_header_footer_with_http_info(request)
          else
            raise
          end
      end			
      data
    end

    # Inserts to document header or footer.
    # 
    # @param request InsertHeaderFooterRequest
    # @return [Array<(nil, Fixnum, Hash)>]
    # nil, response status code and response headers
    private def insert_header_footer_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? InsertHeaderFooterRequest

      @api_client.config.logger.debug 'Calling API: WordsApi.insert_header_footer ...' if @api_client.config.debugging
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.insert_header_footer' if @api_client.config.client_side_validation && request..nil?
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.insert_header_footer' if @api_client.config.client_side_validation && request..nil?
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.insert_header_footer' if @api_client.config.client_side_validation && request..nil?
      # resource path
      local_var_path = '/words/{name}/{sectionPath}/headersfooters'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request..to_s)
      local_var_path = local_var_path.sub('{' + downcase_first_letter('SectionPath') + '}', request..to_s)

      # query parameters
      query_params = {}
      if local_var_path.include? downcase_first_letter('Folder')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Folder') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Folder')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('Storage')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Storage') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Storage')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('LoadEncoding')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('LoadEncoding') + '}', request..to_s)
      else
        query_params[downcase_first_letter('LoadEncoding')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('Password')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Password') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Password')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('DestFileName')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('DestFileName') + '}', request..to_s)
      else
        query_params[downcase_first_letter('DestFileName')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('RevisionAuthor')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('RevisionAuthor') + '}', request..to_s)
      else
        query_params[downcase_first_letter('RevisionAuthor')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('RevisionDateTime')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('RevisionDateTime') + '}', request..to_s)
      else
        query_params[downcase_first_letter('RevisionDateTime')] = request. unless request..nil?
      end

      # header parameters
      header_params = {}

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(request.)
      auth_names = ['JWT']
	  
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#insert_header_footer\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Inserts document page numbers.
    # 
    # @param request InsertPageNumbersRequest
    # @return [nil]
    def insert_page_numbers(request)
      begin
        data, _status_code, _headers = insert_page_numbers_with_http_info(request)
        rescue ApiError => e
          if e.code == 401
            request_token
            data, _status_code, _headers = insert_page_numbers_with_http_info(request)
          else
            raise
          end
      end			
      data
    end

    # Inserts document page numbers.
    # 
    # @param request InsertPageNumbersRequest
    # @return [Array<(nil, Fixnum, Hash)>]
    # nil, response status code and response headers
    private def insert_page_numbers_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? InsertPageNumbersRequest

      @api_client.config.logger.debug 'Calling API: WordsApi.insert_page_numbers ...' if @api_client.config.debugging
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.insert_page_numbers' if @api_client.config.client_side_validation && request..nil?
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.insert_page_numbers' if @api_client.config.client_side_validation && request..nil?
      # resource path
      local_var_path = '/words/{name}/PageNumbers'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request..to_s)

      # query parameters
      query_params = {}
      if local_var_path.include? downcase_first_letter('Folder')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Folder') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Folder')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('Storage')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Storage') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Storage')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('LoadEncoding')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('LoadEncoding') + '}', request..to_s)
      else
        query_params[downcase_first_letter('LoadEncoding')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('Password')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Password') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Password')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('DestFileName')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('DestFileName') + '}', request..to_s)
      else
        query_params[downcase_first_letter('DestFileName')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('RevisionAuthor')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('RevisionAuthor') + '}', request..to_s)
      else
        query_params[downcase_first_letter('RevisionAuthor')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('RevisionDateTime')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('RevisionDateTime') + '}', request..to_s)
      else
        query_params[downcase_first_letter('RevisionDateTime')] = request. unless request..nil?
      end

      # header parameters
      header_params = {}

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(request.)
      auth_names = ['JWT']
	  
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#insert_page_numbers\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Adds paragraph to document, returns added paragraph's data.
    # 
    # @param request InsertParagraphRequest
    # @return [nil]
    def insert_paragraph(request)
      begin
        data, _status_code, _headers = insert_paragraph_with_http_info(request)
        rescue ApiError => e
          if e.code == 401
            request_token
            data, _status_code, _headers = insert_paragraph_with_http_info(request)
          else
            raise
          end
      end			
      data
    end

    # Adds paragraph to document, returns added paragraph&#39;s data.
    # 
    # @param request InsertParagraphRequest
    # @return [Array<(nil, Fixnum, Hash)>]
    # nil, response status code and response headers
    private def insert_paragraph_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? InsertParagraphRequest

      @api_client.config.logger.debug 'Calling API: WordsApi.insert_paragraph ...' if @api_client.config.debugging
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.insert_paragraph' if @api_client.config.client_side_validation && request..nil?
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.insert_paragraph' if @api_client.config.client_side_validation && request..nil?
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.insert_paragraph' if @api_client.config.client_side_validation && request..nil?
      # resource path
      local_var_path = '/words/{name}/{nodePath}/paragraphs'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request..to_s)
      local_var_path = local_var_path.sub('{' + downcase_first_letter('NodePath') + '}', request..to_s)

      # query parameters
      query_params = {}
      if local_var_path.include? downcase_first_letter('Folder')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Folder') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Folder')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('Storage')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Storage') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Storage')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('LoadEncoding')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('LoadEncoding') + '}', request..to_s)
      else
        query_params[downcase_first_letter('LoadEncoding')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('Password')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Password') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Password')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('DestFileName')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('DestFileName') + '}', request..to_s)
      else
        query_params[downcase_first_letter('DestFileName')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('RevisionAuthor')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('RevisionAuthor') + '}', request..to_s)
      else
        query_params[downcase_first_letter('RevisionAuthor')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('RevisionDateTime')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('RevisionDateTime') + '}', request..to_s)
      else
        query_params[downcase_first_letter('RevisionDateTime')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('InsertBeforeNode')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('InsertBeforeNode') + '}', request..to_s)
      else
        query_params[downcase_first_letter('InsertBeforeNode')] = request. unless request..nil?
      end

      # header parameters
      header_params = {}

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(request.)
      auth_names = ['JWT']
	  
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#insert_paragraph\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Adds run to document, returns added paragraph's data.
    # 
    # @param request InsertRunRequest
    # @return [nil]
    def insert_run(request)
      begin
        data, _status_code, _headers = insert_run_with_http_info(request)
        rescue ApiError => e
          if e.code == 401
            request_token
            data, _status_code, _headers = insert_run_with_http_info(request)
          else
            raise
          end
      end			
      data
    end

    # Adds run to document, returns added paragraph&#39;s data.
    # 
    # @param request InsertRunRequest
    # @return [Array<(nil, Fixnum, Hash)>]
    # nil, response status code and response headers
    private def insert_run_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? InsertRunRequest

      @api_client.config.logger.debug 'Calling API: WordsApi.insert_run ...' if @api_client.config.debugging
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.insert_run' if @api_client.config.client_side_validation && request..nil?
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.insert_run' if @api_client.config.client_side_validation && request..nil?
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.insert_run' if @api_client.config.client_side_validation && request..nil?
      # resource path
      local_var_path = '/words/{name}/{paragraphPath}/runs'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request..to_s)
      local_var_path = local_var_path.sub('{' + downcase_first_letter('ParagraphPath') + '}', request..to_s)

      # query parameters
      query_params = {}
      if local_var_path.include? downcase_first_letter('Folder')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Folder') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Folder')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('Storage')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Storage') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Storage')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('LoadEncoding')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('LoadEncoding') + '}', request..to_s)
      else
        query_params[downcase_first_letter('LoadEncoding')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('Password')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Password') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Password')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('DestFileName')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('DestFileName') + '}', request..to_s)
      else
        query_params[downcase_first_letter('DestFileName')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('RevisionAuthor')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('RevisionAuthor') + '}', request..to_s)
      else
        query_params[downcase_first_letter('RevisionAuthor')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('RevisionDateTime')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('RevisionDateTime') + '}', request..to_s)
      else
        query_params[downcase_first_letter('RevisionDateTime')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('InsertBeforeNode')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('InsertBeforeNode') + '}', request..to_s)
      else
        query_params[downcase_first_letter('InsertBeforeNode')] = request. unless request..nil?
      end

      # header parameters
      header_params = {}

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(request.)
      auth_names = ['JWT']
	  
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#insert_run\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Adds table to document, returns added table's data.             
    # 
    # @param request InsertTableRequest
    # @return [nil]
    def insert_table(request)
      begin
        data, _status_code, _headers = insert_table_with_http_info(request)
        rescue ApiError => e
          if e.code == 401
            request_token
            data, _status_code, _headers = insert_table_with_http_info(request)
          else
            raise
          end
      end			
      data
    end

    # Adds table to document, returns added table&#39;s data.             
    # 
    # @param request InsertTableRequest
    # @return [Array<(nil, Fixnum, Hash)>]
    # nil, response status code and response headers
    private def insert_table_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? InsertTableRequest

      @api_client.config.logger.debug 'Calling API: WordsApi.insert_table ...' if @api_client.config.debugging
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.insert_table' if @api_client.config.client_side_validation && request..nil?
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.insert_table' if @api_client.config.client_side_validation && request..nil?
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.insert_table' if @api_client.config.client_side_validation && request..nil?
      # resource path
      local_var_path = '/words/{name}/{nodePath}/tables'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request..to_s)
      local_var_path = local_var_path.sub('{' + downcase_first_letter('NodePath') + '}', request..to_s)

      # query parameters
      query_params = {}
      if local_var_path.include? downcase_first_letter('Folder')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Folder') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Folder')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('Storage')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Storage') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Storage')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('LoadEncoding')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('LoadEncoding') + '}', request..to_s)
      else
        query_params[downcase_first_letter('LoadEncoding')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('Password')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Password') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Password')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('DestFileName')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('DestFileName') + '}', request..to_s)
      else
        query_params[downcase_first_letter('DestFileName')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('RevisionAuthor')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('RevisionAuthor') + '}', request..to_s)
      else
        query_params[downcase_first_letter('RevisionAuthor')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('RevisionDateTime')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('RevisionDateTime') + '}', request..to_s)
      else
        query_params[downcase_first_letter('RevisionDateTime')] = request. unless request..nil?
      end

      # header parameters
      header_params = {}

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(request.)
      auth_names = ['JWT']
	  
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#insert_table\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Adds table cell to table, returns added cell's data.             
    # 
    # @param request InsertTableCellRequest
    # @return [nil]
    def insert_table_cell(request)
      begin
        data, _status_code, _headers = insert_table_cell_with_http_info(request)
        rescue ApiError => e
          if e.code == 401
            request_token
            data, _status_code, _headers = insert_table_cell_with_http_info(request)
          else
            raise
          end
      end			
      data
    end

    # Adds table cell to table, returns added cell&#39;s data.             
    # 
    # @param request InsertTableCellRequest
    # @return [Array<(nil, Fixnum, Hash)>]
    # nil, response status code and response headers
    private def insert_table_cell_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? InsertTableCellRequest

      @api_client.config.logger.debug 'Calling API: WordsApi.insert_table_cell ...' if @api_client.config.debugging
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.insert_table_cell' if @api_client.config.client_side_validation && request..nil?
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.insert_table_cell' if @api_client.config.client_side_validation && request..nil?
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.insert_table_cell' if @api_client.config.client_side_validation && request..nil?
      # resource path
      local_var_path = '/words/{name}/{tableRowPath}/cells'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request..to_s)
      local_var_path = local_var_path.sub('{' + downcase_first_letter('TableRowPath') + '}', request..to_s)

      # query parameters
      query_params = {}
      if local_var_path.include? downcase_first_letter('Folder')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Folder') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Folder')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('Storage')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Storage') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Storage')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('LoadEncoding')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('LoadEncoding') + '}', request..to_s)
      else
        query_params[downcase_first_letter('LoadEncoding')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('Password')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Password') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Password')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('DestFileName')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('DestFileName') + '}', request..to_s)
      else
        query_params[downcase_first_letter('DestFileName')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('RevisionAuthor')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('RevisionAuthor') + '}', request..to_s)
      else
        query_params[downcase_first_letter('RevisionAuthor')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('RevisionDateTime')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('RevisionDateTime') + '}', request..to_s)
      else
        query_params[downcase_first_letter('RevisionDateTime')] = request. unless request..nil?
      end

      # header parameters
      header_params = {}

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(request.)
      auth_names = ['JWT']
	  
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#insert_table_cell\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Adds table row to table, returns added row's data.             
    # 
    # @param request InsertTableRowRequest
    # @return [nil]
    def insert_table_row(request)
      begin
        data, _status_code, _headers = insert_table_row_with_http_info(request)
        rescue ApiError => e
          if e.code == 401
            request_token
            data, _status_code, _headers = insert_table_row_with_http_info(request)
          else
            raise
          end
      end			
      data
    end

    # Adds table row to table, returns added row&#39;s data.             
    # 
    # @param request InsertTableRowRequest
    # @return [Array<(nil, Fixnum, Hash)>]
    # nil, response status code and response headers
    private def insert_table_row_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? InsertTableRowRequest

      @api_client.config.logger.debug 'Calling API: WordsApi.insert_table_row ...' if @api_client.config.debugging
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.insert_table_row' if @api_client.config.client_side_validation && request..nil?
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.insert_table_row' if @api_client.config.client_side_validation && request..nil?
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.insert_table_row' if @api_client.config.client_side_validation && request..nil?
      # resource path
      local_var_path = '/words/{name}/{tablePath}/rows'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request..to_s)
      local_var_path = local_var_path.sub('{' + downcase_first_letter('TablePath') + '}', request..to_s)

      # query parameters
      query_params = {}
      if local_var_path.include? downcase_first_letter('Folder')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Folder') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Folder')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('Storage')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Storage') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Storage')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('LoadEncoding')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('LoadEncoding') + '}', request..to_s)
      else
        query_params[downcase_first_letter('LoadEncoding')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('Password')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Password') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Password')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('DestFileName')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('DestFileName') + '}', request..to_s)
      else
        query_params[downcase_first_letter('DestFileName')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('RevisionAuthor')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('RevisionAuthor') + '}', request..to_s)
      else
        query_params[downcase_first_letter('RevisionAuthor')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('RevisionDateTime')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('RevisionDateTime') + '}', request..to_s)
      else
        query_params[downcase_first_letter('RevisionDateTime')] = request. unless request..nil?
      end

      # header parameters
      header_params = {}

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(request.)
      auth_names = ['JWT']
	  
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#insert_table_row\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Adds table to document, returns added table's data.             
    # 
    # @param request InsertTableWithoutNodePathRequest
    # @return [nil]
    def insert_table_without_node_path(request)
      begin
        data, _status_code, _headers = insert_table_without_node_path_with_http_info(request)
        rescue ApiError => e
          if e.code == 401
            request_token
            data, _status_code, _headers = insert_table_without_node_path_with_http_info(request)
          else
            raise
          end
      end			
      data
    end

    # Adds table to document, returns added table&#39;s data.             
    # 
    # @param request InsertTableWithoutNodePathRequest
    # @return [Array<(nil, Fixnum, Hash)>]
    # nil, response status code and response headers
    private def insert_table_without_node_path_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? InsertTableWithoutNodePathRequest

      @api_client.config.logger.debug 'Calling API: WordsApi.insert_table_without_node_path ...' if @api_client.config.debugging
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.insert_table_without_node_path' if @api_client.config.client_side_validation && request..nil?
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.insert_table_without_node_path' if @api_client.config.client_side_validation && request..nil?
      # resource path
      local_var_path = '/words/{name}/tables'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request..to_s)

      # query parameters
      query_params = {}
      if local_var_path.include? downcase_first_letter('Folder')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Folder') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Folder')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('Storage')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Storage') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Storage')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('LoadEncoding')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('LoadEncoding') + '}', request..to_s)
      else
        query_params[downcase_first_letter('LoadEncoding')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('Password')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Password') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Password')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('DestFileName')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('DestFileName') + '}', request..to_s)
      else
        query_params[downcase_first_letter('DestFileName')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('RevisionAuthor')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('RevisionAuthor') + '}', request..to_s)
      else
        query_params[downcase_first_letter('RevisionAuthor')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('RevisionDateTime')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('RevisionDateTime') + '}', request..to_s)
      else
        query_params[downcase_first_letter('RevisionDateTime')] = request. unless request..nil?
      end

      # header parameters
      header_params = {}

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(request.)
      auth_names = ['JWT']
	  
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#insert_table_without_node_path\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Inserts document watermark image.
    # 
    # @param request InsertWatermarkImageRequest
    # @return [nil]
    def insert_watermark_image(request)
      begin
        data, _status_code, _headers = insert_watermark_image_with_http_info(request)
        rescue ApiError => e
          if e.code == 401
            request_token
            data, _status_code, _headers = insert_watermark_image_with_http_info(request)
          else
            raise
          end
      end			
      data
    end

    # Inserts document watermark image.
    # 
    # @param request InsertWatermarkImageRequest
    # @return [Array<(nil, Fixnum, Hash)>]
    # nil, response status code and response headers
    private def insert_watermark_image_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? InsertWatermarkImageRequest

      @api_client.config.logger.debug 'Calling API: WordsApi.insert_watermark_image ...' if @api_client.config.debugging
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.insert_watermark_image' if @api_client.config.client_side_validation && request..nil?
      # resource path
      local_var_path = '/words/{name}/watermarks/images'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request..to_s)

      # query parameters
      query_params = {}
      if local_var_path.include? downcase_first_letter('Folder')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Folder') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Folder')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('Storage')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Storage') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Storage')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('LoadEncoding')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('LoadEncoding') + '}', request..to_s)
      else
        query_params[downcase_first_letter('LoadEncoding')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('Password')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Password') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Password')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('DestFileName')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('DestFileName') + '}', request..to_s)
      else
        query_params[downcase_first_letter('DestFileName')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('RevisionAuthor')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('RevisionAuthor') + '}', request..to_s)
      else
        query_params[downcase_first_letter('RevisionAuthor')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('RevisionDateTime')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('RevisionDateTime') + '}', request..to_s)
      else
        query_params[downcase_first_letter('RevisionDateTime')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('RotationAngle')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('RotationAngle') + '}', request..to_s)
      else
        query_params[downcase_first_letter('RotationAngle')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('Image')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Image') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Image')] = request. unless request..nil?
      end

      # header parameters
      header_params = {}

      # form parameters
      form_params = {}
      form_params[downcase_first_letter('ImageFile')] = request. unless request..nil?

      # http body (model)
      post_body = nil
      auth_names = ['JWT']
	  
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#insert_watermark_image\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Inserts document watermark text.
    # 
    # @param request InsertWatermarkTextRequest
    # @return [nil]
    def insert_watermark_text(request)
      begin
        data, _status_code, _headers = insert_watermark_text_with_http_info(request)
        rescue ApiError => e
          if e.code == 401
            request_token
            data, _status_code, _headers = insert_watermark_text_with_http_info(request)
          else
            raise
          end
      end			
      data
    end

    # Inserts document watermark text.
    # 
    # @param request InsertWatermarkTextRequest
    # @return [Array<(nil, Fixnum, Hash)>]
    # nil, response status code and response headers
    private def insert_watermark_text_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? InsertWatermarkTextRequest

      @api_client.config.logger.debug 'Calling API: WordsApi.insert_watermark_text ...' if @api_client.config.debugging
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.insert_watermark_text' if @api_client.config.client_side_validation && request..nil?
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.insert_watermark_text' if @api_client.config.client_side_validation && request..nil?
      # resource path
      local_var_path = '/words/{name}/watermarks/texts'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request..to_s)

      # query parameters
      query_params = {}
      if local_var_path.include? downcase_first_letter('Folder')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Folder') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Folder')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('Storage')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Storage') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Storage')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('LoadEncoding')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('LoadEncoding') + '}', request..to_s)
      else
        query_params[downcase_first_letter('LoadEncoding')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('Password')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Password') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Password')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('DestFileName')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('DestFileName') + '}', request..to_s)
      else
        query_params[downcase_first_letter('DestFileName')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('RevisionAuthor')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('RevisionAuthor') + '}', request..to_s)
      else
        query_params[downcase_first_letter('RevisionAuthor')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('RevisionDateTime')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('RevisionDateTime') + '}', request..to_s)
      else
        query_params[downcase_first_letter('RevisionDateTime')] = request. unless request..nil?
      end

      # header parameters
      header_params = {}

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(request.)
      auth_names = ['JWT']
	  
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#insert_watermark_text\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Loads new document from web into the file with any supported format of data.
    # 
    # @param request LoadWebDocumentRequest
    # @return [nil]
    def load_web_document(request)
      begin
        data, _status_code, _headers = load_web_document_with_http_info(request)
        rescue ApiError => e
          if e.code == 401
            request_token
            data, _status_code, _headers = load_web_document_with_http_info(request)
          else
            raise
          end
      end			
      data
    end

    # Loads new document from web into the file with any supported format of data.
    # 
    # @param request LoadWebDocumentRequest
    # @return [Array<(nil, Fixnum, Hash)>]
    # nil, response status code and response headers
    private def load_web_document_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? LoadWebDocumentRequest

      @api_client.config.logger.debug 'Calling API: WordsApi.load_web_document ...' if @api_client.config.debugging
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.load_web_document' if @api_client.config.client_side_validation && request..nil?
      # resource path
      local_var_path = '/words/loadWebDocument'

      # query parameters
      query_params = {}
      if local_var_path.include? downcase_first_letter('Storage')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Storage') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Storage')] = request. unless request..nil?
      end

      # header parameters
      header_params = {}

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(request.)
      auth_names = ['JWT']
	  
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#load_web_document\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Move file
    # 
    # @param request MoveFileRequest
    # @return [nil]
    def move_file(request)
      begin
        data, _status_code, _headers = move_file_with_http_info(request)
        rescue ApiError => e
          if e.code == 401
            request_token
            data, _status_code, _headers = move_file_with_http_info(request)
          else
            raise
          end
      end			
      nil
    end

    # Move file
    # 
    # @param request MoveFileRequest
    # @return [Array<(nil, Fixnum, Hash)>]
    # nil, response status code and response headers
    private def move_file_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? MoveFileRequest

      @api_client.config.logger.debug 'Calling API: WordsApi.move_file ...' if @api_client.config.debugging
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.move_file' if @api_client.config.client_side_validation && request..nil?
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.move_file' if @api_client.config.client_side_validation && request..nil?
      # resource path
      local_var_path = '/words/storage/file/move/{srcPath}'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('SrcPath') + '}', request..to_s)

      # query parameters
      query_params = {}
      query_params[downcase_first_letter('DestPath')] = request.

      if local_var_path.include? downcase_first_letter('SrcStorageName')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('SrcStorageName') + '}', request..to_s)
      else
        query_params[downcase_first_letter('SrcStorageName')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('DestStorageName')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('DestStorageName') + '}', request..to_s)
      else
        query_params[downcase_first_letter('DestStorageName')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('VersionId')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('VersionId') + '}', request..to_s)
      else
        query_params[downcase_first_letter('VersionId')] = request. unless request..nil?
      end

      # header parameters
      header_params = {}

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['JWT']
	  
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#move_file\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Move folder
    # 
    # @param request MoveFolderRequest
    # @return [nil]
    def move_folder(request)
      begin
        data, _status_code, _headers = move_folder_with_http_info(request)
        rescue ApiError => e
          if e.code == 401
            request_token
            data, _status_code, _headers = move_folder_with_http_info(request)
          else
            raise
          end
      end			
      nil
    end

    # Move folder
    # 
    # @param request MoveFolderRequest
    # @return [Array<(nil, Fixnum, Hash)>]
    # nil, response status code and response headers
    private def move_folder_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? MoveFolderRequest

      @api_client.config.logger.debug 'Calling API: WordsApi.move_folder ...' if @api_client.config.debugging
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.move_folder' if @api_client.config.client_side_validation && request..nil?
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.move_folder' if @api_client.config.client_side_validation && request..nil?
      # resource path
      local_var_path = '/words/storage/folder/move/{srcPath}'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('SrcPath') + '}', request..to_s)

      # query parameters
      query_params = {}
      query_params[downcase_first_letter('DestPath')] = request.

      if local_var_path.include? downcase_first_letter('SrcStorageName')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('SrcStorageName') + '}', request..to_s)
      else
        query_params[downcase_first_letter('SrcStorageName')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('DestStorageName')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('DestStorageName') + '}', request..to_s)
      else
        query_params[downcase_first_letter('DestStorageName')] = request. unless request..nil?
      end

      # header parameters
      header_params = {}

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['JWT']
	  
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#move_folder\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Protects document.
    # 
    # @param request ProtectDocumentRequest
    # @return [nil]
    def protect_document(request)
      begin
        data, _status_code, _headers = protect_document_with_http_info(request)
        rescue ApiError => e
          if e.code == 401
            request_token
            data, _status_code, _headers = protect_document_with_http_info(request)
          else
            raise
          end
      end			
      data
    end

    # Protects document.
    # 
    # @param request ProtectDocumentRequest
    # @return [Array<(nil, Fixnum, Hash)>]
    # nil, response status code and response headers
    private def protect_document_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? ProtectDocumentRequest

      @api_client.config.logger.debug 'Calling API: WordsApi.protect_document ...' if @api_client.config.debugging
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.protect_document' if @api_client.config.client_side_validation && request..nil?
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.protect_document' if @api_client.config.client_side_validation && request..nil?
      # resource path
      local_var_path = '/words/{name}/protection'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request..to_s)

      # query parameters
      query_params = {}
      if local_var_path.include? downcase_first_letter('Folder')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Folder') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Folder')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('Storage')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Storage') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Storage')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('LoadEncoding')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('LoadEncoding') + '}', request..to_s)
      else
        query_params[downcase_first_letter('LoadEncoding')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('Password')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Password') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Password')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('DestFileName')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('DestFileName') + '}', request..to_s)
      else
        query_params[downcase_first_letter('DestFileName')] = request. unless request..nil?
      end

      # header parameters
      header_params = {}

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(request.)
      auth_names = ['JWT']
	  
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#protect_document\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Rejects all revisions in document.
    # 
    # @param request RejectAllRevisionsRequest
    # @return [nil]
    def reject_all_revisions(request)
      begin
        data, _status_code, _headers = reject_all_revisions_with_http_info(request)
        rescue ApiError => e
          if e.code == 401
            request_token
            data, _status_code, _headers = reject_all_revisions_with_http_info(request)
          else
            raise
          end
      end			
      data
    end

    # Rejects all revisions in document.
    # 
    # @param request RejectAllRevisionsRequest
    # @return [Array<(nil, Fixnum, Hash)>]
    # nil, response status code and response headers
    private def reject_all_revisions_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? RejectAllRevisionsRequest

      @api_client.config.logger.debug 'Calling API: WordsApi.reject_all_revisions ...' if @api_client.config.debugging
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.reject_all_revisions' if @api_client.config.client_side_validation && request..nil?
      # resource path
      local_var_path = '/words/{name}/revisions/rejectAll'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request..to_s)

      # query parameters
      query_params = {}
      if local_var_path.include? downcase_first_letter('Folder')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Folder') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Folder')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('Storage')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Storage') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Storage')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('LoadEncoding')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('LoadEncoding') + '}', request..to_s)
      else
        query_params[downcase_first_letter('LoadEncoding')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('Password')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Password') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Password')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('DestFileName')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('DestFileName') + '}', request..to_s)
      else
        query_params[downcase_first_letter('DestFileName')] = request. unless request..nil?
      end

      # header parameters
      header_params = {}

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['JWT']
	  
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#reject_all_revisions\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Removes the range from the document.
    # 
    # @param request RemoveRangeRequest
    # @return [nil]
    def remove_range(request)
      begin
        data, _status_code, _headers = remove_range_with_http_info(request)
        rescue ApiError => e
          if e.code == 401
            request_token
            data, _status_code, _headers = remove_range_with_http_info(request)
          else
            raise
          end
      end			
      data
    end

    # Removes the range from the document.
    # 
    # @param request RemoveRangeRequest
    # @return [Array<(nil, Fixnum, Hash)>]
    # nil, response status code and response headers
    private def remove_range_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? RemoveRangeRequest

      @api_client.config.logger.debug 'Calling API: WordsApi.remove_range ...' if @api_client.config.debugging
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.remove_range' if @api_client.config.client_side_validation && request..nil?
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.remove_range' if @api_client.config.client_side_validation && request..nil?
      # resource path
      local_var_path = '/words/{name}/range/{rangeStartIdentifier}/{rangeEndIdentifier}'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request..to_s)
      local_var_path = local_var_path.sub('{' + downcase_first_letter('RangeStartIdentifier') + '}', request..to_s)
      local_var_path = local_var_path.sub('{' + downcase_first_letter('RangeEndIdentifier') + '}', request..to_s)

      # query parameters
      query_params = {}
      if local_var_path.include? downcase_first_letter('Folder')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Folder') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Folder')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('Storage')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Storage') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Storage')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('LoadEncoding')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('LoadEncoding') + '}', request..to_s)
      else
        query_params[downcase_first_letter('LoadEncoding')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('Password')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Password') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Password')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('DestFileName')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('DestFileName') + '}', request..to_s)
      else
        query_params[downcase_first_letter('DestFileName')] = request. unless request..nil?
      end

      # header parameters
      header_params = {}

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['JWT']
	  
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#remove_range\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Renders drawing object to specified format.
    # 
    # @param request RenderDrawingObjectRequest
    # @return [nil]
    def render_drawing_object(request)
      begin
        data, _status_code, _headers = render_drawing_object_with_http_info(request)
        rescue ApiError => e
          if e.code == 401
            request_token
            data, _status_code, _headers = render_drawing_object_with_http_info(request)
          else
            raise
          end
      end			
      data
    end

    # Renders drawing object to specified format.
    # 
    # @param request RenderDrawingObjectRequest
    # @return [Array<(nil, Fixnum, Hash)>]
    # nil, response status code and response headers
    private def render_drawing_object_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? RenderDrawingObjectRequest

      @api_client.config.logger.debug 'Calling API: WordsApi.render_drawing_object ...' if @api_client.config.debugging
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.render_drawing_object' if @api_client.config.client_side_validation && request..nil?
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.render_drawing_object' if @api_client.config.client_side_validation && request..nil?
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.render_drawing_object' if @api_client.config.client_side_validation && request..nil?
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.render_drawing_object' if @api_client.config.client_side_validation && request..nil?
      # resource path
      local_var_path = '/words/{name}/{nodePath}/drawingObjects/{index}/render'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request..to_s)
      local_var_path = local_var_path.sub('{' + downcase_first_letter('NodePath') + '}', request..to_s)
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Index') + '}', request..to_s)

      # query parameters
      query_params = {}
      query_params[downcase_first_letter('Format')] = request.

      if local_var_path.include? downcase_first_letter('Folder')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Folder') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Folder')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('Storage')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Storage') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Storage')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('LoadEncoding')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('LoadEncoding') + '}', request..to_s)
      else
        query_params[downcase_first_letter('LoadEncoding')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('Password')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Password') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Password')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('FontsLocation')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('FontsLocation') + '}', request..to_s)
      else
        query_params[downcase_first_letter('FontsLocation')] = request. unless request..nil?
      end

      # header parameters
      header_params = {}

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['JWT']
	  
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#render_drawing_object\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Renders drawing object to specified format.
    # 
    # @param request RenderDrawingObjectWithoutNodePathRequest
    # @return [nil]
    def render_drawing_object_without_node_path(request)
      begin
        data, _status_code, _headers = render_drawing_object_without_node_path_with_http_info(request)
        rescue ApiError => e
          if e.code == 401
            request_token
            data, _status_code, _headers = render_drawing_object_without_node_path_with_http_info(request)
          else
            raise
          end
      end			
      data
    end

    # Renders drawing object to specified format.
    # 
    # @param request RenderDrawingObjectWithoutNodePathRequest
    # @return [Array<(nil, Fixnum, Hash)>]
    # nil, response status code and response headers
    private def render_drawing_object_without_node_path_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? RenderDrawingObjectWithoutNodePathRequest

      @api_client.config.logger.debug 'Calling API: WordsApi.render_drawing_object_without_node_path ...' if @api_client.config.debugging
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.render_drawing_object_without_node_path' if @api_client.config.client_side_validation && request..nil?
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.render_drawing_object_without_node_path' if @api_client.config.client_side_validation && request..nil?
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.render_drawing_object_without_node_path' if @api_client.config.client_side_validation && request..nil?
      # resource path
      local_var_path = '/words/{name}/drawingObjects/{index}/render'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request..to_s)
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Index') + '}', request..to_s)

      # query parameters
      query_params = {}
      query_params[downcase_first_letter('Format')] = request.

      if local_var_path.include? downcase_first_letter('Folder')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Folder') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Folder')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('Storage')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Storage') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Storage')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('LoadEncoding')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('LoadEncoding') + '}', request..to_s)
      else
        query_params[downcase_first_letter('LoadEncoding')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('Password')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Password') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Password')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('FontsLocation')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('FontsLocation') + '}', request..to_s)
      else
        query_params[downcase_first_letter('FontsLocation')] = request. unless request..nil?
      end

      # header parameters
      header_params = {}

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['JWT']
	  
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#render_drawing_object_without_node_path\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Renders math object to specified format.
    # 
    # @param request RenderMathObjectRequest
    # @return [nil]
    def render_math_object(request)
      begin
        data, _status_code, _headers = render_math_object_with_http_info(request)
        rescue ApiError => e
          if e.code == 401
            request_token
            data, _status_code, _headers = render_math_object_with_http_info(request)
          else
            raise
          end
      end			
      data
    end

    # Renders math object to specified format.
    # 
    # @param request RenderMathObjectRequest
    # @return [Array<(nil, Fixnum, Hash)>]
    # nil, response status code and response headers
    private def render_math_object_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? RenderMathObjectRequest

      @api_client.config.logger.debug 'Calling API: WordsApi.render_math_object ...' if @api_client.config.debugging
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.render_math_object' if @api_client.config.client_side_validation && request..nil?
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.render_math_object' if @api_client.config.client_side_validation && request..nil?
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.render_math_object' if @api_client.config.client_side_validation && request..nil?
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.render_math_object' if @api_client.config.client_side_validation && request..nil?
      # resource path
      local_var_path = '/words/{name}/{nodePath}/OfficeMathObjects/{index}/render'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request..to_s)
      local_var_path = local_var_path.sub('{' + downcase_first_letter('NodePath') + '}', request..to_s)
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Index') + '}', request..to_s)

      # query parameters
      query_params = {}
      query_params[downcase_first_letter('Format')] = request.

      if local_var_path.include? downcase_first_letter('Folder')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Folder') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Folder')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('Storage')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Storage') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Storage')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('LoadEncoding')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('LoadEncoding') + '}', request..to_s)
      else
        query_params[downcase_first_letter('LoadEncoding')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('Password')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Password') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Password')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('FontsLocation')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('FontsLocation') + '}', request..to_s)
      else
        query_params[downcase_first_letter('FontsLocation')] = request. unless request..nil?
      end

      # header parameters
      header_params = {}

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['JWT']
	  
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#render_math_object\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Renders math object to specified format.
    # 
    # @param request RenderMathObjectWithoutNodePathRequest
    # @return [nil]
    def render_math_object_without_node_path(request)
      begin
        data, _status_code, _headers = render_math_object_without_node_path_with_http_info(request)
        rescue ApiError => e
          if e.code == 401
            request_token
            data, _status_code, _headers = render_math_object_without_node_path_with_http_info(request)
          else
            raise
          end
      end			
      data
    end

    # Renders math object to specified format.
    # 
    # @param request RenderMathObjectWithoutNodePathRequest
    # @return [Array<(nil, Fixnum, Hash)>]
    # nil, response status code and response headers
    private def render_math_object_without_node_path_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? RenderMathObjectWithoutNodePathRequest

      @api_client.config.logger.debug 'Calling API: WordsApi.render_math_object_without_node_path ...' if @api_client.config.debugging
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.render_math_object_without_node_path' if @api_client.config.client_side_validation && request..nil?
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.render_math_object_without_node_path' if @api_client.config.client_side_validation && request..nil?
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.render_math_object_without_node_path' if @api_client.config.client_side_validation && request..nil?
      # resource path
      local_var_path = '/words/{name}/OfficeMathObjects/{index}/render'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request..to_s)
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Index') + '}', request..to_s)

      # query parameters
      query_params = {}
      query_params[downcase_first_letter('Format')] = request.

      if local_var_path.include? downcase_first_letter('Folder')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Folder') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Folder')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('Storage')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Storage') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Storage')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('LoadEncoding')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('LoadEncoding') + '}', request..to_s)
      else
        query_params[downcase_first_letter('LoadEncoding')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('Password')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Password') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Password')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('FontsLocation')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('FontsLocation') + '}', request..to_s)
      else
        query_params[downcase_first_letter('FontsLocation')] = request. unless request..nil?
      end

      # header parameters
      header_params = {}

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['JWT']
	  
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#render_math_object_without_node_path\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Renders page to specified format.
    # 
    # @param request RenderPageRequest
    # @return [nil]
    def render_page(request)
      begin
        data, _status_code, _headers = render_page_with_http_info(request)
        rescue ApiError => e
          if e.code == 401
            request_token
            data, _status_code, _headers = render_page_with_http_info(request)
          else
            raise
          end
      end			
      data
    end

    # Renders page to specified format.
    # 
    # @param request RenderPageRequest
    # @return [Array<(nil, Fixnum, Hash)>]
    # nil, response status code and response headers
    private def render_page_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? RenderPageRequest

      @api_client.config.logger.debug 'Calling API: WordsApi.render_page ...' if @api_client.config.debugging
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.render_page' if @api_client.config.client_side_validation && request..nil?
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.render_page' if @api_client.config.client_side_validation && request..nil?
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.render_page' if @api_client.config.client_side_validation && request..nil?
      # resource path
      local_var_path = '/words/{name}/pages/{pageIndex}/render'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request..to_s)
      local_var_path = local_var_path.sub('{' + downcase_first_letter('PageIndex') + '}', request..to_s)

      # query parameters
      query_params = {}
      query_params[downcase_first_letter('Format')] = request.

      if local_var_path.include? downcase_first_letter('Folder')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Folder') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Folder')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('Storage')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Storage') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Storage')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('LoadEncoding')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('LoadEncoding') + '}', request..to_s)
      else
        query_params[downcase_first_letter('LoadEncoding')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('Password')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Password') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Password')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('FontsLocation')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('FontsLocation') + '}', request..to_s)
      else
        query_params[downcase_first_letter('FontsLocation')] = request. unless request..nil?
      end

      # header parameters
      header_params = {}

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['JWT']
	  
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#render_page\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Renders paragraph to specified format.
    # 
    # @param request RenderParagraphRequest
    # @return [nil]
    def render_paragraph(request)
      begin
        data, _status_code, _headers = render_paragraph_with_http_info(request)
        rescue ApiError => e
          if e.code == 401
            request_token
            data, _status_code, _headers = render_paragraph_with_http_info(request)
          else
            raise
          end
      end			
      data
    end

    # Renders paragraph to specified format.
    # 
    # @param request RenderParagraphRequest
    # @return [Array<(nil, Fixnum, Hash)>]
    # nil, response status code and response headers
    private def render_paragraph_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? RenderParagraphRequest

      @api_client.config.logger.debug 'Calling API: WordsApi.render_paragraph ...' if @api_client.config.debugging
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.render_paragraph' if @api_client.config.client_side_validation && request..nil?
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.render_paragraph' if @api_client.config.client_side_validation && request..nil?
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.render_paragraph' if @api_client.config.client_side_validation && request..nil?
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.render_paragraph' if @api_client.config.client_side_validation && request..nil?
      # resource path
      local_var_path = '/words/{name}/{nodePath}/paragraphs/{index}/render'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request..to_s)
      local_var_path = local_var_path.sub('{' + downcase_first_letter('NodePath') + '}', request..to_s)
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Index') + '}', request..to_s)

      # query parameters
      query_params = {}
      query_params[downcase_first_letter('Format')] = request.

      if local_var_path.include? downcase_first_letter('Folder')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Folder') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Folder')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('Storage')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Storage') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Storage')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('LoadEncoding')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('LoadEncoding') + '}', request..to_s)
      else
        query_params[downcase_first_letter('LoadEncoding')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('Password')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Password') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Password')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('FontsLocation')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('FontsLocation') + '}', request..to_s)
      else
        query_params[downcase_first_letter('FontsLocation')] = request. unless request..nil?
      end

      # header parameters
      header_params = {}

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['JWT']
	  
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#render_paragraph\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Renders paragraph to specified format.
    # 
    # @param request RenderParagraphWithoutNodePathRequest
    # @return [nil]
    def render_paragraph_without_node_path(request)
      begin
        data, _status_code, _headers = render_paragraph_without_node_path_with_http_info(request)
        rescue ApiError => e
          if e.code == 401
            request_token
            data, _status_code, _headers = render_paragraph_without_node_path_with_http_info(request)
          else
            raise
          end
      end			
      data
    end

    # Renders paragraph to specified format.
    # 
    # @param request RenderParagraphWithoutNodePathRequest
    # @return [Array<(nil, Fixnum, Hash)>]
    # nil, response status code and response headers
    private def render_paragraph_without_node_path_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? RenderParagraphWithoutNodePathRequest

      @api_client.config.logger.debug 'Calling API: WordsApi.render_paragraph_without_node_path ...' if @api_client.config.debugging
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.render_paragraph_without_node_path' if @api_client.config.client_side_validation && request..nil?
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.render_paragraph_without_node_path' if @api_client.config.client_side_validation && request..nil?
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.render_paragraph_without_node_path' if @api_client.config.client_side_validation && request..nil?
      # resource path
      local_var_path = '/words/{name}/paragraphs/{index}/render'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request..to_s)
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Index') + '}', request..to_s)

      # query parameters
      query_params = {}
      query_params[downcase_first_letter('Format')] = request.

      if local_var_path.include? downcase_first_letter('Folder')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Folder') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Folder')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('Storage')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Storage') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Storage')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('LoadEncoding')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('LoadEncoding') + '}', request..to_s)
      else
        query_params[downcase_first_letter('LoadEncoding')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('Password')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Password') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Password')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('FontsLocation')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('FontsLocation') + '}', request..to_s)
      else
        query_params[downcase_first_letter('FontsLocation')] = request. unless request..nil?
      end

      # header parameters
      header_params = {}

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['JWT']
	  
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#render_paragraph_without_node_path\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Renders table to specified format.
    # 
    # @param request RenderTableRequest
    # @return [nil]
    def render_table(request)
      begin
        data, _status_code, _headers = render_table_with_http_info(request)
        rescue ApiError => e
          if e.code == 401
            request_token
            data, _status_code, _headers = render_table_with_http_info(request)
          else
            raise
          end
      end			
      data
    end

    # Renders table to specified format.
    # 
    # @param request RenderTableRequest
    # @return [Array<(nil, Fixnum, Hash)>]
    # nil, response status code and response headers
    private def render_table_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? RenderTableRequest

      @api_client.config.logger.debug 'Calling API: WordsApi.render_table ...' if @api_client.config.debugging
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.render_table' if @api_client.config.client_side_validation && request..nil?
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.render_table' if @api_client.config.client_side_validation && request..nil?
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.render_table' if @api_client.config.client_side_validation && request..nil?
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.render_table' if @api_client.config.client_side_validation && request..nil?
      # resource path
      local_var_path = '/words/{name}/{nodePath}/tables/{index}/render'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request..to_s)
      local_var_path = local_var_path.sub('{' + downcase_first_letter('NodePath') + '}', request..to_s)
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Index') + '}', request..to_s)

      # query parameters
      query_params = {}
      query_params[downcase_first_letter('Format')] = request.

      if local_var_path.include? downcase_first_letter('Folder')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Folder') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Folder')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('Storage')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Storage') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Storage')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('LoadEncoding')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('LoadEncoding') + '}', request..to_s)
      else
        query_params[downcase_first_letter('LoadEncoding')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('Password')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Password') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Password')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('FontsLocation')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('FontsLocation') + '}', request..to_s)
      else
        query_params[downcase_first_letter('FontsLocation')] = request. unless request..nil?
      end

      # header parameters
      header_params = {}

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['JWT']
	  
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#render_table\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Renders table to specified format.
    # 
    # @param request RenderTableWithoutNodePathRequest
    # @return [nil]
    def render_table_without_node_path(request)
      begin
        data, _status_code, _headers = render_table_without_node_path_with_http_info(request)
        rescue ApiError => e
          if e.code == 401
            request_token
            data, _status_code, _headers = render_table_without_node_path_with_http_info(request)
          else
            raise
          end
      end			
      data
    end

    # Renders table to specified format.
    # 
    # @param request RenderTableWithoutNodePathRequest
    # @return [Array<(nil, Fixnum, Hash)>]
    # nil, response status code and response headers
    private def render_table_without_node_path_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? RenderTableWithoutNodePathRequest

      @api_client.config.logger.debug 'Calling API: WordsApi.render_table_without_node_path ...' if @api_client.config.debugging
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.render_table_without_node_path' if @api_client.config.client_side_validation && request..nil?
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.render_table_without_node_path' if @api_client.config.client_side_validation && request..nil?
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.render_table_without_node_path' if @api_client.config.client_side_validation && request..nil?
      # resource path
      local_var_path = '/words/{name}/tables/{index}/render'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request..to_s)
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Index') + '}', request..to_s)

      # query parameters
      query_params = {}
      query_params[downcase_first_letter('Format')] = request.

      if local_var_path.include? downcase_first_letter('Folder')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Folder') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Folder')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('Storage')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Storage') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Storage')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('LoadEncoding')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('LoadEncoding') + '}', request..to_s)
      else
        query_params[downcase_first_letter('LoadEncoding')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('Password')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Password') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Password')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('FontsLocation')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('FontsLocation') + '}', request..to_s)
      else
        query_params[downcase_first_letter('FontsLocation')] = request. unless request..nil?
      end

      # header parameters
      header_params = {}

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['JWT']
	  
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#render_table_without_node_path\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Replaces document text.
    # 
    # @param request ReplaceTextRequest
    # @return [nil]
    def replace_text(request)
      begin
        data, _status_code, _headers = replace_text_with_http_info(request)
        rescue ApiError => e
          if e.code == 401
            request_token
            data, _status_code, _headers = replace_text_with_http_info(request)
          else
            raise
          end
      end			
      data
    end

    # Replaces document text.
    # 
    # @param request ReplaceTextRequest
    # @return [Array<(nil, Fixnum, Hash)>]
    # nil, response status code and response headers
    private def replace_text_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? ReplaceTextRequest

      @api_client.config.logger.debug 'Calling API: WordsApi.replace_text ...' if @api_client.config.debugging
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.replace_text' if @api_client.config.client_side_validation && request..nil?
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.replace_text' if @api_client.config.client_side_validation && request..nil?
      # resource path
      local_var_path = '/words/{name}/replaceText'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request..to_s)

      # query parameters
      query_params = {}
      if local_var_path.include? downcase_first_letter('Folder')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Folder') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Folder')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('Storage')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Storage') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Storage')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('LoadEncoding')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('LoadEncoding') + '}', request..to_s)
      else
        query_params[downcase_first_letter('LoadEncoding')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('Password')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Password') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Password')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('DestFileName')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('DestFileName') + '}', request..to_s)
      else
        query_params[downcase_first_letter('DestFileName')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('RevisionAuthor')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('RevisionAuthor') + '}', request..to_s)
      else
        query_params[downcase_first_letter('RevisionAuthor')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('RevisionDateTime')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('RevisionDateTime') + '}', request..to_s)
      else
        query_params[downcase_first_letter('RevisionDateTime')] = request. unless request..nil?
      end

      # header parameters
      header_params = {}

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(request.)
      auth_names = ['JWT']
	  
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#replace_text\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Replaces the content in the range.
    # 
    # @param request ReplaceWithTextRequest
    # @return [nil]
    def replace_with_text(request)
      begin
        data, _status_code, _headers = replace_with_text_with_http_info(request)
        rescue ApiError => e
          if e.code == 401
            request_token
            data, _status_code, _headers = replace_with_text_with_http_info(request)
          else
            raise
          end
      end			
      data
    end

    # Replaces the content in the range.
    # 
    # @param request ReplaceWithTextRequest
    # @return [Array<(nil, Fixnum, Hash)>]
    # nil, response status code and response headers
    private def replace_with_text_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? ReplaceWithTextRequest

      @api_client.config.logger.debug 'Calling API: WordsApi.replace_with_text ...' if @api_client.config.debugging
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.replace_with_text' if @api_client.config.client_side_validation && request..nil?
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.replace_with_text' if @api_client.config.client_side_validation && request..nil?
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.replace_with_text' if @api_client.config.client_side_validation && request..nil?
      # resource path
      local_var_path = '/words/{name}/range/{rangeStartIdentifier}/{rangeEndIdentifier}'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request..to_s)
      local_var_path = local_var_path.sub('{' + downcase_first_letter('RangeStartIdentifier') + '}', request..to_s)
      local_var_path = local_var_path.sub('{' + downcase_first_letter('RangeEndIdentifier') + '}', request..to_s)

      # query parameters
      query_params = {}
      if local_var_path.include? downcase_first_letter('Folder')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Folder') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Folder')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('Storage')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Storage') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Storage')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('LoadEncoding')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('LoadEncoding') + '}', request..to_s)
      else
        query_params[downcase_first_letter('LoadEncoding')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('Password')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Password') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Password')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('DestFileName')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('DestFileName') + '}', request..to_s)
      else
        query_params[downcase_first_letter('DestFileName')] = request. unless request..nil?
      end

      # header parameters
      header_params = {}

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(request.)
      auth_names = ['JWT']
	  
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#replace_with_text\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Resets font's cache.
    # 
    # @param request ResetCacheRequest
    # @return [nil]
    def reset_cache(request)
      begin
        data, _status_code, _headers = reset_cache_with_http_info(request)
        rescue ApiError => e
          if e.code == 401
            request_token
            data, _status_code, _headers = reset_cache_with_http_info(request)
          else
            raise
          end
      end			
      nil
    end

    # Resets font&#39;s cache.
    # 
    # @param request ResetCacheRequest
    # @return [Array<(nil, Fixnum, Hash)>]
    # nil, response status code and response headers
    private def reset_cache_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? ResetCacheRequest

      @api_client.config.logger.debug 'Calling API: WordsApi.reset_cache ...' if @api_client.config.debugging
      # resource path
      local_var_path = '/words/fonts/cache'

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['JWT']
	  
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#reset_cache\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Converts document to destination format with detailed settings and saves result to storage.
    # 
    # @param request SaveAsRequest
    # @return [nil]
    def save_as(request)
      begin
        data, _status_code, _headers = save_as_with_http_info(request)
        rescue ApiError => e
          if e.code == 401
            request_token
            data, _status_code, _headers = save_as_with_http_info(request)
          else
            raise
          end
      end			
      data
    end

    # Converts document to destination format with detailed settings and saves result to storage.
    # 
    # @param request SaveAsRequest
    # @return [Array<(nil, Fixnum, Hash)>]
    # nil, response status code and response headers
    private def save_as_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? SaveAsRequest

      @api_client.config.logger.debug 'Calling API: WordsApi.save_as ...' if @api_client.config.debugging
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.save_as' if @api_client.config.client_side_validation && request..nil?
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.save_as' if @api_client.config.client_side_validation && request..nil?
      # resource path
      local_var_path = '/words/{name}/saveAs'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request..to_s)

      # query parameters
      query_params = {}
      if local_var_path.include? downcase_first_letter('Folder')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Folder') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Folder')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('Storage')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Storage') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Storage')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('LoadEncoding')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('LoadEncoding') + '}', request..to_s)
      else
        query_params[downcase_first_letter('LoadEncoding')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('Password')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Password') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Password')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('FontsLocation')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('FontsLocation') + '}', request..to_s)
      else
        query_params[downcase_first_letter('FontsLocation')] = request. unless request..nil?
      end

      # header parameters
      header_params = {}

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(request.)
      auth_names = ['JWT']
	  
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#save_as\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Saves the selected range as a new document.
    # 
    # @param request SaveAsRangeRequest
    # @return [nil]
    def save_as_range(request)
      begin
        data, _status_code, _headers = save_as_range_with_http_info(request)
        rescue ApiError => e
          if e.code == 401
            request_token
            data, _status_code, _headers = save_as_range_with_http_info(request)
          else
            raise
          end
      end			
      data
    end

    # Saves the selected range as a new document.
    # 
    # @param request SaveAsRangeRequest
    # @return [Array<(nil, Fixnum, Hash)>]
    # nil, response status code and response headers
    private def save_as_range_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? SaveAsRangeRequest

      @api_client.config.logger.debug 'Calling API: WordsApi.save_as_range ...' if @api_client.config.debugging
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.save_as_range' if @api_client.config.client_side_validation && request..nil?
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.save_as_range' if @api_client.config.client_side_validation && request..nil?
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.save_as_range' if @api_client.config.client_side_validation && request..nil?
      # resource path
      local_var_path = '/words/{name}/range/{rangeStartIdentifier}/{rangeEndIdentifier}/SaveAs'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request..to_s)
      local_var_path = local_var_path.sub('{' + downcase_first_letter('RangeStartIdentifier') + '}', request..to_s)
      local_var_path = local_var_path.sub('{' + downcase_first_letter('RangeEndIdentifier') + '}', request..to_s)

      # query parameters
      query_params = {}
      if local_var_path.include? downcase_first_letter('Folder')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Folder') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Folder')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('Storage')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Storage') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Storage')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('LoadEncoding')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('LoadEncoding') + '}', request..to_s)
      else
        query_params[downcase_first_letter('LoadEncoding')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('Password')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Password') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Password')] = request. unless request..nil?
      end

      # header parameters
      header_params = {}

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(request.)
      auth_names = ['JWT']
	  
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#save_as_range\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Converts document to tiff with detailed settings and saves result to storage.
    # 
    # @param request SaveAsTiffRequest
    # @return [nil]
    def save_as_tiff(request)
      begin
        data, _status_code, _headers = save_as_tiff_with_http_info(request)
        rescue ApiError => e
          if e.code == 401
            request_token
            data, _status_code, _headers = save_as_tiff_with_http_info(request)
          else
            raise
          end
      end			
      data
    end

    # Converts document to tiff with detailed settings and saves result to storage.
    # 
    # @param request SaveAsTiffRequest
    # @return [Array<(nil, Fixnum, Hash)>]
    # nil, response status code and response headers
    private def save_as_tiff_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? SaveAsTiffRequest

      @api_client.config.logger.debug 'Calling API: WordsApi.save_as_tiff ...' if @api_client.config.debugging
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.save_as_tiff' if @api_client.config.client_side_validation && request..nil?
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.save_as_tiff' if @api_client.config.client_side_validation && request..nil?
      # resource path
      local_var_path = '/words/{name}/saveAs/tiff'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request..to_s)

      # query parameters
      query_params = {}
      if local_var_path.include? downcase_first_letter('Folder')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Folder') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Folder')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('Storage')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Storage') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Storage')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('LoadEncoding')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('LoadEncoding') + '}', request..to_s)
      else
        query_params[downcase_first_letter('LoadEncoding')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('Password')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Password') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Password')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('UseAntiAliasing')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('UseAntiAliasing') + '}', request..to_s)
      else
        query_params[downcase_first_letter('UseAntiAliasing')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('UseHighQualityRendering')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('UseHighQualityRendering') + '}', request..to_s)
      else
        query_params[downcase_first_letter('UseHighQualityRendering')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('ImageBrightness')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('ImageBrightness') + '}', request..to_s)
      else
        query_params[downcase_first_letter('ImageBrightness')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('ImageColorMode')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('ImageColorMode') + '}', request..to_s)
      else
        query_params[downcase_first_letter('ImageColorMode')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('ImageContrast')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('ImageContrast') + '}', request..to_s)
      else
        query_params[downcase_first_letter('ImageContrast')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('NumeralFormat')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('NumeralFormat') + '}', request..to_s)
      else
        query_params[downcase_first_letter('NumeralFormat')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('PageCount')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('PageCount') + '}', request..to_s)
      else
        query_params[downcase_first_letter('PageCount')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('PageIndex')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('PageIndex') + '}', request..to_s)
      else
        query_params[downcase_first_letter('PageIndex')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('PaperColor')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('PaperColor') + '}', request..to_s)
      else
        query_params[downcase_first_letter('PaperColor')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('PixelFormat')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('PixelFormat') + '}', request..to_s)
      else
        query_params[downcase_first_letter('PixelFormat')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('Resolution')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Resolution') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Resolution')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('Scale')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Scale') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Scale')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('TiffCompression')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('TiffCompression') + '}', request..to_s)
      else
        query_params[downcase_first_letter('TiffCompression')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('DmlRenderingMode')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('DmlRenderingMode') + '}', request..to_s)
      else
        query_params[downcase_first_letter('DmlRenderingMode')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('DmlEffectsRenderingMode')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('DmlEffectsRenderingMode') + '}', request..to_s)
      else
        query_params[downcase_first_letter('DmlEffectsRenderingMode')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('TiffBinarizationMethod')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('TiffBinarizationMethod') + '}', request..to_s)
      else
        query_params[downcase_first_letter('TiffBinarizationMethod')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('ZipOutput')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('ZipOutput') + '}', request..to_s)
      else
        query_params[downcase_first_letter('ZipOutput')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('FontsLocation')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('FontsLocation') + '}', request..to_s)
      else
        query_params[downcase_first_letter('FontsLocation')] = request. unless request..nil?
      end

      # header parameters
      header_params = {}

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(request.)
      auth_names = ['JWT']
	  
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#save_as_tiff\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Searches text in document.
    # 
    # @param request SearchRequest
    # @return [nil]
    def search(request)
      begin
        data, _status_code, _headers = search_with_http_info(request)
        rescue ApiError => e
          if e.code == 401
            request_token
            data, _status_code, _headers = search_with_http_info(request)
          else
            raise
          end
      end			
      data
    end

    # Searches text in document.
    # 
    # @param request SearchRequest
    # @return [Array<(nil, Fixnum, Hash)>]
    # nil, response status code and response headers
    private def search_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? SearchRequest

      @api_client.config.logger.debug 'Calling API: WordsApi.search ...' if @api_client.config.debugging
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.search' if @api_client.config.client_side_validation && request..nil?
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.search' if @api_client.config.client_side_validation && request..nil?
      # resource path
      local_var_path = '/words/{name}/search'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request..to_s)

      # query parameters
      query_params = {}
      query_params[downcase_first_letter('Pattern')] = request.

      if local_var_path.include? downcase_first_letter('Folder')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Folder') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Folder')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('Storage')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Storage') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Storage')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('LoadEncoding')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('LoadEncoding') + '}', request..to_s)
      else
        query_params[downcase_first_letter('LoadEncoding')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('Password')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Password') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Password')] = request. unless request..nil?
      end

      # header parameters
      header_params = {}

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['JWT']
	  
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#search\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Splits document.
    # 
    # @param request SplitDocumentRequest
    # @return [nil]
    def split_document(request)
      begin
        data, _status_code, _headers = split_document_with_http_info(request)
        rescue ApiError => e
          if e.code == 401
            request_token
            data, _status_code, _headers = split_document_with_http_info(request)
          else
            raise
          end
      end			
      data
    end

    # Splits document.
    # 
    # @param request SplitDocumentRequest
    # @return [Array<(nil, Fixnum, Hash)>]
    # nil, response status code and response headers
    private def split_document_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? SplitDocumentRequest

      @api_client.config.logger.debug 'Calling API: WordsApi.split_document ...' if @api_client.config.debugging
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.split_document' if @api_client.config.client_side_validation && request..nil?
      # resource path
      local_var_path = '/words/{name}/split'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request..to_s)

      # query parameters
      query_params = {}
      if local_var_path.include? downcase_first_letter('Folder')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Folder') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Folder')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('Storage')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Storage') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Storage')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('LoadEncoding')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('LoadEncoding') + '}', request..to_s)
      else
        query_params[downcase_first_letter('LoadEncoding')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('Password')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Password') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Password')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('DestFileName')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('DestFileName') + '}', request..to_s)
      else
        query_params[downcase_first_letter('DestFileName')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('Format')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Format') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Format')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('From')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('From') + '}', request..to_s)
      else
        query_params[downcase_first_letter('From')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('To')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('To') + '}', request..to_s)
      else
        query_params[downcase_first_letter('To')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('ZipOutput')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('ZipOutput') + '}', request..to_s)
      else
        query_params[downcase_first_letter('ZipOutput')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('FontsLocation')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('FontsLocation') + '}', request..to_s)
      else
        query_params[downcase_first_letter('FontsLocation')] = request. unless request..nil?
      end

      # header parameters
      header_params = {}

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['JWT']
	  
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#split_document\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Unprotects document.
    # 
    # @param request UnprotectDocumentRequest
    # @return [nil]
    def unprotect_document(request)
      begin
        data, _status_code, _headers = unprotect_document_with_http_info(request)
        rescue ApiError => e
          if e.code == 401
            request_token
            data, _status_code, _headers = unprotect_document_with_http_info(request)
          else
            raise
          end
      end			
      data
    end

    # Unprotects document.
    # 
    # @param request UnprotectDocumentRequest
    # @return [Array<(nil, Fixnum, Hash)>]
    # nil, response status code and response headers
    private def unprotect_document_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? UnprotectDocumentRequest

      @api_client.config.logger.debug 'Calling API: WordsApi.unprotect_document ...' if @api_client.config.debugging
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.unprotect_document' if @api_client.config.client_side_validation && request..nil?
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.unprotect_document' if @api_client.config.client_side_validation && request..nil?
      # resource path
      local_var_path = '/words/{name}/protection'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request..to_s)

      # query parameters
      query_params = {}
      if local_var_path.include? downcase_first_letter('Folder')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Folder') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Folder')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('Storage')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Storage') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Storage')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('LoadEncoding')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('LoadEncoding') + '}', request..to_s)
      else
        query_params[downcase_first_letter('LoadEncoding')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('Password')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Password') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Password')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('DestFileName')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('DestFileName') + '}', request..to_s)
      else
        query_params[downcase_first_letter('DestFileName')] = request. unless request..nil?
      end

      # header parameters
      header_params = {}

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(request.)
      auth_names = ['JWT']
	  
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#unprotect_document\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Updates document bookmark.
    # 
    # @param request UpdateBookmarkRequest
    # @return [nil]
    def update_bookmark(request)
      begin
        data, _status_code, _headers = update_bookmark_with_http_info(request)
        rescue ApiError => e
          if e.code == 401
            request_token
            data, _status_code, _headers = update_bookmark_with_http_info(request)
          else
            raise
          end
      end			
      data
    end

    # Updates document bookmark.
    # 
    # @param request UpdateBookmarkRequest
    # @return [Array<(nil, Fixnum, Hash)>]
    # nil, response status code and response headers
    private def update_bookmark_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? UpdateBookmarkRequest

      @api_client.config.logger.debug 'Calling API: WordsApi.update_bookmark ...' if @api_client.config.debugging
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.update_bookmark' if @api_client.config.client_side_validation && request..nil?
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.update_bookmark' if @api_client.config.client_side_validation && request..nil?
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.update_bookmark' if @api_client.config.client_side_validation && request..nil?
      # resource path
      local_var_path = '/words/{name}/bookmarks/{bookmarkName}'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request..to_s)
      local_var_path = local_var_path.sub('{' + downcase_first_letter('BookmarkName') + '}', request..to_s)

      # query parameters
      query_params = {}
      if local_var_path.include? downcase_first_letter('Folder')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Folder') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Folder')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('Storage')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Storage') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Storage')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('LoadEncoding')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('LoadEncoding') + '}', request..to_s)
      else
        query_params[downcase_first_letter('LoadEncoding')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('Password')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Password') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Password')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('DestFileName')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('DestFileName') + '}', request..to_s)
      else
        query_params[downcase_first_letter('DestFileName')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('RevisionAuthor')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('RevisionAuthor') + '}', request..to_s)
      else
        query_params[downcase_first_letter('RevisionAuthor')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('RevisionDateTime')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('RevisionDateTime') + '}', request..to_s)
      else
        query_params[downcase_first_letter('RevisionDateTime')] = request. unless request..nil?
      end

      # header parameters
      header_params = {}

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(request.)
      auth_names = ['JWT']
	  
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#update_bookmark\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Updates border properties.             
    # 'nodePath' should refer to paragraph, cell or row.
    # @param request UpdateBorderRequest
    # @return [nil]
    def update_border(request)
      begin
        data, _status_code, _headers = update_border_with_http_info(request)
        rescue ApiError => e
          if e.code == 401
            request_token
            data, _status_code, _headers = update_border_with_http_info(request)
          else
            raise
          end
      end			
      data
    end

    # Updates border properties.             
    # &#39;nodePath&#39; should refer to paragraph, cell or row.
    # @param request UpdateBorderRequest
    # @return [Array<(nil, Fixnum, Hash)>]
    # nil, response status code and response headers
    private def update_border_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? UpdateBorderRequest

      @api_client.config.logger.debug 'Calling API: WordsApi.update_border ...' if @api_client.config.debugging
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.update_border' if @api_client.config.client_side_validation && request..nil?
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.update_border' if @api_client.config.client_side_validation && request..nil?
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.update_border' if @api_client.config.client_side_validation && request..nil?
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.update_border' if @api_client.config.client_side_validation && request..nil?
      # resource path
      local_var_path = '/words/{name}/{nodePath}/borders/{borderType}'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request..to_s)
      local_var_path = local_var_path.sub('{' + downcase_first_letter('NodePath') + '}', request..to_s)
      local_var_path = local_var_path.sub('{' + downcase_first_letter('BorderType') + '}', request..to_s)

      # query parameters
      query_params = {}
      if local_var_path.include? downcase_first_letter('Folder')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Folder') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Folder')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('Storage')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Storage') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Storage')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('LoadEncoding')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('LoadEncoding') + '}', request..to_s)
      else
        query_params[downcase_first_letter('LoadEncoding')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('Password')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Password') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Password')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('DestFileName')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('DestFileName') + '}', request..to_s)
      else
        query_params[downcase_first_letter('DestFileName')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('RevisionAuthor')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('RevisionAuthor') + '}', request..to_s)
      else
        query_params[downcase_first_letter('RevisionAuthor')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('RevisionDateTime')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('RevisionDateTime') + '}', request..to_s)
      else
        query_params[downcase_first_letter('RevisionDateTime')] = request. unless request..nil?
      end

      # header parameters
      header_params = {}

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(request.)
      auth_names = ['JWT']
	  
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#update_border\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Updates the comment, returns updated comment data.
    # 
    # @param request UpdateCommentRequest
    # @return [nil]
    def update_comment(request)
      begin
        data, _status_code, _headers = update_comment_with_http_info(request)
        rescue ApiError => e
          if e.code == 401
            request_token
            data, _status_code, _headers = update_comment_with_http_info(request)
          else
            raise
          end
      end			
      data
    end

    # Updates the comment, returns updated comment data.
    # 
    # @param request UpdateCommentRequest
    # @return [Array<(nil, Fixnum, Hash)>]
    # nil, response status code and response headers
    private def update_comment_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? UpdateCommentRequest

      @api_client.config.logger.debug 'Calling API: WordsApi.update_comment ...' if @api_client.config.debugging
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.update_comment' if @api_client.config.client_side_validation && request..nil?
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.update_comment' if @api_client.config.client_side_validation && request..nil?
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.update_comment' if @api_client.config.client_side_validation && request..nil?
      # resource path
      local_var_path = '/words/{name}/comments/{commentIndex}'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request..to_s)
      local_var_path = local_var_path.sub('{' + downcase_first_letter('CommentIndex') + '}', request..to_s)

      # query parameters
      query_params = {}
      if local_var_path.include? downcase_first_letter('Folder')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Folder') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Folder')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('Storage')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Storage') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Storage')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('LoadEncoding')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('LoadEncoding') + '}', request..to_s)
      else
        query_params[downcase_first_letter('LoadEncoding')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('Password')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Password') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Password')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('DestFileName')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('DestFileName') + '}', request..to_s)
      else
        query_params[downcase_first_letter('DestFileName')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('RevisionAuthor')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('RevisionAuthor') + '}', request..to_s)
      else
        query_params[downcase_first_letter('RevisionAuthor')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('RevisionDateTime')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('RevisionDateTime') + '}', request..to_s)
      else
        query_params[downcase_first_letter('RevisionDateTime')] = request. unless request..nil?
      end

      # header parameters
      header_params = {}

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(request.)
      auth_names = ['JWT']
	  
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#update_comment\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Updates drawing object, returns updated  drawing object's data.
    # 
    # @param request UpdateDrawingObjectRequest
    # @return [nil]
    def update_drawing_object(request)
      begin
        data, _status_code, _headers = update_drawing_object_with_http_info(request)
        rescue ApiError => e
          if e.code == 401
            request_token
            data, _status_code, _headers = update_drawing_object_with_http_info(request)
          else
            raise
          end
      end			
      data
    end

    # Updates drawing object, returns updated  drawing object&#39;s data.
    # 
    # @param request UpdateDrawingObjectRequest
    # @return [Array<(nil, Fixnum, Hash)>]
    # nil, response status code and response headers
    private def update_drawing_object_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? UpdateDrawingObjectRequest

      @api_client.config.logger.debug 'Calling API: WordsApi.update_drawing_object ...' if @api_client.config.debugging
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.update_drawing_object' if @api_client.config.client_side_validation && request..nil?
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.update_drawing_object' if @api_client.config.client_side_validation && request..nil?
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.update_drawing_object' if @api_client.config.client_side_validation && request..nil?
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.update_drawing_object' if @api_client.config.client_side_validation && request..nil?
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.update_drawing_object' if @api_client.config.client_side_validation && request..nil?
      # resource path
      local_var_path = '/words/{name}/{nodePath}/drawingObjects/{index}'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request..to_s)
      local_var_path = local_var_path.sub('{' + downcase_first_letter('NodePath') + '}', request..to_s)
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Index') + '}', request..to_s)

      # query parameters
      query_params = {}
      if local_var_path.include? downcase_first_letter('Folder')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Folder') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Folder')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('Storage')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Storage') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Storage')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('LoadEncoding')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('LoadEncoding') + '}', request..to_s)
      else
        query_params[downcase_first_letter('LoadEncoding')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('Password')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Password') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Password')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('DestFileName')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('DestFileName') + '}', request..to_s)
      else
        query_params[downcase_first_letter('DestFileName')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('RevisionAuthor')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('RevisionAuthor') + '}', request..to_s)
      else
        query_params[downcase_first_letter('RevisionAuthor')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('RevisionDateTime')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('RevisionDateTime') + '}', request..to_s)
      else
        query_params[downcase_first_letter('RevisionDateTime')] = request. unless request..nil?
      end

      # header parameters
      header_params = {}

      # form parameters
      form_params = {}
      form_params[downcase_first_letter('DrawingObject')] = request.
      form_params[downcase_first_letter('ImageFile')] = request.

      # http body (model)
      post_body = nil
      auth_names = ['JWT']
	  
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#update_drawing_object\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Updates drawing object, returns updated  drawing object's data.
    # 
    # @param request UpdateDrawingObjectWithoutNodePathRequest
    # @return [nil]
    def update_drawing_object_without_node_path(request)
      begin
        data, _status_code, _headers = update_drawing_object_without_node_path_with_http_info(request)
        rescue ApiError => e
          if e.code == 401
            request_token
            data, _status_code, _headers = update_drawing_object_without_node_path_with_http_info(request)
          else
            raise
          end
      end			
      data
    end

    # Updates drawing object, returns updated  drawing object&#39;s data.
    # 
    # @param request UpdateDrawingObjectWithoutNodePathRequest
    # @return [Array<(nil, Fixnum, Hash)>]
    # nil, response status code and response headers
    private def update_drawing_object_without_node_path_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? UpdateDrawingObjectWithoutNodePathRequest

      @api_client.config.logger.debug 'Calling API: WordsApi.update_drawing_object_without_node_path ...' if @api_client.config.debugging
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.update_drawing_object_without_node_path' if @api_client.config.client_side_validation && request..nil?
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.update_drawing_object_without_node_path' if @api_client.config.client_side_validation && request..nil?
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.update_drawing_object_without_node_path' if @api_client.config.client_side_validation && request..nil?
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.update_drawing_object_without_node_path' if @api_client.config.client_side_validation && request..nil?
      # resource path
      local_var_path = '/words/{name}/drawingObjects/{index}'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request..to_s)
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Index') + '}', request..to_s)

      # query parameters
      query_params = {}
      if local_var_path.include? downcase_first_letter('Folder')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Folder') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Folder')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('Storage')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Storage') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Storage')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('LoadEncoding')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('LoadEncoding') + '}', request..to_s)
      else
        query_params[downcase_first_letter('LoadEncoding')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('Password')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Password') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Password')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('DestFileName')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('DestFileName') + '}', request..to_s)
      else
        query_params[downcase_first_letter('DestFileName')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('RevisionAuthor')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('RevisionAuthor') + '}', request..to_s)
      else
        query_params[downcase_first_letter('RevisionAuthor')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('RevisionDateTime')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('RevisionDateTime') + '}', request..to_s)
      else
        query_params[downcase_first_letter('RevisionDateTime')] = request. unless request..nil?
      end

      # header parameters
      header_params = {}

      # form parameters
      form_params = {}
      form_params[downcase_first_letter('DrawingObject')] = request.
      form_params[downcase_first_letter('ImageFile')] = request.

      # http body (model)
      post_body = nil
      auth_names = ['JWT']
	  
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#update_drawing_object_without_node_path\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Updates field's properties, returns updated field's data.
    # 
    # @param request UpdateFieldRequest
    # @return [nil]
    def update_field(request)
      begin
        data, _status_code, _headers = update_field_with_http_info(request)
        rescue ApiError => e
          if e.code == 401
            request_token
            data, _status_code, _headers = update_field_with_http_info(request)
          else
            raise
          end
      end			
      data
    end

    # Updates field&#39;s properties, returns updated field&#39;s data.
    # 
    # @param request UpdateFieldRequest
    # @return [Array<(nil, Fixnum, Hash)>]
    # nil, response status code and response headers
    private def update_field_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? UpdateFieldRequest

      @api_client.config.logger.debug 'Calling API: WordsApi.update_field ...' if @api_client.config.debugging
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.update_field' if @api_client.config.client_side_validation && request..nil?
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.update_field' if @api_client.config.client_side_validation && request..nil?
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.update_field' if @api_client.config.client_side_validation && request..nil?
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.update_field' if @api_client.config.client_side_validation && request..nil?
      # resource path
      local_var_path = '/words/{name}/{nodePath}/fields/{index}'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request..to_s)
      local_var_path = local_var_path.sub('{' + downcase_first_letter('NodePath') + '}', request..to_s)
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Index') + '}', request..to_s)

      # query parameters
      query_params = {}
      if local_var_path.include? downcase_first_letter('Folder')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Folder') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Folder')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('Storage')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Storage') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Storage')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('LoadEncoding')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('LoadEncoding') + '}', request..to_s)
      else
        query_params[downcase_first_letter('LoadEncoding')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('Password')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Password') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Password')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('DestFileName')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('DestFileName') + '}', request..to_s)
      else
        query_params[downcase_first_letter('DestFileName')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('RevisionAuthor')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('RevisionAuthor') + '}', request..to_s)
      else
        query_params[downcase_first_letter('RevisionAuthor')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('RevisionDateTime')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('RevisionDateTime') + '}', request..to_s)
      else
        query_params[downcase_first_letter('RevisionDateTime')] = request. unless request..nil?
      end

      # header parameters
      header_params = {}

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(request.)
      auth_names = ['JWT']
	  
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#update_field\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Updates (reevaluate) fields in document.
    # 
    # @param request UpdateFieldsRequest
    # @return [nil]
    def update_fields(request)
      begin
        data, _status_code, _headers = update_fields_with_http_info(request)
        rescue ApiError => e
          if e.code == 401
            request_token
            data, _status_code, _headers = update_fields_with_http_info(request)
          else
            raise
          end
      end			
      data
    end

    # Updates (reevaluate) fields in document.
    # 
    # @param request UpdateFieldsRequest
    # @return [Array<(nil, Fixnum, Hash)>]
    # nil, response status code and response headers
    private def update_fields_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? UpdateFieldsRequest

      @api_client.config.logger.debug 'Calling API: WordsApi.update_fields ...' if @api_client.config.debugging
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.update_fields' if @api_client.config.client_side_validation && request..nil?
      # resource path
      local_var_path = '/words/{name}/updateFields'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request..to_s)

      # query parameters
      query_params = {}
      if local_var_path.include? downcase_first_letter('Folder')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Folder') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Folder')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('Storage')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Storage') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Storage')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('LoadEncoding')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('LoadEncoding') + '}', request..to_s)
      else
        query_params[downcase_first_letter('LoadEncoding')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('Password')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Password') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Password')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('DestFileName')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('DestFileName') + '}', request..to_s)
      else
        query_params[downcase_first_letter('DestFileName')] = request. unless request..nil?
      end

      # header parameters
      header_params = {}

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['JWT']
	  
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#update_fields\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Updates footnote's properties, returns updated run's data.
    # 
    # @param request UpdateFootnoteRequest
    # @return [nil]
    def update_footnote(request)
      begin
        data, _status_code, _headers = update_footnote_with_http_info(request)
        rescue ApiError => e
          if e.code == 401
            request_token
            data, _status_code, _headers = update_footnote_with_http_info(request)
          else
            raise
          end
      end			
      data
    end

    # Updates footnote&#39;s properties, returns updated run&#39;s data.
    # 
    # @param request UpdateFootnoteRequest
    # @return [Array<(nil, Fixnum, Hash)>]
    # nil, response status code and response headers
    private def update_footnote_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? UpdateFootnoteRequest

      @api_client.config.logger.debug 'Calling API: WordsApi.update_footnote ...' if @api_client.config.debugging
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.update_footnote' if @api_client.config.client_side_validation && request..nil?
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.update_footnote' if @api_client.config.client_side_validation && request..nil?
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.update_footnote' if @api_client.config.client_side_validation && request..nil?
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.update_footnote' if @api_client.config.client_side_validation && request..nil?
      # resource path
      local_var_path = '/words/{name}/{nodePath}/footnotes/{index}'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request..to_s)
      local_var_path = local_var_path.sub('{' + downcase_first_letter('NodePath') + '}', request..to_s)
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Index') + '}', request..to_s)

      # query parameters
      query_params = {}
      if local_var_path.include? downcase_first_letter('Folder')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Folder') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Folder')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('Storage')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Storage') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Storage')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('LoadEncoding')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('LoadEncoding') + '}', request..to_s)
      else
        query_params[downcase_first_letter('LoadEncoding')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('Password')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Password') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Password')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('DestFileName')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('DestFileName') + '}', request..to_s)
      else
        query_params[downcase_first_letter('DestFileName')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('RevisionAuthor')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('RevisionAuthor') + '}', request..to_s)
      else
        query_params[downcase_first_letter('RevisionAuthor')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('RevisionDateTime')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('RevisionDateTime') + '}', request..to_s)
      else
        query_params[downcase_first_letter('RevisionDateTime')] = request. unless request..nil?
      end

      # header parameters
      header_params = {}

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(request.)
      auth_names = ['JWT']
	  
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#update_footnote\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Updates footnote's properties, returns updated run's data.
    # 
    # @param request UpdateFootnoteWithoutNodePathRequest
    # @return [nil]
    def update_footnote_without_node_path(request)
      begin
        data, _status_code, _headers = update_footnote_without_node_path_with_http_info(request)
        rescue ApiError => e
          if e.code == 401
            request_token
            data, _status_code, _headers = update_footnote_without_node_path_with_http_info(request)
          else
            raise
          end
      end			
      data
    end

    # Updates footnote&#39;s properties, returns updated run&#39;s data.
    # 
    # @param request UpdateFootnoteWithoutNodePathRequest
    # @return [Array<(nil, Fixnum, Hash)>]
    # nil, response status code and response headers
    private def update_footnote_without_node_path_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? UpdateFootnoteWithoutNodePathRequest

      @api_client.config.logger.debug 'Calling API: WordsApi.update_footnote_without_node_path ...' if @api_client.config.debugging
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.update_footnote_without_node_path' if @api_client.config.client_side_validation && request..nil?
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.update_footnote_without_node_path' if @api_client.config.client_side_validation && request..nil?
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.update_footnote_without_node_path' if @api_client.config.client_side_validation && request..nil?
      # resource path
      local_var_path = '/words/{name}/footnotes/{index}'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request..to_s)
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Index') + '}', request..to_s)

      # query parameters
      query_params = {}
      if local_var_path.include? downcase_first_letter('Folder')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Folder') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Folder')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('Storage')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Storage') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Storage')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('LoadEncoding')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('LoadEncoding') + '}', request..to_s)
      else
        query_params[downcase_first_letter('LoadEncoding')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('Password')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Password') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Password')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('DestFileName')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('DestFileName') + '}', request..to_s)
      else
        query_params[downcase_first_letter('DestFileName')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('RevisionAuthor')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('RevisionAuthor') + '}', request..to_s)
      else
        query_params[downcase_first_letter('RevisionAuthor')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('RevisionDateTime')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('RevisionDateTime') + '}', request..to_s)
      else
        query_params[downcase_first_letter('RevisionDateTime')] = request. unless request..nil?
      end

      # header parameters
      header_params = {}

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(request.)
      auth_names = ['JWT']
	  
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#update_footnote_without_node_path\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Updates properties of form field, returns updated form field.
    # 
    # @param request UpdateFormFieldRequest
    # @return [nil]
    def update_form_field(request)
      begin
        data, _status_code, _headers = update_form_field_with_http_info(request)
        rescue ApiError => e
          if e.code == 401
            request_token
            data, _status_code, _headers = update_form_field_with_http_info(request)
          else
            raise
          end
      end			
      data
    end

    # Updates properties of form field, returns updated form field.
    # 
    # @param request UpdateFormFieldRequest
    # @return [Array<(nil, Fixnum, Hash)>]
    # nil, response status code and response headers
    private def update_form_field_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? UpdateFormFieldRequest

      @api_client.config.logger.debug 'Calling API: WordsApi.update_form_field ...' if @api_client.config.debugging
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.update_form_field' if @api_client.config.client_side_validation && request..nil?
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.update_form_field' if @api_client.config.client_side_validation && request..nil?
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.update_form_field' if @api_client.config.client_side_validation && request..nil?
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.update_form_field' if @api_client.config.client_side_validation && request..nil?
      # resource path
      local_var_path = '/words/{name}/{nodePath}/formfields/{index}'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request..to_s)
      local_var_path = local_var_path.sub('{' + downcase_first_letter('NodePath') + '}', request..to_s)
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Index') + '}', request..to_s)

      # query parameters
      query_params = {}
      if local_var_path.include? downcase_first_letter('Folder')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Folder') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Folder')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('Storage')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Storage') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Storage')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('LoadEncoding')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('LoadEncoding') + '}', request..to_s)
      else
        query_params[downcase_first_letter('LoadEncoding')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('Password')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Password') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Password')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('DestFileName')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('DestFileName') + '}', request..to_s)
      else
        query_params[downcase_first_letter('DestFileName')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('RevisionAuthor')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('RevisionAuthor') + '}', request..to_s)
      else
        query_params[downcase_first_letter('RevisionAuthor')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('RevisionDateTime')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('RevisionDateTime') + '}', request..to_s)
      else
        query_params[downcase_first_letter('RevisionDateTime')] = request. unless request..nil?
      end

      # header parameters
      header_params = {}

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(request.)
      auth_names = ['JWT']
	  
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#update_form_field\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Updates properties of form field, returns updated form field.
    # 
    # @param request UpdateFormFieldWithoutNodePathRequest
    # @return [nil]
    def update_form_field_without_node_path(request)
      begin
        data, _status_code, _headers = update_form_field_without_node_path_with_http_info(request)
        rescue ApiError => e
          if e.code == 401
            request_token
            data, _status_code, _headers = update_form_field_without_node_path_with_http_info(request)
          else
            raise
          end
      end			
      data
    end

    # Updates properties of form field, returns updated form field.
    # 
    # @param request UpdateFormFieldWithoutNodePathRequest
    # @return [Array<(nil, Fixnum, Hash)>]
    # nil, response status code and response headers
    private def update_form_field_without_node_path_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? UpdateFormFieldWithoutNodePathRequest

      @api_client.config.logger.debug 'Calling API: WordsApi.update_form_field_without_node_path ...' if @api_client.config.debugging
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.update_form_field_without_node_path' if @api_client.config.client_side_validation && request..nil?
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.update_form_field_without_node_path' if @api_client.config.client_side_validation && request..nil?
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.update_form_field_without_node_path' if @api_client.config.client_side_validation && request..nil?
      # resource path
      local_var_path = '/words/{name}/formfields/{index}'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request..to_s)
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Index') + '}', request..to_s)

      # query parameters
      query_params = {}
      if local_var_path.include? downcase_first_letter('Folder')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Folder') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Folder')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('Storage')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Storage') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Storage')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('LoadEncoding')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('LoadEncoding') + '}', request..to_s)
      else
        query_params[downcase_first_letter('LoadEncoding')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('Password')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Password') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Password')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('DestFileName')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('DestFileName') + '}', request..to_s)
      else
        query_params[downcase_first_letter('DestFileName')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('RevisionAuthor')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('RevisionAuthor') + '}', request..to_s)
      else
        query_params[downcase_first_letter('RevisionAuthor')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('RevisionDateTime')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('RevisionDateTime') + '}', request..to_s)
      else
        query_params[downcase_first_letter('RevisionDateTime')] = request. unless request..nil?
      end

      # header parameters
      header_params = {}

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(request.)
      auth_names = ['JWT']
	  
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#update_form_field_without_node_path\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Updates paragraph format properties, returns updated format properties.
    # 
    # @param request UpdateParagraphFormatRequest
    # @return [nil]
    def update_paragraph_format(request)
      begin
        data, _status_code, _headers = update_paragraph_format_with_http_info(request)
        rescue ApiError => e
          if e.code == 401
            request_token
            data, _status_code, _headers = update_paragraph_format_with_http_info(request)
          else
            raise
          end
      end			
      data
    end

    # Updates paragraph format properties, returns updated format properties.
    # 
    # @param request UpdateParagraphFormatRequest
    # @return [Array<(nil, Fixnum, Hash)>]
    # nil, response status code and response headers
    private def update_paragraph_format_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? UpdateParagraphFormatRequest

      @api_client.config.logger.debug 'Calling API: WordsApi.update_paragraph_format ...' if @api_client.config.debugging
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.update_paragraph_format' if @api_client.config.client_side_validation && request..nil?
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.update_paragraph_format' if @api_client.config.client_side_validation && request..nil?
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.update_paragraph_format' if @api_client.config.client_side_validation && request..nil?
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.update_paragraph_format' if @api_client.config.client_side_validation && request..nil?
      # resource path
      local_var_path = '/words/{name}/{nodePath}/paragraphs/{index}/format'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request..to_s)
      local_var_path = local_var_path.sub('{' + downcase_first_letter('NodePath') + '}', request..to_s)
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Index') + '}', request..to_s)

      # query parameters
      query_params = {}
      if local_var_path.include? downcase_first_letter('Folder')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Folder') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Folder')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('Storage')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Storage') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Storage')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('LoadEncoding')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('LoadEncoding') + '}', request..to_s)
      else
        query_params[downcase_first_letter('LoadEncoding')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('Password')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Password') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Password')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('DestFileName')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('DestFileName') + '}', request..to_s)
      else
        query_params[downcase_first_letter('DestFileName')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('RevisionAuthor')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('RevisionAuthor') + '}', request..to_s)
      else
        query_params[downcase_first_letter('RevisionAuthor')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('RevisionDateTime')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('RevisionDateTime') + '}', request..to_s)
      else
        query_params[downcase_first_letter('RevisionDateTime')] = request. unless request..nil?
      end

      # header parameters
      header_params = {}

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(request.)
      auth_names = ['JWT']
	  
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#update_paragraph_format\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Updates run's properties, returns updated run's data.
    # 
    # @param request UpdateRunRequest
    # @return [nil]
    def update_run(request)
      begin
        data, _status_code, _headers = update_run_with_http_info(request)
        rescue ApiError => e
          if e.code == 401
            request_token
            data, _status_code, _headers = update_run_with_http_info(request)
          else
            raise
          end
      end			
      data
    end

    # Updates run&#39;s properties, returns updated run&#39;s data.
    # 
    # @param request UpdateRunRequest
    # @return [Array<(nil, Fixnum, Hash)>]
    # nil, response status code and response headers
    private def update_run_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? UpdateRunRequest

      @api_client.config.logger.debug 'Calling API: WordsApi.update_run ...' if @api_client.config.debugging
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.update_run' if @api_client.config.client_side_validation && request..nil?
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.update_run' if @api_client.config.client_side_validation && request..nil?
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.update_run' if @api_client.config.client_side_validation && request..nil?
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.update_run' if @api_client.config.client_side_validation && request..nil?
      # resource path
      local_var_path = '/words/{name}/{paragraphPath}/runs/{index}'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request..to_s)
      local_var_path = local_var_path.sub('{' + downcase_first_letter('ParagraphPath') + '}', request..to_s)
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Index') + '}', request..to_s)

      # query parameters
      query_params = {}
      if local_var_path.include? downcase_first_letter('Folder')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Folder') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Folder')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('Storage')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Storage') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Storage')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('LoadEncoding')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('LoadEncoding') + '}', request..to_s)
      else
        query_params[downcase_first_letter('LoadEncoding')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('Password')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Password') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Password')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('DestFileName')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('DestFileName') + '}', request..to_s)
      else
        query_params[downcase_first_letter('DestFileName')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('RevisionAuthor')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('RevisionAuthor') + '}', request..to_s)
      else
        query_params[downcase_first_letter('RevisionAuthor')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('RevisionDateTime')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('RevisionDateTime') + '}', request..to_s)
      else
        query_params[downcase_first_letter('RevisionDateTime')] = request. unless request..nil?
      end

      # header parameters
      header_params = {}

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(request.)
      auth_names = ['JWT']
	  
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#update_run\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Updates font properties, returns updated font data.
    # 
    # @param request UpdateRunFontRequest
    # @return [nil]
    def update_run_font(request)
      begin
        data, _status_code, _headers = update_run_font_with_http_info(request)
        rescue ApiError => e
          if e.code == 401
            request_token
            data, _status_code, _headers = update_run_font_with_http_info(request)
          else
            raise
          end
      end			
      data
    end

    # Updates font properties, returns updated font data.
    # 
    # @param request UpdateRunFontRequest
    # @return [Array<(nil, Fixnum, Hash)>]
    # nil, response status code and response headers
    private def update_run_font_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? UpdateRunFontRequest

      @api_client.config.logger.debug 'Calling API: WordsApi.update_run_font ...' if @api_client.config.debugging
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.update_run_font' if @api_client.config.client_side_validation && request..nil?
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.update_run_font' if @api_client.config.client_side_validation && request..nil?
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.update_run_font' if @api_client.config.client_side_validation && request..nil?
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.update_run_font' if @api_client.config.client_side_validation && request..nil?
      # resource path
      local_var_path = '/words/{name}/{paragraphPath}/runs/{index}/font'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request..to_s)
      local_var_path = local_var_path.sub('{' + downcase_first_letter('ParagraphPath') + '}', request..to_s)
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Index') + '}', request..to_s)

      # query parameters
      query_params = {}
      if local_var_path.include? downcase_first_letter('Folder')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Folder') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Folder')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('Storage')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Storage') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Storage')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('LoadEncoding')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('LoadEncoding') + '}', request..to_s)
      else
        query_params[downcase_first_letter('LoadEncoding')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('Password')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Password') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Password')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('DestFileName')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('DestFileName') + '}', request..to_s)
      else
        query_params[downcase_first_letter('DestFileName')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('RevisionAuthor')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('RevisionAuthor') + '}', request..to_s)
      else
        query_params[downcase_first_letter('RevisionAuthor')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('RevisionDateTime')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('RevisionDateTime') + '}', request..to_s)
      else
        query_params[downcase_first_letter('RevisionDateTime')] = request. unless request..nil?
      end

      # header parameters
      header_params = {}

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(request.)
      auth_names = ['JWT']
	  
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#update_run_font\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Updates page setup of section.
    # 
    # @param request UpdateSectionPageSetupRequest
    # @return [nil]
    def update_section_page_setup(request)
      begin
        data, _status_code, _headers = update_section_page_setup_with_http_info(request)
        rescue ApiError => e
          if e.code == 401
            request_token
            data, _status_code, _headers = update_section_page_setup_with_http_info(request)
          else
            raise
          end
      end			
      data
    end

    # Updates page setup of section.
    # 
    # @param request UpdateSectionPageSetupRequest
    # @return [Array<(nil, Fixnum, Hash)>]
    # nil, response status code and response headers
    private def update_section_page_setup_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? UpdateSectionPageSetupRequest

      @api_client.config.logger.debug 'Calling API: WordsApi.update_section_page_setup ...' if @api_client.config.debugging
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.update_section_page_setup' if @api_client.config.client_side_validation && request..nil?
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.update_section_page_setup' if @api_client.config.client_side_validation && request..nil?
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.update_section_page_setup' if @api_client.config.client_side_validation && request..nil?
      # resource path
      local_var_path = '/words/{name}/sections/{sectionIndex}/pageSetup'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request..to_s)
      local_var_path = local_var_path.sub('{' + downcase_first_letter('SectionIndex') + '}', request..to_s)

      # query parameters
      query_params = {}
      if local_var_path.include? downcase_first_letter('Folder')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Folder') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Folder')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('Storage')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Storage') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Storage')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('LoadEncoding')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('LoadEncoding') + '}', request..to_s)
      else
        query_params[downcase_first_letter('LoadEncoding')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('Password')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Password') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Password')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('DestFileName')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('DestFileName') + '}', request..to_s)
      else
        query_params[downcase_first_letter('DestFileName')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('RevisionAuthor')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('RevisionAuthor') + '}', request..to_s)
      else
        query_params[downcase_first_letter('RevisionAuthor')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('RevisionDateTime')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('RevisionDateTime') + '}', request..to_s)
      else
        query_params[downcase_first_letter('RevisionDateTime')] = request. unless request..nil?
      end

      # header parameters
      header_params = {}

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(request.)
      auth_names = ['JWT']
	  
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#update_section_page_setup\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Updates a table cell format.
    # 
    # @param request UpdateTableCellFormatRequest
    # @return [nil]
    def update_table_cell_format(request)
      begin
        data, _status_code, _headers = update_table_cell_format_with_http_info(request)
        rescue ApiError => e
          if e.code == 401
            request_token
            data, _status_code, _headers = update_table_cell_format_with_http_info(request)
          else
            raise
          end
      end			
      data
    end

    # Updates a table cell format.
    # 
    # @param request UpdateTableCellFormatRequest
    # @return [Array<(nil, Fixnum, Hash)>]
    # nil, response status code and response headers
    private def update_table_cell_format_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? UpdateTableCellFormatRequest

      @api_client.config.logger.debug 'Calling API: WordsApi.update_table_cell_format ...' if @api_client.config.debugging
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.update_table_cell_format' if @api_client.config.client_side_validation && request..nil?
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.update_table_cell_format' if @api_client.config.client_side_validation && request..nil?
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.update_table_cell_format' if @api_client.config.client_side_validation && request..nil?
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.update_table_cell_format' if @api_client.config.client_side_validation && request..nil?
      # resource path
      local_var_path = '/words/{name}/{tableRowPath}/cells/{index}/cellformat'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request..to_s)
      local_var_path = local_var_path.sub('{' + downcase_first_letter('TableRowPath') + '}', request..to_s)
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Index') + '}', request..to_s)

      # query parameters
      query_params = {}
      if local_var_path.include? downcase_first_letter('Folder')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Folder') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Folder')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('Storage')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Storage') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Storage')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('LoadEncoding')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('LoadEncoding') + '}', request..to_s)
      else
        query_params[downcase_first_letter('LoadEncoding')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('Password')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Password') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Password')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('DestFileName')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('DestFileName') + '}', request..to_s)
      else
        query_params[downcase_first_letter('DestFileName')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('RevisionAuthor')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('RevisionAuthor') + '}', request..to_s)
      else
        query_params[downcase_first_letter('RevisionAuthor')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('RevisionDateTime')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('RevisionDateTime') + '}', request..to_s)
      else
        query_params[downcase_first_letter('RevisionDateTime')] = request. unless request..nil?
      end

      # header parameters
      header_params = {}

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(request.)
      auth_names = ['JWT']
	  
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#update_table_cell_format\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Updates a table properties.
    # 
    # @param request UpdateTablePropertiesRequest
    # @return [nil]
    def update_table_properties(request)
      begin
        data, _status_code, _headers = update_table_properties_with_http_info(request)
        rescue ApiError => e
          if e.code == 401
            request_token
            data, _status_code, _headers = update_table_properties_with_http_info(request)
          else
            raise
          end
      end			
      data
    end

    # Updates a table properties.
    # 
    # @param request UpdateTablePropertiesRequest
    # @return [Array<(nil, Fixnum, Hash)>]
    # nil, response status code and response headers
    private def update_table_properties_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? UpdateTablePropertiesRequest

      @api_client.config.logger.debug 'Calling API: WordsApi.update_table_properties ...' if @api_client.config.debugging
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.update_table_properties' if @api_client.config.client_side_validation && request..nil?
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.update_table_properties' if @api_client.config.client_side_validation && request..nil?
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.update_table_properties' if @api_client.config.client_side_validation && request..nil?
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.update_table_properties' if @api_client.config.client_side_validation && request..nil?
      # resource path
      local_var_path = '/words/{name}/{nodePath}/tables/{index}/properties'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request..to_s)
      local_var_path = local_var_path.sub('{' + downcase_first_letter('NodePath') + '}', request..to_s)
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Index') + '}', request..to_s)

      # query parameters
      query_params = {}
      if local_var_path.include? downcase_first_letter('Folder')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Folder') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Folder')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('Storage')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Storage') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Storage')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('LoadEncoding')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('LoadEncoding') + '}', request..to_s)
      else
        query_params[downcase_first_letter('LoadEncoding')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('Password')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Password') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Password')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('DestFileName')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('DestFileName') + '}', request..to_s)
      else
        query_params[downcase_first_letter('DestFileName')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('RevisionAuthor')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('RevisionAuthor') + '}', request..to_s)
      else
        query_params[downcase_first_letter('RevisionAuthor')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('RevisionDateTime')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('RevisionDateTime') + '}', request..to_s)
      else
        query_params[downcase_first_letter('RevisionDateTime')] = request. unless request..nil?
      end

      # header parameters
      header_params = {}

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(request.)
      auth_names = ['JWT']
	  
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#update_table_properties\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Updates a table properties.
    # 
    # @param request UpdateTablePropertiesWithoutNodePathRequest
    # @return [nil]
    def update_table_properties_without_node_path(request)
      begin
        data, _status_code, _headers = update_table_properties_without_node_path_with_http_info(request)
        rescue ApiError => e
          if e.code == 401
            request_token
            data, _status_code, _headers = update_table_properties_without_node_path_with_http_info(request)
          else
            raise
          end
      end			
      data
    end

    # Updates a table properties.
    # 
    # @param request UpdateTablePropertiesWithoutNodePathRequest
    # @return [Array<(nil, Fixnum, Hash)>]
    # nil, response status code and response headers
    private def update_table_properties_without_node_path_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? UpdateTablePropertiesWithoutNodePathRequest

      @api_client.config.logger.debug 'Calling API: WordsApi.update_table_properties_without_node_path ...' if @api_client.config.debugging
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.update_table_properties_without_node_path' if @api_client.config.client_side_validation && request..nil?
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.update_table_properties_without_node_path' if @api_client.config.client_side_validation && request..nil?
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.update_table_properties_without_node_path' if @api_client.config.client_side_validation && request..nil?
      # resource path
      local_var_path = '/words/{name}/tables/{index}/properties'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request..to_s)
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Index') + '}', request..to_s)

      # query parameters
      query_params = {}
      if local_var_path.include? downcase_first_letter('Folder')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Folder') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Folder')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('Storage')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Storage') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Storage')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('LoadEncoding')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('LoadEncoding') + '}', request..to_s)
      else
        query_params[downcase_first_letter('LoadEncoding')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('Password')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Password') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Password')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('DestFileName')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('DestFileName') + '}', request..to_s)
      else
        query_params[downcase_first_letter('DestFileName')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('RevisionAuthor')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('RevisionAuthor') + '}', request..to_s)
      else
        query_params[downcase_first_letter('RevisionAuthor')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('RevisionDateTime')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('RevisionDateTime') + '}', request..to_s)
      else
        query_params[downcase_first_letter('RevisionDateTime')] = request. unless request..nil?
      end

      # header parameters
      header_params = {}

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(request.)
      auth_names = ['JWT']
	  
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#update_table_properties_without_node_path\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Updates a table row format.
    # 
    # @param request UpdateTableRowFormatRequest
    # @return [nil]
    def update_table_row_format(request)
      begin
        data, _status_code, _headers = update_table_row_format_with_http_info(request)
        rescue ApiError => e
          if e.code == 401
            request_token
            data, _status_code, _headers = update_table_row_format_with_http_info(request)
          else
            raise
          end
      end			
      data
    end

    # Updates a table row format.
    # 
    # @param request UpdateTableRowFormatRequest
    # @return [Array<(nil, Fixnum, Hash)>]
    # nil, response status code and response headers
    private def update_table_row_format_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? UpdateTableRowFormatRequest

      @api_client.config.logger.debug 'Calling API: WordsApi.update_table_row_format ...' if @api_client.config.debugging
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.update_table_row_format' if @api_client.config.client_side_validation && request..nil?
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.update_table_row_format' if @api_client.config.client_side_validation && request..nil?
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.update_table_row_format' if @api_client.config.client_side_validation && request..nil?
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.update_table_row_format' if @api_client.config.client_side_validation && request..nil?
      # resource path
      local_var_path = '/words/{name}/{tablePath}/rows/{index}/rowformat'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request..to_s)
      local_var_path = local_var_path.sub('{' + downcase_first_letter('TablePath') + '}', request..to_s)
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Index') + '}', request..to_s)

      # query parameters
      query_params = {}
      if local_var_path.include? downcase_first_letter('Folder')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Folder') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Folder')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('Storage')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Storage') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Storage')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('LoadEncoding')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('LoadEncoding') + '}', request..to_s)
      else
        query_params[downcase_first_letter('LoadEncoding')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('Password')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Password') + '}', request..to_s)
      else
        query_params[downcase_first_letter('Password')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('DestFileName')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('DestFileName') + '}', request..to_s)
      else
        query_params[downcase_first_letter('DestFileName')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('RevisionAuthor')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('RevisionAuthor') + '}', request..to_s)
      else
        query_params[downcase_first_letter('RevisionAuthor')] = request. unless request..nil?
      end
      if local_var_path.include? downcase_first_letter('RevisionDateTime')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('RevisionDateTime') + '}', request..to_s)
      else
        query_params[downcase_first_letter('RevisionDateTime')] = request. unless request..nil?
      end

      # header parameters
      header_params = {}

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(request.)
      auth_names = ['JWT']
	  
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#update_table_row_format\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Upload file
    # 
    # @param request UploadFileRequest
    # @return [nil]
    def upload_file(request)
      begin
        data, _status_code, _headers = upload_file_with_http_info(request)
        rescue ApiError => e
          if e.code == 401
            request_token
            data, _status_code, _headers = upload_file_with_http_info(request)
          else
            raise
          end
      end			
      data
    end

    # Upload file
    # 
    # @param request UploadFileRequest
    # @return [Array<(nil, Fixnum, Hash)>]
    # nil, response status code and response headers
    private def upload_file_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? UploadFileRequest

      @api_client.config.logger.debug 'Calling API: WordsApi.upload_file ...' if @api_client.config.debugging
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.upload_file' if @api_client.config.client_side_validation && request..nil?
      # verify the required parameter '' is set
      raise ArgumentError, 'Missing the required parameter  when calling WordsApi.upload_file' if @api_client.config.client_side_validation && request..nil?
      # resource path
      local_var_path = '/words/storage/file/{path}'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Path') + '}', request..to_s)

      # query parameters
      query_params = {}
      if local_var_path.include? downcase_first_letter('StorageName')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('StorageName') + '}', request..to_s)
      else
        query_params[downcase_first_letter('StorageName')] = request. unless request..nil?
      end

      # header parameters
      header_params = {}

      # form parameters
      form_params = {}
      form_params[downcase_first_letter('FileContent')] = request.

      # http body (model)
      post_body = nil
      auth_names = ['JWT']
	  
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#upload_file\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

     #
     # Helper method to convert first letter to downcase
     #
    private def downcase_first_letter(str)
      value = str[0].downcase + str[1..-1]
      value
    end
                 
     #
     # Gets a request token from server
     #
    private def request_token
      config = @api_client.config
      request_url = "/connect/token"
      post_data = "grant_type=client_credentials" + "&client_id=" + config.api_key['app_sid'] + "&client_secret=" + config.api_key['api_key']
      data, status_code, header = @api_client.call_api(:POST, request_url, :body => post_data, :return_type => 'Object',  :header_params => {'Content-Type': 'application/x-www-form-urlencoded'})
      @api_client.config.access_token = data[:access_token]
    end
    
    # requires all files inside a directory from current dir
    # @param _dir can be relative path like '/lib' or "../lib"
    private def require_all(_dir)
      Dir[File.expand_path(File.join(File.dirname(File.absolute_path(__FILE__)), _dir)) + "/*.rb"].each do |file|
        require file
      end
    end
  end
end
