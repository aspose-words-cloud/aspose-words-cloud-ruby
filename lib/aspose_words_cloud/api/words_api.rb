# -----------------------------------------------------------------------------------
# <copyright company="Aspose" file="words_api.rb">
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

    # Accept all revisions in document
    # 
    # @param request AcceptAllRevisionsRequest
    # @return [RevisionsModificationResponse]
    def accept_all_revisions(request)
      data, _status_code, _headers = accept_all_revisions_with_http_info(request)
      data
    end

    # Accept all revisions in document
    # 
    # @param request AcceptAllRevisionsRequest
    # @return [Array<(RevisionsModificationResponse, Fixnum, Hash)>]
    # RevisionsModificationResponse data, response status code and response headers
    private def accept_all_revisions_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? AcceptAllRevisionsRequest

      @api_client.config.logger.debug 'Calling API: WordsApi.accept_all_revisions ...' if @api_client.config.debugging
      # verify the required parameter 'name' is set
      raise ArgumentError, 'Missing the required parameter name when calling WordsApi.accept_all_revisions' if @api_client.config.client_side_validation && request.name.nil?
      # resource path
      local_var_path = '/words/{name}/revisions/acceptAll'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.to_s)

      # query parameters
      query_params = {}
      if local_var_path.include? downcase_first_letter('Folder')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Folder') + '}', request.folder.to_s)
      else
        query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
      end
      if local_var_path.include? downcase_first_letter('Storage')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Storage') + '}', request.storage.to_s)
      else
        query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
      end
      if local_var_path.include? downcase_first_letter('LoadEncoding')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('LoadEncoding') + '}', request.load_encoding.to_s)
      else
        query_params[downcase_first_letter('LoadEncoding')] = request.load_encoding unless request.load_encoding.nil?
      end
      if local_var_path.include? downcase_first_letter('Password')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Password') + '}', request.password.to_s)
      else
        query_params[downcase_first_letter('Password')] = request.password unless request.password.nil?
      end
      if local_var_path.include? downcase_first_letter('DestFileName')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('DestFileName') + '}', request.dest_file_name.to_s)
      else
        query_params[downcase_first_letter('DestFileName')] = request.dest_file_name unless request.dest_file_name.nil?
      end

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/xml', 'application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/xml', 'application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['oauth']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names,
                                                        return_type: 'RevisionsModificationResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#accept_all_revisions\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Classify raw text.
    # 
    # @param request ClassifyRequest
    # @return [ClassificationResponse]
    def classify(request)
      data, _status_code, _headers = classify_with_http_info(request)
      data
    end

    # Classify raw text.
    # 
    # @param request ClassifyRequest
    # @return [Array<(ClassificationResponse, Fixnum, Hash)>]
    # ClassificationResponse data, response status code and response headers
    private def classify_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? ClassifyRequest

      @api_client.config.logger.debug 'Calling API: WordsApi.classify ...' if @api_client.config.debugging
      # verify the required parameter 'text' is set
      raise ArgumentError, 'Missing the required parameter text when calling WordsApi.classify' if @api_client.config.client_side_validation && request.text.nil?
      # resource path
      local_var_path = '/words/classify'

      # query parameters
      query_params = {}
      if local_var_path.include? downcase_first_letter('BestClassesCount')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('BestClassesCount') + '}', request.best_classes_count.to_s)
      else
        query_params[downcase_first_letter('BestClassesCount')] = request.best_classes_count unless request.best_classes_count.nil?
      end

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/xml', 'application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/xml', 'application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(request.text)
      auth_names = ['oauth']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names,
                                                        return_type: 'ClassificationResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#classify\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Classify document.
    # 
    # @param request ClassifyDocumentRequest
    # @return [ClassificationResponse]
    def classify_document(request)
      data, _status_code, _headers = classify_document_with_http_info(request)
      data
    end

    # Classify document.
    # 
    # @param request ClassifyDocumentRequest
    # @return [Array<(ClassificationResponse, Fixnum, Hash)>]
    # ClassificationResponse data, response status code and response headers
    private def classify_document_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? ClassifyDocumentRequest

      @api_client.config.logger.debug 'Calling API: WordsApi.classify_document ...' if @api_client.config.debugging
      # verify the required parameter 'document_name' is set
      raise ArgumentError, 'Missing the required parameter document_name when calling WordsApi.classify_document' if @api_client.config.client_side_validation && request.document_name.nil?
      # resource path
      local_var_path = '/words/{documentName}/classify'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('DocumentName') + '}', request.document_name.to_s)

      # query parameters
      query_params = {}
      if local_var_path.include? downcase_first_letter('Folder')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Folder') + '}', request.folder.to_s)
      else
        query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
      end
      if local_var_path.include? downcase_first_letter('Storage')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Storage') + '}', request.storage.to_s)
      else
        query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
      end
      if local_var_path.include? downcase_first_letter('LoadEncoding')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('LoadEncoding') + '}', request.load_encoding.to_s)
      else
        query_params[downcase_first_letter('LoadEncoding')] = request.load_encoding unless request.load_encoding.nil?
      end
      if local_var_path.include? downcase_first_letter('Password')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Password') + '}', request.password.to_s)
      else
        query_params[downcase_first_letter('Password')] = request.password unless request.password.nil?
      end
      if local_var_path.include? downcase_first_letter('BestClassesCount')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('BestClassesCount') + '}', request.best_classes_count.to_s)
      else
        query_params[downcase_first_letter('BestClassesCount')] = request.best_classes_count unless request.best_classes_count.nil?
      end

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/xml', 'application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/xml', 'application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['oauth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names,
                                                        return_type: 'ClassificationResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#classify_document\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Add new or update existing document property.
    # 
    # @param request CreateOrUpdateDocumentPropertyRequest
    # @return [DocumentPropertyResponse]
    def create_or_update_document_property(request)
      data, _status_code, _headers = create_or_update_document_property_with_http_info(request)
      data
    end

    # Add new or update existing document property.
    # 
    # @param request CreateOrUpdateDocumentPropertyRequest
    # @return [Array<(DocumentPropertyResponse, Fixnum, Hash)>]
    # DocumentPropertyResponse data, response status code and response headers
    private def create_or_update_document_property_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? CreateOrUpdateDocumentPropertyRequest

      @api_client.config.logger.debug 'Calling API: WordsApi.create_or_update_document_property ...' if @api_client.config.debugging
      # verify the required parameter 'name' is set
      raise ArgumentError, 'Missing the required parameter name when calling WordsApi.create_or_update_document_property' if @api_client.config.client_side_validation && request.name.nil?
      # verify the required parameter 'property_name' is set
      raise ArgumentError, 'Missing the required parameter property_name when calling WordsApi.create_or_update_document_property' if @api_client.config.client_side_validation && request.property_name.nil?
      # verify the required parameter 'property' is set
      raise ArgumentError, 'Missing the required parameter property when calling WordsApi.create_or_update_document_property' if @api_client.config.client_side_validation && request.property.nil?
      # resource path
      local_var_path = '/words/{name}/documentProperties/{propertyName}'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.to_s)
      local_var_path = local_var_path.sub('{' + downcase_first_letter('PropertyName') + '}', request.property_name.to_s)

      # query parameters
      query_params = {}
      if local_var_path.include? downcase_first_letter('Folder')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Folder') + '}', request.folder.to_s)
      else
        query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
      end
      if local_var_path.include? downcase_first_letter('Storage')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Storage') + '}', request.storage.to_s)
      else
        query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
      end
      if local_var_path.include? downcase_first_letter('LoadEncoding')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('LoadEncoding') + '}', request.load_encoding.to_s)
      else
        query_params[downcase_first_letter('LoadEncoding')] = request.load_encoding unless request.load_encoding.nil?
      end
      if local_var_path.include? downcase_first_letter('Password')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Password') + '}', request.password.to_s)
      else
        query_params[downcase_first_letter('Password')] = request.password unless request.password.nil?
      end
      if local_var_path.include? downcase_first_letter('DestFileName')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('DestFileName') + '}', request.dest_file_name.to_s)
      else
        query_params[downcase_first_letter('DestFileName')] = request.dest_file_name unless request.dest_file_name.nil?
      end
      if local_var_path.include? downcase_first_letter('RevisionAuthor')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('RevisionAuthor') + '}', request.revision_author.to_s)
      else
        query_params[downcase_first_letter('RevisionAuthor')] = request.revision_author unless request.revision_author.nil?
      end
      if local_var_path.include? downcase_first_letter('RevisionDateTime')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('RevisionDateTime') + '}', request.revision_date_time.to_s)
      else
        query_params[downcase_first_letter('RevisionDateTime')] = request.revision_date_time unless request.revision_date_time.nil?
      end

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/xml', 'application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/xml', 'application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(request.property)
      auth_names = ['oauth']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names,
                                                        return_type: 'DocumentPropertyResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#create_or_update_document_property\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Resets border properties to default values.             
    # 'nodePath' should refer to node with cell or row
    # @param request DeleteBorderRequest
    # @return [BorderResponse]
    def delete_border(request)
      data, _status_code, _headers = delete_border_with_http_info(request)
      data
    end

    # Resets border properties to default values.             
    # &#39;nodePath&#39; should refer to node with cell or row
    # @param request DeleteBorderRequest
    # @return [Array<(BorderResponse, Fixnum, Hash)>]
    # BorderResponse data, response status code and response headers
    private def delete_border_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? DeleteBorderRequest

      @api_client.config.logger.debug 'Calling API: WordsApi.delete_border ...' if @api_client.config.debugging
      # verify the required parameter 'name' is set
      raise ArgumentError, 'Missing the required parameter name when calling WordsApi.delete_border' if @api_client.config.client_side_validation && request.name.nil?
      # verify the required parameter 'node_path' is set
      raise ArgumentError, 'Missing the required parameter node_path when calling WordsApi.delete_border' if @api_client.config.client_side_validation && request.node_path.nil?
      # verify the required parameter 'index' is set
      raise ArgumentError, 'Missing the required parameter index when calling WordsApi.delete_border' if @api_client.config.client_side_validation && request.index.nil?
      # resource path
      local_var_path = '/words/{name}/{nodePath}/borders/{index}'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.to_s)
      local_var_path = local_var_path.sub('{' + downcase_first_letter('NodePath') + '}', request.node_path.to_s)
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Index') + '}', request.index.to_s)

      # query parameters
      query_params = {}
      if local_var_path.include? downcase_first_letter('Folder')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Folder') + '}', request.folder.to_s)
      else
        query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
      end
      if local_var_path.include? downcase_first_letter('Storage')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Storage') + '}', request.storage.to_s)
      else
        query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
      end
      if local_var_path.include? downcase_first_letter('LoadEncoding')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('LoadEncoding') + '}', request.load_encoding.to_s)
      else
        query_params[downcase_first_letter('LoadEncoding')] = request.load_encoding unless request.load_encoding.nil?
      end
      if local_var_path.include? downcase_first_letter('Password')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Password') + '}', request.password.to_s)
      else
        query_params[downcase_first_letter('Password')] = request.password unless request.password.nil?
      end
      if local_var_path.include? downcase_first_letter('DestFileName')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('DestFileName') + '}', request.dest_file_name.to_s)
      else
        query_params[downcase_first_letter('DestFileName')] = request.dest_file_name unless request.dest_file_name.nil?
      end
      if local_var_path.include? downcase_first_letter('RevisionAuthor')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('RevisionAuthor') + '}', request.revision_author.to_s)
      else
        query_params[downcase_first_letter('RevisionAuthor')] = request.revision_author unless request.revision_author.nil?
      end
      if local_var_path.include? downcase_first_letter('RevisionDateTime')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('RevisionDateTime') + '}', request.revision_date_time.to_s)
      else
        query_params[downcase_first_letter('RevisionDateTime')] = request.revision_date_time unless request.revision_date_time.nil?
      end

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/xml', 'application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/xml', 'application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['oauth']
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names,
                                                        return_type: 'BorderResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#delete_border\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Resets borders properties to default values.             
    # 'nodePath' should refer to node with cell or row
    # @param request DeleteBordersRequest
    # @return [BordersResponse]
    def delete_borders(request)
      data, _status_code, _headers = delete_borders_with_http_info(request)
      data
    end

    # Resets borders properties to default values.             
    # &#39;nodePath&#39; should refer to node with cell or row
    # @param request DeleteBordersRequest
    # @return [Array<(BordersResponse, Fixnum, Hash)>]
    # BordersResponse data, response status code and response headers
    private def delete_borders_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? DeleteBordersRequest

      @api_client.config.logger.debug 'Calling API: WordsApi.delete_borders ...' if @api_client.config.debugging
      # verify the required parameter 'name' is set
      raise ArgumentError, 'Missing the required parameter name when calling WordsApi.delete_borders' if @api_client.config.client_side_validation && request.name.nil?
      # verify the required parameter 'node_path' is set
      raise ArgumentError, 'Missing the required parameter node_path when calling WordsApi.delete_borders' if @api_client.config.client_side_validation && request.node_path.nil?
      # resource path
      local_var_path = '/words/{name}/{nodePath}/borders'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.to_s)
      local_var_path = local_var_path.sub('{' + downcase_first_letter('NodePath') + '}', request.node_path.to_s)

      # query parameters
      query_params = {}
      if local_var_path.include? downcase_first_letter('Folder')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Folder') + '}', request.folder.to_s)
      else
        query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
      end
      if local_var_path.include? downcase_first_letter('Storage')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Storage') + '}', request.storage.to_s)
      else
        query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
      end
      if local_var_path.include? downcase_first_letter('LoadEncoding')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('LoadEncoding') + '}', request.load_encoding.to_s)
      else
        query_params[downcase_first_letter('LoadEncoding')] = request.load_encoding unless request.load_encoding.nil?
      end
      if local_var_path.include? downcase_first_letter('Password')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Password') + '}', request.password.to_s)
      else
        query_params[downcase_first_letter('Password')] = request.password unless request.password.nil?
      end
      if local_var_path.include? downcase_first_letter('DestFileName')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('DestFileName') + '}', request.dest_file_name.to_s)
      else
        query_params[downcase_first_letter('DestFileName')] = request.dest_file_name unless request.dest_file_name.nil?
      end
      if local_var_path.include? downcase_first_letter('RevisionAuthor')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('RevisionAuthor') + '}', request.revision_author.to_s)
      else
        query_params[downcase_first_letter('RevisionAuthor')] = request.revision_author unless request.revision_author.nil?
      end
      if local_var_path.include? downcase_first_letter('RevisionDateTime')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('RevisionDateTime') + '}', request.revision_date_time.to_s)
      else
        query_params[downcase_first_letter('RevisionDateTime')] = request.revision_date_time unless request.revision_date_time.nil?
      end

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/xml', 'application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/xml', 'application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['oauth']
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names,
                                                        return_type: 'BordersResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#delete_borders\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Remove comment from document.
    # 
    # @param request DeleteCommentRequest
    # @return [AsposeResponse]
    def delete_comment(request)
      data, _status_code, _headers = delete_comment_with_http_info(request)
      data
    end

    # Remove comment from document.
    # 
    # @param request DeleteCommentRequest
    # @return [Array<(AsposeResponse, Fixnum, Hash)>]
    # AsposeResponse data, response status code and response headers
    private def delete_comment_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? DeleteCommentRequest

      @api_client.config.logger.debug 'Calling API: WordsApi.delete_comment ...' if @api_client.config.debugging
      # verify the required parameter 'name' is set
      raise ArgumentError, 'Missing the required parameter name when calling WordsApi.delete_comment' if @api_client.config.client_side_validation && request.name.nil?
      # verify the required parameter 'comment_index' is set
      raise ArgumentError, 'Missing the required parameter comment_index when calling WordsApi.delete_comment' if @api_client.config.client_side_validation && request.comment_index.nil?
      # resource path
      local_var_path = '/words/{name}/comments/{commentIndex}'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.to_s)
      local_var_path = local_var_path.sub('{' + downcase_first_letter('CommentIndex') + '}', request.comment_index.to_s)

      # query parameters
      query_params = {}
      if local_var_path.include? downcase_first_letter('Folder')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Folder') + '}', request.folder.to_s)
      else
        query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
      end
      if local_var_path.include? downcase_first_letter('Storage')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Storage') + '}', request.storage.to_s)
      else
        query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
      end
      if local_var_path.include? downcase_first_letter('LoadEncoding')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('LoadEncoding') + '}', request.load_encoding.to_s)
      else
        query_params[downcase_first_letter('LoadEncoding')] = request.load_encoding unless request.load_encoding.nil?
      end
      if local_var_path.include? downcase_first_letter('Password')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Password') + '}', request.password.to_s)
      else
        query_params[downcase_first_letter('Password')] = request.password unless request.password.nil?
      end
      if local_var_path.include? downcase_first_letter('DestFileName')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('DestFileName') + '}', request.dest_file_name.to_s)
      else
        query_params[downcase_first_letter('DestFileName')] = request.dest_file_name unless request.dest_file_name.nil?
      end
      if local_var_path.include? downcase_first_letter('RevisionAuthor')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('RevisionAuthor') + '}', request.revision_author.to_s)
      else
        query_params[downcase_first_letter('RevisionAuthor')] = request.revision_author unless request.revision_author.nil?
      end
      if local_var_path.include? downcase_first_letter('RevisionDateTime')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('RevisionDateTime') + '}', request.revision_date_time.to_s)
      else
        query_params[downcase_first_letter('RevisionDateTime')] = request.revision_date_time unless request.revision_date_time.nil?
      end

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/xml', 'application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/xml', 'application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['oauth']
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names,
                                                        return_type: 'AsposeResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#delete_comment\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Remove macros from document.
    # 
    # @param request DeleteDocumentMacrosRequest
    # @return [AsposeResponse]
    def delete_document_macros(request)
      data, _status_code, _headers = delete_document_macros_with_http_info(request)
      data
    end

    # Remove macros from document.
    # 
    # @param request DeleteDocumentMacrosRequest
    # @return [Array<(AsposeResponse, Fixnum, Hash)>]
    # AsposeResponse data, response status code and response headers
    private def delete_document_macros_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? DeleteDocumentMacrosRequest

      @api_client.config.logger.debug 'Calling API: WordsApi.delete_document_macros ...' if @api_client.config.debugging
      # verify the required parameter 'name' is set
      raise ArgumentError, 'Missing the required parameter name when calling WordsApi.delete_document_macros' if @api_client.config.client_side_validation && request.name.nil?
      # resource path
      local_var_path = '/words/{name}/macros'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.to_s)

      # query parameters
      query_params = {}
      if local_var_path.include? downcase_first_letter('Folder')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Folder') + '}', request.folder.to_s)
      else
        query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
      end
      if local_var_path.include? downcase_first_letter('Storage')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Storage') + '}', request.storage.to_s)
      else
        query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
      end
      if local_var_path.include? downcase_first_letter('LoadEncoding')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('LoadEncoding') + '}', request.load_encoding.to_s)
      else
        query_params[downcase_first_letter('LoadEncoding')] = request.load_encoding unless request.load_encoding.nil?
      end
      if local_var_path.include? downcase_first_letter('Password')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Password') + '}', request.password.to_s)
      else
        query_params[downcase_first_letter('Password')] = request.password unless request.password.nil?
      end
      if local_var_path.include? downcase_first_letter('DestFileName')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('DestFileName') + '}', request.dest_file_name.to_s)
      else
        query_params[downcase_first_letter('DestFileName')] = request.dest_file_name unless request.dest_file_name.nil?
      end
      if local_var_path.include? downcase_first_letter('RevisionAuthor')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('RevisionAuthor') + '}', request.revision_author.to_s)
      else
        query_params[downcase_first_letter('RevisionAuthor')] = request.revision_author unless request.revision_author.nil?
      end
      if local_var_path.include? downcase_first_letter('RevisionDateTime')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('RevisionDateTime') + '}', request.revision_date_time.to_s)
      else
        query_params[downcase_first_letter('RevisionDateTime')] = request.revision_date_time unless request.revision_date_time.nil?
      end

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/xml', 'application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/xml', 'application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['oauth']
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names,
                                                        return_type: 'AsposeResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#delete_document_macros\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Delete document property.
    # 
    # @param request DeleteDocumentPropertyRequest
    # @return [AsposeResponse]
    def delete_document_property(request)
      data, _status_code, _headers = delete_document_property_with_http_info(request)
      data
    end

    # Delete document property.
    # 
    # @param request DeleteDocumentPropertyRequest
    # @return [Array<(AsposeResponse, Fixnum, Hash)>]
    # AsposeResponse data, response status code and response headers
    private def delete_document_property_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? DeleteDocumentPropertyRequest

      @api_client.config.logger.debug 'Calling API: WordsApi.delete_document_property ...' if @api_client.config.debugging
      # verify the required parameter 'name' is set
      raise ArgumentError, 'Missing the required parameter name when calling WordsApi.delete_document_property' if @api_client.config.client_side_validation && request.name.nil?
      # verify the required parameter 'property_name' is set
      raise ArgumentError, 'Missing the required parameter property_name when calling WordsApi.delete_document_property' if @api_client.config.client_side_validation && request.property_name.nil?
      # resource path
      local_var_path = '/words/{name}/documentProperties/{propertyName}'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.to_s)
      local_var_path = local_var_path.sub('{' + downcase_first_letter('PropertyName') + '}', request.property_name.to_s)

      # query parameters
      query_params = {}
      if local_var_path.include? downcase_first_letter('Folder')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Folder') + '}', request.folder.to_s)
      else
        query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
      end
      if local_var_path.include? downcase_first_letter('Storage')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Storage') + '}', request.storage.to_s)
      else
        query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
      end
      if local_var_path.include? downcase_first_letter('LoadEncoding')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('LoadEncoding') + '}', request.load_encoding.to_s)
      else
        query_params[downcase_first_letter('LoadEncoding')] = request.load_encoding unless request.load_encoding.nil?
      end
      if local_var_path.include? downcase_first_letter('Password')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Password') + '}', request.password.to_s)
      else
        query_params[downcase_first_letter('Password')] = request.password unless request.password.nil?
      end
      if local_var_path.include? downcase_first_letter('DestFileName')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('DestFileName') + '}', request.dest_file_name.to_s)
      else
        query_params[downcase_first_letter('DestFileName')] = request.dest_file_name unless request.dest_file_name.nil?
      end
      if local_var_path.include? downcase_first_letter('RevisionAuthor')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('RevisionAuthor') + '}', request.revision_author.to_s)
      else
        query_params[downcase_first_letter('RevisionAuthor')] = request.revision_author unless request.revision_author.nil?
      end
      if local_var_path.include? downcase_first_letter('RevisionDateTime')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('RevisionDateTime') + '}', request.revision_date_time.to_s)
      else
        query_params[downcase_first_letter('RevisionDateTime')] = request.revision_date_time unless request.revision_date_time.nil?
      end

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/xml', 'application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/xml', 'application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['oauth']
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names,
                                                        return_type: 'AsposeResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#delete_document_property\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Delete watermark (for deleting last watermark from the document).
    # 
    # @param request DeleteDocumentWatermarkRequest
    # @return [DocumentResponse]
    def delete_document_watermark(request)
      data, _status_code, _headers = delete_document_watermark_with_http_info(request)
      data
    end

    # Delete watermark (for deleting last watermark from the document).
    # 
    # @param request DeleteDocumentWatermarkRequest
    # @return [Array<(DocumentResponse, Fixnum, Hash)>]
    # DocumentResponse data, response status code and response headers
    private def delete_document_watermark_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? DeleteDocumentWatermarkRequest

      @api_client.config.logger.debug 'Calling API: WordsApi.delete_document_watermark ...' if @api_client.config.debugging
      # verify the required parameter 'name' is set
      raise ArgumentError, 'Missing the required parameter name when calling WordsApi.delete_document_watermark' if @api_client.config.client_side_validation && request.name.nil?
      # resource path
      local_var_path = '/words/{name}/watermark'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.to_s)

      # query parameters
      query_params = {}
      if local_var_path.include? downcase_first_letter('Folder')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Folder') + '}', request.folder.to_s)
      else
        query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
      end
      if local_var_path.include? downcase_first_letter('Storage')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Storage') + '}', request.storage.to_s)
      else
        query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
      end
      if local_var_path.include? downcase_first_letter('LoadEncoding')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('LoadEncoding') + '}', request.load_encoding.to_s)
      else
        query_params[downcase_first_letter('LoadEncoding')] = request.load_encoding unless request.load_encoding.nil?
      end
      if local_var_path.include? downcase_first_letter('Password')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Password') + '}', request.password.to_s)
      else
        query_params[downcase_first_letter('Password')] = request.password unless request.password.nil?
      end
      if local_var_path.include? downcase_first_letter('DestFileName')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('DestFileName') + '}', request.dest_file_name.to_s)
      else
        query_params[downcase_first_letter('DestFileName')] = request.dest_file_name unless request.dest_file_name.nil?
      end
      if local_var_path.include? downcase_first_letter('RevisionAuthor')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('RevisionAuthor') + '}', request.revision_author.to_s)
      else
        query_params[downcase_first_letter('RevisionAuthor')] = request.revision_author unless request.revision_author.nil?
      end
      if local_var_path.include? downcase_first_letter('RevisionDateTime')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('RevisionDateTime') + '}', request.revision_date_time.to_s)
      else
        query_params[downcase_first_letter('RevisionDateTime')] = request.revision_date_time unless request.revision_date_time.nil?
      end

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/xml', 'application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/xml', 'application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['oauth']
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names,
                                                        return_type: 'DocumentResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#delete_document_watermark\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Removes drawing object from document.
    # 
    # @param request DeleteDrawingObjectRequest
    # @return [AsposeResponse]
    def delete_drawing_object(request)
      data, _status_code, _headers = delete_drawing_object_with_http_info(request)
      data
    end

    # Removes drawing object from document.
    # 
    # @param request DeleteDrawingObjectRequest
    # @return [Array<(AsposeResponse, Fixnum, Hash)>]
    # AsposeResponse data, response status code and response headers
    private def delete_drawing_object_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? DeleteDrawingObjectRequest

      @api_client.config.logger.debug 'Calling API: WordsApi.delete_drawing_object ...' if @api_client.config.debugging
      # verify the required parameter 'name' is set
      raise ArgumentError, 'Missing the required parameter name when calling WordsApi.delete_drawing_object' if @api_client.config.client_side_validation && request.name.nil?
      # verify the required parameter 'index' is set
      raise ArgumentError, 'Missing the required parameter index when calling WordsApi.delete_drawing_object' if @api_client.config.client_side_validation && request.index.nil?
      # resource path
      local_var_path = '/words/{name}/{nodePath}/drawingObjects/{index}'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.to_s)
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Index') + '}', request.index.to_s)

      # query parameters
      query_params = {}
      if local_var_path.include? downcase_first_letter('Folder')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Folder') + '}', request.folder.to_s)
      else
        query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
      end
      if local_var_path.include? downcase_first_letter('Storage')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Storage') + '}', request.storage.to_s)
      else
        query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
      end
      if local_var_path.include? downcase_first_letter('LoadEncoding')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('LoadEncoding') + '}', request.load_encoding.to_s)
      else
        query_params[downcase_first_letter('LoadEncoding')] = request.load_encoding unless request.load_encoding.nil?
      end
      if local_var_path.include? downcase_first_letter('Password')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Password') + '}', request.password.to_s)
      else
        query_params[downcase_first_letter('Password')] = request.password unless request.password.nil?
      end
      if local_var_path.include? downcase_first_letter('DestFileName')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('DestFileName') + '}', request.dest_file_name.to_s)
      else
        query_params[downcase_first_letter('DestFileName')] = request.dest_file_name unless request.dest_file_name.nil?
      end
      if local_var_path.include? downcase_first_letter('RevisionAuthor')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('RevisionAuthor') + '}', request.revision_author.to_s)
      else
        query_params[downcase_first_letter('RevisionAuthor')] = request.revision_author unless request.revision_author.nil?
      end
      if local_var_path.include? downcase_first_letter('RevisionDateTime')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('RevisionDateTime') + '}', request.revision_date_time.to_s)
      else
        query_params[downcase_first_letter('RevisionDateTime')] = request.revision_date_time unless request.revision_date_time.nil?
      end
      if local_var_path.include? downcase_first_letter('NodePath')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('NodePath') + '}', request.node_path.to_s)
      else
        query_params[downcase_first_letter('NodePath')] = request.node_path unless request.node_path.nil?
      end

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/xml', 'application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/xml', 'application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['oauth']
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names,
                                                        return_type: 'AsposeResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#delete_drawing_object\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Delete field from document.
    # 
    # @param request DeleteFieldRequest
    # @return [AsposeResponse]
    def delete_field(request)
      data, _status_code, _headers = delete_field_with_http_info(request)
      data
    end

    # Delete field from document.
    # 
    # @param request DeleteFieldRequest
    # @return [Array<(AsposeResponse, Fixnum, Hash)>]
    # AsposeResponse data, response status code and response headers
    private def delete_field_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? DeleteFieldRequest

      @api_client.config.logger.debug 'Calling API: WordsApi.delete_field ...' if @api_client.config.debugging
      # verify the required parameter 'name' is set
      raise ArgumentError, 'Missing the required parameter name when calling WordsApi.delete_field' if @api_client.config.client_side_validation && request.name.nil?
      # verify the required parameter 'index' is set
      raise ArgumentError, 'Missing the required parameter index when calling WordsApi.delete_field' if @api_client.config.client_side_validation && request.index.nil?
      # resource path
      local_var_path = '/words/{name}/{nodePath}/fields/{index}'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.to_s)
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Index') + '}', request.index.to_s)

      # query parameters
      query_params = {}
      if local_var_path.include? downcase_first_letter('Folder')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Folder') + '}', request.folder.to_s)
      else
        query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
      end
      if local_var_path.include? downcase_first_letter('Storage')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Storage') + '}', request.storage.to_s)
      else
        query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
      end
      if local_var_path.include? downcase_first_letter('LoadEncoding')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('LoadEncoding') + '}', request.load_encoding.to_s)
      else
        query_params[downcase_first_letter('LoadEncoding')] = request.load_encoding unless request.load_encoding.nil?
      end
      if local_var_path.include? downcase_first_letter('Password')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Password') + '}', request.password.to_s)
      else
        query_params[downcase_first_letter('Password')] = request.password unless request.password.nil?
      end
      if local_var_path.include? downcase_first_letter('DestFileName')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('DestFileName') + '}', request.dest_file_name.to_s)
      else
        query_params[downcase_first_letter('DestFileName')] = request.dest_file_name unless request.dest_file_name.nil?
      end
      if local_var_path.include? downcase_first_letter('RevisionAuthor')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('RevisionAuthor') + '}', request.revision_author.to_s)
      else
        query_params[downcase_first_letter('RevisionAuthor')] = request.revision_author unless request.revision_author.nil?
      end
      if local_var_path.include? downcase_first_letter('RevisionDateTime')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('RevisionDateTime') + '}', request.revision_date_time.to_s)
      else
        query_params[downcase_first_letter('RevisionDateTime')] = request.revision_date_time unless request.revision_date_time.nil?
      end
      if local_var_path.include? downcase_first_letter('NodePath')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('NodePath') + '}', request.node_path.to_s)
      else
        query_params[downcase_first_letter('NodePath')] = request.node_path unless request.node_path.nil?
      end

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/xml', 'application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/xml', 'application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['oauth']
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names,
                                                        return_type: 'AsposeResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#delete_field\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Remove fields from section paragraph.
    # 
    # @param request DeleteFieldsRequest
    # @return [AsposeResponse]
    def delete_fields(request)
      data, _status_code, _headers = delete_fields_with_http_info(request)
      data
    end

    # Remove fields from section paragraph.
    # 
    # @param request DeleteFieldsRequest
    # @return [Array<(AsposeResponse, Fixnum, Hash)>]
    # AsposeResponse data, response status code and response headers
    private def delete_fields_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? DeleteFieldsRequest

      @api_client.config.logger.debug 'Calling API: WordsApi.delete_fields ...' if @api_client.config.debugging
      # verify the required parameter 'name' is set
      raise ArgumentError, 'Missing the required parameter name when calling WordsApi.delete_fields' if @api_client.config.client_side_validation && request.name.nil?
      # resource path
      local_var_path = '/words/{name}/{nodePath}/fields'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.to_s)

      # query parameters
      query_params = {}
      if local_var_path.include? downcase_first_letter('Folder')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Folder') + '}', request.folder.to_s)
      else
        query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
      end
      if local_var_path.include? downcase_first_letter('Storage')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Storage') + '}', request.storage.to_s)
      else
        query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
      end
      if local_var_path.include? downcase_first_letter('LoadEncoding')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('LoadEncoding') + '}', request.load_encoding.to_s)
      else
        query_params[downcase_first_letter('LoadEncoding')] = request.load_encoding unless request.load_encoding.nil?
      end
      if local_var_path.include? downcase_first_letter('Password')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Password') + '}', request.password.to_s)
      else
        query_params[downcase_first_letter('Password')] = request.password unless request.password.nil?
      end
      if local_var_path.include? downcase_first_letter('DestFileName')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('DestFileName') + '}', request.dest_file_name.to_s)
      else
        query_params[downcase_first_letter('DestFileName')] = request.dest_file_name unless request.dest_file_name.nil?
      end
      if local_var_path.include? downcase_first_letter('RevisionAuthor')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('RevisionAuthor') + '}', request.revision_author.to_s)
      else
        query_params[downcase_first_letter('RevisionAuthor')] = request.revision_author unless request.revision_author.nil?
      end
      if local_var_path.include? downcase_first_letter('RevisionDateTime')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('RevisionDateTime') + '}', request.revision_date_time.to_s)
      else
        query_params[downcase_first_letter('RevisionDateTime')] = request.revision_date_time unless request.revision_date_time.nil?
      end
      if local_var_path.include? downcase_first_letter('NodePath')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('NodePath') + '}', request.node_path.to_s)
      else
        query_params[downcase_first_letter('NodePath')] = request.node_path unless request.node_path.nil?
      end

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/xml', 'application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/xml', 'application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['oauth']
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names,
                                                        return_type: 'AsposeResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#delete_fields\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Removes footnote from document.
    # 
    # @param request DeleteFootnoteRequest
    # @return [AsposeResponse]
    def delete_footnote(request)
      data, _status_code, _headers = delete_footnote_with_http_info(request)
      data
    end

    # Removes footnote from document.
    # 
    # @param request DeleteFootnoteRequest
    # @return [Array<(AsposeResponse, Fixnum, Hash)>]
    # AsposeResponse data, response status code and response headers
    private def delete_footnote_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? DeleteFootnoteRequest

      @api_client.config.logger.debug 'Calling API: WordsApi.delete_footnote ...' if @api_client.config.debugging
      # verify the required parameter 'name' is set
      raise ArgumentError, 'Missing the required parameter name when calling WordsApi.delete_footnote' if @api_client.config.client_side_validation && request.name.nil?
      # verify the required parameter 'index' is set
      raise ArgumentError, 'Missing the required parameter index when calling WordsApi.delete_footnote' if @api_client.config.client_side_validation && request.index.nil?
      # resource path
      local_var_path = '/words/{name}/{nodePath}/footnotes/{index}'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.to_s)
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Index') + '}', request.index.to_s)

      # query parameters
      query_params = {}
      if local_var_path.include? downcase_first_letter('Folder')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Folder') + '}', request.folder.to_s)
      else
        query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
      end
      if local_var_path.include? downcase_first_letter('Storage')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Storage') + '}', request.storage.to_s)
      else
        query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
      end
      if local_var_path.include? downcase_first_letter('LoadEncoding')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('LoadEncoding') + '}', request.load_encoding.to_s)
      else
        query_params[downcase_first_letter('LoadEncoding')] = request.load_encoding unless request.load_encoding.nil?
      end
      if local_var_path.include? downcase_first_letter('Password')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Password') + '}', request.password.to_s)
      else
        query_params[downcase_first_letter('Password')] = request.password unless request.password.nil?
      end
      if local_var_path.include? downcase_first_letter('DestFileName')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('DestFileName') + '}', request.dest_file_name.to_s)
      else
        query_params[downcase_first_letter('DestFileName')] = request.dest_file_name unless request.dest_file_name.nil?
      end
      if local_var_path.include? downcase_first_letter('RevisionAuthor')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('RevisionAuthor') + '}', request.revision_author.to_s)
      else
        query_params[downcase_first_letter('RevisionAuthor')] = request.revision_author unless request.revision_author.nil?
      end
      if local_var_path.include? downcase_first_letter('RevisionDateTime')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('RevisionDateTime') + '}', request.revision_date_time.to_s)
      else
        query_params[downcase_first_letter('RevisionDateTime')] = request.revision_date_time unless request.revision_date_time.nil?
      end
      if local_var_path.include? downcase_first_letter('NodePath')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('NodePath') + '}', request.node_path.to_s)
      else
        query_params[downcase_first_letter('NodePath')] = request.node_path unless request.node_path.nil?
      end

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/xml', 'application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/xml', 'application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['oauth']
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names,
                                                        return_type: 'AsposeResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#delete_footnote\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Removes form field from document.
    # 
    # @param request DeleteFormFieldRequest
    # @return [AsposeResponse]
    def delete_form_field(request)
      data, _status_code, _headers = delete_form_field_with_http_info(request)
      data
    end

    # Removes form field from document.
    # 
    # @param request DeleteFormFieldRequest
    # @return [Array<(AsposeResponse, Fixnum, Hash)>]
    # AsposeResponse data, response status code and response headers
    private def delete_form_field_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? DeleteFormFieldRequest

      @api_client.config.logger.debug 'Calling API: WordsApi.delete_form_field ...' if @api_client.config.debugging
      # verify the required parameter 'name' is set
      raise ArgumentError, 'Missing the required parameter name when calling WordsApi.delete_form_field' if @api_client.config.client_side_validation && request.name.nil?
      # verify the required parameter 'index' is set
      raise ArgumentError, 'Missing the required parameter index when calling WordsApi.delete_form_field' if @api_client.config.client_side_validation && request.index.nil?
      # resource path
      local_var_path = '/words/{name}/{nodePath}/formfields/{index}'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.to_s)
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Index') + '}', request.index.to_s)

      # query parameters
      query_params = {}
      if local_var_path.include? downcase_first_letter('Folder')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Folder') + '}', request.folder.to_s)
      else
        query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
      end
      if local_var_path.include? downcase_first_letter('Storage')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Storage') + '}', request.storage.to_s)
      else
        query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
      end
      if local_var_path.include? downcase_first_letter('LoadEncoding')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('LoadEncoding') + '}', request.load_encoding.to_s)
      else
        query_params[downcase_first_letter('LoadEncoding')] = request.load_encoding unless request.load_encoding.nil?
      end
      if local_var_path.include? downcase_first_letter('Password')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Password') + '}', request.password.to_s)
      else
        query_params[downcase_first_letter('Password')] = request.password unless request.password.nil?
      end
      if local_var_path.include? downcase_first_letter('DestFileName')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('DestFileName') + '}', request.dest_file_name.to_s)
      else
        query_params[downcase_first_letter('DestFileName')] = request.dest_file_name unless request.dest_file_name.nil?
      end
      if local_var_path.include? downcase_first_letter('RevisionAuthor')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('RevisionAuthor') + '}', request.revision_author.to_s)
      else
        query_params[downcase_first_letter('RevisionAuthor')] = request.revision_author unless request.revision_author.nil?
      end
      if local_var_path.include? downcase_first_letter('RevisionDateTime')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('RevisionDateTime') + '}', request.revision_date_time.to_s)
      else
        query_params[downcase_first_letter('RevisionDateTime')] = request.revision_date_time unless request.revision_date_time.nil?
      end
      if local_var_path.include? downcase_first_letter('NodePath')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('NodePath') + '}', request.node_path.to_s)
      else
        query_params[downcase_first_letter('NodePath')] = request.node_path unless request.node_path.nil?
      end

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/xml', 'application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/xml', 'application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['oauth']
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names,
                                                        return_type: 'AsposeResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#delete_form_field\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Delete header/footer from document.
    # 
    # @param request DeleteHeaderFooterRequest
    # @return [AsposeResponse]
    def delete_header_footer(request)
      data, _status_code, _headers = delete_header_footer_with_http_info(request)
      data
    end

    # Delete header/footer from document.
    # 
    # @param request DeleteHeaderFooterRequest
    # @return [Array<(AsposeResponse, Fixnum, Hash)>]
    # AsposeResponse data, response status code and response headers
    private def delete_header_footer_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? DeleteHeaderFooterRequest

      @api_client.config.logger.debug 'Calling API: WordsApi.delete_header_footer ...' if @api_client.config.debugging
      # verify the required parameter 'name' is set
      raise ArgumentError, 'Missing the required parameter name when calling WordsApi.delete_header_footer' if @api_client.config.client_side_validation && request.name.nil?
      # verify the required parameter 'index' is set
      raise ArgumentError, 'Missing the required parameter index when calling WordsApi.delete_header_footer' if @api_client.config.client_side_validation && request.index.nil?
      # resource path
      local_var_path = '/words/{name}/{sectionPath}/headersfooters/{index}'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.to_s)
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Index') + '}', request.index.to_s)

      # query parameters
      query_params = {}
      if local_var_path.include? downcase_first_letter('Folder')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Folder') + '}', request.folder.to_s)
      else
        query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
      end
      if local_var_path.include? downcase_first_letter('Storage')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Storage') + '}', request.storage.to_s)
      else
        query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
      end
      if local_var_path.include? downcase_first_letter('LoadEncoding')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('LoadEncoding') + '}', request.load_encoding.to_s)
      else
        query_params[downcase_first_letter('LoadEncoding')] = request.load_encoding unless request.load_encoding.nil?
      end
      if local_var_path.include? downcase_first_letter('Password')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Password') + '}', request.password.to_s)
      else
        query_params[downcase_first_letter('Password')] = request.password unless request.password.nil?
      end
      if local_var_path.include? downcase_first_letter('DestFileName')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('DestFileName') + '}', request.dest_file_name.to_s)
      else
        query_params[downcase_first_letter('DestFileName')] = request.dest_file_name unless request.dest_file_name.nil?
      end
      if local_var_path.include? downcase_first_letter('RevisionAuthor')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('RevisionAuthor') + '}', request.revision_author.to_s)
      else
        query_params[downcase_first_letter('RevisionAuthor')] = request.revision_author unless request.revision_author.nil?
      end
      if local_var_path.include? downcase_first_letter('RevisionDateTime')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('RevisionDateTime') + '}', request.revision_date_time.to_s)
      else
        query_params[downcase_first_letter('RevisionDateTime')] = request.revision_date_time unless request.revision_date_time.nil?
      end
      if local_var_path.include? downcase_first_letter('SectionPath')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('SectionPath') + '}', request.section_path.to_s)
      else
        query_params[downcase_first_letter('SectionPath')] = request.section_path unless request.section_path.nil?
      end

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/xml', 'application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/xml', 'application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['oauth']
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names,
                                                        return_type: 'AsposeResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#delete_header_footer\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Delete document headers and footers.
    # 
    # @param request DeleteHeadersFootersRequest
    # @return [AsposeResponse]
    def delete_headers_footers(request)
      data, _status_code, _headers = delete_headers_footers_with_http_info(request)
      data
    end

    # Delete document headers and footers.
    # 
    # @param request DeleteHeadersFootersRequest
    # @return [Array<(AsposeResponse, Fixnum, Hash)>]
    # AsposeResponse data, response status code and response headers
    private def delete_headers_footers_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? DeleteHeadersFootersRequest

      @api_client.config.logger.debug 'Calling API: WordsApi.delete_headers_footers ...' if @api_client.config.debugging
      # verify the required parameter 'name' is set
      raise ArgumentError, 'Missing the required parameter name when calling WordsApi.delete_headers_footers' if @api_client.config.client_side_validation && request.name.nil?
      # resource path
      local_var_path = '/words/{name}/{sectionPath}/headersfooters'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.to_s)

      # query parameters
      query_params = {}
      if local_var_path.include? downcase_first_letter('Folder')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Folder') + '}', request.folder.to_s)
      else
        query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
      end
      if local_var_path.include? downcase_first_letter('Storage')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Storage') + '}', request.storage.to_s)
      else
        query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
      end
      if local_var_path.include? downcase_first_letter('LoadEncoding')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('LoadEncoding') + '}', request.load_encoding.to_s)
      else
        query_params[downcase_first_letter('LoadEncoding')] = request.load_encoding unless request.load_encoding.nil?
      end
      if local_var_path.include? downcase_first_letter('Password')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Password') + '}', request.password.to_s)
      else
        query_params[downcase_first_letter('Password')] = request.password unless request.password.nil?
      end
      if local_var_path.include? downcase_first_letter('DestFileName')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('DestFileName') + '}', request.dest_file_name.to_s)
      else
        query_params[downcase_first_letter('DestFileName')] = request.dest_file_name unless request.dest_file_name.nil?
      end
      if local_var_path.include? downcase_first_letter('RevisionAuthor')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('RevisionAuthor') + '}', request.revision_author.to_s)
      else
        query_params[downcase_first_letter('RevisionAuthor')] = request.revision_author unless request.revision_author.nil?
      end
      if local_var_path.include? downcase_first_letter('RevisionDateTime')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('RevisionDateTime') + '}', request.revision_date_time.to_s)
      else
        query_params[downcase_first_letter('RevisionDateTime')] = request.revision_date_time unless request.revision_date_time.nil?
      end
      if local_var_path.include? downcase_first_letter('SectionPath')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('SectionPath') + '}', request.section_path.to_s)
      else
        query_params[downcase_first_letter('SectionPath')] = request.section_path unless request.section_path.nil?
      end
      if local_var_path.include? downcase_first_letter('HeadersFootersTypes')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('HeadersFootersTypes') + '}', request.headers_footers_types.to_s)
      else
        query_params[downcase_first_letter('HeadersFootersTypes')] = request.headers_footers_types unless request.headers_footers_types.nil?
      end

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/xml', 'application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/xml', 'application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['oauth']
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names,
                                                        return_type: 'AsposeResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#delete_headers_footers\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Removes OfficeMath object from document.
    # 
    # @param request DeleteOfficeMathObjectRequest
    # @return [AsposeResponse]
    def delete_office_math_object(request)
      data, _status_code, _headers = delete_office_math_object_with_http_info(request)
      data
    end

    # Removes OfficeMath object from document.
    # 
    # @param request DeleteOfficeMathObjectRequest
    # @return [Array<(AsposeResponse, Fixnum, Hash)>]
    # AsposeResponse data, response status code and response headers
    private def delete_office_math_object_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? DeleteOfficeMathObjectRequest

      @api_client.config.logger.debug 'Calling API: WordsApi.delete_office_math_object ...' if @api_client.config.debugging
      # verify the required parameter 'name' is set
      raise ArgumentError, 'Missing the required parameter name when calling WordsApi.delete_office_math_object' if @api_client.config.client_side_validation && request.name.nil?
      # verify the required parameter 'index' is set
      raise ArgumentError, 'Missing the required parameter index when calling WordsApi.delete_office_math_object' if @api_client.config.client_side_validation && request.index.nil?
      # resource path
      local_var_path = '/words/{name}/{nodePath}/OfficeMathObjects/{index}'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.to_s)
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Index') + '}', request.index.to_s)

      # query parameters
      query_params = {}
      if local_var_path.include? downcase_first_letter('Folder')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Folder') + '}', request.folder.to_s)
      else
        query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
      end
      if local_var_path.include? downcase_first_letter('Storage')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Storage') + '}', request.storage.to_s)
      else
        query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
      end
      if local_var_path.include? downcase_first_letter('LoadEncoding')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('LoadEncoding') + '}', request.load_encoding.to_s)
      else
        query_params[downcase_first_letter('LoadEncoding')] = request.load_encoding unless request.load_encoding.nil?
      end
      if local_var_path.include? downcase_first_letter('Password')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Password') + '}', request.password.to_s)
      else
        query_params[downcase_first_letter('Password')] = request.password unless request.password.nil?
      end
      if local_var_path.include? downcase_first_letter('DestFileName')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('DestFileName') + '}', request.dest_file_name.to_s)
      else
        query_params[downcase_first_letter('DestFileName')] = request.dest_file_name unless request.dest_file_name.nil?
      end
      if local_var_path.include? downcase_first_letter('RevisionAuthor')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('RevisionAuthor') + '}', request.revision_author.to_s)
      else
        query_params[downcase_first_letter('RevisionAuthor')] = request.revision_author unless request.revision_author.nil?
      end
      if local_var_path.include? downcase_first_letter('RevisionDateTime')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('RevisionDateTime') + '}', request.revision_date_time.to_s)
      else
        query_params[downcase_first_letter('RevisionDateTime')] = request.revision_date_time unless request.revision_date_time.nil?
      end
      if local_var_path.include? downcase_first_letter('NodePath')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('NodePath') + '}', request.node_path.to_s)
      else
        query_params[downcase_first_letter('NodePath')] = request.node_path unless request.node_path.nil?
      end

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/xml', 'application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/xml', 'application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['oauth']
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names,
                                                        return_type: 'AsposeResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#delete_office_math_object\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Remove paragraph from section.
    # 
    # @param request DeleteParagraphRequest
    # @return [AsposeResponse]
    def delete_paragraph(request)
      data, _status_code, _headers = delete_paragraph_with_http_info(request)
      data
    end

    # Remove paragraph from section.
    # 
    # @param request DeleteParagraphRequest
    # @return [Array<(AsposeResponse, Fixnum, Hash)>]
    # AsposeResponse data, response status code and response headers
    private def delete_paragraph_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? DeleteParagraphRequest

      @api_client.config.logger.debug 'Calling API: WordsApi.delete_paragraph ...' if @api_client.config.debugging
      # verify the required parameter 'name' is set
      raise ArgumentError, 'Missing the required parameter name when calling WordsApi.delete_paragraph' if @api_client.config.client_side_validation && request.name.nil?
      # verify the required parameter 'index' is set
      raise ArgumentError, 'Missing the required parameter index when calling WordsApi.delete_paragraph' if @api_client.config.client_side_validation && request.index.nil?
      # resource path
      local_var_path = '/words/{name}/{nodePath}/paragraphs/{index}'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.to_s)
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Index') + '}', request.index.to_s)

      # query parameters
      query_params = {}
      if local_var_path.include? downcase_first_letter('Folder')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Folder') + '}', request.folder.to_s)
      else
        query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
      end
      if local_var_path.include? downcase_first_letter('Storage')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Storage') + '}', request.storage.to_s)
      else
        query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
      end
      if local_var_path.include? downcase_first_letter('LoadEncoding')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('LoadEncoding') + '}', request.load_encoding.to_s)
      else
        query_params[downcase_first_letter('LoadEncoding')] = request.load_encoding unless request.load_encoding.nil?
      end
      if local_var_path.include? downcase_first_letter('Password')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Password') + '}', request.password.to_s)
      else
        query_params[downcase_first_letter('Password')] = request.password unless request.password.nil?
      end
      if local_var_path.include? downcase_first_letter('DestFileName')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('DestFileName') + '}', request.dest_file_name.to_s)
      else
        query_params[downcase_first_letter('DestFileName')] = request.dest_file_name unless request.dest_file_name.nil?
      end
      if local_var_path.include? downcase_first_letter('RevisionAuthor')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('RevisionAuthor') + '}', request.revision_author.to_s)
      else
        query_params[downcase_first_letter('RevisionAuthor')] = request.revision_author unless request.revision_author.nil?
      end
      if local_var_path.include? downcase_first_letter('RevisionDateTime')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('RevisionDateTime') + '}', request.revision_date_time.to_s)
      else
        query_params[downcase_first_letter('RevisionDateTime')] = request.revision_date_time unless request.revision_date_time.nil?
      end
      if local_var_path.include? downcase_first_letter('NodePath')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('NodePath') + '}', request.node_path.to_s)
      else
        query_params[downcase_first_letter('NodePath')] = request.node_path unless request.node_path.nil?
      end

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/xml', 'application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/xml', 'application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['oauth']
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names,
                                                        return_type: 'AsposeResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#delete_paragraph\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Removes run from document.
    # 
    # @param request DeleteRunRequest
    # @return [AsposeResponse]
    def delete_run(request)
      data, _status_code, _headers = delete_run_with_http_info(request)
      data
    end

    # Removes run from document.
    # 
    # @param request DeleteRunRequest
    # @return [Array<(AsposeResponse, Fixnum, Hash)>]
    # AsposeResponse data, response status code and response headers
    private def delete_run_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? DeleteRunRequest

      @api_client.config.logger.debug 'Calling API: WordsApi.delete_run ...' if @api_client.config.debugging
      # verify the required parameter 'name' is set
      raise ArgumentError, 'Missing the required parameter name when calling WordsApi.delete_run' if @api_client.config.client_side_validation && request.name.nil?
      # verify the required parameter 'paragraph_path' is set
      raise ArgumentError, 'Missing the required parameter paragraph_path when calling WordsApi.delete_run' if @api_client.config.client_side_validation && request.paragraph_path.nil?
      # verify the required parameter 'index' is set
      raise ArgumentError, 'Missing the required parameter index when calling WordsApi.delete_run' if @api_client.config.client_side_validation && request.index.nil?
      # resource path
      local_var_path = '/words/{name}/{paragraphPath}/runs/{index}'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.to_s)
      local_var_path = local_var_path.sub('{' + downcase_first_letter('ParagraphPath') + '}', request.paragraph_path.to_s)
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Index') + '}', request.index.to_s)

      # query parameters
      query_params = {}
      if local_var_path.include? downcase_first_letter('Folder')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Folder') + '}', request.folder.to_s)
      else
        query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
      end
      if local_var_path.include? downcase_first_letter('Storage')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Storage') + '}', request.storage.to_s)
      else
        query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
      end
      if local_var_path.include? downcase_first_letter('LoadEncoding')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('LoadEncoding') + '}', request.load_encoding.to_s)
      else
        query_params[downcase_first_letter('LoadEncoding')] = request.load_encoding unless request.load_encoding.nil?
      end
      if local_var_path.include? downcase_first_letter('Password')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Password') + '}', request.password.to_s)
      else
        query_params[downcase_first_letter('Password')] = request.password unless request.password.nil?
      end
      if local_var_path.include? downcase_first_letter('DestFileName')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('DestFileName') + '}', request.dest_file_name.to_s)
      else
        query_params[downcase_first_letter('DestFileName')] = request.dest_file_name unless request.dest_file_name.nil?
      end
      if local_var_path.include? downcase_first_letter('RevisionAuthor')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('RevisionAuthor') + '}', request.revision_author.to_s)
      else
        query_params[downcase_first_letter('RevisionAuthor')] = request.revision_author unless request.revision_author.nil?
      end
      if local_var_path.include? downcase_first_letter('RevisionDateTime')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('RevisionDateTime') + '}', request.revision_date_time.to_s)
      else
        query_params[downcase_first_letter('RevisionDateTime')] = request.revision_date_time unless request.revision_date_time.nil?
      end

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/xml', 'application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/xml', 'application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['oauth']
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names,
                                                        return_type: 'AsposeResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#delete_run\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Delete a table.
    # 
    # @param request DeleteTableRequest
    # @return [AsposeResponse]
    def delete_table(request)
      data, _status_code, _headers = delete_table_with_http_info(request)
      data
    end

    # Delete a table.
    # 
    # @param request DeleteTableRequest
    # @return [Array<(AsposeResponse, Fixnum, Hash)>]
    # AsposeResponse data, response status code and response headers
    private def delete_table_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? DeleteTableRequest

      @api_client.config.logger.debug 'Calling API: WordsApi.delete_table ...' if @api_client.config.debugging
      # verify the required parameter 'name' is set
      raise ArgumentError, 'Missing the required parameter name when calling WordsApi.delete_table' if @api_client.config.client_side_validation && request.name.nil?
      # verify the required parameter 'index' is set
      raise ArgumentError, 'Missing the required parameter index when calling WordsApi.delete_table' if @api_client.config.client_side_validation && request.index.nil?
      # resource path
      local_var_path = '/words/{name}/{nodePath}/tables/{index}'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.to_s)
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Index') + '}', request.index.to_s)

      # query parameters
      query_params = {}
      if local_var_path.include? downcase_first_letter('Folder')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Folder') + '}', request.folder.to_s)
      else
        query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
      end
      if local_var_path.include? downcase_first_letter('Storage')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Storage') + '}', request.storage.to_s)
      else
        query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
      end
      if local_var_path.include? downcase_first_letter('LoadEncoding')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('LoadEncoding') + '}', request.load_encoding.to_s)
      else
        query_params[downcase_first_letter('LoadEncoding')] = request.load_encoding unless request.load_encoding.nil?
      end
      if local_var_path.include? downcase_first_letter('Password')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Password') + '}', request.password.to_s)
      else
        query_params[downcase_first_letter('Password')] = request.password unless request.password.nil?
      end
      if local_var_path.include? downcase_first_letter('DestFileName')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('DestFileName') + '}', request.dest_file_name.to_s)
      else
        query_params[downcase_first_letter('DestFileName')] = request.dest_file_name unless request.dest_file_name.nil?
      end
      if local_var_path.include? downcase_first_letter('RevisionAuthor')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('RevisionAuthor') + '}', request.revision_author.to_s)
      else
        query_params[downcase_first_letter('RevisionAuthor')] = request.revision_author unless request.revision_author.nil?
      end
      if local_var_path.include? downcase_first_letter('RevisionDateTime')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('RevisionDateTime') + '}', request.revision_date_time.to_s)
      else
        query_params[downcase_first_letter('RevisionDateTime')] = request.revision_date_time unless request.revision_date_time.nil?
      end
      if local_var_path.include? downcase_first_letter('NodePath')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('NodePath') + '}', request.node_path.to_s)
      else
        query_params[downcase_first_letter('NodePath')] = request.node_path unless request.node_path.nil?
      end

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/xml', 'application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/xml', 'application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['oauth']
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names,
                                                        return_type: 'AsposeResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#delete_table\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Delete a table cell.
    # 
    # @param request DeleteTableCellRequest
    # @return [AsposeResponse]
    def delete_table_cell(request)
      data, _status_code, _headers = delete_table_cell_with_http_info(request)
      data
    end

    # Delete a table cell.
    # 
    # @param request DeleteTableCellRequest
    # @return [Array<(AsposeResponse, Fixnum, Hash)>]
    # AsposeResponse data, response status code and response headers
    private def delete_table_cell_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? DeleteTableCellRequest

      @api_client.config.logger.debug 'Calling API: WordsApi.delete_table_cell ...' if @api_client.config.debugging
      # verify the required parameter 'name' is set
      raise ArgumentError, 'Missing the required parameter name when calling WordsApi.delete_table_cell' if @api_client.config.client_side_validation && request.name.nil?
      # verify the required parameter 'table_row_path' is set
      raise ArgumentError, 'Missing the required parameter table_row_path when calling WordsApi.delete_table_cell' if @api_client.config.client_side_validation && request.table_row_path.nil?
      # verify the required parameter 'index' is set
      raise ArgumentError, 'Missing the required parameter index when calling WordsApi.delete_table_cell' if @api_client.config.client_side_validation && request.index.nil?
      # resource path
      local_var_path = '/words/{name}/{tableRowPath}/cells/{index}'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.to_s)
      local_var_path = local_var_path.sub('{' + downcase_first_letter('TableRowPath') + '}', request.table_row_path.to_s)
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Index') + '}', request.index.to_s)

      # query parameters
      query_params = {}
      if local_var_path.include? downcase_first_letter('Folder')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Folder') + '}', request.folder.to_s)
      else
        query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
      end
      if local_var_path.include? downcase_first_letter('Storage')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Storage') + '}', request.storage.to_s)
      else
        query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
      end
      if local_var_path.include? downcase_first_letter('LoadEncoding')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('LoadEncoding') + '}', request.load_encoding.to_s)
      else
        query_params[downcase_first_letter('LoadEncoding')] = request.load_encoding unless request.load_encoding.nil?
      end
      if local_var_path.include? downcase_first_letter('Password')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Password') + '}', request.password.to_s)
      else
        query_params[downcase_first_letter('Password')] = request.password unless request.password.nil?
      end
      if local_var_path.include? downcase_first_letter('DestFileName')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('DestFileName') + '}', request.dest_file_name.to_s)
      else
        query_params[downcase_first_letter('DestFileName')] = request.dest_file_name unless request.dest_file_name.nil?
      end
      if local_var_path.include? downcase_first_letter('RevisionAuthor')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('RevisionAuthor') + '}', request.revision_author.to_s)
      else
        query_params[downcase_first_letter('RevisionAuthor')] = request.revision_author unless request.revision_author.nil?
      end
      if local_var_path.include? downcase_first_letter('RevisionDateTime')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('RevisionDateTime') + '}', request.revision_date_time.to_s)
      else
        query_params[downcase_first_letter('RevisionDateTime')] = request.revision_date_time unless request.revision_date_time.nil?
      end

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/xml', 'application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/xml', 'application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['oauth']
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names,
                                                        return_type: 'AsposeResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#delete_table_cell\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Delete a table row.
    # 
    # @param request DeleteTableRowRequest
    # @return [AsposeResponse]
    def delete_table_row(request)
      data, _status_code, _headers = delete_table_row_with_http_info(request)
      data
    end

    # Delete a table row.
    # 
    # @param request DeleteTableRowRequest
    # @return [Array<(AsposeResponse, Fixnum, Hash)>]
    # AsposeResponse data, response status code and response headers
    private def delete_table_row_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? DeleteTableRowRequest

      @api_client.config.logger.debug 'Calling API: WordsApi.delete_table_row ...' if @api_client.config.debugging
      # verify the required parameter 'name' is set
      raise ArgumentError, 'Missing the required parameter name when calling WordsApi.delete_table_row' if @api_client.config.client_side_validation && request.name.nil?
      # verify the required parameter 'table_path' is set
      raise ArgumentError, 'Missing the required parameter table_path when calling WordsApi.delete_table_row' if @api_client.config.client_side_validation && request.table_path.nil?
      # verify the required parameter 'index' is set
      raise ArgumentError, 'Missing the required parameter index when calling WordsApi.delete_table_row' if @api_client.config.client_side_validation && request.index.nil?
      # resource path
      local_var_path = '/words/{name}/{tablePath}/rows/{index}'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.to_s)
      local_var_path = local_var_path.sub('{' + downcase_first_letter('TablePath') + '}', request.table_path.to_s)
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Index') + '}', request.index.to_s)

      # query parameters
      query_params = {}
      if local_var_path.include? downcase_first_letter('Folder')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Folder') + '}', request.folder.to_s)
      else
        query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
      end
      if local_var_path.include? downcase_first_letter('Storage')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Storage') + '}', request.storage.to_s)
      else
        query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
      end
      if local_var_path.include? downcase_first_letter('LoadEncoding')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('LoadEncoding') + '}', request.load_encoding.to_s)
      else
        query_params[downcase_first_letter('LoadEncoding')] = request.load_encoding unless request.load_encoding.nil?
      end
      if local_var_path.include? downcase_first_letter('Password')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Password') + '}', request.password.to_s)
      else
        query_params[downcase_first_letter('Password')] = request.password unless request.password.nil?
      end
      if local_var_path.include? downcase_first_letter('DestFileName')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('DestFileName') + '}', request.dest_file_name.to_s)
      else
        query_params[downcase_first_letter('DestFileName')] = request.dest_file_name unless request.dest_file_name.nil?
      end
      if local_var_path.include? downcase_first_letter('RevisionAuthor')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('RevisionAuthor') + '}', request.revision_author.to_s)
      else
        query_params[downcase_first_letter('RevisionAuthor')] = request.revision_author unless request.revision_author.nil?
      end
      if local_var_path.include? downcase_first_letter('RevisionDateTime')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('RevisionDateTime') + '}', request.revision_date_time.to_s)
      else
        query_params[downcase_first_letter('RevisionDateTime')] = request.revision_date_time unless request.revision_date_time.nil?
      end

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/xml', 'application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/xml', 'application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['oauth']
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names,
                                                        return_type: 'AsposeResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#delete_table_row\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Unprotect document.
    # 
    # @param request DeleteUnprotectDocumentRequest
    # @return [ProtectionDataResponse]
    def delete_unprotect_document(request)
      data, _status_code, _headers = delete_unprotect_document_with_http_info(request)
      data
    end

    # Unprotect document.
    # 
    # @param request DeleteUnprotectDocumentRequest
    # @return [Array<(ProtectionDataResponse, Fixnum, Hash)>]
    # ProtectionDataResponse data, response status code and response headers
    private def delete_unprotect_document_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? DeleteUnprotectDocumentRequest

      @api_client.config.logger.debug 'Calling API: WordsApi.delete_unprotect_document ...' if @api_client.config.debugging
      # verify the required parameter 'name' is set
      raise ArgumentError, 'Missing the required parameter name when calling WordsApi.delete_unprotect_document' if @api_client.config.client_side_validation && request.name.nil?
      # verify the required parameter 'protection_request' is set
      raise ArgumentError, 'Missing the required parameter protection_request when calling WordsApi.delete_unprotect_document' if @api_client.config.client_side_validation && request.protection_request.nil?
      # resource path
      local_var_path = '/words/{name}/protection'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.to_s)

      # query parameters
      query_params = {}
      if local_var_path.include? downcase_first_letter('Folder')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Folder') + '}', request.folder.to_s)
      else
        query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
      end
      if local_var_path.include? downcase_first_letter('Storage')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Storage') + '}', request.storage.to_s)
      else
        query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
      end
      if local_var_path.include? downcase_first_letter('LoadEncoding')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('LoadEncoding') + '}', request.load_encoding.to_s)
      else
        query_params[downcase_first_letter('LoadEncoding')] = request.load_encoding unless request.load_encoding.nil?
      end
      if local_var_path.include? downcase_first_letter('Password')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Password') + '}', request.password.to_s)
      else
        query_params[downcase_first_letter('Password')] = request.password unless request.password.nil?
      end
      if local_var_path.include? downcase_first_letter('DestFileName')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('DestFileName') + '}', request.dest_file_name.to_s)
      else
        query_params[downcase_first_letter('DestFileName')] = request.dest_file_name unless request.dest_file_name.nil?
      end

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/xml', 'application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/xml', 'application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(request.protection_request)
      auth_names = ['oauth']
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names,
                                                        return_type: 'ProtectionDataResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#delete_unprotect_document\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Gets the list of fonts, available for document processing
    # 
    # @param request GetAvailableFontsRequest
    # @return [AvailableFontsResponse]
    def get_available_fonts(request)
      data, _status_code, _headers = get_available_fonts_with_http_info(request)
      data
    end

    # Gets the list of fonts, available for document processing
    # 
    # @param request GetAvailableFontsRequest
    # @return [Array<(AvailableFontsResponse, Fixnum, Hash)>]
    # AvailableFontsResponse data, response status code and response headers
    private def get_available_fonts_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? GetAvailableFontsRequest

      @api_client.config.logger.debug 'Calling API: WordsApi.get_available_fonts ...' if @api_client.config.debugging
      # resource path
      local_var_path = '/words/fonts/available'

      # query parameters
      query_params = {}
      if local_var_path.include? downcase_first_letter('FontsLocation')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('FontsLocation') + '}', request.fonts_location.to_s)
      else
        query_params[downcase_first_letter('FontsLocation')] = request.fonts_location unless request.fonts_location.nil?
      end

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/xml', 'application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/xml', 'application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['oauth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names,
                                                        return_type: 'AvailableFontsResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#get_available_fonts\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Return a border.
    # 'nodePath' should refer to node with cell or row
    # @param request GetBorderRequest
    # @return [BorderResponse]
    def get_border(request)
      data, _status_code, _headers = get_border_with_http_info(request)
      data
    end

    # Return a border.
    # &#39;nodePath&#39; should refer to node with cell or row
    # @param request GetBorderRequest
    # @return [Array<(BorderResponse, Fixnum, Hash)>]
    # BorderResponse data, response status code and response headers
    private def get_border_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? GetBorderRequest

      @api_client.config.logger.debug 'Calling API: WordsApi.get_border ...' if @api_client.config.debugging
      # verify the required parameter 'name' is set
      raise ArgumentError, 'Missing the required parameter name when calling WordsApi.get_border' if @api_client.config.client_side_validation && request.name.nil?
      # verify the required parameter 'node_path' is set
      raise ArgumentError, 'Missing the required parameter node_path when calling WordsApi.get_border' if @api_client.config.client_side_validation && request.node_path.nil?
      # verify the required parameter 'index' is set
      raise ArgumentError, 'Missing the required parameter index when calling WordsApi.get_border' if @api_client.config.client_side_validation && request.index.nil?
      # resource path
      local_var_path = '/words/{name}/{nodePath}/borders/{index}'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.to_s)
      local_var_path = local_var_path.sub('{' + downcase_first_letter('NodePath') + '}', request.node_path.to_s)
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Index') + '}', request.index.to_s)

      # query parameters
      query_params = {}
      if local_var_path.include? downcase_first_letter('Folder')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Folder') + '}', request.folder.to_s)
      else
        query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
      end
      if local_var_path.include? downcase_first_letter('Storage')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Storage') + '}', request.storage.to_s)
      else
        query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
      end
      if local_var_path.include? downcase_first_letter('LoadEncoding')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('LoadEncoding') + '}', request.load_encoding.to_s)
      else
        query_params[downcase_first_letter('LoadEncoding')] = request.load_encoding unless request.load_encoding.nil?
      end
      if local_var_path.include? downcase_first_letter('Password')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Password') + '}', request.password.to_s)
      else
        query_params[downcase_first_letter('Password')] = request.password unless request.password.nil?
      end

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/xml', 'application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/xml', 'application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['oauth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names,
                                                        return_type: 'BorderResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#get_border\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Return a collection of borders.
    # 'nodePath' should refer to node with cell or row
    # @param request GetBordersRequest
    # @return [BordersResponse]
    def get_borders(request)
      data, _status_code, _headers = get_borders_with_http_info(request)
      data
    end

    # Return a collection of borders.
    # &#39;nodePath&#39; should refer to node with cell or row
    # @param request GetBordersRequest
    # @return [Array<(BordersResponse, Fixnum, Hash)>]
    # BordersResponse data, response status code and response headers
    private def get_borders_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? GetBordersRequest

      @api_client.config.logger.debug 'Calling API: WordsApi.get_borders ...' if @api_client.config.debugging
      # verify the required parameter 'name' is set
      raise ArgumentError, 'Missing the required parameter name when calling WordsApi.get_borders' if @api_client.config.client_side_validation && request.name.nil?
      # verify the required parameter 'node_path' is set
      raise ArgumentError, 'Missing the required parameter node_path when calling WordsApi.get_borders' if @api_client.config.client_side_validation && request.node_path.nil?
      # resource path
      local_var_path = '/words/{name}/{nodePath}/borders'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.to_s)
      local_var_path = local_var_path.sub('{' + downcase_first_letter('NodePath') + '}', request.node_path.to_s)

      # query parameters
      query_params = {}
      if local_var_path.include? downcase_first_letter('Folder')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Folder') + '}', request.folder.to_s)
      else
        query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
      end
      if local_var_path.include? downcase_first_letter('Storage')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Storage') + '}', request.storage.to_s)
      else
        query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
      end
      if local_var_path.include? downcase_first_letter('LoadEncoding')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('LoadEncoding') + '}', request.load_encoding.to_s)
      else
        query_params[downcase_first_letter('LoadEncoding')] = request.load_encoding unless request.load_encoding.nil?
      end
      if local_var_path.include? downcase_first_letter('Password')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Password') + '}', request.password.to_s)
      else
        query_params[downcase_first_letter('Password')] = request.password unless request.password.nil?
      end

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/xml', 'application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/xml', 'application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['oauth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names,
                                                        return_type: 'BordersResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#get_borders\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Get comment from document.
    # 
    # @param request GetCommentRequest
    # @return [CommentResponse]
    def get_comment(request)
      data, _status_code, _headers = get_comment_with_http_info(request)
      data
    end

    # Get comment from document.
    # 
    # @param request GetCommentRequest
    # @return [Array<(CommentResponse, Fixnum, Hash)>]
    # CommentResponse data, response status code and response headers
    private def get_comment_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? GetCommentRequest

      @api_client.config.logger.debug 'Calling API: WordsApi.get_comment ...' if @api_client.config.debugging
      # verify the required parameter 'name' is set
      raise ArgumentError, 'Missing the required parameter name when calling WordsApi.get_comment' if @api_client.config.client_side_validation && request.name.nil?
      # verify the required parameter 'comment_index' is set
      raise ArgumentError, 'Missing the required parameter comment_index when calling WordsApi.get_comment' if @api_client.config.client_side_validation && request.comment_index.nil?
      # resource path
      local_var_path = '/words/{name}/comments/{commentIndex}'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.to_s)
      local_var_path = local_var_path.sub('{' + downcase_first_letter('CommentIndex') + '}', request.comment_index.to_s)

      # query parameters
      query_params = {}
      if local_var_path.include? downcase_first_letter('Folder')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Folder') + '}', request.folder.to_s)
      else
        query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
      end
      if local_var_path.include? downcase_first_letter('Storage')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Storage') + '}', request.storage.to_s)
      else
        query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
      end
      if local_var_path.include? downcase_first_letter('LoadEncoding')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('LoadEncoding') + '}', request.load_encoding.to_s)
      else
        query_params[downcase_first_letter('LoadEncoding')] = request.load_encoding unless request.load_encoding.nil?
      end
      if local_var_path.include? downcase_first_letter('Password')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Password') + '}', request.password.to_s)
      else
        query_params[downcase_first_letter('Password')] = request.password unless request.password.nil?
      end

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/xml', 'application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/xml', 'application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['oauth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names,
                                                        return_type: 'CommentResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#get_comment\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Get comments from document.
    # 
    # @param request GetCommentsRequest
    # @return [CommentsResponse]
    def get_comments(request)
      data, _status_code, _headers = get_comments_with_http_info(request)
      data
    end

    # Get comments from document.
    # 
    # @param request GetCommentsRequest
    # @return [Array<(CommentsResponse, Fixnum, Hash)>]
    # CommentsResponse data, response status code and response headers
    private def get_comments_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? GetCommentsRequest

      @api_client.config.logger.debug 'Calling API: WordsApi.get_comments ...' if @api_client.config.debugging
      # verify the required parameter 'name' is set
      raise ArgumentError, 'Missing the required parameter name when calling WordsApi.get_comments' if @api_client.config.client_side_validation && request.name.nil?
      # resource path
      local_var_path = '/words/{name}/comments'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.to_s)

      # query parameters
      query_params = {}
      if local_var_path.include? downcase_first_letter('Folder')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Folder') + '}', request.folder.to_s)
      else
        query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
      end
      if local_var_path.include? downcase_first_letter('Storage')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Storage') + '}', request.storage.to_s)
      else
        query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
      end
      if local_var_path.include? downcase_first_letter('LoadEncoding')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('LoadEncoding') + '}', request.load_encoding.to_s)
      else
        query_params[downcase_first_letter('LoadEncoding')] = request.load_encoding unless request.load_encoding.nil?
      end
      if local_var_path.include? downcase_first_letter('Password')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Password') + '}', request.password.to_s)
      else
        query_params[downcase_first_letter('Password')] = request.password unless request.password.nil?
      end

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/xml', 'application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/xml', 'application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['oauth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names,
                                                        return_type: 'CommentsResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#get_comments\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Read document common info.
    # 
    # @param request GetDocumentRequest
    # @return [DocumentResponse]
    def get_document(request)
      data, _status_code, _headers = get_document_with_http_info(request)
      data
    end

    # Read document common info.
    # 
    # @param request GetDocumentRequest
    # @return [Array<(DocumentResponse, Fixnum, Hash)>]
    # DocumentResponse data, response status code and response headers
    private def get_document_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? GetDocumentRequest

      @api_client.config.logger.debug 'Calling API: WordsApi.get_document ...' if @api_client.config.debugging
      # verify the required parameter 'document_name' is set
      raise ArgumentError, 'Missing the required parameter document_name when calling WordsApi.get_document' if @api_client.config.client_side_validation && request.document_name.nil?
      # resource path
      local_var_path = '/words/{documentName}'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('DocumentName') + '}', request.document_name.to_s)

      # query parameters
      query_params = {}
      if local_var_path.include? downcase_first_letter('Folder')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Folder') + '}', request.folder.to_s)
      else
        query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
      end
      if local_var_path.include? downcase_first_letter('Storage')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Storage') + '}', request.storage.to_s)
      else
        query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
      end
      if local_var_path.include? downcase_first_letter('LoadEncoding')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('LoadEncoding') + '}', request.load_encoding.to_s)
      else
        query_params[downcase_first_letter('LoadEncoding')] = request.load_encoding unless request.load_encoding.nil?
      end
      if local_var_path.include? downcase_first_letter('Password')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Password') + '}', request.password.to_s)
      else
        query_params[downcase_first_letter('Password')] = request.password unless request.password.nil?
      end

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/xml', 'application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/xml', 'application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['oauth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names,
                                                        return_type: 'DocumentResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#get_document\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Read document bookmark data by its name.
    # 
    # @param request GetDocumentBookmarkByNameRequest
    # @return [BookmarkResponse]
    def get_document_bookmark_by_name(request)
      data, _status_code, _headers = get_document_bookmark_by_name_with_http_info(request)
      data
    end

    # Read document bookmark data by its name.
    # 
    # @param request GetDocumentBookmarkByNameRequest
    # @return [Array<(BookmarkResponse, Fixnum, Hash)>]
    # BookmarkResponse data, response status code and response headers
    private def get_document_bookmark_by_name_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? GetDocumentBookmarkByNameRequest

      @api_client.config.logger.debug 'Calling API: WordsApi.get_document_bookmark_by_name ...' if @api_client.config.debugging
      # verify the required parameter 'name' is set
      raise ArgumentError, 'Missing the required parameter name when calling WordsApi.get_document_bookmark_by_name' if @api_client.config.client_side_validation && request.name.nil?
      # verify the required parameter 'bookmark_name' is set
      raise ArgumentError, 'Missing the required parameter bookmark_name when calling WordsApi.get_document_bookmark_by_name' if @api_client.config.client_side_validation && request.bookmark_name.nil?
      # resource path
      local_var_path = '/words/{name}/bookmarks/{bookmarkName}'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.to_s)
      local_var_path = local_var_path.sub('{' + downcase_first_letter('BookmarkName') + '}', request.bookmark_name.to_s)

      # query parameters
      query_params = {}
      if local_var_path.include? downcase_first_letter('Folder')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Folder') + '}', request.folder.to_s)
      else
        query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
      end
      if local_var_path.include? downcase_first_letter('Storage')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Storage') + '}', request.storage.to_s)
      else
        query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
      end
      if local_var_path.include? downcase_first_letter('LoadEncoding')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('LoadEncoding') + '}', request.load_encoding.to_s)
      else
        query_params[downcase_first_letter('LoadEncoding')] = request.load_encoding unless request.load_encoding.nil?
      end
      if local_var_path.include? downcase_first_letter('Password')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Password') + '}', request.password.to_s)
      else
        query_params[downcase_first_letter('Password')] = request.password unless request.password.nil?
      end

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/xml', 'application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/xml', 'application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['oauth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names,
                                                        return_type: 'BookmarkResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#get_document_bookmark_by_name\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Read document bookmarks common info.
    # 
    # @param request GetDocumentBookmarksRequest
    # @return [BookmarksResponse]
    def get_document_bookmarks(request)
      data, _status_code, _headers = get_document_bookmarks_with_http_info(request)
      data
    end

    # Read document bookmarks common info.
    # 
    # @param request GetDocumentBookmarksRequest
    # @return [Array<(BookmarksResponse, Fixnum, Hash)>]
    # BookmarksResponse data, response status code and response headers
    private def get_document_bookmarks_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? GetDocumentBookmarksRequest

      @api_client.config.logger.debug 'Calling API: WordsApi.get_document_bookmarks ...' if @api_client.config.debugging
      # verify the required parameter 'name' is set
      raise ArgumentError, 'Missing the required parameter name when calling WordsApi.get_document_bookmarks' if @api_client.config.client_side_validation && request.name.nil?
      # resource path
      local_var_path = '/words/{name}/bookmarks'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.to_s)

      # query parameters
      query_params = {}
      if local_var_path.include? downcase_first_letter('Folder')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Folder') + '}', request.folder.to_s)
      else
        query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
      end
      if local_var_path.include? downcase_first_letter('Storage')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Storage') + '}', request.storage.to_s)
      else
        query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
      end
      if local_var_path.include? downcase_first_letter('LoadEncoding')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('LoadEncoding') + '}', request.load_encoding.to_s)
      else
        query_params[downcase_first_letter('LoadEncoding')] = request.load_encoding unless request.load_encoding.nil?
      end
      if local_var_path.include? downcase_first_letter('Password')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Password') + '}', request.password.to_s)
      else
        query_params[downcase_first_letter('Password')] = request.password unless request.password.nil?
      end

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/xml', 'application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/xml', 'application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['oauth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names,
                                                        return_type: 'BookmarksResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#get_document_bookmarks\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Read document drawing object common info by its index or convert to format specified.
    # 
    # @param request GetDocumentDrawingObjectByIndexRequest
    # @return [DrawingObjectResponse]
    def get_document_drawing_object_by_index(request)
      data, _status_code, _headers = get_document_drawing_object_by_index_with_http_info(request)
      data
    end

    # Read document drawing object common info by its index or convert to format specified.
    # 
    # @param request GetDocumentDrawingObjectByIndexRequest
    # @return [Array<(DrawingObjectResponse, Fixnum, Hash)>]
    # DrawingObjectResponse data, response status code and response headers
    private def get_document_drawing_object_by_index_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? GetDocumentDrawingObjectByIndexRequest

      @api_client.config.logger.debug 'Calling API: WordsApi.get_document_drawing_object_by_index ...' if @api_client.config.debugging
      # verify the required parameter 'name' is set
      raise ArgumentError, 'Missing the required parameter name when calling WordsApi.get_document_drawing_object_by_index' if @api_client.config.client_side_validation && request.name.nil?
      # verify the required parameter 'index' is set
      raise ArgumentError, 'Missing the required parameter index when calling WordsApi.get_document_drawing_object_by_index' if @api_client.config.client_side_validation && request.index.nil?
      # resource path
      local_var_path = '/words/{name}/{nodePath}/drawingObjects/{index}'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.to_s)
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Index') + '}', request.index.to_s)

      # query parameters
      query_params = {}
      if local_var_path.include? downcase_first_letter('Folder')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Folder') + '}', request.folder.to_s)
      else
        query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
      end
      if local_var_path.include? downcase_first_letter('Storage')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Storage') + '}', request.storage.to_s)
      else
        query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
      end
      if local_var_path.include? downcase_first_letter('LoadEncoding')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('LoadEncoding') + '}', request.load_encoding.to_s)
      else
        query_params[downcase_first_letter('LoadEncoding')] = request.load_encoding unless request.load_encoding.nil?
      end
      if local_var_path.include? downcase_first_letter('Password')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Password') + '}', request.password.to_s)
      else
        query_params[downcase_first_letter('Password')] = request.password unless request.password.nil?
      end
      if local_var_path.include? downcase_first_letter('NodePath')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('NodePath') + '}', request.node_path.to_s)
      else
        query_params[downcase_first_letter('NodePath')] = request.node_path unless request.node_path.nil?
      end

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/xml', 'application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/xml', 'application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['oauth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names,
                                                        return_type: 'DrawingObjectResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#get_document_drawing_object_by_index\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Read drawing object image data.
    # 
    # @param request GetDocumentDrawingObjectImageDataRequest
    # @return [File]
    def get_document_drawing_object_image_data(request)
      data, _status_code, _headers = get_document_drawing_object_image_data_with_http_info(request)
      data
    end

    # Read drawing object image data.
    # 
    # @param request GetDocumentDrawingObjectImageDataRequest
    # @return [Array<(File, Fixnum, Hash)>]
    # File data, response status code and response headers
    private def get_document_drawing_object_image_data_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? GetDocumentDrawingObjectImageDataRequest

      @api_client.config.logger.debug 'Calling API: WordsApi.get_document_drawing_object_image_data ...' if @api_client.config.debugging
      # verify the required parameter 'name' is set
      raise ArgumentError, 'Missing the required parameter name when calling WordsApi.get_document_drawing_object_image_data' if @api_client.config.client_side_validation && request.name.nil?
      # verify the required parameter 'index' is set
      raise ArgumentError, 'Missing the required parameter index when calling WordsApi.get_document_drawing_object_image_data' if @api_client.config.client_side_validation && request.index.nil?
      # resource path
      local_var_path = '/words/{name}/{nodePath}/drawingObjects/{index}/imageData'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.to_s)
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Index') + '}', request.index.to_s)

      # query parameters
      query_params = {}
      if local_var_path.include? downcase_first_letter('Folder')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Folder') + '}', request.folder.to_s)
      else
        query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
      end
      if local_var_path.include? downcase_first_letter('Storage')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Storage') + '}', request.storage.to_s)
      else
        query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
      end
      if local_var_path.include? downcase_first_letter('LoadEncoding')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('LoadEncoding') + '}', request.load_encoding.to_s)
      else
        query_params[downcase_first_letter('LoadEncoding')] = request.load_encoding unless request.load_encoding.nil?
      end
      if local_var_path.include? downcase_first_letter('Password')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Password') + '}', request.password.to_s)
      else
        query_params[downcase_first_letter('Password')] = request.password unless request.password.nil?
      end
      if local_var_path.include? downcase_first_letter('NodePath')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('NodePath') + '}', request.node_path.to_s)
      else
        query_params[downcase_first_letter('NodePath')] = request.node_path unless request.node_path.nil?
      end

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/xml', 'application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/xml', 'application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['oauth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names,
                                                        return_type: 'File')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#get_document_drawing_object_image_data\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Get drawing object OLE data.
    # 
    # @param request GetDocumentDrawingObjectOleDataRequest
    # @return [File]
    def get_document_drawing_object_ole_data(request)
      data, _status_code, _headers = get_document_drawing_object_ole_data_with_http_info(request)
      data
    end

    # Get drawing object OLE data.
    # 
    # @param request GetDocumentDrawingObjectOleDataRequest
    # @return [Array<(File, Fixnum, Hash)>]
    # File data, response status code and response headers
    private def get_document_drawing_object_ole_data_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? GetDocumentDrawingObjectOleDataRequest

      @api_client.config.logger.debug 'Calling API: WordsApi.get_document_drawing_object_ole_data ...' if @api_client.config.debugging
      # verify the required parameter 'name' is set
      raise ArgumentError, 'Missing the required parameter name when calling WordsApi.get_document_drawing_object_ole_data' if @api_client.config.client_side_validation && request.name.nil?
      # verify the required parameter 'index' is set
      raise ArgumentError, 'Missing the required parameter index when calling WordsApi.get_document_drawing_object_ole_data' if @api_client.config.client_side_validation && request.index.nil?
      # resource path
      local_var_path = '/words/{name}/{nodePath}/drawingObjects/{index}/oleData'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.to_s)
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Index') + '}', request.index.to_s)

      # query parameters
      query_params = {}
      if local_var_path.include? downcase_first_letter('Folder')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Folder') + '}', request.folder.to_s)
      else
        query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
      end
      if local_var_path.include? downcase_first_letter('Storage')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Storage') + '}', request.storage.to_s)
      else
        query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
      end
      if local_var_path.include? downcase_first_letter('LoadEncoding')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('LoadEncoding') + '}', request.load_encoding.to_s)
      else
        query_params[downcase_first_letter('LoadEncoding')] = request.load_encoding unless request.load_encoding.nil?
      end
      if local_var_path.include? downcase_first_letter('Password')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Password') + '}', request.password.to_s)
      else
        query_params[downcase_first_letter('Password')] = request.password unless request.password.nil?
      end
      if local_var_path.include? downcase_first_letter('NodePath')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('NodePath') + '}', request.node_path.to_s)
      else
        query_params[downcase_first_letter('NodePath')] = request.node_path unless request.node_path.nil?
      end

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/xml', 'application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/xml', 'application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['oauth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names,
                                                        return_type: 'File')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#get_document_drawing_object_ole_data\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Read document drawing objects common info.
    # 
    # @param request GetDocumentDrawingObjectsRequest
    # @return [DrawingObjectsResponse]
    def get_document_drawing_objects(request)
      data, _status_code, _headers = get_document_drawing_objects_with_http_info(request)
      data
    end

    # Read document drawing objects common info.
    # 
    # @param request GetDocumentDrawingObjectsRequest
    # @return [Array<(DrawingObjectsResponse, Fixnum, Hash)>]
    # DrawingObjectsResponse data, response status code and response headers
    private def get_document_drawing_objects_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? GetDocumentDrawingObjectsRequest

      @api_client.config.logger.debug 'Calling API: WordsApi.get_document_drawing_objects ...' if @api_client.config.debugging
      # verify the required parameter 'name' is set
      raise ArgumentError, 'Missing the required parameter name when calling WordsApi.get_document_drawing_objects' if @api_client.config.client_side_validation && request.name.nil?
      # resource path
      local_var_path = '/words/{name}/{nodePath}/drawingObjects'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.to_s)

      # query parameters
      query_params = {}
      if local_var_path.include? downcase_first_letter('Folder')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Folder') + '}', request.folder.to_s)
      else
        query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
      end
      if local_var_path.include? downcase_first_letter('Storage')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Storage') + '}', request.storage.to_s)
      else
        query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
      end
      if local_var_path.include? downcase_first_letter('LoadEncoding')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('LoadEncoding') + '}', request.load_encoding.to_s)
      else
        query_params[downcase_first_letter('LoadEncoding')] = request.load_encoding unless request.load_encoding.nil?
      end
      if local_var_path.include? downcase_first_letter('Password')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Password') + '}', request.password.to_s)
      else
        query_params[downcase_first_letter('Password')] = request.password unless request.password.nil?
      end
      if local_var_path.include? downcase_first_letter('NodePath')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('NodePath') + '}', request.node_path.to_s)
      else
        query_params[downcase_first_letter('NodePath')] = request.node_path unless request.node_path.nil?
      end

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/xml', 'application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/xml', 'application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['oauth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names,
                                                        return_type: 'DrawingObjectsResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#get_document_drawing_objects\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Read document field names.
    # 
    # @param request GetDocumentFieldNamesRequest
    # @return [FieldNamesResponse]
    def get_document_field_names(request)
      data, _status_code, _headers = get_document_field_names_with_http_info(request)
      data
    end

    # Read document field names.
    # 
    # @param request GetDocumentFieldNamesRequest
    # @return [Array<(FieldNamesResponse, Fixnum, Hash)>]
    # FieldNamesResponse data, response status code and response headers
    private def get_document_field_names_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? GetDocumentFieldNamesRequest

      @api_client.config.logger.debug 'Calling API: WordsApi.get_document_field_names ...' if @api_client.config.debugging
      # verify the required parameter 'name' is set
      raise ArgumentError, 'Missing the required parameter name when calling WordsApi.get_document_field_names' if @api_client.config.client_side_validation && request.name.nil?
      # resource path
      local_var_path = '/words/{name}/mailMergeFieldNames'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.to_s)

      # query parameters
      query_params = {}
      if local_var_path.include? downcase_first_letter('Folder')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Folder') + '}', request.folder.to_s)
      else
        query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
      end
      if local_var_path.include? downcase_first_letter('Storage')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Storage') + '}', request.storage.to_s)
      else
        query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
      end
      if local_var_path.include? downcase_first_letter('LoadEncoding')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('LoadEncoding') + '}', request.load_encoding.to_s)
      else
        query_params[downcase_first_letter('LoadEncoding')] = request.load_encoding unless request.load_encoding.nil?
      end
      if local_var_path.include? downcase_first_letter('Password')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Password') + '}', request.password.to_s)
      else
        query_params[downcase_first_letter('Password')] = request.password unless request.password.nil?
      end
      if local_var_path.include? downcase_first_letter('UseNonMergeFields')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('UseNonMergeFields') + '}', request.use_non_merge_fields.to_s)
      else
        query_params[downcase_first_letter('UseNonMergeFields')] = request.use_non_merge_fields unless request.use_non_merge_fields.nil?
      end

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/xml', 'application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/xml', 'application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['oauth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names,
                                                        return_type: 'FieldNamesResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#get_document_field_names\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Read document hyperlink by its index.
    # 
    # @param request GetDocumentHyperlinkByIndexRequest
    # @return [HyperlinkResponse]
    def get_document_hyperlink_by_index(request)
      data, _status_code, _headers = get_document_hyperlink_by_index_with_http_info(request)
      data
    end

    # Read document hyperlink by its index.
    # 
    # @param request GetDocumentHyperlinkByIndexRequest
    # @return [Array<(HyperlinkResponse, Fixnum, Hash)>]
    # HyperlinkResponse data, response status code and response headers
    private def get_document_hyperlink_by_index_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? GetDocumentHyperlinkByIndexRequest

      @api_client.config.logger.debug 'Calling API: WordsApi.get_document_hyperlink_by_index ...' if @api_client.config.debugging
      # verify the required parameter 'name' is set
      raise ArgumentError, 'Missing the required parameter name when calling WordsApi.get_document_hyperlink_by_index' if @api_client.config.client_side_validation && request.name.nil?
      # verify the required parameter 'hyperlink_index' is set
      raise ArgumentError, 'Missing the required parameter hyperlink_index when calling WordsApi.get_document_hyperlink_by_index' if @api_client.config.client_side_validation && request.hyperlink_index.nil?
      # resource path
      local_var_path = '/words/{name}/hyperlinks/{hyperlinkIndex}'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.to_s)
      local_var_path = local_var_path.sub('{' + downcase_first_letter('HyperlinkIndex') + '}', request.hyperlink_index.to_s)

      # query parameters
      query_params = {}
      if local_var_path.include? downcase_first_letter('Folder')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Folder') + '}', request.folder.to_s)
      else
        query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
      end
      if local_var_path.include? downcase_first_letter('Storage')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Storage') + '}', request.storage.to_s)
      else
        query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
      end
      if local_var_path.include? downcase_first_letter('LoadEncoding')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('LoadEncoding') + '}', request.load_encoding.to_s)
      else
        query_params[downcase_first_letter('LoadEncoding')] = request.load_encoding unless request.load_encoding.nil?
      end
      if local_var_path.include? downcase_first_letter('Password')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Password') + '}', request.password.to_s)
      else
        query_params[downcase_first_letter('Password')] = request.password unless request.password.nil?
      end

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/xml', 'application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/xml', 'application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['oauth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names,
                                                        return_type: 'HyperlinkResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#get_document_hyperlink_by_index\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Read document hyperlinks common info.
    # 
    # @param request GetDocumentHyperlinksRequest
    # @return [HyperlinksResponse]
    def get_document_hyperlinks(request)
      data, _status_code, _headers = get_document_hyperlinks_with_http_info(request)
      data
    end

    # Read document hyperlinks common info.
    # 
    # @param request GetDocumentHyperlinksRequest
    # @return [Array<(HyperlinksResponse, Fixnum, Hash)>]
    # HyperlinksResponse data, response status code and response headers
    private def get_document_hyperlinks_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? GetDocumentHyperlinksRequest

      @api_client.config.logger.debug 'Calling API: WordsApi.get_document_hyperlinks ...' if @api_client.config.debugging
      # verify the required parameter 'name' is set
      raise ArgumentError, 'Missing the required parameter name when calling WordsApi.get_document_hyperlinks' if @api_client.config.client_side_validation && request.name.nil?
      # resource path
      local_var_path = '/words/{name}/hyperlinks'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.to_s)

      # query parameters
      query_params = {}
      if local_var_path.include? downcase_first_letter('Folder')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Folder') + '}', request.folder.to_s)
      else
        query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
      end
      if local_var_path.include? downcase_first_letter('Storage')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Storage') + '}', request.storage.to_s)
      else
        query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
      end
      if local_var_path.include? downcase_first_letter('LoadEncoding')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('LoadEncoding') + '}', request.load_encoding.to_s)
      else
        query_params[downcase_first_letter('LoadEncoding')] = request.load_encoding unless request.load_encoding.nil?
      end
      if local_var_path.include? downcase_first_letter('Password')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Password') + '}', request.password.to_s)
      else
        query_params[downcase_first_letter('Password')] = request.password unless request.password.nil?
      end

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/xml', 'application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/xml', 'application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['oauth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names,
                                                        return_type: 'HyperlinksResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#get_document_hyperlinks\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # This resource represents one of the paragraphs contained in the document.
    # 
    # @param request GetDocumentParagraphRequest
    # @return [ParagraphResponse]
    def get_document_paragraph(request)
      data, _status_code, _headers = get_document_paragraph_with_http_info(request)
      data
    end

    # This resource represents one of the paragraphs contained in the document.
    # 
    # @param request GetDocumentParagraphRequest
    # @return [Array<(ParagraphResponse, Fixnum, Hash)>]
    # ParagraphResponse data, response status code and response headers
    private def get_document_paragraph_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? GetDocumentParagraphRequest

      @api_client.config.logger.debug 'Calling API: WordsApi.get_document_paragraph ...' if @api_client.config.debugging
      # verify the required parameter 'name' is set
      raise ArgumentError, 'Missing the required parameter name when calling WordsApi.get_document_paragraph' if @api_client.config.client_side_validation && request.name.nil?
      # verify the required parameter 'index' is set
      raise ArgumentError, 'Missing the required parameter index when calling WordsApi.get_document_paragraph' if @api_client.config.client_side_validation && request.index.nil?
      # resource path
      local_var_path = '/words/{name}/{nodePath}/paragraphs/{index}'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.to_s)
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Index') + '}', request.index.to_s)

      # query parameters
      query_params = {}
      if local_var_path.include? downcase_first_letter('Folder')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Folder') + '}', request.folder.to_s)
      else
        query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
      end
      if local_var_path.include? downcase_first_letter('Storage')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Storage') + '}', request.storage.to_s)
      else
        query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
      end
      if local_var_path.include? downcase_first_letter('LoadEncoding')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('LoadEncoding') + '}', request.load_encoding.to_s)
      else
        query_params[downcase_first_letter('LoadEncoding')] = request.load_encoding unless request.load_encoding.nil?
      end
      if local_var_path.include? downcase_first_letter('Password')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Password') + '}', request.password.to_s)
      else
        query_params[downcase_first_letter('Password')] = request.password unless request.password.nil?
      end
      if local_var_path.include? downcase_first_letter('NodePath')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('NodePath') + '}', request.node_path.to_s)
      else
        query_params[downcase_first_letter('NodePath')] = request.node_path unless request.node_path.nil?
      end

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/xml', 'application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/xml', 'application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['oauth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names,
                                                        return_type: 'ParagraphResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#get_document_paragraph\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # This resource represents run of text contained in the document.
    # 
    # @param request GetDocumentParagraphRunRequest
    # @return [RunResponse]
    def get_document_paragraph_run(request)
      data, _status_code, _headers = get_document_paragraph_run_with_http_info(request)
      data
    end

    # This resource represents run of text contained in the document.
    # 
    # @param request GetDocumentParagraphRunRequest
    # @return [Array<(RunResponse, Fixnum, Hash)>]
    # RunResponse data, response status code and response headers
    private def get_document_paragraph_run_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? GetDocumentParagraphRunRequest

      @api_client.config.logger.debug 'Calling API: WordsApi.get_document_paragraph_run ...' if @api_client.config.debugging
      # verify the required parameter 'name' is set
      raise ArgumentError, 'Missing the required parameter name when calling WordsApi.get_document_paragraph_run' if @api_client.config.client_side_validation && request.name.nil?
      # verify the required parameter 'paragraph_path' is set
      raise ArgumentError, 'Missing the required parameter paragraph_path when calling WordsApi.get_document_paragraph_run' if @api_client.config.client_side_validation && request.paragraph_path.nil?
      # verify the required parameter 'index' is set
      raise ArgumentError, 'Missing the required parameter index when calling WordsApi.get_document_paragraph_run' if @api_client.config.client_side_validation && request.index.nil?
      # resource path
      local_var_path = '/words/{name}/{paragraphPath}/runs/{index}'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.to_s)
      local_var_path = local_var_path.sub('{' + downcase_first_letter('ParagraphPath') + '}', request.paragraph_path.to_s)
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Index') + '}', request.index.to_s)

      # query parameters
      query_params = {}
      if local_var_path.include? downcase_first_letter('Folder')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Folder') + '}', request.folder.to_s)
      else
        query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
      end
      if local_var_path.include? downcase_first_letter('Storage')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Storage') + '}', request.storage.to_s)
      else
        query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
      end
      if local_var_path.include? downcase_first_letter('LoadEncoding')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('LoadEncoding') + '}', request.load_encoding.to_s)
      else
        query_params[downcase_first_letter('LoadEncoding')] = request.load_encoding unless request.load_encoding.nil?
      end
      if local_var_path.include? downcase_first_letter('Password')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Password') + '}', request.password.to_s)
      else
        query_params[downcase_first_letter('Password')] = request.password unless request.password.nil?
      end

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/xml', 'application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/xml', 'application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['oauth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names,
                                                        return_type: 'RunResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#get_document_paragraph_run\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # This resource represents font of run.
    # 
    # @param request GetDocumentParagraphRunFontRequest
    # @return [FontResponse]
    def get_document_paragraph_run_font(request)
      data, _status_code, _headers = get_document_paragraph_run_font_with_http_info(request)
      data
    end

    # This resource represents font of run.
    # 
    # @param request GetDocumentParagraphRunFontRequest
    # @return [Array<(FontResponse, Fixnum, Hash)>]
    # FontResponse data, response status code and response headers
    private def get_document_paragraph_run_font_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? GetDocumentParagraphRunFontRequest

      @api_client.config.logger.debug 'Calling API: WordsApi.get_document_paragraph_run_font ...' if @api_client.config.debugging
      # verify the required parameter 'name' is set
      raise ArgumentError, 'Missing the required parameter name when calling WordsApi.get_document_paragraph_run_font' if @api_client.config.client_side_validation && request.name.nil?
      # verify the required parameter 'paragraph_path' is set
      raise ArgumentError, 'Missing the required parameter paragraph_path when calling WordsApi.get_document_paragraph_run_font' if @api_client.config.client_side_validation && request.paragraph_path.nil?
      # verify the required parameter 'index' is set
      raise ArgumentError, 'Missing the required parameter index when calling WordsApi.get_document_paragraph_run_font' if @api_client.config.client_side_validation && request.index.nil?
      # resource path
      local_var_path = '/words/{name}/{paragraphPath}/runs/{index}/font'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.to_s)
      local_var_path = local_var_path.sub('{' + downcase_first_letter('ParagraphPath') + '}', request.paragraph_path.to_s)
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Index') + '}', request.index.to_s)

      # query parameters
      query_params = {}
      if local_var_path.include? downcase_first_letter('Folder')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Folder') + '}', request.folder.to_s)
      else
        query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
      end
      if local_var_path.include? downcase_first_letter('Storage')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Storage') + '}', request.storage.to_s)
      else
        query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
      end
      if local_var_path.include? downcase_first_letter('LoadEncoding')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('LoadEncoding') + '}', request.load_encoding.to_s)
      else
        query_params[downcase_first_letter('LoadEncoding')] = request.load_encoding unless request.load_encoding.nil?
      end
      if local_var_path.include? downcase_first_letter('Password')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Password') + '}', request.password.to_s)
      else
        query_params[downcase_first_letter('Password')] = request.password unless request.password.nil?
      end

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/xml', 'application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/xml', 'application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['oauth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names,
                                                        return_type: 'FontResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#get_document_paragraph_run_font\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # This resource represents collection of runs in the paragraph.
    # 
    # @param request GetDocumentParagraphRunsRequest
    # @return [RunsResponse]
    def get_document_paragraph_runs(request)
      data, _status_code, _headers = get_document_paragraph_runs_with_http_info(request)
      data
    end

    # This resource represents collection of runs in the paragraph.
    # 
    # @param request GetDocumentParagraphRunsRequest
    # @return [Array<(RunsResponse, Fixnum, Hash)>]
    # RunsResponse data, response status code and response headers
    private def get_document_paragraph_runs_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? GetDocumentParagraphRunsRequest

      @api_client.config.logger.debug 'Calling API: WordsApi.get_document_paragraph_runs ...' if @api_client.config.debugging
      # verify the required parameter 'name' is set
      raise ArgumentError, 'Missing the required parameter name when calling WordsApi.get_document_paragraph_runs' if @api_client.config.client_side_validation && request.name.nil?
      # verify the required parameter 'paragraph_path' is set
      raise ArgumentError, 'Missing the required parameter paragraph_path when calling WordsApi.get_document_paragraph_runs' if @api_client.config.client_side_validation && request.paragraph_path.nil?
      # resource path
      local_var_path = '/words/{name}/{paragraphPath}/runs'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.to_s)
      local_var_path = local_var_path.sub('{' + downcase_first_letter('ParagraphPath') + '}', request.paragraph_path.to_s)

      # query parameters
      query_params = {}
      if local_var_path.include? downcase_first_letter('Folder')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Folder') + '}', request.folder.to_s)
      else
        query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
      end
      if local_var_path.include? downcase_first_letter('Storage')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Storage') + '}', request.storage.to_s)
      else
        query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
      end
      if local_var_path.include? downcase_first_letter('LoadEncoding')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('LoadEncoding') + '}', request.load_encoding.to_s)
      else
        query_params[downcase_first_letter('LoadEncoding')] = request.load_encoding unless request.load_encoding.nil?
      end
      if local_var_path.include? downcase_first_letter('Password')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Password') + '}', request.password.to_s)
      else
        query_params[downcase_first_letter('Password')] = request.password unless request.password.nil?
      end

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/xml', 'application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/xml', 'application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['oauth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names,
                                                        return_type: 'RunsResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#get_document_paragraph_runs\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Return a list of paragraphs that are contained in the document.
    # 
    # @param request GetDocumentParagraphsRequest
    # @return [ParagraphLinkCollectionResponse]
    def get_document_paragraphs(request)
      data, _status_code, _headers = get_document_paragraphs_with_http_info(request)
      data
    end

    # Return a list of paragraphs that are contained in the document.
    # 
    # @param request GetDocumentParagraphsRequest
    # @return [Array<(ParagraphLinkCollectionResponse, Fixnum, Hash)>]
    # ParagraphLinkCollectionResponse data, response status code and response headers
    private def get_document_paragraphs_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? GetDocumentParagraphsRequest

      @api_client.config.logger.debug 'Calling API: WordsApi.get_document_paragraphs ...' if @api_client.config.debugging
      # verify the required parameter 'name' is set
      raise ArgumentError, 'Missing the required parameter name when calling WordsApi.get_document_paragraphs' if @api_client.config.client_side_validation && request.name.nil?
      # resource path
      local_var_path = '/words/{name}/{nodePath}/paragraphs'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.to_s)

      # query parameters
      query_params = {}
      if local_var_path.include? downcase_first_letter('Folder')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Folder') + '}', request.folder.to_s)
      else
        query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
      end
      if local_var_path.include? downcase_first_letter('Storage')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Storage') + '}', request.storage.to_s)
      else
        query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
      end
      if local_var_path.include? downcase_first_letter('LoadEncoding')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('LoadEncoding') + '}', request.load_encoding.to_s)
      else
        query_params[downcase_first_letter('LoadEncoding')] = request.load_encoding unless request.load_encoding.nil?
      end
      if local_var_path.include? downcase_first_letter('Password')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Password') + '}', request.password.to_s)
      else
        query_params[downcase_first_letter('Password')] = request.password unless request.password.nil?
      end
      if local_var_path.include? downcase_first_letter('NodePath')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('NodePath') + '}', request.node_path.to_s)
      else
        query_params[downcase_first_letter('NodePath')] = request.node_path unless request.node_path.nil?
      end

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/xml', 'application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/xml', 'application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['oauth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names,
                                                        return_type: 'ParagraphLinkCollectionResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#get_document_paragraphs\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Read document properties info.
    # 
    # @param request GetDocumentPropertiesRequest
    # @return [DocumentPropertiesResponse]
    def get_document_properties(request)
      data, _status_code, _headers = get_document_properties_with_http_info(request)
      data
    end

    # Read document properties info.
    # 
    # @param request GetDocumentPropertiesRequest
    # @return [Array<(DocumentPropertiesResponse, Fixnum, Hash)>]
    # DocumentPropertiesResponse data, response status code and response headers
    private def get_document_properties_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? GetDocumentPropertiesRequest

      @api_client.config.logger.debug 'Calling API: WordsApi.get_document_properties ...' if @api_client.config.debugging
      # verify the required parameter 'name' is set
      raise ArgumentError, 'Missing the required parameter name when calling WordsApi.get_document_properties' if @api_client.config.client_side_validation && request.name.nil?
      # resource path
      local_var_path = '/words/{name}/documentProperties'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.to_s)

      # query parameters
      query_params = {}
      if local_var_path.include? downcase_first_letter('Folder')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Folder') + '}', request.folder.to_s)
      else
        query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
      end
      if local_var_path.include? downcase_first_letter('Storage')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Storage') + '}', request.storage.to_s)
      else
        query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
      end
      if local_var_path.include? downcase_first_letter('LoadEncoding')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('LoadEncoding') + '}', request.load_encoding.to_s)
      else
        query_params[downcase_first_letter('LoadEncoding')] = request.load_encoding unless request.load_encoding.nil?
      end
      if local_var_path.include? downcase_first_letter('Password')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Password') + '}', request.password.to_s)
      else
        query_params[downcase_first_letter('Password')] = request.password unless request.password.nil?
      end

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/xml', 'application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/xml', 'application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['oauth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names,
                                                        return_type: 'DocumentPropertiesResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#get_document_properties\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Read document property info by the property name.
    # 
    # @param request GetDocumentPropertyRequest
    # @return [DocumentPropertyResponse]
    def get_document_property(request)
      data, _status_code, _headers = get_document_property_with_http_info(request)
      data
    end

    # Read document property info by the property name.
    # 
    # @param request GetDocumentPropertyRequest
    # @return [Array<(DocumentPropertyResponse, Fixnum, Hash)>]
    # DocumentPropertyResponse data, response status code and response headers
    private def get_document_property_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? GetDocumentPropertyRequest

      @api_client.config.logger.debug 'Calling API: WordsApi.get_document_property ...' if @api_client.config.debugging
      # verify the required parameter 'name' is set
      raise ArgumentError, 'Missing the required parameter name when calling WordsApi.get_document_property' if @api_client.config.client_side_validation && request.name.nil?
      # verify the required parameter 'property_name' is set
      raise ArgumentError, 'Missing the required parameter property_name when calling WordsApi.get_document_property' if @api_client.config.client_side_validation && request.property_name.nil?
      # resource path
      local_var_path = '/words/{name}/documentProperties/{propertyName}'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.to_s)
      local_var_path = local_var_path.sub('{' + downcase_first_letter('PropertyName') + '}', request.property_name.to_s)

      # query parameters
      query_params = {}
      if local_var_path.include? downcase_first_letter('Folder')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Folder') + '}', request.folder.to_s)
      else
        query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
      end
      if local_var_path.include? downcase_first_letter('Storage')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Storage') + '}', request.storage.to_s)
      else
        query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
      end
      if local_var_path.include? downcase_first_letter('LoadEncoding')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('LoadEncoding') + '}', request.load_encoding.to_s)
      else
        query_params[downcase_first_letter('LoadEncoding')] = request.load_encoding unless request.load_encoding.nil?
      end
      if local_var_path.include? downcase_first_letter('Password')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Password') + '}', request.password.to_s)
      else
        query_params[downcase_first_letter('Password')] = request.password unless request.password.nil?
      end

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/xml', 'application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/xml', 'application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['oauth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names,
                                                        return_type: 'DocumentPropertyResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#get_document_property\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Read document protection common info.
    # 
    # @param request GetDocumentProtectionRequest
    # @return [ProtectionDataResponse]
    def get_document_protection(request)
      data, _status_code, _headers = get_document_protection_with_http_info(request)
      data
    end

    # Read document protection common info.
    # 
    # @param request GetDocumentProtectionRequest
    # @return [Array<(ProtectionDataResponse, Fixnum, Hash)>]
    # ProtectionDataResponse data, response status code and response headers
    private def get_document_protection_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? GetDocumentProtectionRequest

      @api_client.config.logger.debug 'Calling API: WordsApi.get_document_protection ...' if @api_client.config.debugging
      # verify the required parameter 'name' is set
      raise ArgumentError, 'Missing the required parameter name when calling WordsApi.get_document_protection' if @api_client.config.client_side_validation && request.name.nil?
      # resource path
      local_var_path = '/words/{name}/protection'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.to_s)

      # query parameters
      query_params = {}
      if local_var_path.include? downcase_first_letter('Folder')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Folder') + '}', request.folder.to_s)
      else
        query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
      end
      if local_var_path.include? downcase_first_letter('Storage')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Storage') + '}', request.storage.to_s)
      else
        query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
      end
      if local_var_path.include? downcase_first_letter('LoadEncoding')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('LoadEncoding') + '}', request.load_encoding.to_s)
      else
        query_params[downcase_first_letter('LoadEncoding')] = request.load_encoding unless request.load_encoding.nil?
      end
      if local_var_path.include? downcase_first_letter('Password')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Password') + '}', request.password.to_s)
      else
        query_params[downcase_first_letter('Password')] = request.password unless request.password.nil?
      end

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/xml', 'application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/xml', 'application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['oauth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names,
                                                        return_type: 'ProtectionDataResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#get_document_protection\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Read document statistics.
    # 
    # @param request GetDocumentStatisticsRequest
    # @return [StatDataResponse]
    def get_document_statistics(request)
      data, _status_code, _headers = get_document_statistics_with_http_info(request)
      data
    end

    # Read document statistics.
    # 
    # @param request GetDocumentStatisticsRequest
    # @return [Array<(StatDataResponse, Fixnum, Hash)>]
    # StatDataResponse data, response status code and response headers
    private def get_document_statistics_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? GetDocumentStatisticsRequest

      @api_client.config.logger.debug 'Calling API: WordsApi.get_document_statistics ...' if @api_client.config.debugging
      # verify the required parameter 'name' is set
      raise ArgumentError, 'Missing the required parameter name when calling WordsApi.get_document_statistics' if @api_client.config.client_side_validation && request.name.nil?
      # resource path
      local_var_path = '/words/{name}/statistics'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.to_s)

      # query parameters
      query_params = {}
      if local_var_path.include? downcase_first_letter('Folder')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Folder') + '}', request.folder.to_s)
      else
        query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
      end
      if local_var_path.include? downcase_first_letter('Storage')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Storage') + '}', request.storage.to_s)
      else
        query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
      end
      if local_var_path.include? downcase_first_letter('LoadEncoding')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('LoadEncoding') + '}', request.load_encoding.to_s)
      else
        query_params[downcase_first_letter('LoadEncoding')] = request.load_encoding unless request.load_encoding.nil?
      end
      if local_var_path.include? downcase_first_letter('Password')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Password') + '}', request.password.to_s)
      else
        query_params[downcase_first_letter('Password')] = request.password unless request.password.nil?
      end
      if local_var_path.include? downcase_first_letter('IncludeComments')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('IncludeComments') + '}', request.include_comments.to_s)
      else
        query_params[downcase_first_letter('IncludeComments')] = request.include_comments unless request.include_comments.nil?
      end
      if local_var_path.include? downcase_first_letter('IncludeFootnotes')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('IncludeFootnotes') + '}', request.include_footnotes.to_s)
      else
        query_params[downcase_first_letter('IncludeFootnotes')] = request.include_footnotes unless request.include_footnotes.nil?
      end
      if local_var_path.include? downcase_first_letter('IncludeTextInShapes')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('IncludeTextInShapes') + '}', request.include_text_in_shapes.to_s)
      else
        query_params[downcase_first_letter('IncludeTextInShapes')] = request.include_text_in_shapes unless request.include_text_in_shapes.nil?
      end

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/xml', 'application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/xml', 'application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['oauth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names,
                                                        return_type: 'StatDataResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#get_document_statistics\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Read document text items.
    # 
    # @param request GetDocumentTextItemsRequest
    # @return [TextItemsResponse]
    def get_document_text_items(request)
      data, _status_code, _headers = get_document_text_items_with_http_info(request)
      data
    end

    # Read document text items.
    # 
    # @param request GetDocumentTextItemsRequest
    # @return [Array<(TextItemsResponse, Fixnum, Hash)>]
    # TextItemsResponse data, response status code and response headers
    private def get_document_text_items_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? GetDocumentTextItemsRequest

      @api_client.config.logger.debug 'Calling API: WordsApi.get_document_text_items ...' if @api_client.config.debugging
      # verify the required parameter 'name' is set
      raise ArgumentError, 'Missing the required parameter name when calling WordsApi.get_document_text_items' if @api_client.config.client_side_validation && request.name.nil?
      # resource path
      local_var_path = '/words/{name}/textItems'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.to_s)

      # query parameters
      query_params = {}
      if local_var_path.include? downcase_first_letter('Folder')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Folder') + '}', request.folder.to_s)
      else
        query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
      end
      if local_var_path.include? downcase_first_letter('Storage')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Storage') + '}', request.storage.to_s)
      else
        query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
      end
      if local_var_path.include? downcase_first_letter('LoadEncoding')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('LoadEncoding') + '}', request.load_encoding.to_s)
      else
        query_params[downcase_first_letter('LoadEncoding')] = request.load_encoding unless request.load_encoding.nil?
      end
      if local_var_path.include? downcase_first_letter('Password')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Password') + '}', request.password.to_s)
      else
        query_params[downcase_first_letter('Password')] = request.password unless request.password.nil?
      end

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/xml', 'application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/xml', 'application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['oauth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names,
                                                        return_type: 'TextItemsResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#get_document_text_items\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Export the document into the specified format.
    # 
    # @param request GetDocumentWithFormatRequest
    # @return [File]
    def get_document_with_format(request)
      data, _status_code, _headers = get_document_with_format_with_http_info(request)
      data
    end

    # Export the document into the specified format.
    # 
    # @param request GetDocumentWithFormatRequest
    # @return [Array<(File, Fixnum, Hash)>]
    # File data, response status code and response headers
    private def get_document_with_format_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? GetDocumentWithFormatRequest

      @api_client.config.logger.debug 'Calling API: WordsApi.get_document_with_format ...' if @api_client.config.debugging
      # verify the required parameter 'name' is set
      raise ArgumentError, 'Missing the required parameter name when calling WordsApi.get_document_with_format' if @api_client.config.client_side_validation && request.name.nil?
      # verify the required parameter 'format' is set
      raise ArgumentError, 'Missing the required parameter format when calling WordsApi.get_document_with_format' if @api_client.config.client_side_validation && request.format.nil?
      # resource path
      local_var_path = '/words/{name}'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.to_s)

      # query parameters
      query_params = {}
      query_params[downcase_first_letter('Format')] = request.format

      if local_var_path.include? downcase_first_letter('Folder')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Folder') + '}', request.folder.to_s)
      else
        query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
      end
      if local_var_path.include? downcase_first_letter('Storage')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Storage') + '}', request.storage.to_s)
      else
        query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
      end
      if local_var_path.include? downcase_first_letter('LoadEncoding')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('LoadEncoding') + '}', request.load_encoding.to_s)
      else
        query_params[downcase_first_letter('LoadEncoding')] = request.load_encoding unless request.load_encoding.nil?
      end
      if local_var_path.include? downcase_first_letter('Password')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Password') + '}', request.password.to_s)
      else
        query_params[downcase_first_letter('Password')] = request.password unless request.password.nil?
      end
      if local_var_path.include? downcase_first_letter('OutPath')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('OutPath') + '}', request.out_path.to_s)
      else
        query_params[downcase_first_letter('OutPath')] = request.out_path unless request.out_path.nil?
      end
      if local_var_path.include? downcase_first_letter('FontsLocation')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('FontsLocation') + '}', request.fonts_location.to_s)
      else
        query_params[downcase_first_letter('FontsLocation')] = request.fonts_location unless request.fonts_location.nil?
      end

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/xml', 'application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/xml', 'application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['oauth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names,
                                                        return_type: 'File')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#get_document_with_format\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Get field from document.
    # 
    # @param request GetFieldRequest
    # @return [FieldResponse]
    def get_field(request)
      data, _status_code, _headers = get_field_with_http_info(request)
      data
    end

    # Get field from document.
    # 
    # @param request GetFieldRequest
    # @return [Array<(FieldResponse, Fixnum, Hash)>]
    # FieldResponse data, response status code and response headers
    private def get_field_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? GetFieldRequest

      @api_client.config.logger.debug 'Calling API: WordsApi.get_field ...' if @api_client.config.debugging
      # verify the required parameter 'name' is set
      raise ArgumentError, 'Missing the required parameter name when calling WordsApi.get_field' if @api_client.config.client_side_validation && request.name.nil?
      # verify the required parameter 'index' is set
      raise ArgumentError, 'Missing the required parameter index when calling WordsApi.get_field' if @api_client.config.client_side_validation && request.index.nil?
      # resource path
      local_var_path = '/words/{name}/{nodePath}/fields/{index}'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.to_s)
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Index') + '}', request.index.to_s)

      # query parameters
      query_params = {}
      if local_var_path.include? downcase_first_letter('Folder')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Folder') + '}', request.folder.to_s)
      else
        query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
      end
      if local_var_path.include? downcase_first_letter('Storage')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Storage') + '}', request.storage.to_s)
      else
        query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
      end
      if local_var_path.include? downcase_first_letter('LoadEncoding')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('LoadEncoding') + '}', request.load_encoding.to_s)
      else
        query_params[downcase_first_letter('LoadEncoding')] = request.load_encoding unless request.load_encoding.nil?
      end
      if local_var_path.include? downcase_first_letter('Password')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Password') + '}', request.password.to_s)
      else
        query_params[downcase_first_letter('Password')] = request.password unless request.password.nil?
      end
      if local_var_path.include? downcase_first_letter('NodePath')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('NodePath') + '}', request.node_path.to_s)
      else
        query_params[downcase_first_letter('NodePath')] = request.node_path unless request.node_path.nil?
      end

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/xml', 'application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/xml', 'application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['oauth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names,
                                                        return_type: 'FieldResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#get_field\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Get fields from document.
    # 
    # @param request GetFieldsRequest
    # @return [FieldsResponse]
    def get_fields(request)
      data, _status_code, _headers = get_fields_with_http_info(request)
      data
    end

    # Get fields from document.
    # 
    # @param request GetFieldsRequest
    # @return [Array<(FieldsResponse, Fixnum, Hash)>]
    # FieldsResponse data, response status code and response headers
    private def get_fields_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? GetFieldsRequest

      @api_client.config.logger.debug 'Calling API: WordsApi.get_fields ...' if @api_client.config.debugging
      # verify the required parameter 'name' is set
      raise ArgumentError, 'Missing the required parameter name when calling WordsApi.get_fields' if @api_client.config.client_side_validation && request.name.nil?
      # resource path
      local_var_path = '/words/{name}/{nodePath}/fields'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.to_s)

      # query parameters
      query_params = {}
      if local_var_path.include? downcase_first_letter('Folder')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Folder') + '}', request.folder.to_s)
      else
        query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
      end
      if local_var_path.include? downcase_first_letter('Storage')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Storage') + '}', request.storage.to_s)
      else
        query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
      end
      if local_var_path.include? downcase_first_letter('LoadEncoding')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('LoadEncoding') + '}', request.load_encoding.to_s)
      else
        query_params[downcase_first_letter('LoadEncoding')] = request.load_encoding unless request.load_encoding.nil?
      end
      if local_var_path.include? downcase_first_letter('Password')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Password') + '}', request.password.to_s)
      else
        query_params[downcase_first_letter('Password')] = request.password unless request.password.nil?
      end
      if local_var_path.include? downcase_first_letter('NodePath')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('NodePath') + '}', request.node_path.to_s)
      else
        query_params[downcase_first_letter('NodePath')] = request.node_path unless request.node_path.nil?
      end

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/xml', 'application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/xml', 'application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['oauth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names,
                                                        return_type: 'FieldsResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#get_fields\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Read footnote by index.
    # 
    # @param request GetFootnoteRequest
    # @return [FootnoteResponse]
    def get_footnote(request)
      data, _status_code, _headers = get_footnote_with_http_info(request)
      data
    end

    # Read footnote by index.
    # 
    # @param request GetFootnoteRequest
    # @return [Array<(FootnoteResponse, Fixnum, Hash)>]
    # FootnoteResponse data, response status code and response headers
    private def get_footnote_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? GetFootnoteRequest

      @api_client.config.logger.debug 'Calling API: WordsApi.get_footnote ...' if @api_client.config.debugging
      # verify the required parameter 'name' is set
      raise ArgumentError, 'Missing the required parameter name when calling WordsApi.get_footnote' if @api_client.config.client_side_validation && request.name.nil?
      # verify the required parameter 'index' is set
      raise ArgumentError, 'Missing the required parameter index when calling WordsApi.get_footnote' if @api_client.config.client_side_validation && request.index.nil?
      # resource path
      local_var_path = '/words/{name}/{nodePath}/footnotes/{index}'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.to_s)
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Index') + '}', request.index.to_s)

      # query parameters
      query_params = {}
      if local_var_path.include? downcase_first_letter('Folder')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Folder') + '}', request.folder.to_s)
      else
        query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
      end
      if local_var_path.include? downcase_first_letter('Storage')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Storage') + '}', request.storage.to_s)
      else
        query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
      end
      if local_var_path.include? downcase_first_letter('LoadEncoding')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('LoadEncoding') + '}', request.load_encoding.to_s)
      else
        query_params[downcase_first_letter('LoadEncoding')] = request.load_encoding unless request.load_encoding.nil?
      end
      if local_var_path.include? downcase_first_letter('Password')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Password') + '}', request.password.to_s)
      else
        query_params[downcase_first_letter('Password')] = request.password unless request.password.nil?
      end
      if local_var_path.include? downcase_first_letter('NodePath')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('NodePath') + '}', request.node_path.to_s)
      else
        query_params[downcase_first_letter('NodePath')] = request.node_path unless request.node_path.nil?
      end

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/xml', 'application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/xml', 'application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['oauth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names,
                                                        return_type: 'FootnoteResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#get_footnote\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Get footnotes from document.
    # 
    # @param request GetFootnotesRequest
    # @return [FootnotesResponse]
    def get_footnotes(request)
      data, _status_code, _headers = get_footnotes_with_http_info(request)
      data
    end

    # Get footnotes from document.
    # 
    # @param request GetFootnotesRequest
    # @return [Array<(FootnotesResponse, Fixnum, Hash)>]
    # FootnotesResponse data, response status code and response headers
    private def get_footnotes_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? GetFootnotesRequest

      @api_client.config.logger.debug 'Calling API: WordsApi.get_footnotes ...' if @api_client.config.debugging
      # verify the required parameter 'name' is set
      raise ArgumentError, 'Missing the required parameter name when calling WordsApi.get_footnotes' if @api_client.config.client_side_validation && request.name.nil?
      # resource path
      local_var_path = '/words/{name}/{nodePath}/footnotes'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.to_s)

      # query parameters
      query_params = {}
      if local_var_path.include? downcase_first_letter('Folder')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Folder') + '}', request.folder.to_s)
      else
        query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
      end
      if local_var_path.include? downcase_first_letter('Storage')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Storage') + '}', request.storage.to_s)
      else
        query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
      end
      if local_var_path.include? downcase_first_letter('LoadEncoding')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('LoadEncoding') + '}', request.load_encoding.to_s)
      else
        query_params[downcase_first_letter('LoadEncoding')] = request.load_encoding unless request.load_encoding.nil?
      end
      if local_var_path.include? downcase_first_letter('Password')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Password') + '}', request.password.to_s)
      else
        query_params[downcase_first_letter('Password')] = request.password unless request.password.nil?
      end
      if local_var_path.include? downcase_first_letter('NodePath')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('NodePath') + '}', request.node_path.to_s)
      else
        query_params[downcase_first_letter('NodePath')] = request.node_path unless request.node_path.nil?
      end

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/xml', 'application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/xml', 'application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['oauth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names,
                                                        return_type: 'FootnotesResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#get_footnotes\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Returns representation of an one of the form field.
    # 
    # @param request GetFormFieldRequest
    # @return [FormFieldResponse]
    def get_form_field(request)
      data, _status_code, _headers = get_form_field_with_http_info(request)
      data
    end

    # Returns representation of an one of the form field.
    # 
    # @param request GetFormFieldRequest
    # @return [Array<(FormFieldResponse, Fixnum, Hash)>]
    # FormFieldResponse data, response status code and response headers
    private def get_form_field_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? GetFormFieldRequest

      @api_client.config.logger.debug 'Calling API: WordsApi.get_form_field ...' if @api_client.config.debugging
      # verify the required parameter 'name' is set
      raise ArgumentError, 'Missing the required parameter name when calling WordsApi.get_form_field' if @api_client.config.client_side_validation && request.name.nil?
      # verify the required parameter 'index' is set
      raise ArgumentError, 'Missing the required parameter index when calling WordsApi.get_form_field' if @api_client.config.client_side_validation && request.index.nil?
      # resource path
      local_var_path = '/words/{name}/{nodePath}/formfields/{index}'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.to_s)
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Index') + '}', request.index.to_s)

      # query parameters
      query_params = {}
      if local_var_path.include? downcase_first_letter('Folder')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Folder') + '}', request.folder.to_s)
      else
        query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
      end
      if local_var_path.include? downcase_first_letter('Storage')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Storage') + '}', request.storage.to_s)
      else
        query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
      end
      if local_var_path.include? downcase_first_letter('LoadEncoding')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('LoadEncoding') + '}', request.load_encoding.to_s)
      else
        query_params[downcase_first_letter('LoadEncoding')] = request.load_encoding unless request.load_encoding.nil?
      end
      if local_var_path.include? downcase_first_letter('Password')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Password') + '}', request.password.to_s)
      else
        query_params[downcase_first_letter('Password')] = request.password unless request.password.nil?
      end
      if local_var_path.include? downcase_first_letter('NodePath')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('NodePath') + '}', request.node_path.to_s)
      else
        query_params[downcase_first_letter('NodePath')] = request.node_path unless request.node_path.nil?
      end

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/xml', 'application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/xml', 'application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['oauth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names,
                                                        return_type: 'FormFieldResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#get_form_field\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Get form fields from document.
    # 
    # @param request GetFormFieldsRequest
    # @return [FormFieldsResponse]
    def get_form_fields(request)
      data, _status_code, _headers = get_form_fields_with_http_info(request)
      data
    end

    # Get form fields from document.
    # 
    # @param request GetFormFieldsRequest
    # @return [Array<(FormFieldsResponse, Fixnum, Hash)>]
    # FormFieldsResponse data, response status code and response headers
    private def get_form_fields_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? GetFormFieldsRequest

      @api_client.config.logger.debug 'Calling API: WordsApi.get_form_fields ...' if @api_client.config.debugging
      # verify the required parameter 'name' is set
      raise ArgumentError, 'Missing the required parameter name when calling WordsApi.get_form_fields' if @api_client.config.client_side_validation && request.name.nil?
      # resource path
      local_var_path = '/words/{name}/{nodePath}/formfields'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.to_s)

      # query parameters
      query_params = {}
      if local_var_path.include? downcase_first_letter('Folder')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Folder') + '}', request.folder.to_s)
      else
        query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
      end
      if local_var_path.include? downcase_first_letter('Storage')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Storage') + '}', request.storage.to_s)
      else
        query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
      end
      if local_var_path.include? downcase_first_letter('LoadEncoding')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('LoadEncoding') + '}', request.load_encoding.to_s)
      else
        query_params[downcase_first_letter('LoadEncoding')] = request.load_encoding unless request.load_encoding.nil?
      end
      if local_var_path.include? downcase_first_letter('Password')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Password') + '}', request.password.to_s)
      else
        query_params[downcase_first_letter('Password')] = request.password unless request.password.nil?
      end
      if local_var_path.include? downcase_first_letter('NodePath')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('NodePath') + '}', request.node_path.to_s)
      else
        query_params[downcase_first_letter('NodePath')] = request.node_path unless request.node_path.nil?
      end

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/xml', 'application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/xml', 'application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['oauth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names,
                                                        return_type: 'FormFieldsResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#get_form_fields\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Return a header/footer that is contained in the document.
    # 
    # @param request GetHeaderFooterRequest
    # @return [HeaderFooterResponse]
    def get_header_footer(request)
      data, _status_code, _headers = get_header_footer_with_http_info(request)
      data
    end

    # Return a header/footer that is contained in the document.
    # 
    # @param request GetHeaderFooterRequest
    # @return [Array<(HeaderFooterResponse, Fixnum, Hash)>]
    # HeaderFooterResponse data, response status code and response headers
    private def get_header_footer_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? GetHeaderFooterRequest

      @api_client.config.logger.debug 'Calling API: WordsApi.get_header_footer ...' if @api_client.config.debugging
      # verify the required parameter 'name' is set
      raise ArgumentError, 'Missing the required parameter name when calling WordsApi.get_header_footer' if @api_client.config.client_side_validation && request.name.nil?
      # verify the required parameter 'header_footer_index' is set
      raise ArgumentError, 'Missing the required parameter header_footer_index when calling WordsApi.get_header_footer' if @api_client.config.client_side_validation && request.header_footer_index.nil?
      # resource path
      local_var_path = '/words/{name}/headersfooters/{headerFooterIndex}'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.to_s)
      local_var_path = local_var_path.sub('{' + downcase_first_letter('HeaderFooterIndex') + '}', request.header_footer_index.to_s)

      # query parameters
      query_params = {}
      if local_var_path.include? downcase_first_letter('Folder')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Folder') + '}', request.folder.to_s)
      else
        query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
      end
      if local_var_path.include? downcase_first_letter('Storage')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Storage') + '}', request.storage.to_s)
      else
        query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
      end
      if local_var_path.include? downcase_first_letter('LoadEncoding')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('LoadEncoding') + '}', request.load_encoding.to_s)
      else
        query_params[downcase_first_letter('LoadEncoding')] = request.load_encoding unless request.load_encoding.nil?
      end
      if local_var_path.include? downcase_first_letter('Password')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Password') + '}', request.password.to_s)
      else
        query_params[downcase_first_letter('Password')] = request.password unless request.password.nil?
      end
      if local_var_path.include? downcase_first_letter('FilterByType')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('FilterByType') + '}', request.filter_by_type.to_s)
      else
        query_params[downcase_first_letter('FilterByType')] = request.filter_by_type unless request.filter_by_type.nil?
      end

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/xml', 'application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/xml', 'application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['oauth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names,
                                                        return_type: 'HeaderFooterResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#get_header_footer\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Return a header/footer that is contained in the document.
    # 
    # @param request GetHeaderFooterOfSectionRequest
    # @return [HeaderFooterResponse]
    def get_header_footer_of_section(request)
      data, _status_code, _headers = get_header_footer_of_section_with_http_info(request)
      data
    end

    # Return a header/footer that is contained in the document.
    # 
    # @param request GetHeaderFooterOfSectionRequest
    # @return [Array<(HeaderFooterResponse, Fixnum, Hash)>]
    # HeaderFooterResponse data, response status code and response headers
    private def get_header_footer_of_section_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? GetHeaderFooterOfSectionRequest

      @api_client.config.logger.debug 'Calling API: WordsApi.get_header_footer_of_section ...' if @api_client.config.debugging
      # verify the required parameter 'name' is set
      raise ArgumentError, 'Missing the required parameter name when calling WordsApi.get_header_footer_of_section' if @api_client.config.client_side_validation && request.name.nil?
      # verify the required parameter 'header_footer_index' is set
      raise ArgumentError, 'Missing the required parameter header_footer_index when calling WordsApi.get_header_footer_of_section' if @api_client.config.client_side_validation && request.header_footer_index.nil?
      # verify the required parameter 'section_index' is set
      raise ArgumentError, 'Missing the required parameter section_index when calling WordsApi.get_header_footer_of_section' if @api_client.config.client_side_validation && request.section_index.nil?
      # resource path
      local_var_path = '/words/{name}/sections/{sectionIndex}/headersfooters/{headerFooterIndex}'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.to_s)
      local_var_path = local_var_path.sub('{' + downcase_first_letter('HeaderFooterIndex') + '}', request.header_footer_index.to_s)
      local_var_path = local_var_path.sub('{' + downcase_first_letter('SectionIndex') + '}', request.section_index.to_s)

      # query parameters
      query_params = {}
      if local_var_path.include? downcase_first_letter('Folder')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Folder') + '}', request.folder.to_s)
      else
        query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
      end
      if local_var_path.include? downcase_first_letter('Storage')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Storage') + '}', request.storage.to_s)
      else
        query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
      end
      if local_var_path.include? downcase_first_letter('LoadEncoding')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('LoadEncoding') + '}', request.load_encoding.to_s)
      else
        query_params[downcase_first_letter('LoadEncoding')] = request.load_encoding unless request.load_encoding.nil?
      end
      if local_var_path.include? downcase_first_letter('Password')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Password') + '}', request.password.to_s)
      else
        query_params[downcase_first_letter('Password')] = request.password unless request.password.nil?
      end
      if local_var_path.include? downcase_first_letter('FilterByType')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('FilterByType') + '}', request.filter_by_type.to_s)
      else
        query_params[downcase_first_letter('FilterByType')] = request.filter_by_type unless request.filter_by_type.nil?
      end

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/xml', 'application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/xml', 'application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['oauth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names,
                                                        return_type: 'HeaderFooterResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#get_header_footer_of_section\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Return a list of header/footers that are contained in the document.
    # 
    # @param request GetHeaderFootersRequest
    # @return [HeaderFootersResponse]
    def get_header_footers(request)
      data, _status_code, _headers = get_header_footers_with_http_info(request)
      data
    end

    # Return a list of header/footers that are contained in the document.
    # 
    # @param request GetHeaderFootersRequest
    # @return [Array<(HeaderFootersResponse, Fixnum, Hash)>]
    # HeaderFootersResponse data, response status code and response headers
    private def get_header_footers_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? GetHeaderFootersRequest

      @api_client.config.logger.debug 'Calling API: WordsApi.get_header_footers ...' if @api_client.config.debugging
      # verify the required parameter 'name' is set
      raise ArgumentError, 'Missing the required parameter name when calling WordsApi.get_header_footers' if @api_client.config.client_side_validation && request.name.nil?
      # resource path
      local_var_path = '/words/{name}/{sectionPath}/headersfooters'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.to_s)

      # query parameters
      query_params = {}
      if local_var_path.include? downcase_first_letter('Folder')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Folder') + '}', request.folder.to_s)
      else
        query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
      end
      if local_var_path.include? downcase_first_letter('Storage')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Storage') + '}', request.storage.to_s)
      else
        query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
      end
      if local_var_path.include? downcase_first_letter('LoadEncoding')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('LoadEncoding') + '}', request.load_encoding.to_s)
      else
        query_params[downcase_first_letter('LoadEncoding')] = request.load_encoding unless request.load_encoding.nil?
      end
      if local_var_path.include? downcase_first_letter('Password')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Password') + '}', request.password.to_s)
      else
        query_params[downcase_first_letter('Password')] = request.password unless request.password.nil?
      end
      if local_var_path.include? downcase_first_letter('SectionPath')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('SectionPath') + '}', request.section_path.to_s)
      else
        query_params[downcase_first_letter('SectionPath')] = request.section_path unless request.section_path.nil?
      end
      if local_var_path.include? downcase_first_letter('FilterByType')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('FilterByType') + '}', request.filter_by_type.to_s)
      else
        query_params[downcase_first_letter('FilterByType')] = request.filter_by_type unless request.filter_by_type.nil?
      end

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/xml', 'application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/xml', 'application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['oauth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names,
                                                        return_type: 'HeaderFootersResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#get_header_footers\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Read OfficeMath object by index.
    # 
    # @param request GetOfficeMathObjectRequest
    # @return [OfficeMathObjectResponse]
    def get_office_math_object(request)
      data, _status_code, _headers = get_office_math_object_with_http_info(request)
      data
    end

    # Read OfficeMath object by index.
    # 
    # @param request GetOfficeMathObjectRequest
    # @return [Array<(OfficeMathObjectResponse, Fixnum, Hash)>]
    # OfficeMathObjectResponse data, response status code and response headers
    private def get_office_math_object_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? GetOfficeMathObjectRequest

      @api_client.config.logger.debug 'Calling API: WordsApi.get_office_math_object ...' if @api_client.config.debugging
      # verify the required parameter 'name' is set
      raise ArgumentError, 'Missing the required parameter name when calling WordsApi.get_office_math_object' if @api_client.config.client_side_validation && request.name.nil?
      # verify the required parameter 'index' is set
      raise ArgumentError, 'Missing the required parameter index when calling WordsApi.get_office_math_object' if @api_client.config.client_side_validation && request.index.nil?
      # resource path
      local_var_path = '/words/{name}/{nodePath}/OfficeMathObjects/{index}'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.to_s)
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Index') + '}', request.index.to_s)

      # query parameters
      query_params = {}
      if local_var_path.include? downcase_first_letter('Folder')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Folder') + '}', request.folder.to_s)
      else
        query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
      end
      if local_var_path.include? downcase_first_letter('Storage')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Storage') + '}', request.storage.to_s)
      else
        query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
      end
      if local_var_path.include? downcase_first_letter('LoadEncoding')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('LoadEncoding') + '}', request.load_encoding.to_s)
      else
        query_params[downcase_first_letter('LoadEncoding')] = request.load_encoding unless request.load_encoding.nil?
      end
      if local_var_path.include? downcase_first_letter('Password')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Password') + '}', request.password.to_s)
      else
        query_params[downcase_first_letter('Password')] = request.password unless request.password.nil?
      end
      if local_var_path.include? downcase_first_letter('NodePath')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('NodePath') + '}', request.node_path.to_s)
      else
        query_params[downcase_first_letter('NodePath')] = request.node_path unless request.node_path.nil?
      end

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/xml', 'application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/xml', 'application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['oauth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names,
                                                        return_type: 'OfficeMathObjectResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#get_office_math_object\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Get OfficeMath objects from document.
    # 
    # @param request GetOfficeMathObjectsRequest
    # @return [OfficeMathObjectsResponse]
    def get_office_math_objects(request)
      data, _status_code, _headers = get_office_math_objects_with_http_info(request)
      data
    end

    # Get OfficeMath objects from document.
    # 
    # @param request GetOfficeMathObjectsRequest
    # @return [Array<(OfficeMathObjectsResponse, Fixnum, Hash)>]
    # OfficeMathObjectsResponse data, response status code and response headers
    private def get_office_math_objects_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? GetOfficeMathObjectsRequest

      @api_client.config.logger.debug 'Calling API: WordsApi.get_office_math_objects ...' if @api_client.config.debugging
      # verify the required parameter 'name' is set
      raise ArgumentError, 'Missing the required parameter name when calling WordsApi.get_office_math_objects' if @api_client.config.client_side_validation && request.name.nil?
      # resource path
      local_var_path = '/words/{name}/{nodePath}/OfficeMathObjects'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.to_s)

      # query parameters
      query_params = {}
      if local_var_path.include? downcase_first_letter('Folder')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Folder') + '}', request.folder.to_s)
      else
        query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
      end
      if local_var_path.include? downcase_first_letter('Storage')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Storage') + '}', request.storage.to_s)
      else
        query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
      end
      if local_var_path.include? downcase_first_letter('LoadEncoding')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('LoadEncoding') + '}', request.load_encoding.to_s)
      else
        query_params[downcase_first_letter('LoadEncoding')] = request.load_encoding unless request.load_encoding.nil?
      end
      if local_var_path.include? downcase_first_letter('Password')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Password') + '}', request.password.to_s)
      else
        query_params[downcase_first_letter('Password')] = request.password unless request.password.nil?
      end
      if local_var_path.include? downcase_first_letter('NodePath')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('NodePath') + '}', request.node_path.to_s)
      else
        query_params[downcase_first_letter('NodePath')] = request.node_path unless request.node_path.nil?
      end

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/xml', 'application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/xml', 'application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['oauth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names,
                                                        return_type: 'OfficeMathObjectsResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#get_office_math_objects\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Get document section by index.
    # 
    # @param request GetSectionRequest
    # @return [SectionResponse]
    def get_section(request)
      data, _status_code, _headers = get_section_with_http_info(request)
      data
    end

    # Get document section by index.
    # 
    # @param request GetSectionRequest
    # @return [Array<(SectionResponse, Fixnum, Hash)>]
    # SectionResponse data, response status code and response headers
    private def get_section_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? GetSectionRequest

      @api_client.config.logger.debug 'Calling API: WordsApi.get_section ...' if @api_client.config.debugging
      # verify the required parameter 'name' is set
      raise ArgumentError, 'Missing the required parameter name when calling WordsApi.get_section' if @api_client.config.client_side_validation && request.name.nil?
      # verify the required parameter 'section_index' is set
      raise ArgumentError, 'Missing the required parameter section_index when calling WordsApi.get_section' if @api_client.config.client_side_validation && request.section_index.nil?
      # resource path
      local_var_path = '/words/{name}/sections/{sectionIndex}'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.to_s)
      local_var_path = local_var_path.sub('{' + downcase_first_letter('SectionIndex') + '}', request.section_index.to_s)

      # query parameters
      query_params = {}
      if local_var_path.include? downcase_first_letter('Folder')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Folder') + '}', request.folder.to_s)
      else
        query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
      end
      if local_var_path.include? downcase_first_letter('Storage')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Storage') + '}', request.storage.to_s)
      else
        query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
      end
      if local_var_path.include? downcase_first_letter('LoadEncoding')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('LoadEncoding') + '}', request.load_encoding.to_s)
      else
        query_params[downcase_first_letter('LoadEncoding')] = request.load_encoding unless request.load_encoding.nil?
      end
      if local_var_path.include? downcase_first_letter('Password')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Password') + '}', request.password.to_s)
      else
        query_params[downcase_first_letter('Password')] = request.password unless request.password.nil?
      end

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/xml', 'application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/xml', 'application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['oauth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names,
                                                        return_type: 'SectionResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#get_section\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Get page setup of section.
    # 
    # @param request GetSectionPageSetupRequest
    # @return [SectionPageSetupResponse]
    def get_section_page_setup(request)
      data, _status_code, _headers = get_section_page_setup_with_http_info(request)
      data
    end

    # Get page setup of section.
    # 
    # @param request GetSectionPageSetupRequest
    # @return [Array<(SectionPageSetupResponse, Fixnum, Hash)>]
    # SectionPageSetupResponse data, response status code and response headers
    private def get_section_page_setup_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? GetSectionPageSetupRequest

      @api_client.config.logger.debug 'Calling API: WordsApi.get_section_page_setup ...' if @api_client.config.debugging
      # verify the required parameter 'name' is set
      raise ArgumentError, 'Missing the required parameter name when calling WordsApi.get_section_page_setup' if @api_client.config.client_side_validation && request.name.nil?
      # verify the required parameter 'section_index' is set
      raise ArgumentError, 'Missing the required parameter section_index when calling WordsApi.get_section_page_setup' if @api_client.config.client_side_validation && request.section_index.nil?
      # resource path
      local_var_path = '/words/{name}/sections/{sectionIndex}/pageSetup'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.to_s)
      local_var_path = local_var_path.sub('{' + downcase_first_letter('SectionIndex') + '}', request.section_index.to_s)

      # query parameters
      query_params = {}
      if local_var_path.include? downcase_first_letter('Folder')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Folder') + '}', request.folder.to_s)
      else
        query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
      end
      if local_var_path.include? downcase_first_letter('Storage')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Storage') + '}', request.storage.to_s)
      else
        query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
      end
      if local_var_path.include? downcase_first_letter('LoadEncoding')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('LoadEncoding') + '}', request.load_encoding.to_s)
      else
        query_params[downcase_first_letter('LoadEncoding')] = request.load_encoding unless request.load_encoding.nil?
      end
      if local_var_path.include? downcase_first_letter('Password')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Password') + '}', request.password.to_s)
      else
        query_params[downcase_first_letter('Password')] = request.password unless request.password.nil?
      end

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/xml', 'application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/xml', 'application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['oauth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names,
                                                        return_type: 'SectionPageSetupResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#get_section_page_setup\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Return a list of sections that are contained in the document.
    # 
    # @param request GetSectionsRequest
    # @return [SectionLinkCollectionResponse]
    def get_sections(request)
      data, _status_code, _headers = get_sections_with_http_info(request)
      data
    end

    # Return a list of sections that are contained in the document.
    # 
    # @param request GetSectionsRequest
    # @return [Array<(SectionLinkCollectionResponse, Fixnum, Hash)>]
    # SectionLinkCollectionResponse data, response status code and response headers
    private def get_sections_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? GetSectionsRequest

      @api_client.config.logger.debug 'Calling API: WordsApi.get_sections ...' if @api_client.config.debugging
      # verify the required parameter 'name' is set
      raise ArgumentError, 'Missing the required parameter name when calling WordsApi.get_sections' if @api_client.config.client_side_validation && request.name.nil?
      # resource path
      local_var_path = '/words/{name}/sections'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.to_s)

      # query parameters
      query_params = {}
      if local_var_path.include? downcase_first_letter('Folder')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Folder') + '}', request.folder.to_s)
      else
        query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
      end
      if local_var_path.include? downcase_first_letter('Storage')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Storage') + '}', request.storage.to_s)
      else
        query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
      end
      if local_var_path.include? downcase_first_letter('LoadEncoding')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('LoadEncoding') + '}', request.load_encoding.to_s)
      else
        query_params[downcase_first_letter('LoadEncoding')] = request.load_encoding unless request.load_encoding.nil?
      end
      if local_var_path.include? downcase_first_letter('Password')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Password') + '}', request.password.to_s)
      else
        query_params[downcase_first_letter('Password')] = request.password unless request.password.nil?
      end

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/xml', 'application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/xml', 'application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['oauth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names,
                                                        return_type: 'SectionLinkCollectionResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#get_sections\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Return a table.
    # 
    # @param request GetTableRequest
    # @return [TableResponse]
    def get_table(request)
      data, _status_code, _headers = get_table_with_http_info(request)
      data
    end

    # Return a table.
    # 
    # @param request GetTableRequest
    # @return [Array<(TableResponse, Fixnum, Hash)>]
    # TableResponse data, response status code and response headers
    private def get_table_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? GetTableRequest

      @api_client.config.logger.debug 'Calling API: WordsApi.get_table ...' if @api_client.config.debugging
      # verify the required parameter 'name' is set
      raise ArgumentError, 'Missing the required parameter name when calling WordsApi.get_table' if @api_client.config.client_side_validation && request.name.nil?
      # verify the required parameter 'index' is set
      raise ArgumentError, 'Missing the required parameter index when calling WordsApi.get_table' if @api_client.config.client_side_validation && request.index.nil?
      # resource path
      local_var_path = '/words/{name}/{nodePath}/tables/{index}'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.to_s)
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Index') + '}', request.index.to_s)

      # query parameters
      query_params = {}
      if local_var_path.include? downcase_first_letter('Folder')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Folder') + '}', request.folder.to_s)
      else
        query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
      end
      if local_var_path.include? downcase_first_letter('Storage')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Storage') + '}', request.storage.to_s)
      else
        query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
      end
      if local_var_path.include? downcase_first_letter('LoadEncoding')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('LoadEncoding') + '}', request.load_encoding.to_s)
      else
        query_params[downcase_first_letter('LoadEncoding')] = request.load_encoding unless request.load_encoding.nil?
      end
      if local_var_path.include? downcase_first_letter('Password')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Password') + '}', request.password.to_s)
      else
        query_params[downcase_first_letter('Password')] = request.password unless request.password.nil?
      end
      if local_var_path.include? downcase_first_letter('NodePath')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('NodePath') + '}', request.node_path.to_s)
      else
        query_params[downcase_first_letter('NodePath')] = request.node_path unless request.node_path.nil?
      end

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/xml', 'application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/xml', 'application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['oauth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names,
                                                        return_type: 'TableResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#get_table\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Return a table cell.
    # 
    # @param request GetTableCellRequest
    # @return [TableCellResponse]
    def get_table_cell(request)
      data, _status_code, _headers = get_table_cell_with_http_info(request)
      data
    end

    # Return a table cell.
    # 
    # @param request GetTableCellRequest
    # @return [Array<(TableCellResponse, Fixnum, Hash)>]
    # TableCellResponse data, response status code and response headers
    private def get_table_cell_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? GetTableCellRequest

      @api_client.config.logger.debug 'Calling API: WordsApi.get_table_cell ...' if @api_client.config.debugging
      # verify the required parameter 'name' is set
      raise ArgumentError, 'Missing the required parameter name when calling WordsApi.get_table_cell' if @api_client.config.client_side_validation && request.name.nil?
      # verify the required parameter 'table_row_path' is set
      raise ArgumentError, 'Missing the required parameter table_row_path when calling WordsApi.get_table_cell' if @api_client.config.client_side_validation && request.table_row_path.nil?
      # verify the required parameter 'index' is set
      raise ArgumentError, 'Missing the required parameter index when calling WordsApi.get_table_cell' if @api_client.config.client_side_validation && request.index.nil?
      # resource path
      local_var_path = '/words/{name}/{tableRowPath}/cells/{index}'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.to_s)
      local_var_path = local_var_path.sub('{' + downcase_first_letter('TableRowPath') + '}', request.table_row_path.to_s)
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Index') + '}', request.index.to_s)

      # query parameters
      query_params = {}
      if local_var_path.include? downcase_first_letter('Folder')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Folder') + '}', request.folder.to_s)
      else
        query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
      end
      if local_var_path.include? downcase_first_letter('Storage')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Storage') + '}', request.storage.to_s)
      else
        query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
      end
      if local_var_path.include? downcase_first_letter('LoadEncoding')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('LoadEncoding') + '}', request.load_encoding.to_s)
      else
        query_params[downcase_first_letter('LoadEncoding')] = request.load_encoding unless request.load_encoding.nil?
      end
      if local_var_path.include? downcase_first_letter('Password')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Password') + '}', request.password.to_s)
      else
        query_params[downcase_first_letter('Password')] = request.password unless request.password.nil?
      end

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/xml', 'application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/xml', 'application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['oauth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names,
                                                        return_type: 'TableCellResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#get_table_cell\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Return a table cell format.
    # 
    # @param request GetTableCellFormatRequest
    # @return [TableCellFormatResponse]
    def get_table_cell_format(request)
      data, _status_code, _headers = get_table_cell_format_with_http_info(request)
      data
    end

    # Return a table cell format.
    # 
    # @param request GetTableCellFormatRequest
    # @return [Array<(TableCellFormatResponse, Fixnum, Hash)>]
    # TableCellFormatResponse data, response status code and response headers
    private def get_table_cell_format_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? GetTableCellFormatRequest

      @api_client.config.logger.debug 'Calling API: WordsApi.get_table_cell_format ...' if @api_client.config.debugging
      # verify the required parameter 'name' is set
      raise ArgumentError, 'Missing the required parameter name when calling WordsApi.get_table_cell_format' if @api_client.config.client_side_validation && request.name.nil?
      # verify the required parameter 'table_row_path' is set
      raise ArgumentError, 'Missing the required parameter table_row_path when calling WordsApi.get_table_cell_format' if @api_client.config.client_side_validation && request.table_row_path.nil?
      # verify the required parameter 'index' is set
      raise ArgumentError, 'Missing the required parameter index when calling WordsApi.get_table_cell_format' if @api_client.config.client_side_validation && request.index.nil?
      # resource path
      local_var_path = '/words/{name}/{tableRowPath}/cells/{index}/cellformat'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.to_s)
      local_var_path = local_var_path.sub('{' + downcase_first_letter('TableRowPath') + '}', request.table_row_path.to_s)
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Index') + '}', request.index.to_s)

      # query parameters
      query_params = {}
      if local_var_path.include? downcase_first_letter('Folder')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Folder') + '}', request.folder.to_s)
      else
        query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
      end
      if local_var_path.include? downcase_first_letter('Storage')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Storage') + '}', request.storage.to_s)
      else
        query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
      end
      if local_var_path.include? downcase_first_letter('LoadEncoding')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('LoadEncoding') + '}', request.load_encoding.to_s)
      else
        query_params[downcase_first_letter('LoadEncoding')] = request.load_encoding unless request.load_encoding.nil?
      end
      if local_var_path.include? downcase_first_letter('Password')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Password') + '}', request.password.to_s)
      else
        query_params[downcase_first_letter('Password')] = request.password unless request.password.nil?
      end

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/xml', 'application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/xml', 'application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['oauth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names,
                                                        return_type: 'TableCellFormatResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#get_table_cell_format\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Return a table properties.
    # 
    # @param request GetTablePropertiesRequest
    # @return [TablePropertiesResponse]
    def get_table_properties(request)
      data, _status_code, _headers = get_table_properties_with_http_info(request)
      data
    end

    # Return a table properties.
    # 
    # @param request GetTablePropertiesRequest
    # @return [Array<(TablePropertiesResponse, Fixnum, Hash)>]
    # TablePropertiesResponse data, response status code and response headers
    private def get_table_properties_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? GetTablePropertiesRequest

      @api_client.config.logger.debug 'Calling API: WordsApi.get_table_properties ...' if @api_client.config.debugging
      # verify the required parameter 'name' is set
      raise ArgumentError, 'Missing the required parameter name when calling WordsApi.get_table_properties' if @api_client.config.client_side_validation && request.name.nil?
      # verify the required parameter 'index' is set
      raise ArgumentError, 'Missing the required parameter index when calling WordsApi.get_table_properties' if @api_client.config.client_side_validation && request.index.nil?
      # resource path
      local_var_path = '/words/{name}/{nodePath}/tables/{index}/properties'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.to_s)
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Index') + '}', request.index.to_s)

      # query parameters
      query_params = {}
      if local_var_path.include? downcase_first_letter('Folder')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Folder') + '}', request.folder.to_s)
      else
        query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
      end
      if local_var_path.include? downcase_first_letter('Storage')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Storage') + '}', request.storage.to_s)
      else
        query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
      end
      if local_var_path.include? downcase_first_letter('LoadEncoding')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('LoadEncoding') + '}', request.load_encoding.to_s)
      else
        query_params[downcase_first_letter('LoadEncoding')] = request.load_encoding unless request.load_encoding.nil?
      end
      if local_var_path.include? downcase_first_letter('Password')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Password') + '}', request.password.to_s)
      else
        query_params[downcase_first_letter('Password')] = request.password unless request.password.nil?
      end
      if local_var_path.include? downcase_first_letter('NodePath')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('NodePath') + '}', request.node_path.to_s)
      else
        query_params[downcase_first_letter('NodePath')] = request.node_path unless request.node_path.nil?
      end

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/xml', 'application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/xml', 'application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['oauth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names,
                                                        return_type: 'TablePropertiesResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#get_table_properties\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Return a table row.
    # 
    # @param request GetTableRowRequest
    # @return [TableRowResponse]
    def get_table_row(request)
      data, _status_code, _headers = get_table_row_with_http_info(request)
      data
    end

    # Return a table row.
    # 
    # @param request GetTableRowRequest
    # @return [Array<(TableRowResponse, Fixnum, Hash)>]
    # TableRowResponse data, response status code and response headers
    private def get_table_row_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? GetTableRowRequest

      @api_client.config.logger.debug 'Calling API: WordsApi.get_table_row ...' if @api_client.config.debugging
      # verify the required parameter 'name' is set
      raise ArgumentError, 'Missing the required parameter name when calling WordsApi.get_table_row' if @api_client.config.client_side_validation && request.name.nil?
      # verify the required parameter 'table_path' is set
      raise ArgumentError, 'Missing the required parameter table_path when calling WordsApi.get_table_row' if @api_client.config.client_side_validation && request.table_path.nil?
      # verify the required parameter 'index' is set
      raise ArgumentError, 'Missing the required parameter index when calling WordsApi.get_table_row' if @api_client.config.client_side_validation && request.index.nil?
      # resource path
      local_var_path = '/words/{name}/{tablePath}/rows/{index}'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.to_s)
      local_var_path = local_var_path.sub('{' + downcase_first_letter('TablePath') + '}', request.table_path.to_s)
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Index') + '}', request.index.to_s)

      # query parameters
      query_params = {}
      if local_var_path.include? downcase_first_letter('Folder')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Folder') + '}', request.folder.to_s)
      else
        query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
      end
      if local_var_path.include? downcase_first_letter('Storage')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Storage') + '}', request.storage.to_s)
      else
        query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
      end
      if local_var_path.include? downcase_first_letter('LoadEncoding')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('LoadEncoding') + '}', request.load_encoding.to_s)
      else
        query_params[downcase_first_letter('LoadEncoding')] = request.load_encoding unless request.load_encoding.nil?
      end
      if local_var_path.include? downcase_first_letter('Password')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Password') + '}', request.password.to_s)
      else
        query_params[downcase_first_letter('Password')] = request.password unless request.password.nil?
      end

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/xml', 'application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/xml', 'application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['oauth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names,
                                                        return_type: 'TableRowResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#get_table_row\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Return a table row format.
    # 
    # @param request GetTableRowFormatRequest
    # @return [TableRowFormatResponse]
    def get_table_row_format(request)
      data, _status_code, _headers = get_table_row_format_with_http_info(request)
      data
    end

    # Return a table row format.
    # 
    # @param request GetTableRowFormatRequest
    # @return [Array<(TableRowFormatResponse, Fixnum, Hash)>]
    # TableRowFormatResponse data, response status code and response headers
    private def get_table_row_format_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? GetTableRowFormatRequest

      @api_client.config.logger.debug 'Calling API: WordsApi.get_table_row_format ...' if @api_client.config.debugging
      # verify the required parameter 'name' is set
      raise ArgumentError, 'Missing the required parameter name when calling WordsApi.get_table_row_format' if @api_client.config.client_side_validation && request.name.nil?
      # verify the required parameter 'table_path' is set
      raise ArgumentError, 'Missing the required parameter table_path when calling WordsApi.get_table_row_format' if @api_client.config.client_side_validation && request.table_path.nil?
      # verify the required parameter 'index' is set
      raise ArgumentError, 'Missing the required parameter index when calling WordsApi.get_table_row_format' if @api_client.config.client_side_validation && request.index.nil?
      # resource path
      local_var_path = '/words/{name}/{tablePath}/rows/{index}/rowformat'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.to_s)
      local_var_path = local_var_path.sub('{' + downcase_first_letter('TablePath') + '}', request.table_path.to_s)
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Index') + '}', request.index.to_s)

      # query parameters
      query_params = {}
      if local_var_path.include? downcase_first_letter('Folder')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Folder') + '}', request.folder.to_s)
      else
        query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
      end
      if local_var_path.include? downcase_first_letter('Storage')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Storage') + '}', request.storage.to_s)
      else
        query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
      end
      if local_var_path.include? downcase_first_letter('LoadEncoding')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('LoadEncoding') + '}', request.load_encoding.to_s)
      else
        query_params[downcase_first_letter('LoadEncoding')] = request.load_encoding unless request.load_encoding.nil?
      end
      if local_var_path.include? downcase_first_letter('Password')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Password') + '}', request.password.to_s)
      else
        query_params[downcase_first_letter('Password')] = request.password unless request.password.nil?
      end

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/xml', 'application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/xml', 'application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['oauth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names,
                                                        return_type: 'TableRowFormatResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#get_table_row_format\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Return a list of tables that are contained in the document.
    # 
    # @param request GetTablesRequest
    # @return [TableLinkCollectionResponse]
    def get_tables(request)
      data, _status_code, _headers = get_tables_with_http_info(request)
      data
    end

    # Return a list of tables that are contained in the document.
    # 
    # @param request GetTablesRequest
    # @return [Array<(TableLinkCollectionResponse, Fixnum, Hash)>]
    # TableLinkCollectionResponse data, response status code and response headers
    private def get_tables_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? GetTablesRequest

      @api_client.config.logger.debug 'Calling API: WordsApi.get_tables ...' if @api_client.config.debugging
      # verify the required parameter 'name' is set
      raise ArgumentError, 'Missing the required parameter name when calling WordsApi.get_tables' if @api_client.config.client_side_validation && request.name.nil?
      # resource path
      local_var_path = '/words/{name}/{nodePath}/tables'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.to_s)

      # query parameters
      query_params = {}
      if local_var_path.include? downcase_first_letter('Folder')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Folder') + '}', request.folder.to_s)
      else
        query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
      end
      if local_var_path.include? downcase_first_letter('Storage')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Storage') + '}', request.storage.to_s)
      else
        query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
      end
      if local_var_path.include? downcase_first_letter('LoadEncoding')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('LoadEncoding') + '}', request.load_encoding.to_s)
      else
        query_params[downcase_first_letter('LoadEncoding')] = request.load_encoding unless request.load_encoding.nil?
      end
      if local_var_path.include? downcase_first_letter('Password')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Password') + '}', request.password.to_s)
      else
        query_params[downcase_first_letter('Password')] = request.password unless request.password.nil?
      end
      if local_var_path.include? downcase_first_letter('NodePath')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('NodePath') + '}', request.node_path.to_s)
      else
        query_params[downcase_first_letter('NodePath')] = request.node_path unless request.node_path.nil?
      end

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/xml', 'application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/xml', 'application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['oauth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names,
                                                        return_type: 'TableLinkCollectionResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#get_tables\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Adds table to document, returns added table's data.             
    # 
    # @param request InsertTableRequest
    # @return [TableResponse]
    def insert_table(request)
      data, _status_code, _headers = insert_table_with_http_info(request)
      data
    end

    # Adds table to document, returns added table&#39;s data.             
    # 
    # @param request InsertTableRequest
    # @return [Array<(TableResponse, Fixnum, Hash)>]
    # TableResponse data, response status code and response headers
    private def insert_table_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? InsertTableRequest

      @api_client.config.logger.debug 'Calling API: WordsApi.insert_table ...' if @api_client.config.debugging
      # verify the required parameter 'name' is set
      raise ArgumentError, 'Missing the required parameter name when calling WordsApi.insert_table' if @api_client.config.client_side_validation && request.name.nil?
      # resource path
      local_var_path = '/words/{name}/{nodePath}/tables'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.to_s)

      # query parameters
      query_params = {}
      if local_var_path.include? downcase_first_letter('Folder')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Folder') + '}', request.folder.to_s)
      else
        query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
      end
      if local_var_path.include? downcase_first_letter('Storage')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Storage') + '}', request.storage.to_s)
      else
        query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
      end
      if local_var_path.include? downcase_first_letter('LoadEncoding')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('LoadEncoding') + '}', request.load_encoding.to_s)
      else
        query_params[downcase_first_letter('LoadEncoding')] = request.load_encoding unless request.load_encoding.nil?
      end
      if local_var_path.include? downcase_first_letter('Password')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Password') + '}', request.password.to_s)
      else
        query_params[downcase_first_letter('Password')] = request.password unless request.password.nil?
      end
      if local_var_path.include? downcase_first_letter('DestFileName')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('DestFileName') + '}', request.dest_file_name.to_s)
      else
        query_params[downcase_first_letter('DestFileName')] = request.dest_file_name unless request.dest_file_name.nil?
      end
      if local_var_path.include? downcase_first_letter('RevisionAuthor')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('RevisionAuthor') + '}', request.revision_author.to_s)
      else
        query_params[downcase_first_letter('RevisionAuthor')] = request.revision_author unless request.revision_author.nil?
      end
      if local_var_path.include? downcase_first_letter('RevisionDateTime')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('RevisionDateTime') + '}', request.revision_date_time.to_s)
      else
        query_params[downcase_first_letter('RevisionDateTime')] = request.revision_date_time unless request.revision_date_time.nil?
      end
      if local_var_path.include? downcase_first_letter('NodePath')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('NodePath') + '}', request.node_path.to_s)
      else
        query_params[downcase_first_letter('NodePath')] = request.node_path unless request.node_path.nil?
      end

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/xml', 'application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/xml', 'application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(request.table)
      auth_names = ['oauth']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names,
                                                        return_type: 'TableResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#insert_table\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Adds table cell to table, returns added cell's data.             
    # 
    # @param request InsertTableCellRequest
    # @return [TableCellResponse]
    def insert_table_cell(request)
      data, _status_code, _headers = insert_table_cell_with_http_info(request)
      data
    end

    # Adds table cell to table, returns added cell&#39;s data.             
    # 
    # @param request InsertTableCellRequest
    # @return [Array<(TableCellResponse, Fixnum, Hash)>]
    # TableCellResponse data, response status code and response headers
    private def insert_table_cell_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? InsertTableCellRequest

      @api_client.config.logger.debug 'Calling API: WordsApi.insert_table_cell ...' if @api_client.config.debugging
      # verify the required parameter 'name' is set
      raise ArgumentError, 'Missing the required parameter name when calling WordsApi.insert_table_cell' if @api_client.config.client_side_validation && request.name.nil?
      # verify the required parameter 'table_row_path' is set
      raise ArgumentError, 'Missing the required parameter table_row_path when calling WordsApi.insert_table_cell' if @api_client.config.client_side_validation && request.table_row_path.nil?
      # resource path
      local_var_path = '/words/{name}/{tableRowPath}/cells'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.to_s)
      local_var_path = local_var_path.sub('{' + downcase_first_letter('TableRowPath') + '}', request.table_row_path.to_s)

      # query parameters
      query_params = {}
      if local_var_path.include? downcase_first_letter('Folder')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Folder') + '}', request.folder.to_s)
      else
        query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
      end
      if local_var_path.include? downcase_first_letter('Storage')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Storage') + '}', request.storage.to_s)
      else
        query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
      end
      if local_var_path.include? downcase_first_letter('LoadEncoding')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('LoadEncoding') + '}', request.load_encoding.to_s)
      else
        query_params[downcase_first_letter('LoadEncoding')] = request.load_encoding unless request.load_encoding.nil?
      end
      if local_var_path.include? downcase_first_letter('Password')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Password') + '}', request.password.to_s)
      else
        query_params[downcase_first_letter('Password')] = request.password unless request.password.nil?
      end
      if local_var_path.include? downcase_first_letter('DestFileName')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('DestFileName') + '}', request.dest_file_name.to_s)
      else
        query_params[downcase_first_letter('DestFileName')] = request.dest_file_name unless request.dest_file_name.nil?
      end
      if local_var_path.include? downcase_first_letter('RevisionAuthor')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('RevisionAuthor') + '}', request.revision_author.to_s)
      else
        query_params[downcase_first_letter('RevisionAuthor')] = request.revision_author unless request.revision_author.nil?
      end
      if local_var_path.include? downcase_first_letter('RevisionDateTime')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('RevisionDateTime') + '}', request.revision_date_time.to_s)
      else
        query_params[downcase_first_letter('RevisionDateTime')] = request.revision_date_time unless request.revision_date_time.nil?
      end

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/xml', 'application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/xml', 'application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(request.cell)
      auth_names = ['oauth']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names,
                                                        return_type: 'TableCellResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#insert_table_cell\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Adds table row to table, returns added row's data.             
    # 
    # @param request InsertTableRowRequest
    # @return [TableRowResponse]
    def insert_table_row(request)
      data, _status_code, _headers = insert_table_row_with_http_info(request)
      data
    end

    # Adds table row to table, returns added row&#39;s data.             
    # 
    # @param request InsertTableRowRequest
    # @return [Array<(TableRowResponse, Fixnum, Hash)>]
    # TableRowResponse data, response status code and response headers
    private def insert_table_row_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? InsertTableRowRequest

      @api_client.config.logger.debug 'Calling API: WordsApi.insert_table_row ...' if @api_client.config.debugging
      # verify the required parameter 'name' is set
      raise ArgumentError, 'Missing the required parameter name when calling WordsApi.insert_table_row' if @api_client.config.client_side_validation && request.name.nil?
      # verify the required parameter 'table_path' is set
      raise ArgumentError, 'Missing the required parameter table_path when calling WordsApi.insert_table_row' if @api_client.config.client_side_validation && request.table_path.nil?
      # resource path
      local_var_path = '/words/{name}/{tablePath}/rows'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.to_s)
      local_var_path = local_var_path.sub('{' + downcase_first_letter('TablePath') + '}', request.table_path.to_s)

      # query parameters
      query_params = {}
      if local_var_path.include? downcase_first_letter('Folder')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Folder') + '}', request.folder.to_s)
      else
        query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
      end
      if local_var_path.include? downcase_first_letter('Storage')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Storage') + '}', request.storage.to_s)
      else
        query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
      end
      if local_var_path.include? downcase_first_letter('LoadEncoding')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('LoadEncoding') + '}', request.load_encoding.to_s)
      else
        query_params[downcase_first_letter('LoadEncoding')] = request.load_encoding unless request.load_encoding.nil?
      end
      if local_var_path.include? downcase_first_letter('Password')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Password') + '}', request.password.to_s)
      else
        query_params[downcase_first_letter('Password')] = request.password unless request.password.nil?
      end
      if local_var_path.include? downcase_first_letter('DestFileName')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('DestFileName') + '}', request.dest_file_name.to_s)
      else
        query_params[downcase_first_letter('DestFileName')] = request.dest_file_name unless request.dest_file_name.nil?
      end
      if local_var_path.include? downcase_first_letter('RevisionAuthor')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('RevisionAuthor') + '}', request.revision_author.to_s)
      else
        query_params[downcase_first_letter('RevisionAuthor')] = request.revision_author unless request.revision_author.nil?
      end
      if local_var_path.include? downcase_first_letter('RevisionDateTime')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('RevisionDateTime') + '}', request.revision_date_time.to_s)
      else
        query_params[downcase_first_letter('RevisionDateTime')] = request.revision_date_time unless request.revision_date_time.nil?
      end

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/xml', 'application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/xml', 'application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(request.row)
      auth_names = ['oauth']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names,
                                                        return_type: 'TableRowResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#insert_table_row\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Append documents to original document.
    # 
    # @param request PostAppendDocumentRequest
    # @return [DocumentResponse]
    def post_append_document(request)
      data, _status_code, _headers = post_append_document_with_http_info(request)
      data
    end

    # Append documents to original document.
    # 
    # @param request PostAppendDocumentRequest
    # @return [Array<(DocumentResponse, Fixnum, Hash)>]
    # DocumentResponse data, response status code and response headers
    private def post_append_document_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? PostAppendDocumentRequest

      @api_client.config.logger.debug 'Calling API: WordsApi.post_append_document ...' if @api_client.config.debugging
      # verify the required parameter 'name' is set
      raise ArgumentError, 'Missing the required parameter name when calling WordsApi.post_append_document' if @api_client.config.client_side_validation && request.name.nil?
      # verify the required parameter 'document_list' is set
      raise ArgumentError, 'Missing the required parameter document_list when calling WordsApi.post_append_document' if @api_client.config.client_side_validation && request.document_list.nil?
      # resource path
      local_var_path = '/words/{name}/appendDocument'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.to_s)

      # query parameters
      query_params = {}
      if local_var_path.include? downcase_first_letter('Folder')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Folder') + '}', request.folder.to_s)
      else
        query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
      end
      if local_var_path.include? downcase_first_letter('Storage')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Storage') + '}', request.storage.to_s)
      else
        query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
      end
      if local_var_path.include? downcase_first_letter('LoadEncoding')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('LoadEncoding') + '}', request.load_encoding.to_s)
      else
        query_params[downcase_first_letter('LoadEncoding')] = request.load_encoding unless request.load_encoding.nil?
      end
      if local_var_path.include? downcase_first_letter('Password')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Password') + '}', request.password.to_s)
      else
        query_params[downcase_first_letter('Password')] = request.password unless request.password.nil?
      end
      if local_var_path.include? downcase_first_letter('DestFileName')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('DestFileName') + '}', request.dest_file_name.to_s)
      else
        query_params[downcase_first_letter('DestFileName')] = request.dest_file_name unless request.dest_file_name.nil?
      end
      if local_var_path.include? downcase_first_letter('RevisionAuthor')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('RevisionAuthor') + '}', request.revision_author.to_s)
      else
        query_params[downcase_first_letter('RevisionAuthor')] = request.revision_author unless request.revision_author.nil?
      end
      if local_var_path.include? downcase_first_letter('RevisionDateTime')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('RevisionDateTime') + '}', request.revision_date_time.to_s)
      else
        query_params[downcase_first_letter('RevisionDateTime')] = request.revision_date_time unless request.revision_date_time.nil?
      end

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/xml', 'application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/xml', 'application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(request.document_list)
      auth_names = ['oauth']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names,
                                                        return_type: 'DocumentResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#post_append_document\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Change document protection.
    # 
    # @param request PostChangeDocumentProtectionRequest
    # @return [ProtectionDataResponse]
    def post_change_document_protection(request)
      data, _status_code, _headers = post_change_document_protection_with_http_info(request)
      data
    end

    # Change document protection.
    # 
    # @param request PostChangeDocumentProtectionRequest
    # @return [Array<(ProtectionDataResponse, Fixnum, Hash)>]
    # ProtectionDataResponse data, response status code and response headers
    private def post_change_document_protection_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? PostChangeDocumentProtectionRequest

      @api_client.config.logger.debug 'Calling API: WordsApi.post_change_document_protection ...' if @api_client.config.debugging
      # verify the required parameter 'name' is set
      raise ArgumentError, 'Missing the required parameter name when calling WordsApi.post_change_document_protection' if @api_client.config.client_side_validation && request.name.nil?
      # verify the required parameter 'protection_request' is set
      raise ArgumentError, 'Missing the required parameter protection_request when calling WordsApi.post_change_document_protection' if @api_client.config.client_side_validation && request.protection_request.nil?
      # resource path
      local_var_path = '/words/{name}/protection'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.to_s)

      # query parameters
      query_params = {}
      if local_var_path.include? downcase_first_letter('Folder')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Folder') + '}', request.folder.to_s)
      else
        query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
      end
      if local_var_path.include? downcase_first_letter('Storage')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Storage') + '}', request.storage.to_s)
      else
        query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
      end
      if local_var_path.include? downcase_first_letter('LoadEncoding')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('LoadEncoding') + '}', request.load_encoding.to_s)
      else
        query_params[downcase_first_letter('LoadEncoding')] = request.load_encoding unless request.load_encoding.nil?
      end
      if local_var_path.include? downcase_first_letter('Password')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Password') + '}', request.password.to_s)
      else
        query_params[downcase_first_letter('Password')] = request.password unless request.password.nil?
      end
      if local_var_path.include? downcase_first_letter('DestFileName')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('DestFileName') + '}', request.dest_file_name.to_s)
      else
        query_params[downcase_first_letter('DestFileName')] = request.dest_file_name unless request.dest_file_name.nil?
      end

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/xml', 'application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/xml', 'application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(request.protection_request)
      auth_names = ['oauth']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names,
                                                        return_type: 'ProtectionDataResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#post_change_document_protection\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Updates the comment, returns updated comment's data.
    # 
    # @param request PostCommentRequest
    # @return [CommentResponse]
    def post_comment(request)
      data, _status_code, _headers = post_comment_with_http_info(request)
      data
    end

    # Updates the comment, returns updated comment&#39;s data.
    # 
    # @param request PostCommentRequest
    # @return [Array<(CommentResponse, Fixnum, Hash)>]
    # CommentResponse data, response status code and response headers
    private def post_comment_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? PostCommentRequest

      @api_client.config.logger.debug 'Calling API: WordsApi.post_comment ...' if @api_client.config.debugging
      # verify the required parameter 'name' is set
      raise ArgumentError, 'Missing the required parameter name when calling WordsApi.post_comment' if @api_client.config.client_side_validation && request.name.nil?
      # verify the required parameter 'comment_index' is set
      raise ArgumentError, 'Missing the required parameter comment_index when calling WordsApi.post_comment' if @api_client.config.client_side_validation && request.comment_index.nil?
      # verify the required parameter 'comment' is set
      raise ArgumentError, 'Missing the required parameter comment when calling WordsApi.post_comment' if @api_client.config.client_side_validation && request.comment.nil?
      # resource path
      local_var_path = '/words/{name}/comments/{commentIndex}'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.to_s)
      local_var_path = local_var_path.sub('{' + downcase_first_letter('CommentIndex') + '}', request.comment_index.to_s)

      # query parameters
      query_params = {}
      if local_var_path.include? downcase_first_letter('Folder')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Folder') + '}', request.folder.to_s)
      else
        query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
      end
      if local_var_path.include? downcase_first_letter('Storage')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Storage') + '}', request.storage.to_s)
      else
        query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
      end
      if local_var_path.include? downcase_first_letter('LoadEncoding')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('LoadEncoding') + '}', request.load_encoding.to_s)
      else
        query_params[downcase_first_letter('LoadEncoding')] = request.load_encoding unless request.load_encoding.nil?
      end
      if local_var_path.include? downcase_first_letter('Password')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Password') + '}', request.password.to_s)
      else
        query_params[downcase_first_letter('Password')] = request.password unless request.password.nil?
      end
      if local_var_path.include? downcase_first_letter('DestFileName')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('DestFileName') + '}', request.dest_file_name.to_s)
      else
        query_params[downcase_first_letter('DestFileName')] = request.dest_file_name unless request.dest_file_name.nil?
      end
      if local_var_path.include? downcase_first_letter('RevisionAuthor')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('RevisionAuthor') + '}', request.revision_author.to_s)
      else
        query_params[downcase_first_letter('RevisionAuthor')] = request.revision_author unless request.revision_author.nil?
      end
      if local_var_path.include? downcase_first_letter('RevisionDateTime')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('RevisionDateTime') + '}', request.revision_date_time.to_s)
      else
        query_params[downcase_first_letter('RevisionDateTime')] = request.revision_date_time unless request.revision_date_time.nil?
      end

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/xml', 'application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/xml', 'application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(request.comment)
      auth_names = ['oauth']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names,
                                                        return_type: 'CommentResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#post_comment\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Compare document with original document.
    # 
    # @param request PostCompareDocumentRequest
    # @return [DocumentResponse]
    def post_compare_document(request)
      data, _status_code, _headers = post_compare_document_with_http_info(request)
      data
    end

    # Compare document with original document.
    # 
    # @param request PostCompareDocumentRequest
    # @return [Array<(DocumentResponse, Fixnum, Hash)>]
    # DocumentResponse data, response status code and response headers
    private def post_compare_document_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? PostCompareDocumentRequest

      @api_client.config.logger.debug 'Calling API: WordsApi.post_compare_document ...' if @api_client.config.debugging
      # verify the required parameter 'name' is set
      raise ArgumentError, 'Missing the required parameter name when calling WordsApi.post_compare_document' if @api_client.config.client_side_validation && request.name.nil?
      # verify the required parameter 'compare_data' is set
      raise ArgumentError, 'Missing the required parameter compare_data when calling WordsApi.post_compare_document' if @api_client.config.client_side_validation && request.compare_data.nil?
      # resource path
      local_var_path = '/words/{name}/compareDocument'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.to_s)

      # query parameters
      query_params = {}
      if local_var_path.include? downcase_first_letter('Folder')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Folder') + '}', request.folder.to_s)
      else
        query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
      end
      if local_var_path.include? downcase_first_letter('Storage')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Storage') + '}', request.storage.to_s)
      else
        query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
      end
      if local_var_path.include? downcase_first_letter('LoadEncoding')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('LoadEncoding') + '}', request.load_encoding.to_s)
      else
        query_params[downcase_first_letter('LoadEncoding')] = request.load_encoding unless request.load_encoding.nil?
      end
      if local_var_path.include? downcase_first_letter('Password')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Password') + '}', request.password.to_s)
      else
        query_params[downcase_first_letter('Password')] = request.password unless request.password.nil?
      end
      if local_var_path.include? downcase_first_letter('DestFileName')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('DestFileName') + '}', request.dest_file_name.to_s)
      else
        query_params[downcase_first_letter('DestFileName')] = request.dest_file_name unless request.dest_file_name.nil?
      end

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/xml', 'application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/xml', 'application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(request.compare_data)
      auth_names = ['oauth']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names,
                                                        return_type: 'DocumentResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#post_compare_document\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Execute document mail merge operation.
    # 
    # @param request PostDocumentExecuteMailMergeRequest
    # @return [DocumentResponse]
    def post_document_execute_mail_merge(request)
      data, _status_code, _headers = post_document_execute_mail_merge_with_http_info(request)
      data
    end

    # Execute document mail merge operation.
    # 
    # @param request PostDocumentExecuteMailMergeRequest
    # @return [Array<(DocumentResponse, Fixnum, Hash)>]
    # DocumentResponse data, response status code and response headers
    private def post_document_execute_mail_merge_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? PostDocumentExecuteMailMergeRequest

      @api_client.config.logger.debug 'Calling API: WordsApi.post_document_execute_mail_merge ...' if @api_client.config.debugging
      # verify the required parameter 'name' is set
      raise ArgumentError, 'Missing the required parameter name when calling WordsApi.post_document_execute_mail_merge' if @api_client.config.client_side_validation && request.name.nil?
      # resource path
      local_var_path = '/words/{name}/executeMailMerge'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.to_s)

      # query parameters
      query_params = {}
      if local_var_path.include? downcase_first_letter('Folder')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Folder') + '}', request.folder.to_s)
      else
        query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
      end
      if local_var_path.include? downcase_first_letter('Storage')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Storage') + '}', request.storage.to_s)
      else
        query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
      end
      if local_var_path.include? downcase_first_letter('LoadEncoding')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('LoadEncoding') + '}', request.load_encoding.to_s)
      else
        query_params[downcase_first_letter('LoadEncoding')] = request.load_encoding unless request.load_encoding.nil?
      end
      if local_var_path.include? downcase_first_letter('Password')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Password') + '}', request.password.to_s)
      else
        query_params[downcase_first_letter('Password')] = request.password unless request.password.nil?
      end
      if local_var_path.include? downcase_first_letter('WithRegions')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('WithRegions') + '}', request.with_regions.to_s)
      else
        query_params[downcase_first_letter('WithRegions')] = request.with_regions unless request.with_regions.nil?
      end
      if local_var_path.include? downcase_first_letter('MailMergeDataFile')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('MailMergeDataFile') + '}', request.mail_merge_data_file.to_s)
      else
        query_params[downcase_first_letter('MailMergeDataFile')] = request.mail_merge_data_file unless request.mail_merge_data_file.nil?
      end
      if local_var_path.include? downcase_first_letter('Cleanup')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Cleanup') + '}', request.cleanup.to_s)
      else
        query_params[downcase_first_letter('Cleanup')] = request.cleanup unless request.cleanup.nil?
      end
      if local_var_path.include? downcase_first_letter('UseWholeParagraphAsRegion')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('UseWholeParagraphAsRegion') + '}', request.use_whole_paragraph_as_region.to_s)
      else
        query_params[downcase_first_letter('UseWholeParagraphAsRegion')] = request.use_whole_paragraph_as_region unless request.use_whole_paragraph_as_region.nil?
      end
      if local_var_path.include? downcase_first_letter('DestFileName')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('DestFileName') + '}', request.dest_file_name.to_s)
      else
        query_params[downcase_first_letter('DestFileName')] = request.dest_file_name unless request.dest_file_name.nil?
      end

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/xml', 'application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['multipart/form-data'])

      # form parameters
      form_params = {}
      form_params[downcase_first_letter('Data')] = request.data unless request.data.nil?

      # http body (model)
      post_body = nil
      auth_names = ['oauth']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names,
                                                        return_type: 'DocumentResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#post_document_execute_mail_merge\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Updates font properties, returns updated font data.
    # 
    # @param request PostDocumentParagraphRunFontRequest
    # @return [FontResponse]
    def post_document_paragraph_run_font(request)
      data, _status_code, _headers = post_document_paragraph_run_font_with_http_info(request)
      data
    end

    # Updates font properties, returns updated font data.
    # 
    # @param request PostDocumentParagraphRunFontRequest
    # @return [Array<(FontResponse, Fixnum, Hash)>]
    # FontResponse data, response status code and response headers
    private def post_document_paragraph_run_font_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? PostDocumentParagraphRunFontRequest

      @api_client.config.logger.debug 'Calling API: WordsApi.post_document_paragraph_run_font ...' if @api_client.config.debugging
      # verify the required parameter 'name' is set
      raise ArgumentError, 'Missing the required parameter name when calling WordsApi.post_document_paragraph_run_font' if @api_client.config.client_side_validation && request.name.nil?
      # verify the required parameter 'font_dto' is set
      raise ArgumentError, 'Missing the required parameter font_dto when calling WordsApi.post_document_paragraph_run_font' if @api_client.config.client_side_validation && request.font_dto.nil?
      # verify the required parameter 'paragraph_path' is set
      raise ArgumentError, 'Missing the required parameter paragraph_path when calling WordsApi.post_document_paragraph_run_font' if @api_client.config.client_side_validation && request.paragraph_path.nil?
      # verify the required parameter 'index' is set
      raise ArgumentError, 'Missing the required parameter index when calling WordsApi.post_document_paragraph_run_font' if @api_client.config.client_side_validation && request.index.nil?
      # resource path
      local_var_path = '/words/{name}/{paragraphPath}/runs/{index}/font'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.to_s)
      local_var_path = local_var_path.sub('{' + downcase_first_letter('ParagraphPath') + '}', request.paragraph_path.to_s)
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Index') + '}', request.index.to_s)

      # query parameters
      query_params = {}
      if local_var_path.include? downcase_first_letter('Folder')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Folder') + '}', request.folder.to_s)
      else
        query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
      end
      if local_var_path.include? downcase_first_letter('Storage')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Storage') + '}', request.storage.to_s)
      else
        query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
      end
      if local_var_path.include? downcase_first_letter('LoadEncoding')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('LoadEncoding') + '}', request.load_encoding.to_s)
      else
        query_params[downcase_first_letter('LoadEncoding')] = request.load_encoding unless request.load_encoding.nil?
      end
      if local_var_path.include? downcase_first_letter('Password')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Password') + '}', request.password.to_s)
      else
        query_params[downcase_first_letter('Password')] = request.password unless request.password.nil?
      end
      if local_var_path.include? downcase_first_letter('DestFileName')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('DestFileName') + '}', request.dest_file_name.to_s)
      else
        query_params[downcase_first_letter('DestFileName')] = request.dest_file_name unless request.dest_file_name.nil?
      end
      if local_var_path.include? downcase_first_letter('RevisionAuthor')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('RevisionAuthor') + '}', request.revision_author.to_s)
      else
        query_params[downcase_first_letter('RevisionAuthor')] = request.revision_author unless request.revision_author.nil?
      end
      if local_var_path.include? downcase_first_letter('RevisionDateTime')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('RevisionDateTime') + '}', request.revision_date_time.to_s)
      else
        query_params[downcase_first_letter('RevisionDateTime')] = request.revision_date_time unless request.revision_date_time.nil?
      end

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/xml', 'application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/xml', 'application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(request.font_dto)
      auth_names = ['oauth']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names,
                                                        return_type: 'FontResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#post_document_paragraph_run_font\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Convert document to destination format with detailed settings and save result to storage.
    # 
    # @param request PostDocumentSaveAsRequest
    # @return [SaveResponse]
    def post_document_save_as(request)
      data, _status_code, _headers = post_document_save_as_with_http_info(request)
      data
    end

    # Convert document to destination format with detailed settings and save result to storage.
    # 
    # @param request PostDocumentSaveAsRequest
    # @return [Array<(SaveResponse, Fixnum, Hash)>]
    # SaveResponse data, response status code and response headers
    private def post_document_save_as_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? PostDocumentSaveAsRequest

      @api_client.config.logger.debug 'Calling API: WordsApi.post_document_save_as ...' if @api_client.config.debugging
      # verify the required parameter 'name' is set
      raise ArgumentError, 'Missing the required parameter name when calling WordsApi.post_document_save_as' if @api_client.config.client_side_validation && request.name.nil?
      # verify the required parameter 'save_options_data' is set
      raise ArgumentError, 'Missing the required parameter save_options_data when calling WordsApi.post_document_save_as' if @api_client.config.client_side_validation && request.save_options_data.nil?
      # resource path
      local_var_path = '/words/{name}/saveAs'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.to_s)

      # query parameters
      query_params = {}
      if local_var_path.include? downcase_first_letter('Folder')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Folder') + '}', request.folder.to_s)
      else
        query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
      end
      if local_var_path.include? downcase_first_letter('Storage')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Storage') + '}', request.storage.to_s)
      else
        query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
      end
      if local_var_path.include? downcase_first_letter('LoadEncoding')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('LoadEncoding') + '}', request.load_encoding.to_s)
      else
        query_params[downcase_first_letter('LoadEncoding')] = request.load_encoding unless request.load_encoding.nil?
      end
      if local_var_path.include? downcase_first_letter('Password')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Password') + '}', request.password.to_s)
      else
        query_params[downcase_first_letter('Password')] = request.password unless request.password.nil?
      end
      if local_var_path.include? downcase_first_letter('DestFileName')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('DestFileName') + '}', request.dest_file_name.to_s)
      else
        query_params[downcase_first_letter('DestFileName')] = request.dest_file_name unless request.dest_file_name.nil?
      end
      if local_var_path.include? downcase_first_letter('FontsLocation')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('FontsLocation') + '}', request.fonts_location.to_s)
      else
        query_params[downcase_first_letter('FontsLocation')] = request.fonts_location unless request.fonts_location.nil?
      end

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/xml', 'application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/xml', 'application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(request.save_options_data)
      auth_names = ['oauth']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names,
                                                        return_type: 'SaveResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#post_document_save_as\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Updates drawing object, returns updated  drawing object's data.
    # 
    # @param request PostDrawingObjectRequest
    # @return [DrawingObjectResponse]
    def post_drawing_object(request)
      data, _status_code, _headers = post_drawing_object_with_http_info(request)
      data
    end

    # Updates drawing object, returns updated  drawing object&#39;s data.
    # 
    # @param request PostDrawingObjectRequest
    # @return [Array<(DrawingObjectResponse, Fixnum, Hash)>]
    # DrawingObjectResponse data, response status code and response headers
    private def post_drawing_object_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? PostDrawingObjectRequest

      @api_client.config.logger.debug 'Calling API: WordsApi.post_drawing_object ...' if @api_client.config.debugging
      # verify the required parameter 'name' is set
      raise ArgumentError, 'Missing the required parameter name when calling WordsApi.post_drawing_object' if @api_client.config.client_side_validation && request.name.nil?
      # verify the required parameter 'drawing_object' is set
      raise ArgumentError, 'Missing the required parameter drawing_object when calling WordsApi.post_drawing_object' if @api_client.config.client_side_validation && request.drawing_object.nil?
      # verify the required parameter 'image_file' is set
      raise ArgumentError, 'Missing the required parameter image_file when calling WordsApi.post_drawing_object' if @api_client.config.client_side_validation && request.image_file.nil?
      # verify the required parameter 'index' is set
      raise ArgumentError, 'Missing the required parameter index when calling WordsApi.post_drawing_object' if @api_client.config.client_side_validation && request.index.nil?
      # resource path
      local_var_path = '/words/{name}/{nodePath}/drawingObjects/{index}'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.to_s)
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Index') + '}', request.index.to_s)

      # query parameters
      query_params = {}
      if local_var_path.include? downcase_first_letter('Folder')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Folder') + '}', request.folder.to_s)
      else
        query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
      end
      if local_var_path.include? downcase_first_letter('Storage')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Storage') + '}', request.storage.to_s)
      else
        query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
      end
      if local_var_path.include? downcase_first_letter('LoadEncoding')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('LoadEncoding') + '}', request.load_encoding.to_s)
      else
        query_params[downcase_first_letter('LoadEncoding')] = request.load_encoding unless request.load_encoding.nil?
      end
      if local_var_path.include? downcase_first_letter('Password')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Password') + '}', request.password.to_s)
      else
        query_params[downcase_first_letter('Password')] = request.password unless request.password.nil?
      end
      if local_var_path.include? downcase_first_letter('DestFileName')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('DestFileName') + '}', request.dest_file_name.to_s)
      else
        query_params[downcase_first_letter('DestFileName')] = request.dest_file_name unless request.dest_file_name.nil?
      end
      if local_var_path.include? downcase_first_letter('RevisionAuthor')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('RevisionAuthor') + '}', request.revision_author.to_s)
      else
        query_params[downcase_first_letter('RevisionAuthor')] = request.revision_author unless request.revision_author.nil?
      end
      if local_var_path.include? downcase_first_letter('RevisionDateTime')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('RevisionDateTime') + '}', request.revision_date_time.to_s)
      else
        query_params[downcase_first_letter('RevisionDateTime')] = request.revision_date_time unless request.revision_date_time.nil?
      end
      if local_var_path.include? downcase_first_letter('NodePath')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('NodePath') + '}', request.node_path.to_s)
      else
        query_params[downcase_first_letter('NodePath')] = request.node_path unless request.node_path.nil?
      end

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/xml', 'application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['multipart/form-data'])

      # form parameters
      form_params = {}
      form_params[downcase_first_letter('DrawingObject')] = request.drawing_object
      form_params[downcase_first_letter('ImageFile')] = request.image_file

      # http body (model)
      post_body = nil
      auth_names = ['oauth']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names,
                                                        return_type: 'DrawingObjectResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#post_drawing_object\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Populate document template with data.
    # 
    # @param request PostExecuteTemplateRequest
    # @return [DocumentResponse]
    def post_execute_template(request)
      data, _status_code, _headers = post_execute_template_with_http_info(request)
      data
    end

    # Populate document template with data.
    # 
    # @param request PostExecuteTemplateRequest
    # @return [Array<(DocumentResponse, Fixnum, Hash)>]
    # DocumentResponse data, response status code and response headers
    private def post_execute_template_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? PostExecuteTemplateRequest

      @api_client.config.logger.debug 'Calling API: WordsApi.post_execute_template ...' if @api_client.config.debugging
      # verify the required parameter 'name' is set
      raise ArgumentError, 'Missing the required parameter name when calling WordsApi.post_execute_template' if @api_client.config.client_side_validation && request.name.nil?
      # verify the required parameter 'data' is set
      raise ArgumentError, 'Missing the required parameter data when calling WordsApi.post_execute_template' if @api_client.config.client_side_validation && request.data.nil?
      # resource path
      local_var_path = '/words/{name}/executeTemplate'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.to_s)

      # query parameters
      query_params = {}
      if local_var_path.include? downcase_first_letter('Folder')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Folder') + '}', request.folder.to_s)
      else
        query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
      end
      if local_var_path.include? downcase_first_letter('Storage')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Storage') + '}', request.storage.to_s)
      else
        query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
      end
      if local_var_path.include? downcase_first_letter('LoadEncoding')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('LoadEncoding') + '}', request.load_encoding.to_s)
      else
        query_params[downcase_first_letter('LoadEncoding')] = request.load_encoding unless request.load_encoding.nil?
      end
      if local_var_path.include? downcase_first_letter('Password')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Password') + '}', request.password.to_s)
      else
        query_params[downcase_first_letter('Password')] = request.password unless request.password.nil?
      end
      if local_var_path.include? downcase_first_letter('Cleanup')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Cleanup') + '}', request.cleanup.to_s)
      else
        query_params[downcase_first_letter('Cleanup')] = request.cleanup unless request.cleanup.nil?
      end
      if local_var_path.include? downcase_first_letter('UseWholeParagraphAsRegion')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('UseWholeParagraphAsRegion') + '}', request.use_whole_paragraph_as_region.to_s)
      else
        query_params[downcase_first_letter('UseWholeParagraphAsRegion')] = request.use_whole_paragraph_as_region unless request.use_whole_paragraph_as_region.nil?
      end
      if local_var_path.include? downcase_first_letter('WithRegions')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('WithRegions') + '}', request.with_regions.to_s)
      else
        query_params[downcase_first_letter('WithRegions')] = request.with_regions unless request.with_regions.nil?
      end
      if local_var_path.include? downcase_first_letter('DestFileName')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('DestFileName') + '}', request.dest_file_name.to_s)
      else
        query_params[downcase_first_letter('DestFileName')] = request.dest_file_name unless request.dest_file_name.nil?
      end

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/xml', 'application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['multipart/form-data'])

      # form parameters
      form_params = {}
      form_params[downcase_first_letter('Data')] = request.data

      # http body (model)
      post_body = nil
      auth_names = ['oauth']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names,
                                                        return_type: 'DocumentResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#post_execute_template\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Updates field's properties, returns updated field's data.
    # 
    # @param request PostFieldRequest
    # @return [FieldResponse]
    def post_field(request)
      data, _status_code, _headers = post_field_with_http_info(request)
      data
    end

    # Updates field&#39;s properties, returns updated field&#39;s data.
    # 
    # @param request PostFieldRequest
    # @return [Array<(FieldResponse, Fixnum, Hash)>]
    # FieldResponse data, response status code and response headers
    private def post_field_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? PostFieldRequest

      @api_client.config.logger.debug 'Calling API: WordsApi.post_field ...' if @api_client.config.debugging
      # verify the required parameter 'name' is set
      raise ArgumentError, 'Missing the required parameter name when calling WordsApi.post_field' if @api_client.config.client_side_validation && request.name.nil?
      # verify the required parameter 'field' is set
      raise ArgumentError, 'Missing the required parameter field when calling WordsApi.post_field' if @api_client.config.client_side_validation && request.field.nil?
      # verify the required parameter 'index' is set
      raise ArgumentError, 'Missing the required parameter index when calling WordsApi.post_field' if @api_client.config.client_side_validation && request.index.nil?
      # resource path
      local_var_path = '/words/{name}/{nodePath}/fields/{index}'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.to_s)
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Index') + '}', request.index.to_s)

      # query parameters
      query_params = {}
      if local_var_path.include? downcase_first_letter('Folder')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Folder') + '}', request.folder.to_s)
      else
        query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
      end
      if local_var_path.include? downcase_first_letter('Storage')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Storage') + '}', request.storage.to_s)
      else
        query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
      end
      if local_var_path.include? downcase_first_letter('LoadEncoding')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('LoadEncoding') + '}', request.load_encoding.to_s)
      else
        query_params[downcase_first_letter('LoadEncoding')] = request.load_encoding unless request.load_encoding.nil?
      end
      if local_var_path.include? downcase_first_letter('Password')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Password') + '}', request.password.to_s)
      else
        query_params[downcase_first_letter('Password')] = request.password unless request.password.nil?
      end
      if local_var_path.include? downcase_first_letter('DestFileName')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('DestFileName') + '}', request.dest_file_name.to_s)
      else
        query_params[downcase_first_letter('DestFileName')] = request.dest_file_name unless request.dest_file_name.nil?
      end
      if local_var_path.include? downcase_first_letter('RevisionAuthor')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('RevisionAuthor') + '}', request.revision_author.to_s)
      else
        query_params[downcase_first_letter('RevisionAuthor')] = request.revision_author unless request.revision_author.nil?
      end
      if local_var_path.include? downcase_first_letter('RevisionDateTime')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('RevisionDateTime') + '}', request.revision_date_time.to_s)
      else
        query_params[downcase_first_letter('RevisionDateTime')] = request.revision_date_time unless request.revision_date_time.nil?
      end
      if local_var_path.include? downcase_first_letter('NodePath')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('NodePath') + '}', request.node_path.to_s)
      else
        query_params[downcase_first_letter('NodePath')] = request.node_path unless request.node_path.nil?
      end

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/xml', 'application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/xml', 'application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(request.field)
      auth_names = ['oauth']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names,
                                                        return_type: 'FieldResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#post_field\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Updates footnote's properties, returns updated run's data.
    # 
    # @param request PostFootnoteRequest
    # @return [FootnoteResponse]
    def post_footnote(request)
      data, _status_code, _headers = post_footnote_with_http_info(request)
      data
    end

    # Updates footnote&#39;s properties, returns updated run&#39;s data.
    # 
    # @param request PostFootnoteRequest
    # @return [Array<(FootnoteResponse, Fixnum, Hash)>]
    # FootnoteResponse data, response status code and response headers
    private def post_footnote_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? PostFootnoteRequest

      @api_client.config.logger.debug 'Calling API: WordsApi.post_footnote ...' if @api_client.config.debugging
      # verify the required parameter 'name' is set
      raise ArgumentError, 'Missing the required parameter name when calling WordsApi.post_footnote' if @api_client.config.client_side_validation && request.name.nil?
      # verify the required parameter 'footnote_dto' is set
      raise ArgumentError, 'Missing the required parameter footnote_dto when calling WordsApi.post_footnote' if @api_client.config.client_side_validation && request.footnote_dto.nil?
      # verify the required parameter 'index' is set
      raise ArgumentError, 'Missing the required parameter index when calling WordsApi.post_footnote' if @api_client.config.client_side_validation && request.index.nil?
      # resource path
      local_var_path = '/words/{name}/{nodePath}/footnotes/{index}'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.to_s)
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Index') + '}', request.index.to_s)

      # query parameters
      query_params = {}
      if local_var_path.include? downcase_first_letter('Folder')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Folder') + '}', request.folder.to_s)
      else
        query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
      end
      if local_var_path.include? downcase_first_letter('Storage')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Storage') + '}', request.storage.to_s)
      else
        query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
      end
      if local_var_path.include? downcase_first_letter('LoadEncoding')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('LoadEncoding') + '}', request.load_encoding.to_s)
      else
        query_params[downcase_first_letter('LoadEncoding')] = request.load_encoding unless request.load_encoding.nil?
      end
      if local_var_path.include? downcase_first_letter('Password')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Password') + '}', request.password.to_s)
      else
        query_params[downcase_first_letter('Password')] = request.password unless request.password.nil?
      end
      if local_var_path.include? downcase_first_letter('DestFileName')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('DestFileName') + '}', request.dest_file_name.to_s)
      else
        query_params[downcase_first_letter('DestFileName')] = request.dest_file_name unless request.dest_file_name.nil?
      end
      if local_var_path.include? downcase_first_letter('RevisionAuthor')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('RevisionAuthor') + '}', request.revision_author.to_s)
      else
        query_params[downcase_first_letter('RevisionAuthor')] = request.revision_author unless request.revision_author.nil?
      end
      if local_var_path.include? downcase_first_letter('RevisionDateTime')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('RevisionDateTime') + '}', request.revision_date_time.to_s)
      else
        query_params[downcase_first_letter('RevisionDateTime')] = request.revision_date_time unless request.revision_date_time.nil?
      end
      if local_var_path.include? downcase_first_letter('NodePath')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('NodePath') + '}', request.node_path.to_s)
      else
        query_params[downcase_first_letter('NodePath')] = request.node_path unless request.node_path.nil?
      end

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/xml', 'application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/xml', 'application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(request.footnote_dto)
      auth_names = ['oauth']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names,
                                                        return_type: 'FootnoteResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#post_footnote\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Updates properties of form field, returns updated form field.
    # 
    # @param request PostFormFieldRequest
    # @return [FormFieldResponse]
    def post_form_field(request)
      data, _status_code, _headers = post_form_field_with_http_info(request)
      data
    end

    # Updates properties of form field, returns updated form field.
    # 
    # @param request PostFormFieldRequest
    # @return [Array<(FormFieldResponse, Fixnum, Hash)>]
    # FormFieldResponse data, response status code and response headers
    private def post_form_field_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? PostFormFieldRequest

      @api_client.config.logger.debug 'Calling API: WordsApi.post_form_field ...' if @api_client.config.debugging
      # verify the required parameter 'name' is set
      raise ArgumentError, 'Missing the required parameter name when calling WordsApi.post_form_field' if @api_client.config.client_side_validation && request.name.nil?
      # verify the required parameter 'form_field' is set
      raise ArgumentError, 'Missing the required parameter form_field when calling WordsApi.post_form_field' if @api_client.config.client_side_validation && request.form_field.nil?
      # verify the required parameter 'index' is set
      raise ArgumentError, 'Missing the required parameter index when calling WordsApi.post_form_field' if @api_client.config.client_side_validation && request.index.nil?
      # resource path
      local_var_path = '/words/{name}/{nodePath}/formfields/{index}'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.to_s)
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Index') + '}', request.index.to_s)

      # query parameters
      query_params = {}
      if local_var_path.include? downcase_first_letter('Folder')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Folder') + '}', request.folder.to_s)
      else
        query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
      end
      if local_var_path.include? downcase_first_letter('Storage')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Storage') + '}', request.storage.to_s)
      else
        query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
      end
      if local_var_path.include? downcase_first_letter('LoadEncoding')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('LoadEncoding') + '}', request.load_encoding.to_s)
      else
        query_params[downcase_first_letter('LoadEncoding')] = request.load_encoding unless request.load_encoding.nil?
      end
      if local_var_path.include? downcase_first_letter('Password')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Password') + '}', request.password.to_s)
      else
        query_params[downcase_first_letter('Password')] = request.password unless request.password.nil?
      end
      if local_var_path.include? downcase_first_letter('DestFileName')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('DestFileName') + '}', request.dest_file_name.to_s)
      else
        query_params[downcase_first_letter('DestFileName')] = request.dest_file_name unless request.dest_file_name.nil?
      end
      if local_var_path.include? downcase_first_letter('RevisionAuthor')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('RevisionAuthor') + '}', request.revision_author.to_s)
      else
        query_params[downcase_first_letter('RevisionAuthor')] = request.revision_author unless request.revision_author.nil?
      end
      if local_var_path.include? downcase_first_letter('RevisionDateTime')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('RevisionDateTime') + '}', request.revision_date_time.to_s)
      else
        query_params[downcase_first_letter('RevisionDateTime')] = request.revision_date_time unless request.revision_date_time.nil?
      end
      if local_var_path.include? downcase_first_letter('NodePath')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('NodePath') + '}', request.node_path.to_s)
      else
        query_params[downcase_first_letter('NodePath')] = request.node_path unless request.node_path.nil?
      end

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/xml', 'application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/xml', 'application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(request.form_field)
      auth_names = ['oauth']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names,
                                                        return_type: 'FormFieldResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#post_form_field\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Insert document watermark image.
    # 
    # @param request PostInsertDocumentWatermarkImageRequest
    # @return [DocumentResponse]
    def post_insert_document_watermark_image(request)
      data, _status_code, _headers = post_insert_document_watermark_image_with_http_info(request)
      data
    end

    # Insert document watermark image.
    # 
    # @param request PostInsertDocumentWatermarkImageRequest
    # @return [Array<(DocumentResponse, Fixnum, Hash)>]
    # DocumentResponse data, response status code and response headers
    private def post_insert_document_watermark_image_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? PostInsertDocumentWatermarkImageRequest

      @api_client.config.logger.debug 'Calling API: WordsApi.post_insert_document_watermark_image ...' if @api_client.config.debugging
      # verify the required parameter 'name' is set
      raise ArgumentError, 'Missing the required parameter name when calling WordsApi.post_insert_document_watermark_image' if @api_client.config.client_side_validation && request.name.nil?
      # resource path
      local_var_path = '/words/{name}/watermark/insertImage'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.to_s)

      # query parameters
      query_params = {}
      if local_var_path.include? downcase_first_letter('Folder')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Folder') + '}', request.folder.to_s)
      else
        query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
      end
      if local_var_path.include? downcase_first_letter('Storage')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Storage') + '}', request.storage.to_s)
      else
        query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
      end
      if local_var_path.include? downcase_first_letter('LoadEncoding')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('LoadEncoding') + '}', request.load_encoding.to_s)
      else
        query_params[downcase_first_letter('LoadEncoding')] = request.load_encoding unless request.load_encoding.nil?
      end
      if local_var_path.include? downcase_first_letter('Password')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Password') + '}', request.password.to_s)
      else
        query_params[downcase_first_letter('Password')] = request.password unless request.password.nil?
      end
      if local_var_path.include? downcase_first_letter('DestFileName')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('DestFileName') + '}', request.dest_file_name.to_s)
      else
        query_params[downcase_first_letter('DestFileName')] = request.dest_file_name unless request.dest_file_name.nil?
      end
      if local_var_path.include? downcase_first_letter('RevisionAuthor')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('RevisionAuthor') + '}', request.revision_author.to_s)
      else
        query_params[downcase_first_letter('RevisionAuthor')] = request.revision_author unless request.revision_author.nil?
      end
      if local_var_path.include? downcase_first_letter('RevisionDateTime')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('RevisionDateTime') + '}', request.revision_date_time.to_s)
      else
        query_params[downcase_first_letter('RevisionDateTime')] = request.revision_date_time unless request.revision_date_time.nil?
      end
      if local_var_path.include? downcase_first_letter('RotationAngle')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('RotationAngle') + '}', request.rotation_angle.to_s)
      else
        query_params[downcase_first_letter('RotationAngle')] = request.rotation_angle unless request.rotation_angle.nil?
      end
      if local_var_path.include? downcase_first_letter('Image')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Image') + '}', request.image.to_s)
      else
        query_params[downcase_first_letter('Image')] = request.image unless request.image.nil?
      end

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/xml', 'application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['multipart/form-data'])

      # form parameters
      form_params = {}
      form_params[downcase_first_letter('ImageFile')] = request.image_file unless request.image_file.nil?

      # http body (model)
      post_body = nil
      auth_names = ['oauth']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names,
                                                        return_type: 'DocumentResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#post_insert_document_watermark_image\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Insert document watermark text.
    # 
    # @param request PostInsertDocumentWatermarkTextRequest
    # @return [DocumentResponse]
    def post_insert_document_watermark_text(request)
      data, _status_code, _headers = post_insert_document_watermark_text_with_http_info(request)
      data
    end

    # Insert document watermark text.
    # 
    # @param request PostInsertDocumentWatermarkTextRequest
    # @return [Array<(DocumentResponse, Fixnum, Hash)>]
    # DocumentResponse data, response status code and response headers
    private def post_insert_document_watermark_text_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? PostInsertDocumentWatermarkTextRequest

      @api_client.config.logger.debug 'Calling API: WordsApi.post_insert_document_watermark_text ...' if @api_client.config.debugging
      # verify the required parameter 'name' is set
      raise ArgumentError, 'Missing the required parameter name when calling WordsApi.post_insert_document_watermark_text' if @api_client.config.client_side_validation && request.name.nil?
      # verify the required parameter 'watermark_text' is set
      raise ArgumentError, 'Missing the required parameter watermark_text when calling WordsApi.post_insert_document_watermark_text' if @api_client.config.client_side_validation && request.watermark_text.nil?
      # resource path
      local_var_path = '/words/{name}/watermark/insertText'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.to_s)

      # query parameters
      query_params = {}
      if local_var_path.include? downcase_first_letter('Folder')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Folder') + '}', request.folder.to_s)
      else
        query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
      end
      if local_var_path.include? downcase_first_letter('Storage')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Storage') + '}', request.storage.to_s)
      else
        query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
      end
      if local_var_path.include? downcase_first_letter('LoadEncoding')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('LoadEncoding') + '}', request.load_encoding.to_s)
      else
        query_params[downcase_first_letter('LoadEncoding')] = request.load_encoding unless request.load_encoding.nil?
      end
      if local_var_path.include? downcase_first_letter('Password')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Password') + '}', request.password.to_s)
      else
        query_params[downcase_first_letter('Password')] = request.password unless request.password.nil?
      end
      if local_var_path.include? downcase_first_letter('DestFileName')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('DestFileName') + '}', request.dest_file_name.to_s)
      else
        query_params[downcase_first_letter('DestFileName')] = request.dest_file_name unless request.dest_file_name.nil?
      end
      if local_var_path.include? downcase_first_letter('RevisionAuthor')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('RevisionAuthor') + '}', request.revision_author.to_s)
      else
        query_params[downcase_first_letter('RevisionAuthor')] = request.revision_author unless request.revision_author.nil?
      end
      if local_var_path.include? downcase_first_letter('RevisionDateTime')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('RevisionDateTime') + '}', request.revision_date_time.to_s)
      else
        query_params[downcase_first_letter('RevisionDateTime')] = request.revision_date_time unless request.revision_date_time.nil?
      end

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/xml', 'application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/xml', 'application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(request.watermark_text)
      auth_names = ['oauth']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names,
                                                        return_type: 'DocumentResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#post_insert_document_watermark_text\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Insert document page numbers.
    # 
    # @param request PostInsertPageNumbersRequest
    # @return [DocumentResponse]
    def post_insert_page_numbers(request)
      data, _status_code, _headers = post_insert_page_numbers_with_http_info(request)
      data
    end

    # Insert document page numbers.
    # 
    # @param request PostInsertPageNumbersRequest
    # @return [Array<(DocumentResponse, Fixnum, Hash)>]
    # DocumentResponse data, response status code and response headers
    private def post_insert_page_numbers_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? PostInsertPageNumbersRequest

      @api_client.config.logger.debug 'Calling API: WordsApi.post_insert_page_numbers ...' if @api_client.config.debugging
      # verify the required parameter 'name' is set
      raise ArgumentError, 'Missing the required parameter name when calling WordsApi.post_insert_page_numbers' if @api_client.config.client_side_validation && request.name.nil?
      # verify the required parameter 'page_number' is set
      raise ArgumentError, 'Missing the required parameter page_number when calling WordsApi.post_insert_page_numbers' if @api_client.config.client_side_validation && request.page_number.nil?
      # resource path
      local_var_path = '/words/{name}/insertPageNumbers'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.to_s)

      # query parameters
      query_params = {}
      if local_var_path.include? downcase_first_letter('Folder')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Folder') + '}', request.folder.to_s)
      else
        query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
      end
      if local_var_path.include? downcase_first_letter('Storage')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Storage') + '}', request.storage.to_s)
      else
        query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
      end
      if local_var_path.include? downcase_first_letter('LoadEncoding')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('LoadEncoding') + '}', request.load_encoding.to_s)
      else
        query_params[downcase_first_letter('LoadEncoding')] = request.load_encoding unless request.load_encoding.nil?
      end
      if local_var_path.include? downcase_first_letter('Password')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Password') + '}', request.password.to_s)
      else
        query_params[downcase_first_letter('Password')] = request.password unless request.password.nil?
      end
      if local_var_path.include? downcase_first_letter('DestFileName')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('DestFileName') + '}', request.dest_file_name.to_s)
      else
        query_params[downcase_first_letter('DestFileName')] = request.dest_file_name unless request.dest_file_name.nil?
      end
      if local_var_path.include? downcase_first_letter('RevisionAuthor')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('RevisionAuthor') + '}', request.revision_author.to_s)
      else
        query_params[downcase_first_letter('RevisionAuthor')] = request.revision_author unless request.revision_author.nil?
      end
      if local_var_path.include? downcase_first_letter('RevisionDateTime')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('RevisionDateTime') + '}', request.revision_date_time.to_s)
      else
        query_params[downcase_first_letter('RevisionDateTime')] = request.revision_date_time unless request.revision_date_time.nil?
      end

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/xml', 'application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/xml', 'application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(request.page_number)
      auth_names = ['oauth']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names,
                                                        return_type: 'DocumentResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#post_insert_page_numbers\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Loads new document from web into the file with any supported format of data.
    # 
    # @param request PostLoadWebDocumentRequest
    # @return [SaveResponse]
    def post_load_web_document(request)
      data, _status_code, _headers = post_load_web_document_with_http_info(request)
      data
    end

    # Loads new document from web into the file with any supported format of data.
    # 
    # @param request PostLoadWebDocumentRequest
    # @return [Array<(SaveResponse, Fixnum, Hash)>]
    # SaveResponse data, response status code and response headers
    private def post_load_web_document_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? PostLoadWebDocumentRequest

      @api_client.config.logger.debug 'Calling API: WordsApi.post_load_web_document ...' if @api_client.config.debugging
      # verify the required parameter 'data' is set
      raise ArgumentError, 'Missing the required parameter data when calling WordsApi.post_load_web_document' if @api_client.config.client_side_validation && request.data.nil?
      # resource path
      local_var_path = '/words/loadWebDocument'

      # query parameters
      query_params = {}
      if local_var_path.include? downcase_first_letter('Storage')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Storage') + '}', request.storage.to_s)
      else
        query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
      end

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/xml', 'application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/xml', 'application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(request.data)
      auth_names = ['oauth']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names,
                                                        return_type: 'SaveResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#post_load_web_document\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Replace document text.
    # 
    # @param request PostReplaceTextRequest
    # @return [ReplaceTextResponse]
    def post_replace_text(request)
      data, _status_code, _headers = post_replace_text_with_http_info(request)
      data
    end

    # Replace document text.
    # 
    # @param request PostReplaceTextRequest
    # @return [Array<(ReplaceTextResponse, Fixnum, Hash)>]
    # ReplaceTextResponse data, response status code and response headers
    private def post_replace_text_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? PostReplaceTextRequest

      @api_client.config.logger.debug 'Calling API: WordsApi.post_replace_text ...' if @api_client.config.debugging
      # verify the required parameter 'name' is set
      raise ArgumentError, 'Missing the required parameter name when calling WordsApi.post_replace_text' if @api_client.config.client_side_validation && request.name.nil?
      # verify the required parameter 'replace_text' is set
      raise ArgumentError, 'Missing the required parameter replace_text when calling WordsApi.post_replace_text' if @api_client.config.client_side_validation && request.replace_text.nil?
      # resource path
      local_var_path = '/words/{name}/replaceText'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.to_s)

      # query parameters
      query_params = {}
      if local_var_path.include? downcase_first_letter('Folder')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Folder') + '}', request.folder.to_s)
      else
        query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
      end
      if local_var_path.include? downcase_first_letter('Storage')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Storage') + '}', request.storage.to_s)
      else
        query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
      end
      if local_var_path.include? downcase_first_letter('LoadEncoding')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('LoadEncoding') + '}', request.load_encoding.to_s)
      else
        query_params[downcase_first_letter('LoadEncoding')] = request.load_encoding unless request.load_encoding.nil?
      end
      if local_var_path.include? downcase_first_letter('Password')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Password') + '}', request.password.to_s)
      else
        query_params[downcase_first_letter('Password')] = request.password unless request.password.nil?
      end
      if local_var_path.include? downcase_first_letter('DestFileName')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('DestFileName') + '}', request.dest_file_name.to_s)
      else
        query_params[downcase_first_letter('DestFileName')] = request.dest_file_name unless request.dest_file_name.nil?
      end
      if local_var_path.include? downcase_first_letter('RevisionAuthor')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('RevisionAuthor') + '}', request.revision_author.to_s)
      else
        query_params[downcase_first_letter('RevisionAuthor')] = request.revision_author unless request.revision_author.nil?
      end
      if local_var_path.include? downcase_first_letter('RevisionDateTime')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('RevisionDateTime') + '}', request.revision_date_time.to_s)
      else
        query_params[downcase_first_letter('RevisionDateTime')] = request.revision_date_time unless request.revision_date_time.nil?
      end

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/xml', 'application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/xml', 'application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(request.replace_text)
      auth_names = ['oauth']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names,
                                                        return_type: 'ReplaceTextResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#post_replace_text\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Updates run's properties, returns updated run's data.
    # 
    # @param request PostRunRequest
    # @return [RunResponse]
    def post_run(request)
      data, _status_code, _headers = post_run_with_http_info(request)
      data
    end

    # Updates run&#39;s properties, returns updated run&#39;s data.
    # 
    # @param request PostRunRequest
    # @return [Array<(RunResponse, Fixnum, Hash)>]
    # RunResponse data, response status code and response headers
    private def post_run_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? PostRunRequest

      @api_client.config.logger.debug 'Calling API: WordsApi.post_run ...' if @api_client.config.debugging
      # verify the required parameter 'name' is set
      raise ArgumentError, 'Missing the required parameter name when calling WordsApi.post_run' if @api_client.config.client_side_validation && request.name.nil?
      # verify the required parameter 'run' is set
      raise ArgumentError, 'Missing the required parameter run when calling WordsApi.post_run' if @api_client.config.client_side_validation && request.run.nil?
      # verify the required parameter 'paragraph_path' is set
      raise ArgumentError, 'Missing the required parameter paragraph_path when calling WordsApi.post_run' if @api_client.config.client_side_validation && request.paragraph_path.nil?
      # verify the required parameter 'index' is set
      raise ArgumentError, 'Missing the required parameter index when calling WordsApi.post_run' if @api_client.config.client_side_validation && request.index.nil?
      # resource path
      local_var_path = '/words/{name}/{paragraphPath}/runs/{index}'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.to_s)
      local_var_path = local_var_path.sub('{' + downcase_first_letter('ParagraphPath') + '}', request.paragraph_path.to_s)
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Index') + '}', request.index.to_s)

      # query parameters
      query_params = {}
      if local_var_path.include? downcase_first_letter('Folder')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Folder') + '}', request.folder.to_s)
      else
        query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
      end
      if local_var_path.include? downcase_first_letter('Storage')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Storage') + '}', request.storage.to_s)
      else
        query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
      end
      if local_var_path.include? downcase_first_letter('LoadEncoding')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('LoadEncoding') + '}', request.load_encoding.to_s)
      else
        query_params[downcase_first_letter('LoadEncoding')] = request.load_encoding unless request.load_encoding.nil?
      end
      if local_var_path.include? downcase_first_letter('Password')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Password') + '}', request.password.to_s)
      else
        query_params[downcase_first_letter('Password')] = request.password unless request.password.nil?
      end
      if local_var_path.include? downcase_first_letter('DestFileName')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('DestFileName') + '}', request.dest_file_name.to_s)
      else
        query_params[downcase_first_letter('DestFileName')] = request.dest_file_name unless request.dest_file_name.nil?
      end
      if local_var_path.include? downcase_first_letter('RevisionAuthor')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('RevisionAuthor') + '}', request.revision_author.to_s)
      else
        query_params[downcase_first_letter('RevisionAuthor')] = request.revision_author unless request.revision_author.nil?
      end
      if local_var_path.include? downcase_first_letter('RevisionDateTime')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('RevisionDateTime') + '}', request.revision_date_time.to_s)
      else
        query_params[downcase_first_letter('RevisionDateTime')] = request.revision_date_time unless request.revision_date_time.nil?
      end

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/xml', 'application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/xml', 'application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(request.run)
      auth_names = ['oauth']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names,
                                                        return_type: 'RunResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#post_run\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Split document.
    # 
    # @param request PostSplitDocumentRequest
    # @return [SplitDocumentResponse]
    def post_split_document(request)
      data, _status_code, _headers = post_split_document_with_http_info(request)
      data
    end

    # Split document.
    # 
    # @param request PostSplitDocumentRequest
    # @return [Array<(SplitDocumentResponse, Fixnum, Hash)>]
    # SplitDocumentResponse data, response status code and response headers
    private def post_split_document_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? PostSplitDocumentRequest

      @api_client.config.logger.debug 'Calling API: WordsApi.post_split_document ...' if @api_client.config.debugging
      # verify the required parameter 'name' is set
      raise ArgumentError, 'Missing the required parameter name when calling WordsApi.post_split_document' if @api_client.config.client_side_validation && request.name.nil?
      # resource path
      local_var_path = '/words/{name}/split'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.to_s)

      # query parameters
      query_params = {}
      if local_var_path.include? downcase_first_letter('Folder')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Folder') + '}', request.folder.to_s)
      else
        query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
      end
      if local_var_path.include? downcase_first_letter('Storage')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Storage') + '}', request.storage.to_s)
      else
        query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
      end
      if local_var_path.include? downcase_first_letter('LoadEncoding')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('LoadEncoding') + '}', request.load_encoding.to_s)
      else
        query_params[downcase_first_letter('LoadEncoding')] = request.load_encoding unless request.load_encoding.nil?
      end
      if local_var_path.include? downcase_first_letter('Password')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Password') + '}', request.password.to_s)
      else
        query_params[downcase_first_letter('Password')] = request.password unless request.password.nil?
      end
      if local_var_path.include? downcase_first_letter('DestFileName')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('DestFileName') + '}', request.dest_file_name.to_s)
      else
        query_params[downcase_first_letter('DestFileName')] = request.dest_file_name unless request.dest_file_name.nil?
      end
      if local_var_path.include? downcase_first_letter('Format')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Format') + '}', request.format.to_s)
      else
        query_params[downcase_first_letter('Format')] = request.format unless request.format.nil?
      end
      if local_var_path.include? downcase_first_letter('From')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('From') + '}', request.from.to_s)
      else
        query_params[downcase_first_letter('From')] = request.from unless request.from.nil?
      end
      if local_var_path.include? downcase_first_letter('To')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('To') + '}', request.to.to_s)
      else
        query_params[downcase_first_letter('To')] = request.to unless request.to.nil?
      end
      if local_var_path.include? downcase_first_letter('ZipOutput')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('ZipOutput') + '}', request.zip_output.to_s)
      else
        query_params[downcase_first_letter('ZipOutput')] = request.zip_output unless request.zip_output.nil?
      end
      if local_var_path.include? downcase_first_letter('FontsLocation')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('FontsLocation') + '}', request.fonts_location.to_s)
      else
        query_params[downcase_first_letter('FontsLocation')] = request.fonts_location unless request.fonts_location.nil?
      end

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/xml', 'application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/xml', 'application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['oauth']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names,
                                                        return_type: 'SplitDocumentResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#post_split_document\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Update document bookmark.
    # 
    # @param request PostUpdateDocumentBookmarkRequest
    # @return [BookmarkResponse]
    def post_update_document_bookmark(request)
      data, _status_code, _headers = post_update_document_bookmark_with_http_info(request)
      data
    end

    # Update document bookmark.
    # 
    # @param request PostUpdateDocumentBookmarkRequest
    # @return [Array<(BookmarkResponse, Fixnum, Hash)>]
    # BookmarkResponse data, response status code and response headers
    private def post_update_document_bookmark_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? PostUpdateDocumentBookmarkRequest

      @api_client.config.logger.debug 'Calling API: WordsApi.post_update_document_bookmark ...' if @api_client.config.debugging
      # verify the required parameter 'name' is set
      raise ArgumentError, 'Missing the required parameter name when calling WordsApi.post_update_document_bookmark' if @api_client.config.client_side_validation && request.name.nil?
      # verify the required parameter 'bookmark_data' is set
      raise ArgumentError, 'Missing the required parameter bookmark_data when calling WordsApi.post_update_document_bookmark' if @api_client.config.client_side_validation && request.bookmark_data.nil?
      # verify the required parameter 'bookmark_name' is set
      raise ArgumentError, 'Missing the required parameter bookmark_name when calling WordsApi.post_update_document_bookmark' if @api_client.config.client_side_validation && request.bookmark_name.nil?
      # resource path
      local_var_path = '/words/{name}/bookmarks/{bookmarkName}'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.to_s)
      local_var_path = local_var_path.sub('{' + downcase_first_letter('BookmarkName') + '}', request.bookmark_name.to_s)

      # query parameters
      query_params = {}
      if local_var_path.include? downcase_first_letter('Folder')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Folder') + '}', request.folder.to_s)
      else
        query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
      end
      if local_var_path.include? downcase_first_letter('Storage')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Storage') + '}', request.storage.to_s)
      else
        query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
      end
      if local_var_path.include? downcase_first_letter('LoadEncoding')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('LoadEncoding') + '}', request.load_encoding.to_s)
      else
        query_params[downcase_first_letter('LoadEncoding')] = request.load_encoding unless request.load_encoding.nil?
      end
      if local_var_path.include? downcase_first_letter('Password')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Password') + '}', request.password.to_s)
      else
        query_params[downcase_first_letter('Password')] = request.password unless request.password.nil?
      end
      if local_var_path.include? downcase_first_letter('DestFileName')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('DestFileName') + '}', request.dest_file_name.to_s)
      else
        query_params[downcase_first_letter('DestFileName')] = request.dest_file_name unless request.dest_file_name.nil?
      end
      if local_var_path.include? downcase_first_letter('RevisionAuthor')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('RevisionAuthor') + '}', request.revision_author.to_s)
      else
        query_params[downcase_first_letter('RevisionAuthor')] = request.revision_author unless request.revision_author.nil?
      end
      if local_var_path.include? downcase_first_letter('RevisionDateTime')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('RevisionDateTime') + '}', request.revision_date_time.to_s)
      else
        query_params[downcase_first_letter('RevisionDateTime')] = request.revision_date_time unless request.revision_date_time.nil?
      end

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/xml', 'application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/xml', 'application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(request.bookmark_data)
      auth_names = ['oauth']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names,
                                                        return_type: 'BookmarkResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#post_update_document_bookmark\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Update (reevaluate) fields in document.
    # 
    # @param request PostUpdateDocumentFieldsRequest
    # @return [DocumentResponse]
    def post_update_document_fields(request)
      data, _status_code, _headers = post_update_document_fields_with_http_info(request)
      data
    end

    # Update (reevaluate) fields in document.
    # 
    # @param request PostUpdateDocumentFieldsRequest
    # @return [Array<(DocumentResponse, Fixnum, Hash)>]
    # DocumentResponse data, response status code and response headers
    private def post_update_document_fields_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? PostUpdateDocumentFieldsRequest

      @api_client.config.logger.debug 'Calling API: WordsApi.post_update_document_fields ...' if @api_client.config.debugging
      # verify the required parameter 'name' is set
      raise ArgumentError, 'Missing the required parameter name when calling WordsApi.post_update_document_fields' if @api_client.config.client_side_validation && request.name.nil?
      # resource path
      local_var_path = '/words/{name}/updateFields'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.to_s)

      # query parameters
      query_params = {}
      if local_var_path.include? downcase_first_letter('Folder')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Folder') + '}', request.folder.to_s)
      else
        query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
      end
      if local_var_path.include? downcase_first_letter('Storage')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Storage') + '}', request.storage.to_s)
      else
        query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
      end
      if local_var_path.include? downcase_first_letter('LoadEncoding')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('LoadEncoding') + '}', request.load_encoding.to_s)
      else
        query_params[downcase_first_letter('LoadEncoding')] = request.load_encoding unless request.load_encoding.nil?
      end
      if local_var_path.include? downcase_first_letter('Password')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Password') + '}', request.password.to_s)
      else
        query_params[downcase_first_letter('Password')] = request.password unless request.password.nil?
      end
      if local_var_path.include? downcase_first_letter('DestFileName')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('DestFileName') + '}', request.dest_file_name.to_s)
      else
        query_params[downcase_first_letter('DestFileName')] = request.dest_file_name unless request.dest_file_name.nil?
      end

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/xml', 'application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/xml', 'application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['oauth']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names,
                                                        return_type: 'DocumentResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#post_update_document_fields\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Adds comment to document, returns inserted comment's data.
    # 
    # @param request PutCommentRequest
    # @return [CommentResponse]
    def put_comment(request)
      data, _status_code, _headers = put_comment_with_http_info(request)
      data
    end

    # Adds comment to document, returns inserted comment&#39;s data.
    # 
    # @param request PutCommentRequest
    # @return [Array<(CommentResponse, Fixnum, Hash)>]
    # CommentResponse data, response status code and response headers
    private def put_comment_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? PutCommentRequest

      @api_client.config.logger.debug 'Calling API: WordsApi.put_comment ...' if @api_client.config.debugging
      # verify the required parameter 'name' is set
      raise ArgumentError, 'Missing the required parameter name when calling WordsApi.put_comment' if @api_client.config.client_side_validation && request.name.nil?
      # verify the required parameter 'comment' is set
      raise ArgumentError, 'Missing the required parameter comment when calling WordsApi.put_comment' if @api_client.config.client_side_validation && request.comment.nil?
      # resource path
      local_var_path = '/words/{name}/comments'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.to_s)

      # query parameters
      query_params = {}
      if local_var_path.include? downcase_first_letter('Folder')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Folder') + '}', request.folder.to_s)
      else
        query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
      end
      if local_var_path.include? downcase_first_letter('Storage')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Storage') + '}', request.storage.to_s)
      else
        query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
      end
      if local_var_path.include? downcase_first_letter('LoadEncoding')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('LoadEncoding') + '}', request.load_encoding.to_s)
      else
        query_params[downcase_first_letter('LoadEncoding')] = request.load_encoding unless request.load_encoding.nil?
      end
      if local_var_path.include? downcase_first_letter('Password')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Password') + '}', request.password.to_s)
      else
        query_params[downcase_first_letter('Password')] = request.password unless request.password.nil?
      end
      if local_var_path.include? downcase_first_letter('DestFileName')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('DestFileName') + '}', request.dest_file_name.to_s)
      else
        query_params[downcase_first_letter('DestFileName')] = request.dest_file_name unless request.dest_file_name.nil?
      end
      if local_var_path.include? downcase_first_letter('RevisionAuthor')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('RevisionAuthor') + '}', request.revision_author.to_s)
      else
        query_params[downcase_first_letter('RevisionAuthor')] = request.revision_author unless request.revision_author.nil?
      end
      if local_var_path.include? downcase_first_letter('RevisionDateTime')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('RevisionDateTime') + '}', request.revision_date_time.to_s)
      else
        query_params[downcase_first_letter('RevisionDateTime')] = request.revision_date_time unless request.revision_date_time.nil?
      end

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/xml', 'application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/xml', 'application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(request.comment)
      auth_names = ['oauth']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names,
                                                        return_type: 'CommentResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#put_comment\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Convert document from request content to format specified.
    # 
    # @param request PutConvertDocumentRequest
    # @return [File]
    def put_convert_document(request)
      data, _status_code, _headers = put_convert_document_with_http_info(request)
      data
    end

    # Convert document from request content to format specified.
    # 
    # @param request PutConvertDocumentRequest
    # @return [Array<(File, Fixnum, Hash)>]
    # File data, response status code and response headers
    private def put_convert_document_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? PutConvertDocumentRequest

      @api_client.config.logger.debug 'Calling API: WordsApi.put_convert_document ...' if @api_client.config.debugging
      # verify the required parameter 'document' is set
      raise ArgumentError, 'Missing the required parameter document when calling WordsApi.put_convert_document' if @api_client.config.client_side_validation && request.document.nil?
      # verify the required parameter 'format' is set
      raise ArgumentError, 'Missing the required parameter format when calling WordsApi.put_convert_document' if @api_client.config.client_side_validation && request.format.nil?
      # resource path
      local_var_path = '/words/convert'

      # query parameters
      query_params = {}
      query_params[downcase_first_letter('Format')] = request.format

      if local_var_path.include? downcase_first_letter('Storage')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Storage') + '}', request.storage.to_s)
      else
        query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
      end
      if local_var_path.include? downcase_first_letter('OutPath')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('OutPath') + '}', request.out_path.to_s)
      else
        query_params[downcase_first_letter('OutPath')] = request.out_path unless request.out_path.nil?
      end
      if local_var_path.include? downcase_first_letter('DocumentFileName')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('DocumentFileName') + '}', request.document_file_name.to_s)
      else
        query_params[downcase_first_letter('DocumentFileName')] = request.document_file_name unless request.document_file_name.nil?
      end
      if local_var_path.include? downcase_first_letter('FontsLocation')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('FontsLocation') + '}', request.fonts_location.to_s)
      else
        query_params[downcase_first_letter('FontsLocation')] = request.fonts_location unless request.fonts_location.nil?
      end

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/xml', 'application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['multipart/form-data'])

      # form parameters
      form_params = {}
      form_params[downcase_first_letter('Document')] = request.document

      # http body (model)
      post_body = nil
      auth_names = ['oauth']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names,
                                                        return_type: 'File')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#put_convert_document\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Creates new document. Document is created with format which is recognized from file extensions.  Supported extentions: \".doc\", \".docx\", \".docm\", \".dot\", \".dotm\", \".dotx\", \".flatopc\", \".fopc\", \".flatopc_macro\", \".fopc_macro\", \".flatopc_template\", \".fopc_template\", \".flatopc_template_macro\", \".fopc_template_macro\", \".wordml\", \".wml\", \".rtf\"
    # 
    # @param request PutCreateDocumentRequest
    # @return [DocumentResponse]
    def put_create_document(request)
      data, _status_code, _headers = put_create_document_with_http_info(request)
      data
    end

    # Creates new document. Document is created with format which is recognized from file extensions.  Supported extentions: \&quot;.doc\&quot;, \&quot;.docx\&quot;, \&quot;.docm\&quot;, \&quot;.dot\&quot;, \&quot;.dotm\&quot;, \&quot;.dotx\&quot;, \&quot;.flatopc\&quot;, \&quot;.fopc\&quot;, \&quot;.flatopc_macro\&quot;, \&quot;.fopc_macro\&quot;, \&quot;.flatopc_template\&quot;, \&quot;.fopc_template\&quot;, \&quot;.flatopc_template_macro\&quot;, \&quot;.fopc_template_macro\&quot;, \&quot;.wordml\&quot;, \&quot;.wml\&quot;, \&quot;.rtf\&quot;
    # 
    # @param request PutCreateDocumentRequest
    # @return [Array<(DocumentResponse, Fixnum, Hash)>]
    # DocumentResponse data, response status code and response headers
    private def put_create_document_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? PutCreateDocumentRequest

      @api_client.config.logger.debug 'Calling API: WordsApi.put_create_document ...' if @api_client.config.debugging
      # resource path
      local_var_path = '/words/create'

      # query parameters
      query_params = {}
      if local_var_path.include? downcase_first_letter('Storage')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Storage') + '}', request.storage.to_s)
      else
        query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
      end
      if local_var_path.include? downcase_first_letter('FileName')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('FileName') + '}', request.file_name.to_s)
      else
        query_params[downcase_first_letter('FileName')] = request.file_name unless request.file_name.nil?
      end
      if local_var_path.include? downcase_first_letter('Folder')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Folder') + '}', request.folder.to_s)
      else
        query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
      end

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/xml', 'application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/xml', 'application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['oauth']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names,
                                                        return_type: 'DocumentResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#put_create_document\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Read document field names.
    # 
    # @param request PutDocumentFieldNamesRequest
    # @return [FieldNamesResponse]
    def put_document_field_names(request)
      data, _status_code, _headers = put_document_field_names_with_http_info(request)
      data
    end

    # Read document field names.
    # 
    # @param request PutDocumentFieldNamesRequest
    # @return [Array<(FieldNamesResponse, Fixnum, Hash)>]
    # FieldNamesResponse data, response status code and response headers
    private def put_document_field_names_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? PutDocumentFieldNamesRequest

      @api_client.config.logger.debug 'Calling API: WordsApi.put_document_field_names ...' if @api_client.config.debugging
      # verify the required parameter 'template' is set
      raise ArgumentError, 'Missing the required parameter template when calling WordsApi.put_document_field_names' if @api_client.config.client_side_validation && request.template.nil?
      # resource path
      local_var_path = '/words/mailMergeFieldNames'

      # query parameters
      query_params = {}
      if local_var_path.include? downcase_first_letter('UseNonMergeFields')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('UseNonMergeFields') + '}', request.use_non_merge_fields.to_s)
      else
        query_params[downcase_first_letter('UseNonMergeFields')] = request.use_non_merge_fields unless request.use_non_merge_fields.nil?
      end

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/xml', 'application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['multipart/form-data'])

      # form parameters
      form_params = {}
      form_params[downcase_first_letter('Template')] = request.template

      # http body (model)
      post_body = nil
      auth_names = ['oauth']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names,
                                                        return_type: 'FieldNamesResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#put_document_field_names\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Convert document to tiff with detailed settings and save result to storage.
    # 
    # @param request PutDocumentSaveAsTiffRequest
    # @return [SaveResponse]
    def put_document_save_as_tiff(request)
      data, _status_code, _headers = put_document_save_as_tiff_with_http_info(request)
      data
    end

    # Convert document to tiff with detailed settings and save result to storage.
    # 
    # @param request PutDocumentSaveAsTiffRequest
    # @return [Array<(SaveResponse, Fixnum, Hash)>]
    # SaveResponse data, response status code and response headers
    private def put_document_save_as_tiff_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? PutDocumentSaveAsTiffRequest

      @api_client.config.logger.debug 'Calling API: WordsApi.put_document_save_as_tiff ...' if @api_client.config.debugging
      # verify the required parameter 'name' is set
      raise ArgumentError, 'Missing the required parameter name when calling WordsApi.put_document_save_as_tiff' if @api_client.config.client_side_validation && request.name.nil?
      # verify the required parameter 'save_options' is set
      raise ArgumentError, 'Missing the required parameter save_options when calling WordsApi.put_document_save_as_tiff' if @api_client.config.client_side_validation && request.save_options.nil?
      # resource path
      local_var_path = '/words/{name}/saveAs/tiff'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.to_s)

      # query parameters
      query_params = {}
      if local_var_path.include? downcase_first_letter('Folder')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Folder') + '}', request.folder.to_s)
      else
        query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
      end
      if local_var_path.include? downcase_first_letter('Storage')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Storage') + '}', request.storage.to_s)
      else
        query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
      end
      if local_var_path.include? downcase_first_letter('LoadEncoding')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('LoadEncoding') + '}', request.load_encoding.to_s)
      else
        query_params[downcase_first_letter('LoadEncoding')] = request.load_encoding unless request.load_encoding.nil?
      end
      if local_var_path.include? downcase_first_letter('Password')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Password') + '}', request.password.to_s)
      else
        query_params[downcase_first_letter('Password')] = request.password unless request.password.nil?
      end
      if local_var_path.include? downcase_first_letter('DestFileName')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('DestFileName') + '}', request.dest_file_name.to_s)
      else
        query_params[downcase_first_letter('DestFileName')] = request.dest_file_name unless request.dest_file_name.nil?
      end
      if local_var_path.include? downcase_first_letter('ResultFile')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('ResultFile') + '}', request.result_file.to_s)
      else
        query_params[downcase_first_letter('ResultFile')] = request.result_file unless request.result_file.nil?
      end
      if local_var_path.include? downcase_first_letter('UseAntiAliasing')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('UseAntiAliasing') + '}', request.use_anti_aliasing.to_s)
      else
        query_params[downcase_first_letter('UseAntiAliasing')] = request.use_anti_aliasing unless request.use_anti_aliasing.nil?
      end
      if local_var_path.include? downcase_first_letter('UseHighQualityRendering')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('UseHighQualityRendering') + '}', request.use_high_quality_rendering.to_s)
      else
        query_params[downcase_first_letter('UseHighQualityRendering')] = request.use_high_quality_rendering unless request.use_high_quality_rendering.nil?
      end
      if local_var_path.include? downcase_first_letter('ImageBrightness')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('ImageBrightness') + '}', request.image_brightness.to_s)
      else
        query_params[downcase_first_letter('ImageBrightness')] = request.image_brightness unless request.image_brightness.nil?
      end
      if local_var_path.include? downcase_first_letter('ImageColorMode')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('ImageColorMode') + '}', request.image_color_mode.to_s)
      else
        query_params[downcase_first_letter('ImageColorMode')] = request.image_color_mode unless request.image_color_mode.nil?
      end
      if local_var_path.include? downcase_first_letter('ImageContrast')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('ImageContrast') + '}', request.image_contrast.to_s)
      else
        query_params[downcase_first_letter('ImageContrast')] = request.image_contrast unless request.image_contrast.nil?
      end
      if local_var_path.include? downcase_first_letter('NumeralFormat')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('NumeralFormat') + '}', request.numeral_format.to_s)
      else
        query_params[downcase_first_letter('NumeralFormat')] = request.numeral_format unless request.numeral_format.nil?
      end
      if local_var_path.include? downcase_first_letter('PageCount')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('PageCount') + '}', request.page_count.to_s)
      else
        query_params[downcase_first_letter('PageCount')] = request.page_count unless request.page_count.nil?
      end
      if local_var_path.include? downcase_first_letter('PageIndex')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('PageIndex') + '}', request.page_index.to_s)
      else
        query_params[downcase_first_letter('PageIndex')] = request.page_index unless request.page_index.nil?
      end
      if local_var_path.include? downcase_first_letter('PaperColor')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('PaperColor') + '}', request.paper_color.to_s)
      else
        query_params[downcase_first_letter('PaperColor')] = request.paper_color unless request.paper_color.nil?
      end
      if local_var_path.include? downcase_first_letter('PixelFormat')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('PixelFormat') + '}', request.pixel_format.to_s)
      else
        query_params[downcase_first_letter('PixelFormat')] = request.pixel_format unless request.pixel_format.nil?
      end
      if local_var_path.include? downcase_first_letter('Resolution')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Resolution') + '}', request.resolution.to_s)
      else
        query_params[downcase_first_letter('Resolution')] = request.resolution unless request.resolution.nil?
      end
      if local_var_path.include? downcase_first_letter('Scale')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Scale') + '}', request.scale.to_s)
      else
        query_params[downcase_first_letter('Scale')] = request.scale unless request.scale.nil?
      end
      if local_var_path.include? downcase_first_letter('TiffCompression')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('TiffCompression') + '}', request.tiff_compression.to_s)
      else
        query_params[downcase_first_letter('TiffCompression')] = request.tiff_compression unless request.tiff_compression.nil?
      end
      if local_var_path.include? downcase_first_letter('DmlRenderingMode')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('DmlRenderingMode') + '}', request.dml_rendering_mode.to_s)
      else
        query_params[downcase_first_letter('DmlRenderingMode')] = request.dml_rendering_mode unless request.dml_rendering_mode.nil?
      end
      if local_var_path.include? downcase_first_letter('DmlEffectsRenderingMode')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('DmlEffectsRenderingMode') + '}', request.dml_effects_rendering_mode.to_s)
      else
        query_params[downcase_first_letter('DmlEffectsRenderingMode')] = request.dml_effects_rendering_mode unless request.dml_effects_rendering_mode.nil?
      end
      if local_var_path.include? downcase_first_letter('TiffBinarizationMethod')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('TiffBinarizationMethod') + '}', request.tiff_binarization_method.to_s)
      else
        query_params[downcase_first_letter('TiffBinarizationMethod')] = request.tiff_binarization_method unless request.tiff_binarization_method.nil?
      end
      if local_var_path.include? downcase_first_letter('ZipOutput')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('ZipOutput') + '}', request.zip_output.to_s)
      else
        query_params[downcase_first_letter('ZipOutput')] = request.zip_output unless request.zip_output.nil?
      end
      if local_var_path.include? downcase_first_letter('FontsLocation')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('FontsLocation') + '}', request.fonts_location.to_s)
      else
        query_params[downcase_first_letter('FontsLocation')] = request.fonts_location unless request.fonts_location.nil?
      end

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/xml', 'application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/xml', 'application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(request.save_options)
      auth_names = ['oauth']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names,
                                                        return_type: 'SaveResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#put_document_save_as_tiff\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Adds  drawing object to document, returns added  drawing object's data.
    # 
    # @param request PutDrawingObjectRequest
    # @return [DrawingObjectResponse]
    def put_drawing_object(request)
      data, _status_code, _headers = put_drawing_object_with_http_info(request)
      data
    end

    # Adds  drawing object to document, returns added  drawing object&#39;s data.
    # 
    # @param request PutDrawingObjectRequest
    # @return [Array<(DrawingObjectResponse, Fixnum, Hash)>]
    # DrawingObjectResponse data, response status code and response headers
    private def put_drawing_object_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? PutDrawingObjectRequest

      @api_client.config.logger.debug 'Calling API: WordsApi.put_drawing_object ...' if @api_client.config.debugging
      # verify the required parameter 'name' is set
      raise ArgumentError, 'Missing the required parameter name when calling WordsApi.put_drawing_object' if @api_client.config.client_side_validation && request.name.nil?
      # verify the required parameter 'drawing_object' is set
      raise ArgumentError, 'Missing the required parameter drawing_object when calling WordsApi.put_drawing_object' if @api_client.config.client_side_validation && request.drawing_object.nil?
      # verify the required parameter 'image_file' is set
      raise ArgumentError, 'Missing the required parameter image_file when calling WordsApi.put_drawing_object' if @api_client.config.client_side_validation && request.image_file.nil?
      # resource path
      local_var_path = '/words/{name}/{nodePath}/drawingObjects'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.to_s)

      # query parameters
      query_params = {}
      if local_var_path.include? downcase_first_letter('Folder')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Folder') + '}', request.folder.to_s)
      else
        query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
      end
      if local_var_path.include? downcase_first_letter('Storage')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Storage') + '}', request.storage.to_s)
      else
        query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
      end
      if local_var_path.include? downcase_first_letter('LoadEncoding')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('LoadEncoding') + '}', request.load_encoding.to_s)
      else
        query_params[downcase_first_letter('LoadEncoding')] = request.load_encoding unless request.load_encoding.nil?
      end
      if local_var_path.include? downcase_first_letter('Password')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Password') + '}', request.password.to_s)
      else
        query_params[downcase_first_letter('Password')] = request.password unless request.password.nil?
      end
      if local_var_path.include? downcase_first_letter('DestFileName')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('DestFileName') + '}', request.dest_file_name.to_s)
      else
        query_params[downcase_first_letter('DestFileName')] = request.dest_file_name unless request.dest_file_name.nil?
      end
      if local_var_path.include? downcase_first_letter('RevisionAuthor')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('RevisionAuthor') + '}', request.revision_author.to_s)
      else
        query_params[downcase_first_letter('RevisionAuthor')] = request.revision_author unless request.revision_author.nil?
      end
      if local_var_path.include? downcase_first_letter('RevisionDateTime')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('RevisionDateTime') + '}', request.revision_date_time.to_s)
      else
        query_params[downcase_first_letter('RevisionDateTime')] = request.revision_date_time unless request.revision_date_time.nil?
      end
      if local_var_path.include? downcase_first_letter('NodePath')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('NodePath') + '}', request.node_path.to_s)
      else
        query_params[downcase_first_letter('NodePath')] = request.node_path unless request.node_path.nil?
      end

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/xml', 'application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['multipart/form-data'])

      # form parameters
      form_params = {}
      form_params[downcase_first_letter('DrawingObject')] = request.drawing_object
      form_params[downcase_first_letter('ImageFile')] = request.image_file

      # http body (model)
      post_body = nil
      auth_names = ['oauth']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names,
                                                        return_type: 'DrawingObjectResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#put_drawing_object\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Execute document mail merge online.
    # 
    # @param request PutExecuteMailMergeOnlineRequest
    # @return [File]
    def put_execute_mail_merge_online(request)
      data, _status_code, _headers = put_execute_mail_merge_online_with_http_info(request)
      data
    end

    # Execute document mail merge online.
    # 
    # @param request PutExecuteMailMergeOnlineRequest
    # @return [Array<(File, Fixnum, Hash)>]
    # File data, response status code and response headers
    private def put_execute_mail_merge_online_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? PutExecuteMailMergeOnlineRequest

      @api_client.config.logger.debug 'Calling API: WordsApi.put_execute_mail_merge_online ...' if @api_client.config.debugging
      # verify the required parameter 'template' is set
      raise ArgumentError, 'Missing the required parameter template when calling WordsApi.put_execute_mail_merge_online' if @api_client.config.client_side_validation && request.template.nil?
      # verify the required parameter 'data' is set
      raise ArgumentError, 'Missing the required parameter data when calling WordsApi.put_execute_mail_merge_online' if @api_client.config.client_side_validation && request.data.nil?
      # resource path
      local_var_path = '/words/executeMailMerge'

      # query parameters
      query_params = {}
      if local_var_path.include? downcase_first_letter('WithRegions')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('WithRegions') + '}', request.with_regions.to_s)
      else
        query_params[downcase_first_letter('WithRegions')] = request.with_regions unless request.with_regions.nil?
      end
      if local_var_path.include? downcase_first_letter('Cleanup')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Cleanup') + '}', request.cleanup.to_s)
      else
        query_params[downcase_first_letter('Cleanup')] = request.cleanup unless request.cleanup.nil?
      end
      if local_var_path.include? downcase_first_letter('DocumentFileName')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('DocumentFileName') + '}', request.document_file_name.to_s)
      else
        query_params[downcase_first_letter('DocumentFileName')] = request.document_file_name unless request.document_file_name.nil?
      end

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/xml', 'application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['multipart/form-data'])

      # form parameters
      form_params = {}
      form_params[downcase_first_letter('Template')] = request.template
      form_params[downcase_first_letter('Data')] = request.data

      # http body (model)
      post_body = nil
      auth_names = ['oauth']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names,
                                                        return_type: 'File')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#put_execute_mail_merge_online\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Populate document template with data online.
    # 
    # @param request PutExecuteTemplateOnlineRequest
    # @return [File]
    def put_execute_template_online(request)
      data, _status_code, _headers = put_execute_template_online_with_http_info(request)
      data
    end

    # Populate document template with data online.
    # 
    # @param request PutExecuteTemplateOnlineRequest
    # @return [Array<(File, Fixnum, Hash)>]
    # File data, response status code and response headers
    private def put_execute_template_online_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? PutExecuteTemplateOnlineRequest

      @api_client.config.logger.debug 'Calling API: WordsApi.put_execute_template_online ...' if @api_client.config.debugging
      # verify the required parameter 'template' is set
      raise ArgumentError, 'Missing the required parameter template when calling WordsApi.put_execute_template_online' if @api_client.config.client_side_validation && request.template.nil?
      # verify the required parameter 'data' is set
      raise ArgumentError, 'Missing the required parameter data when calling WordsApi.put_execute_template_online' if @api_client.config.client_side_validation && request.data.nil?
      # resource path
      local_var_path = '/words/executeTemplate'

      # query parameters
      query_params = {}
      if local_var_path.include? downcase_first_letter('Cleanup')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Cleanup') + '}', request.cleanup.to_s)
      else
        query_params[downcase_first_letter('Cleanup')] = request.cleanup unless request.cleanup.nil?
      end
      if local_var_path.include? downcase_first_letter('UseWholeParagraphAsRegion')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('UseWholeParagraphAsRegion') + '}', request.use_whole_paragraph_as_region.to_s)
      else
        query_params[downcase_first_letter('UseWholeParagraphAsRegion')] = request.use_whole_paragraph_as_region unless request.use_whole_paragraph_as_region.nil?
      end
      if local_var_path.include? downcase_first_letter('WithRegions')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('WithRegions') + '}', request.with_regions.to_s)
      else
        query_params[downcase_first_letter('WithRegions')] = request.with_regions unless request.with_regions.nil?
      end
      if local_var_path.include? downcase_first_letter('DocumentFileName')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('DocumentFileName') + '}', request.document_file_name.to_s)
      else
        query_params[downcase_first_letter('DocumentFileName')] = request.document_file_name unless request.document_file_name.nil?
      end

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/xml', 'application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['multipart/form-data'])

      # form parameters
      form_params = {}
      form_params[downcase_first_letter('Template')] = request.template
      form_params[downcase_first_letter('Data')] = request.data

      # http body (model)
      post_body = nil
      auth_names = ['oauth']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names,
                                                        return_type: 'File')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#put_execute_template_online\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Adds field to document, returns inserted field's data.
    # 
    # @param request PutFieldRequest
    # @return [FieldResponse]
    def put_field(request)
      data, _status_code, _headers = put_field_with_http_info(request)
      data
    end

    # Adds field to document, returns inserted field&#39;s data.
    # 
    # @param request PutFieldRequest
    # @return [Array<(FieldResponse, Fixnum, Hash)>]
    # FieldResponse data, response status code and response headers
    private def put_field_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? PutFieldRequest

      @api_client.config.logger.debug 'Calling API: WordsApi.put_field ...' if @api_client.config.debugging
      # verify the required parameter 'name' is set
      raise ArgumentError, 'Missing the required parameter name when calling WordsApi.put_field' if @api_client.config.client_side_validation && request.name.nil?
      # verify the required parameter 'field' is set
      raise ArgumentError, 'Missing the required parameter field when calling WordsApi.put_field' if @api_client.config.client_side_validation && request.field.nil?
      # resource path
      local_var_path = '/words/{name}/{nodePath}/fields'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.to_s)

      # query parameters
      query_params = {}
      if local_var_path.include? downcase_first_letter('Folder')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Folder') + '}', request.folder.to_s)
      else
        query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
      end
      if local_var_path.include? downcase_first_letter('Storage')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Storage') + '}', request.storage.to_s)
      else
        query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
      end
      if local_var_path.include? downcase_first_letter('LoadEncoding')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('LoadEncoding') + '}', request.load_encoding.to_s)
      else
        query_params[downcase_first_letter('LoadEncoding')] = request.load_encoding unless request.load_encoding.nil?
      end
      if local_var_path.include? downcase_first_letter('Password')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Password') + '}', request.password.to_s)
      else
        query_params[downcase_first_letter('Password')] = request.password unless request.password.nil?
      end
      if local_var_path.include? downcase_first_letter('DestFileName')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('DestFileName') + '}', request.dest_file_name.to_s)
      else
        query_params[downcase_first_letter('DestFileName')] = request.dest_file_name unless request.dest_file_name.nil?
      end
      if local_var_path.include? downcase_first_letter('RevisionAuthor')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('RevisionAuthor') + '}', request.revision_author.to_s)
      else
        query_params[downcase_first_letter('RevisionAuthor')] = request.revision_author unless request.revision_author.nil?
      end
      if local_var_path.include? downcase_first_letter('RevisionDateTime')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('RevisionDateTime') + '}', request.revision_date_time.to_s)
      else
        query_params[downcase_first_letter('RevisionDateTime')] = request.revision_date_time unless request.revision_date_time.nil?
      end
      if local_var_path.include? downcase_first_letter('NodePath')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('NodePath') + '}', request.node_path.to_s)
      else
        query_params[downcase_first_letter('NodePath')] = request.node_path unless request.node_path.nil?
      end
      if local_var_path.include? downcase_first_letter('InsertBeforeNode')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('InsertBeforeNode') + '}', request.insert_before_node.to_s)
      else
        query_params[downcase_first_letter('InsertBeforeNode')] = request.insert_before_node unless request.insert_before_node.nil?
      end

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/xml', 'application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/xml', 'application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(request.field)
      auth_names = ['oauth']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names,
                                                        return_type: 'FieldResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#put_field\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Adds footnote to document, returns added footnote's data.
    # 
    # @param request PutFootnoteRequest
    # @return [FootnoteResponse]
    def put_footnote(request)
      data, _status_code, _headers = put_footnote_with_http_info(request)
      data
    end

    # Adds footnote to document, returns added footnote&#39;s data.
    # 
    # @param request PutFootnoteRequest
    # @return [Array<(FootnoteResponse, Fixnum, Hash)>]
    # FootnoteResponse data, response status code and response headers
    private def put_footnote_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? PutFootnoteRequest

      @api_client.config.logger.debug 'Calling API: WordsApi.put_footnote ...' if @api_client.config.debugging
      # verify the required parameter 'name' is set
      raise ArgumentError, 'Missing the required parameter name when calling WordsApi.put_footnote' if @api_client.config.client_side_validation && request.name.nil?
      # verify the required parameter 'footnote_dto' is set
      raise ArgumentError, 'Missing the required parameter footnote_dto when calling WordsApi.put_footnote' if @api_client.config.client_side_validation && request.footnote_dto.nil?
      # resource path
      local_var_path = '/words/{name}/{nodePath}/footnotes'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.to_s)

      # query parameters
      query_params = {}
      if local_var_path.include? downcase_first_letter('Folder')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Folder') + '}', request.folder.to_s)
      else
        query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
      end
      if local_var_path.include? downcase_first_letter('Storage')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Storage') + '}', request.storage.to_s)
      else
        query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
      end
      if local_var_path.include? downcase_first_letter('LoadEncoding')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('LoadEncoding') + '}', request.load_encoding.to_s)
      else
        query_params[downcase_first_letter('LoadEncoding')] = request.load_encoding unless request.load_encoding.nil?
      end
      if local_var_path.include? downcase_first_letter('Password')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Password') + '}', request.password.to_s)
      else
        query_params[downcase_first_letter('Password')] = request.password unless request.password.nil?
      end
      if local_var_path.include? downcase_first_letter('DestFileName')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('DestFileName') + '}', request.dest_file_name.to_s)
      else
        query_params[downcase_first_letter('DestFileName')] = request.dest_file_name unless request.dest_file_name.nil?
      end
      if local_var_path.include? downcase_first_letter('RevisionAuthor')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('RevisionAuthor') + '}', request.revision_author.to_s)
      else
        query_params[downcase_first_letter('RevisionAuthor')] = request.revision_author unless request.revision_author.nil?
      end
      if local_var_path.include? downcase_first_letter('RevisionDateTime')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('RevisionDateTime') + '}', request.revision_date_time.to_s)
      else
        query_params[downcase_first_letter('RevisionDateTime')] = request.revision_date_time unless request.revision_date_time.nil?
      end
      if local_var_path.include? downcase_first_letter('NodePath')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('NodePath') + '}', request.node_path.to_s)
      else
        query_params[downcase_first_letter('NodePath')] = request.node_path unless request.node_path.nil?
      end

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/xml', 'application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/xml', 'application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(request.footnote_dto)
      auth_names = ['oauth']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names,
                                                        return_type: 'FootnoteResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#put_footnote\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Adds form field to paragraph, returns added form field's data.
    # 
    # @param request PutFormFieldRequest
    # @return [FormFieldResponse]
    def put_form_field(request)
      data, _status_code, _headers = put_form_field_with_http_info(request)
      data
    end

    # Adds form field to paragraph, returns added form field&#39;s data.
    # 
    # @param request PutFormFieldRequest
    # @return [Array<(FormFieldResponse, Fixnum, Hash)>]
    # FormFieldResponse data, response status code and response headers
    private def put_form_field_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? PutFormFieldRequest

      @api_client.config.logger.debug 'Calling API: WordsApi.put_form_field ...' if @api_client.config.debugging
      # verify the required parameter 'name' is set
      raise ArgumentError, 'Missing the required parameter name when calling WordsApi.put_form_field' if @api_client.config.client_side_validation && request.name.nil?
      # verify the required parameter 'form_field' is set
      raise ArgumentError, 'Missing the required parameter form_field when calling WordsApi.put_form_field' if @api_client.config.client_side_validation && request.form_field.nil?
      # resource path
      local_var_path = '/words/{name}/{nodePath}/formfields'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.to_s)

      # query parameters
      query_params = {}
      if local_var_path.include? downcase_first_letter('Folder')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Folder') + '}', request.folder.to_s)
      else
        query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
      end
      if local_var_path.include? downcase_first_letter('Storage')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Storage') + '}', request.storage.to_s)
      else
        query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
      end
      if local_var_path.include? downcase_first_letter('LoadEncoding')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('LoadEncoding') + '}', request.load_encoding.to_s)
      else
        query_params[downcase_first_letter('LoadEncoding')] = request.load_encoding unless request.load_encoding.nil?
      end
      if local_var_path.include? downcase_first_letter('Password')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Password') + '}', request.password.to_s)
      else
        query_params[downcase_first_letter('Password')] = request.password unless request.password.nil?
      end
      if local_var_path.include? downcase_first_letter('DestFileName')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('DestFileName') + '}', request.dest_file_name.to_s)
      else
        query_params[downcase_first_letter('DestFileName')] = request.dest_file_name unless request.dest_file_name.nil?
      end
      if local_var_path.include? downcase_first_letter('RevisionAuthor')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('RevisionAuthor') + '}', request.revision_author.to_s)
      else
        query_params[downcase_first_letter('RevisionAuthor')] = request.revision_author unless request.revision_author.nil?
      end
      if local_var_path.include? downcase_first_letter('RevisionDateTime')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('RevisionDateTime') + '}', request.revision_date_time.to_s)
      else
        query_params[downcase_first_letter('RevisionDateTime')] = request.revision_date_time unless request.revision_date_time.nil?
      end
      if local_var_path.include? downcase_first_letter('NodePath')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('NodePath') + '}', request.node_path.to_s)
      else
        query_params[downcase_first_letter('NodePath')] = request.node_path unless request.node_path.nil?
      end
      if local_var_path.include? downcase_first_letter('InsertBeforeNode')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('InsertBeforeNode') + '}', request.insert_before_node.to_s)
      else
        query_params[downcase_first_letter('InsertBeforeNode')] = request.insert_before_node unless request.insert_before_node.nil?
      end

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/xml', 'application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/xml', 'application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(request.form_field)
      auth_names = ['oauth']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names,
                                                        return_type: 'FormFieldResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#put_form_field\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Insert to document header or footer.
    # 
    # @param request PutHeaderFooterRequest
    # @return [HeaderFooterResponse]
    def put_header_footer(request)
      data, _status_code, _headers = put_header_footer_with_http_info(request)
      data
    end

    # Insert to document header or footer.
    # 
    # @param request PutHeaderFooterRequest
    # @return [Array<(HeaderFooterResponse, Fixnum, Hash)>]
    # HeaderFooterResponse data, response status code and response headers
    private def put_header_footer_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? PutHeaderFooterRequest

      @api_client.config.logger.debug 'Calling API: WordsApi.put_header_footer ...' if @api_client.config.debugging
      # verify the required parameter 'name' is set
      raise ArgumentError, 'Missing the required parameter name when calling WordsApi.put_header_footer' if @api_client.config.client_side_validation && request.name.nil?
      # verify the required parameter 'header_footer_type' is set
      raise ArgumentError, 'Missing the required parameter header_footer_type when calling WordsApi.put_header_footer' if @api_client.config.client_side_validation && request.header_footer_type.nil?
      # resource path
      local_var_path = '/words/{name}/{sectionPath}/headersfooters'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.to_s)

      # query parameters
      query_params = {}
      if local_var_path.include? downcase_first_letter('Folder')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Folder') + '}', request.folder.to_s)
      else
        query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
      end
      if local_var_path.include? downcase_first_letter('Storage')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Storage') + '}', request.storage.to_s)
      else
        query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
      end
      if local_var_path.include? downcase_first_letter('LoadEncoding')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('LoadEncoding') + '}', request.load_encoding.to_s)
      else
        query_params[downcase_first_letter('LoadEncoding')] = request.load_encoding unless request.load_encoding.nil?
      end
      if local_var_path.include? downcase_first_letter('Password')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Password') + '}', request.password.to_s)
      else
        query_params[downcase_first_letter('Password')] = request.password unless request.password.nil?
      end
      if local_var_path.include? downcase_first_letter('DestFileName')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('DestFileName') + '}', request.dest_file_name.to_s)
      else
        query_params[downcase_first_letter('DestFileName')] = request.dest_file_name unless request.dest_file_name.nil?
      end
      if local_var_path.include? downcase_first_letter('RevisionAuthor')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('RevisionAuthor') + '}', request.revision_author.to_s)
      else
        query_params[downcase_first_letter('RevisionAuthor')] = request.revision_author unless request.revision_author.nil?
      end
      if local_var_path.include? downcase_first_letter('RevisionDateTime')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('RevisionDateTime') + '}', request.revision_date_time.to_s)
      else
        query_params[downcase_first_letter('RevisionDateTime')] = request.revision_date_time unless request.revision_date_time.nil?
      end
      if local_var_path.include? downcase_first_letter('SectionPath')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('SectionPath') + '}', request.section_path.to_s)
      else
        query_params[downcase_first_letter('SectionPath')] = request.section_path unless request.section_path.nil?
      end

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/xml', 'application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/xml', 'application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(request.header_footer_type)
      auth_names = ['oauth']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names,
                                                        return_type: 'HeaderFooterResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#put_header_footer\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Adds paragraph to document, returns added paragraph's data.
    # 
    # @param request PutParagraphRequest
    # @return [ParagraphResponse]
    def put_paragraph(request)
      data, _status_code, _headers = put_paragraph_with_http_info(request)
      data
    end

    # Adds paragraph to document, returns added paragraph&#39;s data.
    # 
    # @param request PutParagraphRequest
    # @return [Array<(ParagraphResponse, Fixnum, Hash)>]
    # ParagraphResponse data, response status code and response headers
    private def put_paragraph_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? PutParagraphRequest

      @api_client.config.logger.debug 'Calling API: WordsApi.put_paragraph ...' if @api_client.config.debugging
      # verify the required parameter 'name' is set
      raise ArgumentError, 'Missing the required parameter name when calling WordsApi.put_paragraph' if @api_client.config.client_side_validation && request.name.nil?
      # verify the required parameter 'paragraph' is set
      raise ArgumentError, 'Missing the required parameter paragraph when calling WordsApi.put_paragraph' if @api_client.config.client_side_validation && request.paragraph.nil?
      # resource path
      local_var_path = '/words/{name}/{nodePath}/paragraphs'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.to_s)

      # query parameters
      query_params = {}
      if local_var_path.include? downcase_first_letter('Folder')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Folder') + '}', request.folder.to_s)
      else
        query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
      end
      if local_var_path.include? downcase_first_letter('Storage')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Storage') + '}', request.storage.to_s)
      else
        query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
      end
      if local_var_path.include? downcase_first_letter('LoadEncoding')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('LoadEncoding') + '}', request.load_encoding.to_s)
      else
        query_params[downcase_first_letter('LoadEncoding')] = request.load_encoding unless request.load_encoding.nil?
      end
      if local_var_path.include? downcase_first_letter('Password')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Password') + '}', request.password.to_s)
      else
        query_params[downcase_first_letter('Password')] = request.password unless request.password.nil?
      end
      if local_var_path.include? downcase_first_letter('DestFileName')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('DestFileName') + '}', request.dest_file_name.to_s)
      else
        query_params[downcase_first_letter('DestFileName')] = request.dest_file_name unless request.dest_file_name.nil?
      end
      if local_var_path.include? downcase_first_letter('RevisionAuthor')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('RevisionAuthor') + '}', request.revision_author.to_s)
      else
        query_params[downcase_first_letter('RevisionAuthor')] = request.revision_author unless request.revision_author.nil?
      end
      if local_var_path.include? downcase_first_letter('RevisionDateTime')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('RevisionDateTime') + '}', request.revision_date_time.to_s)
      else
        query_params[downcase_first_letter('RevisionDateTime')] = request.revision_date_time unless request.revision_date_time.nil?
      end
      if local_var_path.include? downcase_first_letter('NodePath')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('NodePath') + '}', request.node_path.to_s)
      else
        query_params[downcase_first_letter('NodePath')] = request.node_path unless request.node_path.nil?
      end
      if local_var_path.include? downcase_first_letter('InsertBeforeNode')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('InsertBeforeNode') + '}', request.insert_before_node.to_s)
      else
        query_params[downcase_first_letter('InsertBeforeNode')] = request.insert_before_node unless request.insert_before_node.nil?
      end

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/xml', 'application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/xml', 'application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(request.paragraph)
      auth_names = ['oauth']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names,
                                                        return_type: 'ParagraphResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#put_paragraph\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Protect document.
    # 
    # @param request PutProtectDocumentRequest
    # @return [ProtectionDataResponse]
    def put_protect_document(request)
      data, _status_code, _headers = put_protect_document_with_http_info(request)
      data
    end

    # Protect document.
    # 
    # @param request PutProtectDocumentRequest
    # @return [Array<(ProtectionDataResponse, Fixnum, Hash)>]
    # ProtectionDataResponse data, response status code and response headers
    private def put_protect_document_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? PutProtectDocumentRequest

      @api_client.config.logger.debug 'Calling API: WordsApi.put_protect_document ...' if @api_client.config.debugging
      # verify the required parameter 'name' is set
      raise ArgumentError, 'Missing the required parameter name when calling WordsApi.put_protect_document' if @api_client.config.client_side_validation && request.name.nil?
      # verify the required parameter 'protection_request' is set
      raise ArgumentError, 'Missing the required parameter protection_request when calling WordsApi.put_protect_document' if @api_client.config.client_side_validation && request.protection_request.nil?
      # resource path
      local_var_path = '/words/{name}/protection'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.to_s)

      # query parameters
      query_params = {}
      if local_var_path.include? downcase_first_letter('Folder')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Folder') + '}', request.folder.to_s)
      else
        query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
      end
      if local_var_path.include? downcase_first_letter('Storage')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Storage') + '}', request.storage.to_s)
      else
        query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
      end
      if local_var_path.include? downcase_first_letter('LoadEncoding')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('LoadEncoding') + '}', request.load_encoding.to_s)
      else
        query_params[downcase_first_letter('LoadEncoding')] = request.load_encoding unless request.load_encoding.nil?
      end
      if local_var_path.include? downcase_first_letter('Password')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Password') + '}', request.password.to_s)
      else
        query_params[downcase_first_letter('Password')] = request.password unless request.password.nil?
      end
      if local_var_path.include? downcase_first_letter('DestFileName')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('DestFileName') + '}', request.dest_file_name.to_s)
      else
        query_params[downcase_first_letter('DestFileName')] = request.dest_file_name unless request.dest_file_name.nil?
      end

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/xml', 'application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/xml', 'application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(request.protection_request)
      auth_names = ['oauth']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names,
                                                        return_type: 'ProtectionDataResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#put_protect_document\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Adds run to document, returns added paragraph's data.
    # 
    # @param request PutRunRequest
    # @return [RunResponse]
    def put_run(request)
      data, _status_code, _headers = put_run_with_http_info(request)
      data
    end

    # Adds run to document, returns added paragraph&#39;s data.
    # 
    # @param request PutRunRequest
    # @return [Array<(RunResponse, Fixnum, Hash)>]
    # RunResponse data, response status code and response headers
    private def put_run_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? PutRunRequest

      @api_client.config.logger.debug 'Calling API: WordsApi.put_run ...' if @api_client.config.debugging
      # verify the required parameter 'name' is set
      raise ArgumentError, 'Missing the required parameter name when calling WordsApi.put_run' if @api_client.config.client_side_validation && request.name.nil?
      # verify the required parameter 'paragraph_path' is set
      raise ArgumentError, 'Missing the required parameter paragraph_path when calling WordsApi.put_run' if @api_client.config.client_side_validation && request.paragraph_path.nil?
      # verify the required parameter 'run' is set
      raise ArgumentError, 'Missing the required parameter run when calling WordsApi.put_run' if @api_client.config.client_side_validation && request.run.nil?
      # resource path
      local_var_path = '/words/{name}/{paragraphPath}/runs'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.to_s)
      local_var_path = local_var_path.sub('{' + downcase_first_letter('ParagraphPath') + '}', request.paragraph_path.to_s)

      # query parameters
      query_params = {}
      if local_var_path.include? downcase_first_letter('Folder')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Folder') + '}', request.folder.to_s)
      else
        query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
      end
      if local_var_path.include? downcase_first_letter('Storage')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Storage') + '}', request.storage.to_s)
      else
        query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
      end
      if local_var_path.include? downcase_first_letter('LoadEncoding')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('LoadEncoding') + '}', request.load_encoding.to_s)
      else
        query_params[downcase_first_letter('LoadEncoding')] = request.load_encoding unless request.load_encoding.nil?
      end
      if local_var_path.include? downcase_first_letter('Password')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Password') + '}', request.password.to_s)
      else
        query_params[downcase_first_letter('Password')] = request.password unless request.password.nil?
      end
      if local_var_path.include? downcase_first_letter('DestFileName')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('DestFileName') + '}', request.dest_file_name.to_s)
      else
        query_params[downcase_first_letter('DestFileName')] = request.dest_file_name unless request.dest_file_name.nil?
      end
      if local_var_path.include? downcase_first_letter('RevisionAuthor')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('RevisionAuthor') + '}', request.revision_author.to_s)
      else
        query_params[downcase_first_letter('RevisionAuthor')] = request.revision_author unless request.revision_author.nil?
      end
      if local_var_path.include? downcase_first_letter('RevisionDateTime')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('RevisionDateTime') + '}', request.revision_date_time.to_s)
      else
        query_params[downcase_first_letter('RevisionDateTime')] = request.revision_date_time unless request.revision_date_time.nil?
      end
      if local_var_path.include? downcase_first_letter('InsertBeforeNode')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('InsertBeforeNode') + '}', request.insert_before_node.to_s)
      else
        query_params[downcase_first_letter('InsertBeforeNode')] = request.insert_before_node unless request.insert_before_node.nil?
      end

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/xml', 'application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/xml', 'application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(request.run)
      auth_names = ['oauth']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names,
                                                        return_type: 'RunResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#put_run\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Reject all revisions in document
    # 
    # @param request RejectAllRevisionsRequest
    # @return [RevisionsModificationResponse]
    def reject_all_revisions(request)
      data, _status_code, _headers = reject_all_revisions_with_http_info(request)
      data
    end

    # Reject all revisions in document
    # 
    # @param request RejectAllRevisionsRequest
    # @return [Array<(RevisionsModificationResponse, Fixnum, Hash)>]
    # RevisionsModificationResponse data, response status code and response headers
    private def reject_all_revisions_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? RejectAllRevisionsRequest

      @api_client.config.logger.debug 'Calling API: WordsApi.reject_all_revisions ...' if @api_client.config.debugging
      # verify the required parameter 'name' is set
      raise ArgumentError, 'Missing the required parameter name when calling WordsApi.reject_all_revisions' if @api_client.config.client_side_validation && request.name.nil?
      # resource path
      local_var_path = '/words/{name}/revisions/rejectAll'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.to_s)

      # query parameters
      query_params = {}
      if local_var_path.include? downcase_first_letter('Folder')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Folder') + '}', request.folder.to_s)
      else
        query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
      end
      if local_var_path.include? downcase_first_letter('Storage')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Storage') + '}', request.storage.to_s)
      else
        query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
      end
      if local_var_path.include? downcase_first_letter('LoadEncoding')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('LoadEncoding') + '}', request.load_encoding.to_s)
      else
        query_params[downcase_first_letter('LoadEncoding')] = request.load_encoding unless request.load_encoding.nil?
      end
      if local_var_path.include? downcase_first_letter('Password')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Password') + '}', request.password.to_s)
      else
        query_params[downcase_first_letter('Password')] = request.password unless request.password.nil?
      end
      if local_var_path.include? downcase_first_letter('DestFileName')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('DestFileName') + '}', request.dest_file_name.to_s)
      else
        query_params[downcase_first_letter('DestFileName')] = request.dest_file_name unless request.dest_file_name.nil?
      end

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/xml', 'application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/xml', 'application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['oauth']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names,
                                                        return_type: 'RevisionsModificationResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#reject_all_revisions\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Renders drawing object to specified format.
    # 
    # @param request RenderDrawingObjectRequest
    # @return [File]
    def render_drawing_object(request)
      data, _status_code, _headers = render_drawing_object_with_http_info(request)
      data
    end

    # Renders drawing object to specified format.
    # 
    # @param request RenderDrawingObjectRequest
    # @return [Array<(File, Fixnum, Hash)>]
    # File data, response status code and response headers
    private def render_drawing_object_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? RenderDrawingObjectRequest

      @api_client.config.logger.debug 'Calling API: WordsApi.render_drawing_object ...' if @api_client.config.debugging
      # verify the required parameter 'name' is set
      raise ArgumentError, 'Missing the required parameter name when calling WordsApi.render_drawing_object' if @api_client.config.client_side_validation && request.name.nil?
      # verify the required parameter 'format' is set
      raise ArgumentError, 'Missing the required parameter format when calling WordsApi.render_drawing_object' if @api_client.config.client_side_validation && request.format.nil?
      # verify the required parameter 'index' is set
      raise ArgumentError, 'Missing the required parameter index when calling WordsApi.render_drawing_object' if @api_client.config.client_side_validation && request.index.nil?
      # resource path
      local_var_path = '/words/{name}/{nodePath}/drawingObjects/{index}/render'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.to_s)
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Index') + '}', request.index.to_s)

      # query parameters
      query_params = {}
      query_params[downcase_first_letter('Format')] = request.format

      if local_var_path.include? downcase_first_letter('Folder')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Folder') + '}', request.folder.to_s)
      else
        query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
      end
      if local_var_path.include? downcase_first_letter('Storage')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Storage') + '}', request.storage.to_s)
      else
        query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
      end
      if local_var_path.include? downcase_first_letter('LoadEncoding')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('LoadEncoding') + '}', request.load_encoding.to_s)
      else
        query_params[downcase_first_letter('LoadEncoding')] = request.load_encoding unless request.load_encoding.nil?
      end
      if local_var_path.include? downcase_first_letter('Password')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Password') + '}', request.password.to_s)
      else
        query_params[downcase_first_letter('Password')] = request.password unless request.password.nil?
      end
      if local_var_path.include? downcase_first_letter('NodePath')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('NodePath') + '}', request.node_path.to_s)
      else
        query_params[downcase_first_letter('NodePath')] = request.node_path unless request.node_path.nil?
      end
      if local_var_path.include? downcase_first_letter('FontsLocation')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('FontsLocation') + '}', request.fonts_location.to_s)
      else
        query_params[downcase_first_letter('FontsLocation')] = request.fonts_location unless request.fonts_location.nil?
      end

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/xml', 'application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/xml', 'application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['oauth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names,
                                                        return_type: 'File')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#render_drawing_object\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Renders math object to specified format.
    # 
    # @param request RenderMathObjectRequest
    # @return [File]
    def render_math_object(request)
      data, _status_code, _headers = render_math_object_with_http_info(request)
      data
    end

    # Renders math object to specified format.
    # 
    # @param request RenderMathObjectRequest
    # @return [Array<(File, Fixnum, Hash)>]
    # File data, response status code and response headers
    private def render_math_object_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? RenderMathObjectRequest

      @api_client.config.logger.debug 'Calling API: WordsApi.render_math_object ...' if @api_client.config.debugging
      # verify the required parameter 'name' is set
      raise ArgumentError, 'Missing the required parameter name when calling WordsApi.render_math_object' if @api_client.config.client_side_validation && request.name.nil?
      # verify the required parameter 'format' is set
      raise ArgumentError, 'Missing the required parameter format when calling WordsApi.render_math_object' if @api_client.config.client_side_validation && request.format.nil?
      # verify the required parameter 'index' is set
      raise ArgumentError, 'Missing the required parameter index when calling WordsApi.render_math_object' if @api_client.config.client_side_validation && request.index.nil?
      # resource path
      local_var_path = '/words/{name}/{nodePath}/OfficeMathObjects/{index}/render'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.to_s)
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Index') + '}', request.index.to_s)

      # query parameters
      query_params = {}
      query_params[downcase_first_letter('Format')] = request.format

      if local_var_path.include? downcase_first_letter('Folder')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Folder') + '}', request.folder.to_s)
      else
        query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
      end
      if local_var_path.include? downcase_first_letter('Storage')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Storage') + '}', request.storage.to_s)
      else
        query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
      end
      if local_var_path.include? downcase_first_letter('LoadEncoding')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('LoadEncoding') + '}', request.load_encoding.to_s)
      else
        query_params[downcase_first_letter('LoadEncoding')] = request.load_encoding unless request.load_encoding.nil?
      end
      if local_var_path.include? downcase_first_letter('Password')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Password') + '}', request.password.to_s)
      else
        query_params[downcase_first_letter('Password')] = request.password unless request.password.nil?
      end
      if local_var_path.include? downcase_first_letter('NodePath')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('NodePath') + '}', request.node_path.to_s)
      else
        query_params[downcase_first_letter('NodePath')] = request.node_path unless request.node_path.nil?
      end
      if local_var_path.include? downcase_first_letter('FontsLocation')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('FontsLocation') + '}', request.fonts_location.to_s)
      else
        query_params[downcase_first_letter('FontsLocation')] = request.fonts_location unless request.fonts_location.nil?
      end

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/xml', 'application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/xml', 'application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['oauth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names,
                                                        return_type: 'File')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#render_math_object\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Renders page to specified format.
    # 
    # @param request RenderPageRequest
    # @return [File]
    def render_page(request)
      data, _status_code, _headers = render_page_with_http_info(request)
      data
    end

    # Renders page to specified format.
    # 
    # @param request RenderPageRequest
    # @return [Array<(File, Fixnum, Hash)>]
    # File data, response status code and response headers
    private def render_page_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? RenderPageRequest

      @api_client.config.logger.debug 'Calling API: WordsApi.render_page ...' if @api_client.config.debugging
      # verify the required parameter 'name' is set
      raise ArgumentError, 'Missing the required parameter name when calling WordsApi.render_page' if @api_client.config.client_side_validation && request.name.nil?
      # verify the required parameter 'page_index' is set
      raise ArgumentError, 'Missing the required parameter page_index when calling WordsApi.render_page' if @api_client.config.client_side_validation && request.page_index.nil?
      # verify the required parameter 'format' is set
      raise ArgumentError, 'Missing the required parameter format when calling WordsApi.render_page' if @api_client.config.client_side_validation && request.format.nil?
      # resource path
      local_var_path = '/words/{name}/pages/{pageIndex}/render'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.to_s)
      local_var_path = local_var_path.sub('{' + downcase_first_letter('PageIndex') + '}', request.page_index.to_s)

      # query parameters
      query_params = {}
      query_params[downcase_first_letter('Format')] = request.format

      if local_var_path.include? downcase_first_letter('Folder')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Folder') + '}', request.folder.to_s)
      else
        query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
      end
      if local_var_path.include? downcase_first_letter('Storage')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Storage') + '}', request.storage.to_s)
      else
        query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
      end
      if local_var_path.include? downcase_first_letter('LoadEncoding')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('LoadEncoding') + '}', request.load_encoding.to_s)
      else
        query_params[downcase_first_letter('LoadEncoding')] = request.load_encoding unless request.load_encoding.nil?
      end
      if local_var_path.include? downcase_first_letter('Password')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Password') + '}', request.password.to_s)
      else
        query_params[downcase_first_letter('Password')] = request.password unless request.password.nil?
      end
      if local_var_path.include? downcase_first_letter('FontsLocation')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('FontsLocation') + '}', request.fonts_location.to_s)
      else
        query_params[downcase_first_letter('FontsLocation')] = request.fonts_location unless request.fonts_location.nil?
      end

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/xml', 'application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/xml', 'application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['oauth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names,
                                                        return_type: 'File')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#render_page\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Renders paragraph to specified format.
    # 
    # @param request RenderParagraphRequest
    # @return [File]
    def render_paragraph(request)
      data, _status_code, _headers = render_paragraph_with_http_info(request)
      data
    end

    # Renders paragraph to specified format.
    # 
    # @param request RenderParagraphRequest
    # @return [Array<(File, Fixnum, Hash)>]
    # File data, response status code and response headers
    private def render_paragraph_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? RenderParagraphRequest

      @api_client.config.logger.debug 'Calling API: WordsApi.render_paragraph ...' if @api_client.config.debugging
      # verify the required parameter 'name' is set
      raise ArgumentError, 'Missing the required parameter name when calling WordsApi.render_paragraph' if @api_client.config.client_side_validation && request.name.nil?
      # verify the required parameter 'format' is set
      raise ArgumentError, 'Missing the required parameter format when calling WordsApi.render_paragraph' if @api_client.config.client_side_validation && request.format.nil?
      # verify the required parameter 'index' is set
      raise ArgumentError, 'Missing the required parameter index when calling WordsApi.render_paragraph' if @api_client.config.client_side_validation && request.index.nil?
      # resource path
      local_var_path = '/words/{name}/{nodePath}/paragraphs/{index}/render'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.to_s)
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Index') + '}', request.index.to_s)

      # query parameters
      query_params = {}
      query_params[downcase_first_letter('Format')] = request.format

      if local_var_path.include? downcase_first_letter('Folder')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Folder') + '}', request.folder.to_s)
      else
        query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
      end
      if local_var_path.include? downcase_first_letter('Storage')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Storage') + '}', request.storage.to_s)
      else
        query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
      end
      if local_var_path.include? downcase_first_letter('LoadEncoding')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('LoadEncoding') + '}', request.load_encoding.to_s)
      else
        query_params[downcase_first_letter('LoadEncoding')] = request.load_encoding unless request.load_encoding.nil?
      end
      if local_var_path.include? downcase_first_letter('Password')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Password') + '}', request.password.to_s)
      else
        query_params[downcase_first_letter('Password')] = request.password unless request.password.nil?
      end
      if local_var_path.include? downcase_first_letter('NodePath')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('NodePath') + '}', request.node_path.to_s)
      else
        query_params[downcase_first_letter('NodePath')] = request.node_path unless request.node_path.nil?
      end
      if local_var_path.include? downcase_first_letter('FontsLocation')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('FontsLocation') + '}', request.fonts_location.to_s)
      else
        query_params[downcase_first_letter('FontsLocation')] = request.fonts_location unless request.fonts_location.nil?
      end

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/xml', 'application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/xml', 'application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['oauth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names,
                                                        return_type: 'File')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#render_paragraph\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Renders table to specified format.
    # 
    # @param request RenderTableRequest
    # @return [File]
    def render_table(request)
      data, _status_code, _headers = render_table_with_http_info(request)
      data
    end

    # Renders table to specified format.
    # 
    # @param request RenderTableRequest
    # @return [Array<(File, Fixnum, Hash)>]
    # File data, response status code and response headers
    private def render_table_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? RenderTableRequest

      @api_client.config.logger.debug 'Calling API: WordsApi.render_table ...' if @api_client.config.debugging
      # verify the required parameter 'name' is set
      raise ArgumentError, 'Missing the required parameter name when calling WordsApi.render_table' if @api_client.config.client_side_validation && request.name.nil?
      # verify the required parameter 'format' is set
      raise ArgumentError, 'Missing the required parameter format when calling WordsApi.render_table' if @api_client.config.client_side_validation && request.format.nil?
      # verify the required parameter 'index' is set
      raise ArgumentError, 'Missing the required parameter index when calling WordsApi.render_table' if @api_client.config.client_side_validation && request.index.nil?
      # resource path
      local_var_path = '/words/{name}/{nodePath}/tables/{index}/render'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.to_s)
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Index') + '}', request.index.to_s)

      # query parameters
      query_params = {}
      query_params[downcase_first_letter('Format')] = request.format

      if local_var_path.include? downcase_first_letter('Folder')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Folder') + '}', request.folder.to_s)
      else
        query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
      end
      if local_var_path.include? downcase_first_letter('Storage')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Storage') + '}', request.storage.to_s)
      else
        query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
      end
      if local_var_path.include? downcase_first_letter('LoadEncoding')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('LoadEncoding') + '}', request.load_encoding.to_s)
      else
        query_params[downcase_first_letter('LoadEncoding')] = request.load_encoding unless request.load_encoding.nil?
      end
      if local_var_path.include? downcase_first_letter('Password')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Password') + '}', request.password.to_s)
      else
        query_params[downcase_first_letter('Password')] = request.password unless request.password.nil?
      end
      if local_var_path.include? downcase_first_letter('NodePath')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('NodePath') + '}', request.node_path.to_s)
      else
        query_params[downcase_first_letter('NodePath')] = request.node_path unless request.node_path.nil?
      end
      if local_var_path.include? downcase_first_letter('FontsLocation')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('FontsLocation') + '}', request.fonts_location.to_s)
      else
        query_params[downcase_first_letter('FontsLocation')] = request.fonts_location unless request.fonts_location.nil?
      end

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/xml', 'application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/xml', 'application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['oauth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names,
                                                        return_type: 'File')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#render_table\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Resets font's cache.
    # 
    # @param request ResetCacheRequest
    # @return [AsposeResponse]
    def reset_cache(request)
      data, _status_code, _headers = reset_cache_with_http_info(request)
      data
    end

    # Resets font&#39;s cache.
    # 
    # @param request ResetCacheRequest
    # @return [Array<(AsposeResponse, Fixnum, Hash)>]
    # AsposeResponse data, response status code and response headers
    private def reset_cache_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? ResetCacheRequest

      @api_client.config.logger.debug 'Calling API: WordsApi.reset_cache ...' if @api_client.config.debugging
      # resource path
      local_var_path = '/words/fonts/cache'

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/xml', 'application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/xml', 'application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['oauth']
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names,
                                                        return_type: 'AsposeResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#reset_cache\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Search text in document.
    # 
    # @param request SearchRequest
    # @return [SearchResponse]
    def search(request)
      data, _status_code, _headers = search_with_http_info(request)
      data
    end

    # Search text in document.
    # 
    # @param request SearchRequest
    # @return [Array<(SearchResponse, Fixnum, Hash)>]
    # SearchResponse data, response status code and response headers
    private def search_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? SearchRequest

      @api_client.config.logger.debug 'Calling API: WordsApi.search ...' if @api_client.config.debugging
      # verify the required parameter 'name' is set
      raise ArgumentError, 'Missing the required parameter name when calling WordsApi.search' if @api_client.config.client_side_validation && request.name.nil?
      # verify the required parameter 'pattern' is set
      raise ArgumentError, 'Missing the required parameter pattern when calling WordsApi.search' if @api_client.config.client_side_validation && request.pattern.nil?
      # resource path
      local_var_path = '/words/{name}/search'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.to_s)

      # query parameters
      query_params = {}
      query_params[downcase_first_letter('Pattern')] = request.pattern

      if local_var_path.include? downcase_first_letter('Folder')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Folder') + '}', request.folder.to_s)
      else
        query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
      end
      if local_var_path.include? downcase_first_letter('Storage')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Storage') + '}', request.storage.to_s)
      else
        query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
      end
      if local_var_path.include? downcase_first_letter('LoadEncoding')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('LoadEncoding') + '}', request.load_encoding.to_s)
      else
        query_params[downcase_first_letter('LoadEncoding')] = request.load_encoding unless request.load_encoding.nil?
      end
      if local_var_path.include? downcase_first_letter('Password')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Password') + '}', request.password.to_s)
      else
        query_params[downcase_first_letter('Password')] = request.password unless request.password.nil?
      end

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/xml', 'application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/xml', 'application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['oauth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names,
                                                        return_type: 'SearchResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#search\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Updates border properties.             
    # 'nodePath' should refer to node with cell or row
    # @param request UpdateBorderRequest
    # @return [BorderResponse]
    def update_border(request)
      data, _status_code, _headers = update_border_with_http_info(request)
      data
    end

    # Updates border properties.             
    # &#39;nodePath&#39; should refer to node with cell or row
    # @param request UpdateBorderRequest
    # @return [Array<(BorderResponse, Fixnum, Hash)>]
    # BorderResponse data, response status code and response headers
    private def update_border_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? UpdateBorderRequest

      @api_client.config.logger.debug 'Calling API: WordsApi.update_border ...' if @api_client.config.debugging
      # verify the required parameter 'name' is set
      raise ArgumentError, 'Missing the required parameter name when calling WordsApi.update_border' if @api_client.config.client_side_validation && request.name.nil?
      # verify the required parameter 'border_properties' is set
      raise ArgumentError, 'Missing the required parameter border_properties when calling WordsApi.update_border' if @api_client.config.client_side_validation && request.border_properties.nil?
      # verify the required parameter 'node_path' is set
      raise ArgumentError, 'Missing the required parameter node_path when calling WordsApi.update_border' if @api_client.config.client_side_validation && request.node_path.nil?
      # verify the required parameter 'index' is set
      raise ArgumentError, 'Missing the required parameter index when calling WordsApi.update_border' if @api_client.config.client_side_validation && request.index.nil?
      # resource path
      local_var_path = '/words/{name}/{nodePath}/borders/{index}'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.to_s)
      local_var_path = local_var_path.sub('{' + downcase_first_letter('NodePath') + '}', request.node_path.to_s)
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Index') + '}', request.index.to_s)

      # query parameters
      query_params = {}
      if local_var_path.include? downcase_first_letter('Folder')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Folder') + '}', request.folder.to_s)
      else
        query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
      end
      if local_var_path.include? downcase_first_letter('Storage')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Storage') + '}', request.storage.to_s)
      else
        query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
      end
      if local_var_path.include? downcase_first_letter('LoadEncoding')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('LoadEncoding') + '}', request.load_encoding.to_s)
      else
        query_params[downcase_first_letter('LoadEncoding')] = request.load_encoding unless request.load_encoding.nil?
      end
      if local_var_path.include? downcase_first_letter('Password')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Password') + '}', request.password.to_s)
      else
        query_params[downcase_first_letter('Password')] = request.password unless request.password.nil?
      end
      if local_var_path.include? downcase_first_letter('DestFileName')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('DestFileName') + '}', request.dest_file_name.to_s)
      else
        query_params[downcase_first_letter('DestFileName')] = request.dest_file_name unless request.dest_file_name.nil?
      end
      if local_var_path.include? downcase_first_letter('RevisionAuthor')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('RevisionAuthor') + '}', request.revision_author.to_s)
      else
        query_params[downcase_first_letter('RevisionAuthor')] = request.revision_author unless request.revision_author.nil?
      end
      if local_var_path.include? downcase_first_letter('RevisionDateTime')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('RevisionDateTime') + '}', request.revision_date_time.to_s)
      else
        query_params[downcase_first_letter('RevisionDateTime')] = request.revision_date_time unless request.revision_date_time.nil?
      end

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/xml', 'application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/xml', 'application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(request.border_properties)
      auth_names = ['oauth']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names,
                                                        return_type: 'BorderResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#update_border\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Update page setup of section.
    # 
    # @param request UpdateSectionPageSetupRequest
    # @return [SectionPageSetupResponse]
    def update_section_page_setup(request)
      data, _status_code, _headers = update_section_page_setup_with_http_info(request)
      data
    end

    # Update page setup of section.
    # 
    # @param request UpdateSectionPageSetupRequest
    # @return [Array<(SectionPageSetupResponse, Fixnum, Hash)>]
    # SectionPageSetupResponse data, response status code and response headers
    private def update_section_page_setup_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? UpdateSectionPageSetupRequest

      @api_client.config.logger.debug 'Calling API: WordsApi.update_section_page_setup ...' if @api_client.config.debugging
      # verify the required parameter 'name' is set
      raise ArgumentError, 'Missing the required parameter name when calling WordsApi.update_section_page_setup' if @api_client.config.client_side_validation && request.name.nil?
      # verify the required parameter 'section_index' is set
      raise ArgumentError, 'Missing the required parameter section_index when calling WordsApi.update_section_page_setup' if @api_client.config.client_side_validation && request.section_index.nil?
      # verify the required parameter 'page_setup' is set
      raise ArgumentError, 'Missing the required parameter page_setup when calling WordsApi.update_section_page_setup' if @api_client.config.client_side_validation && request.page_setup.nil?
      # resource path
      local_var_path = '/words/{name}/sections/{sectionIndex}/pageSetup'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.to_s)
      local_var_path = local_var_path.sub('{' + downcase_first_letter('SectionIndex') + '}', request.section_index.to_s)

      # query parameters
      query_params = {}
      if local_var_path.include? downcase_first_letter('Folder')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Folder') + '}', request.folder.to_s)
      else
        query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
      end
      if local_var_path.include? downcase_first_letter('Storage')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Storage') + '}', request.storage.to_s)
      else
        query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
      end
      if local_var_path.include? downcase_first_letter('LoadEncoding')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('LoadEncoding') + '}', request.load_encoding.to_s)
      else
        query_params[downcase_first_letter('LoadEncoding')] = request.load_encoding unless request.load_encoding.nil?
      end
      if local_var_path.include? downcase_first_letter('Password')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Password') + '}', request.password.to_s)
      else
        query_params[downcase_first_letter('Password')] = request.password unless request.password.nil?
      end
      if local_var_path.include? downcase_first_letter('DestFileName')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('DestFileName') + '}', request.dest_file_name.to_s)
      else
        query_params[downcase_first_letter('DestFileName')] = request.dest_file_name unless request.dest_file_name.nil?
      end
      if local_var_path.include? downcase_first_letter('RevisionAuthor')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('RevisionAuthor') + '}', request.revision_author.to_s)
      else
        query_params[downcase_first_letter('RevisionAuthor')] = request.revision_author unless request.revision_author.nil?
      end
      if local_var_path.include? downcase_first_letter('RevisionDateTime')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('RevisionDateTime') + '}', request.revision_date_time.to_s)
      else
        query_params[downcase_first_letter('RevisionDateTime')] = request.revision_date_time unless request.revision_date_time.nil?
      end

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/xml', 'application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/xml', 'application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(request.page_setup)
      auth_names = ['oauth']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names,
                                                        return_type: 'SectionPageSetupResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#update_section_page_setup\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Updates a table cell format.
    # 
    # @param request UpdateTableCellFormatRequest
    # @return [TableCellFormatResponse]
    def update_table_cell_format(request)
      data, _status_code, _headers = update_table_cell_format_with_http_info(request)
      data
    end

    # Updates a table cell format.
    # 
    # @param request UpdateTableCellFormatRequest
    # @return [Array<(TableCellFormatResponse, Fixnum, Hash)>]
    # TableCellFormatResponse data, response status code and response headers
    private def update_table_cell_format_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? UpdateTableCellFormatRequest

      @api_client.config.logger.debug 'Calling API: WordsApi.update_table_cell_format ...' if @api_client.config.debugging
      # verify the required parameter 'name' is set
      raise ArgumentError, 'Missing the required parameter name when calling WordsApi.update_table_cell_format' if @api_client.config.client_side_validation && request.name.nil?
      # verify the required parameter 'table_row_path' is set
      raise ArgumentError, 'Missing the required parameter table_row_path when calling WordsApi.update_table_cell_format' if @api_client.config.client_side_validation && request.table_row_path.nil?
      # verify the required parameter 'index' is set
      raise ArgumentError, 'Missing the required parameter index when calling WordsApi.update_table_cell_format' if @api_client.config.client_side_validation && request.index.nil?
      # resource path
      local_var_path = '/words/{name}/{tableRowPath}/cells/{index}/cellformat'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.to_s)
      local_var_path = local_var_path.sub('{' + downcase_first_letter('TableRowPath') + '}', request.table_row_path.to_s)
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Index') + '}', request.index.to_s)

      # query parameters
      query_params = {}
      if local_var_path.include? downcase_first_letter('Folder')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Folder') + '}', request.folder.to_s)
      else
        query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
      end
      if local_var_path.include? downcase_first_letter('Storage')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Storage') + '}', request.storage.to_s)
      else
        query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
      end
      if local_var_path.include? downcase_first_letter('LoadEncoding')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('LoadEncoding') + '}', request.load_encoding.to_s)
      else
        query_params[downcase_first_letter('LoadEncoding')] = request.load_encoding unless request.load_encoding.nil?
      end
      if local_var_path.include? downcase_first_letter('Password')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Password') + '}', request.password.to_s)
      else
        query_params[downcase_first_letter('Password')] = request.password unless request.password.nil?
      end
      if local_var_path.include? downcase_first_letter('DestFileName')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('DestFileName') + '}', request.dest_file_name.to_s)
      else
        query_params[downcase_first_letter('DestFileName')] = request.dest_file_name unless request.dest_file_name.nil?
      end
      if local_var_path.include? downcase_first_letter('RevisionAuthor')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('RevisionAuthor') + '}', request.revision_author.to_s)
      else
        query_params[downcase_first_letter('RevisionAuthor')] = request.revision_author unless request.revision_author.nil?
      end
      if local_var_path.include? downcase_first_letter('RevisionDateTime')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('RevisionDateTime') + '}', request.revision_date_time.to_s)
      else
        query_params[downcase_first_letter('RevisionDateTime')] = request.revision_date_time unless request.revision_date_time.nil?
      end

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/xml', 'application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/xml', 'application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(request.format)
      auth_names = ['oauth']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names,
                                                        return_type: 'TableCellFormatResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#update_table_cell_format\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Updates a table properties.
    # 
    # @param request UpdateTablePropertiesRequest
    # @return [TablePropertiesResponse]
    def update_table_properties(request)
      data, _status_code, _headers = update_table_properties_with_http_info(request)
      data
    end

    # Updates a table properties.
    # 
    # @param request UpdateTablePropertiesRequest
    # @return [Array<(TablePropertiesResponse, Fixnum, Hash)>]
    # TablePropertiesResponse data, response status code and response headers
    private def update_table_properties_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? UpdateTablePropertiesRequest

      @api_client.config.logger.debug 'Calling API: WordsApi.update_table_properties ...' if @api_client.config.debugging
      # verify the required parameter 'name' is set
      raise ArgumentError, 'Missing the required parameter name when calling WordsApi.update_table_properties' if @api_client.config.client_side_validation && request.name.nil?
      # verify the required parameter 'index' is set
      raise ArgumentError, 'Missing the required parameter index when calling WordsApi.update_table_properties' if @api_client.config.client_side_validation && request.index.nil?
      # resource path
      local_var_path = '/words/{name}/{nodePath}/tables/{index}/properties'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.to_s)
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Index') + '}', request.index.to_s)

      # query parameters
      query_params = {}
      if local_var_path.include? downcase_first_letter('Folder')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Folder') + '}', request.folder.to_s)
      else
        query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
      end
      if local_var_path.include? downcase_first_letter('Storage')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Storage') + '}', request.storage.to_s)
      else
        query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
      end
      if local_var_path.include? downcase_first_letter('LoadEncoding')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('LoadEncoding') + '}', request.load_encoding.to_s)
      else
        query_params[downcase_first_letter('LoadEncoding')] = request.load_encoding unless request.load_encoding.nil?
      end
      if local_var_path.include? downcase_first_letter('Password')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Password') + '}', request.password.to_s)
      else
        query_params[downcase_first_letter('Password')] = request.password unless request.password.nil?
      end
      if local_var_path.include? downcase_first_letter('DestFileName')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('DestFileName') + '}', request.dest_file_name.to_s)
      else
        query_params[downcase_first_letter('DestFileName')] = request.dest_file_name unless request.dest_file_name.nil?
      end
      if local_var_path.include? downcase_first_letter('RevisionAuthor')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('RevisionAuthor') + '}', request.revision_author.to_s)
      else
        query_params[downcase_first_letter('RevisionAuthor')] = request.revision_author unless request.revision_author.nil?
      end
      if local_var_path.include? downcase_first_letter('RevisionDateTime')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('RevisionDateTime') + '}', request.revision_date_time.to_s)
      else
        query_params[downcase_first_letter('RevisionDateTime')] = request.revision_date_time unless request.revision_date_time.nil?
      end
      if local_var_path.include? downcase_first_letter('NodePath')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('NodePath') + '}', request.node_path.to_s)
      else
        query_params[downcase_first_letter('NodePath')] = request.node_path unless request.node_path.nil?
      end

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/xml', 'application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/xml', 'application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(request.properties)
      auth_names = ['oauth']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names,
                                                        return_type: 'TablePropertiesResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#update_table_properties\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Updates a table row format.
    # 
    # @param request UpdateTableRowFormatRequest
    # @return [TableRowFormatResponse]
    def update_table_row_format(request)
      data, _status_code, _headers = update_table_row_format_with_http_info(request)
      data
    end

    # Updates a table row format.
    # 
    # @param request UpdateTableRowFormatRequest
    # @return [Array<(TableRowFormatResponse, Fixnum, Hash)>]
    # TableRowFormatResponse data, response status code and response headers
    private def update_table_row_format_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? UpdateTableRowFormatRequest

      @api_client.config.logger.debug 'Calling API: WordsApi.update_table_row_format ...' if @api_client.config.debugging
      # verify the required parameter 'name' is set
      raise ArgumentError, 'Missing the required parameter name when calling WordsApi.update_table_row_format' if @api_client.config.client_side_validation && request.name.nil?
      # verify the required parameter 'table_path' is set
      raise ArgumentError, 'Missing the required parameter table_path when calling WordsApi.update_table_row_format' if @api_client.config.client_side_validation && request.table_path.nil?
      # verify the required parameter 'index' is set
      raise ArgumentError, 'Missing the required parameter index when calling WordsApi.update_table_row_format' if @api_client.config.client_side_validation && request.index.nil?
      # resource path
      local_var_path = '/words/{name}/{tablePath}/rows/{index}/rowformat'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.to_s)
      local_var_path = local_var_path.sub('{' + downcase_first_letter('TablePath') + '}', request.table_path.to_s)
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Index') + '}', request.index.to_s)

      # query parameters
      query_params = {}
      if local_var_path.include? downcase_first_letter('Folder')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Folder') + '}', request.folder.to_s)
      else
        query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
      end
      if local_var_path.include? downcase_first_letter('Storage')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Storage') + '}', request.storage.to_s)
      else
        query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
      end
      if local_var_path.include? downcase_first_letter('LoadEncoding')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('LoadEncoding') + '}', request.load_encoding.to_s)
      else
        query_params[downcase_first_letter('LoadEncoding')] = request.load_encoding unless request.load_encoding.nil?
      end
      if local_var_path.include? downcase_first_letter('Password')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Password') + '}', request.password.to_s)
      else
        query_params[downcase_first_letter('Password')] = request.password unless request.password.nil?
      end
      if local_var_path.include? downcase_first_letter('DestFileName')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('DestFileName') + '}', request.dest_file_name.to_s)
      else
        query_params[downcase_first_letter('DestFileName')] = request.dest_file_name unless request.dest_file_name.nil?
      end
      if local_var_path.include? downcase_first_letter('RevisionAuthor')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('RevisionAuthor') + '}', request.revision_author.to_s)
      else
        query_params[downcase_first_letter('RevisionAuthor')] = request.revision_author unless request.revision_author.nil?
      end
      if local_var_path.include? downcase_first_letter('RevisionDateTime')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('RevisionDateTime') + '}', request.revision_date_time.to_s)
      else
        query_params[downcase_first_letter('RevisionDateTime')] = request.revision_date_time unless request.revision_date_time.nil?
      end

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/xml', 'application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/xml', 'application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(request.format)
      auth_names = ['oauth']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names,
                                                        return_type: 'TableRowFormatResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#update_table_row_format\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
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
      api_version = config.api_version
      config.api_version = ''
      request_url = "/oauth2/token"
      post_data = "grant_type=client_credentials" + "&client_id=" + config.api_key['app_sid'] + "&client_secret=" + config.api_key['api_key']
      data, status_code, header = @api_client.call_api(:POST, request_url, :body => post_data, :return_type => 'Object')
      @api_client.config.access_token = data[:access_token]
      @api_client.config.api_version = api_version
      @api_client.config.refresh_token = data[:refresh_token]
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
