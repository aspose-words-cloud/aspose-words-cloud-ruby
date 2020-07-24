# ------------------------------------------------------------------------------------
# <copyright company="Aspose" file="words_api.rb">
#   Copyright (c) 2020 Aspose.Words for Cloud
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

require 'uri'
require 'json'

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
    # @param request AcceptAllRevisionsRequest
    # @return [RevisionsModificationResponse]
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
    # @param request AcceptAllRevisionsRequest
    # @return [Array<(RevisionsModificationResponse, Fixnum, Hash)>]
    # RevisionsModificationResponse data, response status code and response headers
    private def accept_all_revisions_with_http_info(request)
        raise ArgumentError, 'Incorrect request type' unless request.is_a? AcceptAllRevisionsRequest

        @api_client.config.logger.debug 'Calling API: WordsApi.accept_all_revisions ...' if @api_client.config.debugging
        # verify the required parameter 'name' is set
        raise ArgumentError, 'Missing the required parameter name when calling WordsApi.accept_all_revisions' if @api_client.config.client_side_validation && request.name.nil?

        # resource path
        local_var_path = '/words/{name}/revisions/acceptAll'[1..-1]
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.nil? ? '' : request.name.to_s)
        local_var_path = local_var_path.sub('//', '/')

        # query parameters
        query_params = {}
        query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
        query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
        query_params[downcase_first_letter('LoadEncoding')] = request.load_encoding unless request.load_encoding.nil?
        query_params[downcase_first_letter('Password')] = request.password unless request.password.nil?
        query_params[downcase_first_letter('DestFileName')] = request.dest_file_name unless request.dest_file_name.nil?

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
        auth_names = ['JWT']

        data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
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

    # Appends documents to original document.
    # @param request AppendDocumentRequest
    # @return [DocumentResponse]
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
    # @param request AppendDocumentRequest
    # @return [Array<(DocumentResponse, Fixnum, Hash)>]
    # DocumentResponse data, response status code and response headers
    private def append_document_with_http_info(request)
        raise ArgumentError, 'Incorrect request type' unless request.is_a? AppendDocumentRequest

        @api_client.config.logger.debug 'Calling API: WordsApi.append_document ...' if @api_client.config.debugging
        # verify the required parameter 'name' is set
        raise ArgumentError, 'Missing the required parameter name when calling WordsApi.append_document' if @api_client.config.client_side_validation && request.name.nil?
        # verify the required parameter 'document_list' is set
        raise ArgumentError, 'Missing the required parameter document_list when calling WordsApi.append_document' if @api_client.config.client_side_validation && request.document_list.nil?

        # resource path
        local_var_path = '/words/{name}/appendDocument'[1..-1]
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.nil? ? '' : request.name.to_s)
        local_var_path = local_var_path.sub('//', '/')

        # query parameters
        query_params = {}
        query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
        query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
        query_params[downcase_first_letter('LoadEncoding')] = request.load_encoding unless request.load_encoding.nil?
        query_params[downcase_first_letter('Password')] = request.password unless request.password.nil?
        query_params[downcase_first_letter('DestFileName')] = request.dest_file_name unless request.dest_file_name.nil?
        query_params[downcase_first_letter('RevisionAuthor')] = request.revision_author unless request.revision_author.nil?
        query_params[downcase_first_letter('RevisionDateTime')] = request.revision_date_time unless request.revision_date_time.nil?

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
        auth_names = ['JWT']

        data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names,
                                                        return_type: 'DocumentResponse')
        if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#append_document\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
        end
        [data, status_code, headers]
    end

    # Apply a style to the document node.
    # @param request ApplyStyleToDocumentElementRequest
    # @return [WordsResponse]
    def apply_style_to_document_element(request)
        begin
        data, _status_code, _headers = apply_style_to_document_element_with_http_info(request)
        rescue ApiError => e
            if e.code == 401
            request_token
            data, _status_code, _headers = apply_style_to_document_element_with_http_info(request)
            else
            raise
            end
        end
        data
    end

    # Apply a style to the document node.
    # @param request ApplyStyleToDocumentElementRequest
    # @return [Array<(WordsResponse, Fixnum, Hash)>]
    # WordsResponse data, response status code and response headers
    private def apply_style_to_document_element_with_http_info(request)
        raise ArgumentError, 'Incorrect request type' unless request.is_a? ApplyStyleToDocumentElementRequest

        @api_client.config.logger.debug 'Calling API: WordsApi.apply_style_to_document_element ...' if @api_client.config.debugging
        # verify the required parameter 'name' is set
        raise ArgumentError, 'Missing the required parameter name when calling WordsApi.apply_style_to_document_element' if @api_client.config.client_side_validation && request.name.nil?
        # verify the required parameter 'style_apply' is set
        raise ArgumentError, 'Missing the required parameter style_apply when calling WordsApi.apply_style_to_document_element' if @api_client.config.client_side_validation && request.style_apply.nil?
        # verify the required parameter 'styled_node_path' is set
        raise ArgumentError, 'Missing the required parameter styled_node_path when calling WordsApi.apply_style_to_document_element' if @api_client.config.client_side_validation && request.styled_node_path.nil?

        # resource path
        local_var_path = '/words/{name}/{styledNodePath}/style'[1..-1]
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.nil? ? '' : request.name.to_s)
        local_var_path = local_var_path.sub('{' + downcase_first_letter('StyledNodePath') + '}', request.styled_node_path.nil? ? '' : request.styled_node_path.to_s)
        local_var_path = local_var_path.sub('//', '/')

        # query parameters
        query_params = {}
        query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
        query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
        query_params[downcase_first_letter('LoadEncoding')] = request.load_encoding unless request.load_encoding.nil?
        query_params[downcase_first_letter('Password')] = request.password unless request.password.nil?
        query_params[downcase_first_letter('DestFileName')] = request.dest_file_name unless request.dest_file_name.nil?
        query_params[downcase_first_letter('RevisionAuthor')] = request.revision_author unless request.revision_author.nil?
        query_params[downcase_first_letter('RevisionDateTime')] = request.revision_date_time unless request.revision_date_time.nil?

        # header parameters
        header_params = {}
        # HTTP header 'Accept' (if needed)
        header_params['Accept'] = @api_client.select_header_accept(['application/xml', 'application/json'])
        # HTTP header 'Content-Type'
        header_params['Content-Type'] = @api_client.select_header_content_type(['application/xml', 'application/json'])

        # form parameters
        form_params = {}

        # http body (model)
        post_body = @api_client.object_to_http_body(request.style_apply)
        auth_names = ['JWT']

        data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names,
                                                        return_type: 'WordsResponse')
        if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#apply_style_to_document_element\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
        end
        [data, status_code, headers]
    end

    # Executes document "build report" operation.
    # @param request BuildReportRequest
    # @return [DocumentResponse]
    def build_report(request)
        begin
        data, _status_code, _headers = build_report_with_http_info(request)
        rescue ApiError => e
            if e.code == 401
            request_token
            data, _status_code, _headers = build_report_with_http_info(request)
            else
            raise
            end
        end
        data
    end

    # Executes document "build report" operation.
    # @param request BuildReportRequest
    # @return [Array<(DocumentResponse, Fixnum, Hash)>]
    # DocumentResponse data, response status code and response headers
    private def build_report_with_http_info(request)
        raise ArgumentError, 'Incorrect request type' unless request.is_a? BuildReportRequest

        @api_client.config.logger.debug 'Calling API: WordsApi.build_report ...' if @api_client.config.debugging
        # verify the required parameter 'name' is set
        raise ArgumentError, 'Missing the required parameter name when calling WordsApi.build_report' if @api_client.config.client_side_validation && request.name.nil?
        # verify the required parameter 'data' is set
        raise ArgumentError, 'Missing the required parameter data when calling WordsApi.build_report' if @api_client.config.client_side_validation && request.data.nil?
        # verify the required parameter 'report_engine_settings' is set
        raise ArgumentError, 'Missing the required parameter report_engine_settings when calling WordsApi.build_report' if @api_client.config.client_side_validation && request.report_engine_settings.nil?

        # resource path
        local_var_path = '/words/{name}/buildReport'[1..-1]
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.nil? ? '' : request.name.to_s)
        local_var_path = local_var_path.sub('//', '/')

        # query parameters
        query_params = {}
        query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
        query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
        query_params[downcase_first_letter('LoadEncoding')] = request.load_encoding unless request.load_encoding.nil?
        query_params[downcase_first_letter('Password')] = request.password unless request.password.nil?
        query_params[downcase_first_letter('DestFileName')] = request.dest_file_name unless request.dest_file_name.nil?

        # header parameters
        header_params = {}
        # HTTP header 'Accept' (if needed)
        header_params['Accept'] = @api_client.select_header_accept(['application/xml', 'application/json'])
        # HTTP header 'Content-Type'
        header_params['Content-Type'] = @api_client.select_header_content_type(['multipart/form-data'])

        # form parameters
        form_params = {}
        form_params[downcase_first_letter('Data')] = request.data
        form_params[downcase_first_letter('ReportEngineSettings')] = request.report_engine_settings.to_body.to_json

        # http body (model)
        post_body = nil
        auth_names = ['JWT']

        data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names,
                                                        return_type: 'DocumentResponse')
        if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#build_report\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
        end
        [data, status_code, headers]
    end

    # Executes document "build report" online operation.
    # @param request BuildReportOnlineRequest
    # @return [File]
    def build_report_online(request)
        begin
        data, _status_code, _headers = build_report_online_with_http_info(request)
        rescue ApiError => e
            if e.code == 401
            request_token
            data, _status_code, _headers = build_report_online_with_http_info(request)
            else
            raise
            end
        end
        data
    end

    # Executes document "build report" online operation.
    # @param request BuildReportOnlineRequest
    # @return [Array<(File, Fixnum, Hash)>]
    # File data, response status code and response headers
    private def build_report_online_with_http_info(request)
        raise ArgumentError, 'Incorrect request type' unless request.is_a? BuildReportOnlineRequest

        @api_client.config.logger.debug 'Calling API: WordsApi.build_report_online ...' if @api_client.config.debugging
        # verify the required parameter 'template' is set
        raise ArgumentError, 'Missing the required parameter template when calling WordsApi.build_report_online' if @api_client.config.client_side_validation && request.template.nil?
        # verify the required parameter 'data' is set
        raise ArgumentError, 'Missing the required parameter data when calling WordsApi.build_report_online' if @api_client.config.client_side_validation && request.data.nil?
        # verify the required parameter 'report_engine_settings' is set
        raise ArgumentError, 'Missing the required parameter report_engine_settings when calling WordsApi.build_report_online' if @api_client.config.client_side_validation && request.report_engine_settings.nil?

        # resource path
        local_var_path = '/words/buildReport'[1..-1]
        local_var_path = local_var_path.sub('//', '/')

        # query parameters
        query_params = {}
        query_params[downcase_first_letter('DocumentFileName')] = request.document_file_name unless request.document_file_name.nil?

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
        form_params[downcase_first_letter('ReportEngineSettings')] = request.report_engine_settings.to_body.to_json

        # http body (model)
        post_body = nil
        auth_names = ['JWT']

        data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names,
                                                        return_type: 'File')
        if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#build_report_online\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
        end
        [data, status_code, headers]
    end

    # Classifies raw text.
    # @param request ClassifyRequest
    # @return [ClassificationResponse]
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
    # @param request ClassifyRequest
    # @return [Array<(ClassificationResponse, Fixnum, Hash)>]
    # ClassificationResponse data, response status code and response headers
    private def classify_with_http_info(request)
        raise ArgumentError, 'Incorrect request type' unless request.is_a? ClassifyRequest

        @api_client.config.logger.debug 'Calling API: WordsApi.classify ...' if @api_client.config.debugging
        # verify the required parameter 'text' is set
        raise ArgumentError, 'Missing the required parameter text when calling WordsApi.classify' if @api_client.config.client_side_validation && request.text.nil?

        # resource path
        local_var_path = '/words/classify'[1..-1]
        local_var_path = local_var_path.sub('//', '/')

        # query parameters
        query_params = {}
        query_params[downcase_first_letter('BestClassesCount')] = request.best_classes_count unless request.best_classes_count.nil?

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
        auth_names = ['JWT']

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

    # Classifies document.
    # @param request ClassifyDocumentRequest
    # @return [ClassificationResponse]
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
    # @param request ClassifyDocumentRequest
    # @return [Array<(ClassificationResponse, Fixnum, Hash)>]
    # ClassificationResponse data, response status code and response headers
    private def classify_document_with_http_info(request)
        raise ArgumentError, 'Incorrect request type' unless request.is_a? ClassifyDocumentRequest

        @api_client.config.logger.debug 'Calling API: WordsApi.classify_document ...' if @api_client.config.debugging
        # verify the required parameter 'document_name' is set
        raise ArgumentError, 'Missing the required parameter document_name when calling WordsApi.classify_document' if @api_client.config.client_side_validation && request.document_name.nil?

        # resource path
        local_var_path = '/words/{documentName}/classify'[1..-1]
        local_var_path = local_var_path.sub('{' + downcase_first_letter('DocumentName') + '}', request.document_name.nil? ? '' : request.document_name.to_s)
        local_var_path = local_var_path.sub('//', '/')

        # query parameters
        query_params = {}
        query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
        query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
        query_params[downcase_first_letter('LoadEncoding')] = request.load_encoding unless request.load_encoding.nil?
        query_params[downcase_first_letter('Password')] = request.password unless request.password.nil?
        query_params[downcase_first_letter('BestClassesCount')] = request.best_classes_count unless request.best_classes_count.nil?
        query_params[downcase_first_letter('Taxonomy')] = request.taxonomy unless request.taxonomy.nil?

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
        auth_names = ['JWT']

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

    # Compares document with original document.
    # @param request CompareDocumentRequest
    # @return [DocumentResponse]
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
    # @param request CompareDocumentRequest
    # @return [Array<(DocumentResponse, Fixnum, Hash)>]
    # DocumentResponse data, response status code and response headers
    private def compare_document_with_http_info(request)
        raise ArgumentError, 'Incorrect request type' unless request.is_a? CompareDocumentRequest

        @api_client.config.logger.debug 'Calling API: WordsApi.compare_document ...' if @api_client.config.debugging
        # verify the required parameter 'name' is set
        raise ArgumentError, 'Missing the required parameter name when calling WordsApi.compare_document' if @api_client.config.client_side_validation && request.name.nil?
        # verify the required parameter 'compare_data' is set
        raise ArgumentError, 'Missing the required parameter compare_data when calling WordsApi.compare_document' if @api_client.config.client_side_validation && request.compare_data.nil?

        # resource path
        local_var_path = '/words/{name}/compareDocument'[1..-1]
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.nil? ? '' : request.name.to_s)
        local_var_path = local_var_path.sub('//', '/')

        # query parameters
        query_params = {}
        query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
        query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
        query_params[downcase_first_letter('LoadEncoding')] = request.load_encoding unless request.load_encoding.nil?
        query_params[downcase_first_letter('Password')] = request.password unless request.password.nil?
        query_params[downcase_first_letter('DestFileName')] = request.dest_file_name unless request.dest_file_name.nil?

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
        auth_names = ['JWT']

        data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names,
                                                        return_type: 'DocumentResponse')
        if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#compare_document\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
        end
        [data, status_code, headers]
    end

    # Converts document from the request's content to the specified format.
    # @param request ConvertDocumentRequest
    # @return [File]
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

    # Converts document from the request's content to the specified format.
    # @param request ConvertDocumentRequest
    # @return [Array<(File, Fixnum, Hash)>]
    # File data, response status code and response headers
    private def convert_document_with_http_info(request)
        raise ArgumentError, 'Incorrect request type' unless request.is_a? ConvertDocumentRequest

        @api_client.config.logger.debug 'Calling API: WordsApi.convert_document ...' if @api_client.config.debugging
        # verify the required parameter 'document' is set
        raise ArgumentError, 'Missing the required parameter document when calling WordsApi.convert_document' if @api_client.config.client_side_validation && request.document.nil?
        # verify the required parameter 'format' is set
        raise ArgumentError, 'Missing the required parameter format when calling WordsApi.convert_document' if @api_client.config.client_side_validation && request.format.nil?

        # resource path
        local_var_path = '/words/convert'[1..-1]
        local_var_path = local_var_path.sub('//', '/')

        # query parameters
        query_params = {}
        query_params[downcase_first_letter('Format')] = request.format
        query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
        query_params[downcase_first_letter('OutPath')] = request.out_path unless request.out_path.nil?
        query_params[downcase_first_letter('FileNameFieldValue')] = request.file_name_field_value unless request.file_name_field_value.nil?
        query_params[downcase_first_letter('FontsLocation')] = request.fonts_location unless request.fonts_location.nil?

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
        auth_names = ['JWT']

        data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names,
                                                        return_type: 'File')
        if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#convert_document\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
        end
        [data, status_code, headers]
    end

    # Copy file.
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

    # Copy file.
    # @param request CopyFileRequest
    # @return [Array<(nil, Fixnum, Hash)>]
    # nil, response status code and response headers
    private def copy_file_with_http_info(request)
        raise ArgumentError, 'Incorrect request type' unless request.is_a? CopyFileRequest

        @api_client.config.logger.debug 'Calling API: WordsApi.copy_file ...' if @api_client.config.debugging
        # verify the required parameter 'dest_path' is set
        raise ArgumentError, 'Missing the required parameter dest_path when calling WordsApi.copy_file' if @api_client.config.client_side_validation && request.dest_path.nil?
        # verify the required parameter 'src_path' is set
        raise ArgumentError, 'Missing the required parameter src_path when calling WordsApi.copy_file' if @api_client.config.client_side_validation && request.src_path.nil?

        # resource path
        local_var_path = '/words/storage/file/copy/{srcPath}'[1..-1]
        local_var_path = local_var_path.sub('{' + downcase_first_letter('SrcPath') + '}', request.src_path.nil? ? '' : request.src_path.to_s)
        local_var_path = local_var_path.sub('//', '/')

        # query parameters
        query_params = {}
        query_params[downcase_first_letter('DestPath')] = request.dest_path
        query_params[downcase_first_letter('SrcStorageName')] = request.src_storage_name unless request.src_storage_name.nil?
        query_params[downcase_first_letter('DestStorageName')] = request.dest_storage_name unless request.dest_storage_name.nil?
        query_params[downcase_first_letter('VersionId')] = request.version_id unless request.version_id.nil?

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

    # Copy folder.
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

    # Copy folder.
    # @param request CopyFolderRequest
    # @return [Array<(nil, Fixnum, Hash)>]
    # nil, response status code and response headers
    private def copy_folder_with_http_info(request)
        raise ArgumentError, 'Incorrect request type' unless request.is_a? CopyFolderRequest

        @api_client.config.logger.debug 'Calling API: WordsApi.copy_folder ...' if @api_client.config.debugging
        # verify the required parameter 'dest_path' is set
        raise ArgumentError, 'Missing the required parameter dest_path when calling WordsApi.copy_folder' if @api_client.config.client_side_validation && request.dest_path.nil?
        # verify the required parameter 'src_path' is set
        raise ArgumentError, 'Missing the required parameter src_path when calling WordsApi.copy_folder' if @api_client.config.client_side_validation && request.src_path.nil?

        # resource path
        local_var_path = '/words/storage/folder/copy/{srcPath}'[1..-1]
        local_var_path = local_var_path.sub('{' + downcase_first_letter('SrcPath') + '}', request.src_path.nil? ? '' : request.src_path.to_s)
        local_var_path = local_var_path.sub('//', '/')

        # query parameters
        query_params = {}
        query_params[downcase_first_letter('DestPath')] = request.dest_path
        query_params[downcase_first_letter('SrcStorageName')] = request.src_storage_name unless request.src_storage_name.nil?
        query_params[downcase_first_letter('DestStorageName')] = request.dest_storage_name unless request.dest_storage_name.nil?

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

    # Copy and insert a new style to the document, returns a copied style.
    # @param request CopyStyleRequest
    # @return [StyleResponse]
    def copy_style(request)
        begin
        data, _status_code, _headers = copy_style_with_http_info(request)
        rescue ApiError => e
            if e.code == 401
            request_token
            data, _status_code, _headers = copy_style_with_http_info(request)
            else
            raise
            end
        end
        data
    end

    # Copy and insert a new style to the document, returns a copied style.
    # @param request CopyStyleRequest
    # @return [Array<(StyleResponse, Fixnum, Hash)>]
    # StyleResponse data, response status code and response headers
    private def copy_style_with_http_info(request)
        raise ArgumentError, 'Incorrect request type' unless request.is_a? CopyStyleRequest

        @api_client.config.logger.debug 'Calling API: WordsApi.copy_style ...' if @api_client.config.debugging
        # verify the required parameter 'name' is set
        raise ArgumentError, 'Missing the required parameter name when calling WordsApi.copy_style' if @api_client.config.client_side_validation && request.name.nil?
        # verify the required parameter 'style_copy' is set
        raise ArgumentError, 'Missing the required parameter style_copy when calling WordsApi.copy_style' if @api_client.config.client_side_validation && request.style_copy.nil?

        # resource path
        local_var_path = '/words/{name}/styles/copy'[1..-1]
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.nil? ? '' : request.name.to_s)
        local_var_path = local_var_path.sub('//', '/')

        # query parameters
        query_params = {}
        query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
        query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
        query_params[downcase_first_letter('LoadEncoding')] = request.load_encoding unless request.load_encoding.nil?
        query_params[downcase_first_letter('Password')] = request.password unless request.password.nil?
        query_params[downcase_first_letter('DestFileName')] = request.dest_file_name unless request.dest_file_name.nil?
        query_params[downcase_first_letter('RevisionAuthor')] = request.revision_author unless request.revision_author.nil?
        query_params[downcase_first_letter('RevisionDateTime')] = request.revision_date_time unless request.revision_date_time.nil?

        # header parameters
        header_params = {}
        # HTTP header 'Accept' (if needed)
        header_params['Accept'] = @api_client.select_header_accept(['application/xml', 'application/json'])
        # HTTP header 'Content-Type'
        header_params['Content-Type'] = @api_client.select_header_content_type(['application/xml', 'application/json'])

        # form parameters
        form_params = {}

        # http body (model)
        post_body = @api_client.object_to_http_body(request.style_copy)
        auth_names = ['JWT']

        data, status_code, headers = @api_client.call_api(:POST, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names,
                                                        return_type: 'StyleResponse')
        if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#copy_style\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
        end
        [data, status_code, headers]
    end

    # Creates new document.
    # Document is created with format which is recognized from file extensions.
    # Supported extensions: ".doc", ".docx", ".docm", ".dot", ".dotm", ".dotx", ".flatopc", ".fopc", ".flatopc_macro", ".fopc_macro", ".flatopc_template", ".fopc_template", ".flatopc_template_macro", ".fopc_template_macro", ".wordml", ".wml", ".rtf".
    # @param request CreateDocumentRequest
    # @return [DocumentResponse]
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

    # Creates new document.
    # Document is created with format which is recognized from file extensions.
    # Supported extensions: ".doc", ".docx", ".docm", ".dot", ".dotm", ".dotx", ".flatopc", ".fopc", ".flatopc_macro", ".fopc_macro", ".flatopc_template", ".fopc_template", ".flatopc_template_macro", ".fopc_template_macro", ".wordml", ".wml", ".rtf".
    # @param request CreateDocumentRequest
    # @return [Array<(DocumentResponse, Fixnum, Hash)>]
    # DocumentResponse data, response status code and response headers
    private def create_document_with_http_info(request)
        raise ArgumentError, 'Incorrect request type' unless request.is_a? CreateDocumentRequest

        @api_client.config.logger.debug 'Calling API: WordsApi.create_document ...' if @api_client.config.debugging
        # resource path
        local_var_path = '/words/create'[1..-1]
        local_var_path = local_var_path.sub('//', '/')

        # query parameters
        query_params = {}
        query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
        query_params[downcase_first_letter('FileName')] = request.file_name unless request.file_name.nil?
        query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?

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
        auth_names = ['JWT']

        data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names,
                                                        return_type: 'DocumentResponse')
        if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#create_document\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
        end
        [data, status_code, headers]
    end

    # Create the folder.
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

    # Create the folder.
    # @param request CreateFolderRequest
    # @return [Array<(nil, Fixnum, Hash)>]
    # nil, response status code and response headers
    private def create_folder_with_http_info(request)
        raise ArgumentError, 'Incorrect request type' unless request.is_a? CreateFolderRequest

        @api_client.config.logger.debug 'Calling API: WordsApi.create_folder ...' if @api_client.config.debugging
        # verify the required parameter 'path' is set
        raise ArgumentError, 'Missing the required parameter path when calling WordsApi.create_folder' if @api_client.config.client_side_validation && request.path.nil?

        # resource path
        local_var_path = '/words/storage/folder/{path}'[1..-1]
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Path') + '}', request.path.nil? ? '' : request.path.to_s)
        local_var_path = local_var_path.sub('//', '/')

        # query parameters
        query_params = {}
        query_params[downcase_first_letter('StorageName')] = request.storage_name unless request.storage_name.nil?

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
    # @param request CreateOrUpdateDocumentPropertyRequest
    # @return [DocumentPropertyResponse]
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
        local_var_path = '/words/{name}/documentProperties/{propertyName}'[1..-1]
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.nil? ? '' : request.name.to_s)
        local_var_path = local_var_path.sub('{' + downcase_first_letter('PropertyName') + '}', request.property_name.nil? ? '' : request.property_name.to_s)
        local_var_path = local_var_path.sub('//', '/')

        # query parameters
        query_params = {}
        query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
        query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
        query_params[downcase_first_letter('LoadEncoding')] = request.load_encoding unless request.load_encoding.nil?
        query_params[downcase_first_letter('Password')] = request.password unless request.password.nil?
        query_params[downcase_first_letter('DestFileName')] = request.dest_file_name unless request.dest_file_name.nil?
        query_params[downcase_first_letter('RevisionAuthor')] = request.revision_author unless request.revision_author.nil?
        query_params[downcase_first_letter('RevisionDateTime')] = request.revision_date_time unless request.revision_date_time.nil?

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
        auth_names = ['JWT']

        data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
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

    # Remove all tab stops.
    # @param request DeleteAllParagraphTabStopsRequest
    # @return [TabStopsResponse]
    def delete_all_paragraph_tab_stops(request)
        begin
        data, _status_code, _headers = delete_all_paragraph_tab_stops_with_http_info(request)
        rescue ApiError => e
            if e.code == 401
            request_token
            data, _status_code, _headers = delete_all_paragraph_tab_stops_with_http_info(request)
            else
            raise
            end
        end
        data
    end

    # Remove all tab stops.
    # @param request DeleteAllParagraphTabStopsRequest
    # @return [Array<(TabStopsResponse, Fixnum, Hash)>]
    # TabStopsResponse data, response status code and response headers
    private def delete_all_paragraph_tab_stops_with_http_info(request)
        raise ArgumentError, 'Incorrect request type' unless request.is_a? DeleteAllParagraphTabStopsRequest

        @api_client.config.logger.debug 'Calling API: WordsApi.delete_all_paragraph_tab_stops ...' if @api_client.config.debugging
        # verify the required parameter 'name' is set
        raise ArgumentError, 'Missing the required parameter name when calling WordsApi.delete_all_paragraph_tab_stops' if @api_client.config.client_side_validation && request.name.nil?
        # verify the required parameter 'index' is set
        raise ArgumentError, 'Missing the required parameter index when calling WordsApi.delete_all_paragraph_tab_stops' if @api_client.config.client_side_validation && request.index.nil?

        # resource path
        local_var_path = '/words/{name}/{nodePath}/paragraphs/{index}/tabstops'[1..-1]
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.nil? ? '' : request.name.to_s)
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Index') + '}', request.index.nil? ? '' : request.index.to_s)
        local_var_path = local_var_path.sub('{' + downcase_first_letter('NodePath') + '}', request.node_path.nil? ? '' : request.node_path.to_s)
        local_var_path = local_var_path.sub('//', '/')

        # query parameters
        query_params = {}
        query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
        query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
        query_params[downcase_first_letter('LoadEncoding')] = request.load_encoding unless request.load_encoding.nil?
        query_params[downcase_first_letter('Password')] = request.password unless request.password.nil?
        query_params[downcase_first_letter('DestFileName')] = request.dest_file_name unless request.dest_file_name.nil?

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
        auth_names = ['JWT']

        data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names,
                                                        return_type: 'TabStopsResponse')
        if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#delete_all_paragraph_tab_stops\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
        end
        [data, status_code, headers]
    end

    # 'nodePath' should refer to paragraph, cell or row.
    # @param request DeleteBorderRequest
    # @return [BorderResponse]
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

    # 'nodePath' should refer to paragraph, cell or row.
    # @param request DeleteBorderRequest
    # @return [Array<(BorderResponse, Fixnum, Hash)>]
    # BorderResponse data, response status code and response headers
    private def delete_border_with_http_info(request)
        raise ArgumentError, 'Incorrect request type' unless request.is_a? DeleteBorderRequest

        @api_client.config.logger.debug 'Calling API: WordsApi.delete_border ...' if @api_client.config.debugging
        # verify the required parameter 'name' is set
        raise ArgumentError, 'Missing the required parameter name when calling WordsApi.delete_border' if @api_client.config.client_side_validation && request.name.nil?
        # verify the required parameter 'border_type' is set
        raise ArgumentError, 'Missing the required parameter border_type when calling WordsApi.delete_border' if @api_client.config.client_side_validation && request.border_type.nil?

        # resource path
        local_var_path = '/words/{name}/{nodePath}/borders/{borderType}'[1..-1]
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.nil? ? '' : request.name.to_s)
        local_var_path = local_var_path.sub('{' + downcase_first_letter('BorderType') + '}', request.border_type.nil? ? '' : request.border_type.to_s)
        local_var_path = local_var_path.sub('{' + downcase_first_letter('NodePath') + '}', request.node_path.nil? ? '' : request.node_path.to_s)
        local_var_path = local_var_path.sub('//', '/')

        # query parameters
        query_params = {}
        query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
        query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
        query_params[downcase_first_letter('LoadEncoding')] = request.load_encoding unless request.load_encoding.nil?
        query_params[downcase_first_letter('Password')] = request.password unless request.password.nil?
        query_params[downcase_first_letter('DestFileName')] = request.dest_file_name unless request.dest_file_name.nil?
        query_params[downcase_first_letter('RevisionAuthor')] = request.revision_author unless request.revision_author.nil?
        query_params[downcase_first_letter('RevisionDateTime')] = request.revision_date_time unless request.revision_date_time.nil?

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
        auth_names = ['JWT']

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

    # 'nodePath' should refer to paragraph, cell or row.
    # @param request DeleteBordersRequest
    # @return [BordersResponse]
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

    # 'nodePath' should refer to paragraph, cell or row.
    # @param request DeleteBordersRequest
    # @return [Array<(BordersResponse, Fixnum, Hash)>]
    # BordersResponse data, response status code and response headers
    private def delete_borders_with_http_info(request)
        raise ArgumentError, 'Incorrect request type' unless request.is_a? DeleteBordersRequest

        @api_client.config.logger.debug 'Calling API: WordsApi.delete_borders ...' if @api_client.config.debugging
        # verify the required parameter 'name' is set
        raise ArgumentError, 'Missing the required parameter name when calling WordsApi.delete_borders' if @api_client.config.client_side_validation && request.name.nil?

        # resource path
        local_var_path = '/words/{name}/{nodePath}/borders'[1..-1]
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.nil? ? '' : request.name.to_s)
        local_var_path = local_var_path.sub('{' + downcase_first_letter('NodePath') + '}', request.node_path.nil? ? '' : request.node_path.to_s)
        local_var_path = local_var_path.sub('//', '/')

        # query parameters
        query_params = {}
        query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
        query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
        query_params[downcase_first_letter('LoadEncoding')] = request.load_encoding unless request.load_encoding.nil?
        query_params[downcase_first_letter('Password')] = request.password unless request.password.nil?
        query_params[downcase_first_letter('DestFileName')] = request.dest_file_name unless request.dest_file_name.nil?
        query_params[downcase_first_letter('RevisionAuthor')] = request.revision_author unless request.revision_author.nil?
        query_params[downcase_first_letter('RevisionDateTime')] = request.revision_date_time unless request.revision_date_time.nil?

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
        auth_names = ['JWT']

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

    # Removes comment from document.
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
    # @param request DeleteCommentRequest
    # @return [Array<(nil, Fixnum, Hash)>]
    # nil, response status code and response headers
    private def delete_comment_with_http_info(request)
        raise ArgumentError, 'Incorrect request type' unless request.is_a? DeleteCommentRequest

        @api_client.config.logger.debug 'Calling API: WordsApi.delete_comment ...' if @api_client.config.debugging
        # verify the required parameter 'name' is set
        raise ArgumentError, 'Missing the required parameter name when calling WordsApi.delete_comment' if @api_client.config.client_side_validation && request.name.nil?
        # verify the required parameter 'comment_index' is set
        raise ArgumentError, 'Missing the required parameter comment_index when calling WordsApi.delete_comment' if @api_client.config.client_side_validation && request.comment_index.nil?

        # resource path
        local_var_path = '/words/{name}/comments/{commentIndex}'[1..-1]
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.nil? ? '' : request.name.to_s)
        local_var_path = local_var_path.sub('{' + downcase_first_letter('CommentIndex') + '}', request.comment_index.nil? ? '' : request.comment_index.to_s)
        local_var_path = local_var_path.sub('//', '/')

        # query parameters
        query_params = {}
        query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
        query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
        query_params[downcase_first_letter('LoadEncoding')] = request.load_encoding unless request.load_encoding.nil?
        query_params[downcase_first_letter('Password')] = request.password unless request.password.nil?
        query_params[downcase_first_letter('DestFileName')] = request.dest_file_name unless request.dest_file_name.nil?
        query_params[downcase_first_letter('RevisionAuthor')] = request.revision_author unless request.revision_author.nil?
        query_params[downcase_first_letter('RevisionDateTime')] = request.revision_date_time unless request.revision_date_time.nil?

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
    # @param request DeleteDocumentPropertyRequest
    # @return [Array<(nil, Fixnum, Hash)>]
    # nil, response status code and response headers
    private def delete_document_property_with_http_info(request)
        raise ArgumentError, 'Incorrect request type' unless request.is_a? DeleteDocumentPropertyRequest

        @api_client.config.logger.debug 'Calling API: WordsApi.delete_document_property ...' if @api_client.config.debugging
        # verify the required parameter 'name' is set
        raise ArgumentError, 'Missing the required parameter name when calling WordsApi.delete_document_property' if @api_client.config.client_side_validation && request.name.nil?
        # verify the required parameter 'property_name' is set
        raise ArgumentError, 'Missing the required parameter property_name when calling WordsApi.delete_document_property' if @api_client.config.client_side_validation && request.property_name.nil?

        # resource path
        local_var_path = '/words/{name}/documentProperties/{propertyName}'[1..-1]
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.nil? ? '' : request.name.to_s)
        local_var_path = local_var_path.sub('{' + downcase_first_letter('PropertyName') + '}', request.property_name.nil? ? '' : request.property_name.to_s)
        local_var_path = local_var_path.sub('//', '/')

        # query parameters
        query_params = {}
        query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
        query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
        query_params[downcase_first_letter('LoadEncoding')] = request.load_encoding unless request.load_encoding.nil?
        query_params[downcase_first_letter('Password')] = request.password unless request.password.nil?
        query_params[downcase_first_letter('DestFileName')] = request.dest_file_name unless request.dest_file_name.nil?
        query_params[downcase_first_letter('RevisionAuthor')] = request.revision_author unless request.revision_author.nil?
        query_params[downcase_first_letter('RevisionDateTime')] = request.revision_date_time unless request.revision_date_time.nil?

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
    # @param request DeleteDrawingObjectRequest
    # @return [Array<(nil, Fixnum, Hash)>]
    # nil, response status code and response headers
    private def delete_drawing_object_with_http_info(request)
        raise ArgumentError, 'Incorrect request type' unless request.is_a? DeleteDrawingObjectRequest

        @api_client.config.logger.debug 'Calling API: WordsApi.delete_drawing_object ...' if @api_client.config.debugging
        # verify the required parameter 'name' is set
        raise ArgumentError, 'Missing the required parameter name when calling WordsApi.delete_drawing_object' if @api_client.config.client_side_validation && request.name.nil?
        # verify the required parameter 'index' is set
        raise ArgumentError, 'Missing the required parameter index when calling WordsApi.delete_drawing_object' if @api_client.config.client_side_validation && request.index.nil?

        # resource path
        local_var_path = '/words/{name}/{nodePath}/drawingObjects/{index}'[1..-1]
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.nil? ? '' : request.name.to_s)
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Index') + '}', request.index.nil? ? '' : request.index.to_s)
        local_var_path = local_var_path.sub('{' + downcase_first_letter('NodePath') + '}', request.node_path.nil? ? '' : request.node_path.to_s)
        local_var_path = local_var_path.sub('//', '/')

        # query parameters
        query_params = {}
        query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
        query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
        query_params[downcase_first_letter('LoadEncoding')] = request.load_encoding unless request.load_encoding.nil?
        query_params[downcase_first_letter('Password')] = request.password unless request.password.nil?
        query_params[downcase_first_letter('DestFileName')] = request.dest_file_name unless request.dest_file_name.nil?
        query_params[downcase_first_letter('RevisionAuthor')] = request.revision_author unless request.revision_author.nil?
        query_params[downcase_first_letter('RevisionDateTime')] = request.revision_date_time unless request.revision_date_time.nil?

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

    # Deletes field from document.
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
    # @param request DeleteFieldRequest
    # @return [Array<(nil, Fixnum, Hash)>]
    # nil, response status code and response headers
    private def delete_field_with_http_info(request)
        raise ArgumentError, 'Incorrect request type' unless request.is_a? DeleteFieldRequest

        @api_client.config.logger.debug 'Calling API: WordsApi.delete_field ...' if @api_client.config.debugging
        # verify the required parameter 'name' is set
        raise ArgumentError, 'Missing the required parameter name when calling WordsApi.delete_field' if @api_client.config.client_side_validation && request.name.nil?
        # verify the required parameter 'index' is set
        raise ArgumentError, 'Missing the required parameter index when calling WordsApi.delete_field' if @api_client.config.client_side_validation && request.index.nil?

        # resource path
        local_var_path = '/words/{name}/{nodePath}/fields/{index}'[1..-1]
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.nil? ? '' : request.name.to_s)
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Index') + '}', request.index.nil? ? '' : request.index.to_s)
        local_var_path = local_var_path.sub('{' + downcase_first_letter('NodePath') + '}', request.node_path.nil? ? '' : request.node_path.to_s)
        local_var_path = local_var_path.sub('//', '/')

        # query parameters
        query_params = {}
        query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
        query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
        query_params[downcase_first_letter('LoadEncoding')] = request.load_encoding unless request.load_encoding.nil?
        query_params[downcase_first_letter('Password')] = request.password unless request.password.nil?
        query_params[downcase_first_letter('DestFileName')] = request.dest_file_name unless request.dest_file_name.nil?
        query_params[downcase_first_letter('RevisionAuthor')] = request.revision_author unless request.revision_author.nil?
        query_params[downcase_first_letter('RevisionDateTime')] = request.revision_date_time unless request.revision_date_time.nil?

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

    # Removes fields from section paragraph.
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
    # @param request DeleteFieldsRequest
    # @return [Array<(nil, Fixnum, Hash)>]
    # nil, response status code and response headers
    private def delete_fields_with_http_info(request)
        raise ArgumentError, 'Incorrect request type' unless request.is_a? DeleteFieldsRequest

        @api_client.config.logger.debug 'Calling API: WordsApi.delete_fields ...' if @api_client.config.debugging
        # verify the required parameter 'name' is set
        raise ArgumentError, 'Missing the required parameter name when calling WordsApi.delete_fields' if @api_client.config.client_side_validation && request.name.nil?

        # resource path
        local_var_path = '/words/{name}/{nodePath}/fields'[1..-1]
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.nil? ? '' : request.name.to_s)
        local_var_path = local_var_path.sub('{' + downcase_first_letter('NodePath') + '}', request.node_path.nil? ? '' : request.node_path.to_s)
        local_var_path = local_var_path.sub('//', '/')

        # query parameters
        query_params = {}
        query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
        query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
        query_params[downcase_first_letter('LoadEncoding')] = request.load_encoding unless request.load_encoding.nil?
        query_params[downcase_first_letter('Password')] = request.password unless request.password.nil?
        query_params[downcase_first_letter('DestFileName')] = request.dest_file_name unless request.dest_file_name.nil?
        query_params[downcase_first_letter('RevisionAuthor')] = request.revision_author unless request.revision_author.nil?
        query_params[downcase_first_letter('RevisionDateTime')] = request.revision_date_time unless request.revision_date_time.nil?

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

    # Delete file.
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

    # Delete file.
    # @param request DeleteFileRequest
    # @return [Array<(nil, Fixnum, Hash)>]
    # nil, response status code and response headers
    private def delete_file_with_http_info(request)
        raise ArgumentError, 'Incorrect request type' unless request.is_a? DeleteFileRequest

        @api_client.config.logger.debug 'Calling API: WordsApi.delete_file ...' if @api_client.config.debugging
        # verify the required parameter 'path' is set
        raise ArgumentError, 'Missing the required parameter path when calling WordsApi.delete_file' if @api_client.config.client_side_validation && request.path.nil?

        # resource path
        local_var_path = '/words/storage/file/{path}'[1..-1]
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Path') + '}', request.path.nil? ? '' : request.path.to_s)
        local_var_path = local_var_path.sub('//', '/')

        # query parameters
        query_params = {}
        query_params[downcase_first_letter('StorageName')] = request.storage_name unless request.storage_name.nil?
        query_params[downcase_first_letter('VersionId')] = request.version_id unless request.version_id.nil?

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

    # Delete folder.
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

    # Delete folder.
    # @param request DeleteFolderRequest
    # @return [Array<(nil, Fixnum, Hash)>]
    # nil, response status code and response headers
    private def delete_folder_with_http_info(request)
        raise ArgumentError, 'Incorrect request type' unless request.is_a? DeleteFolderRequest

        @api_client.config.logger.debug 'Calling API: WordsApi.delete_folder ...' if @api_client.config.debugging
        # verify the required parameter 'path' is set
        raise ArgumentError, 'Missing the required parameter path when calling WordsApi.delete_folder' if @api_client.config.client_side_validation && request.path.nil?

        # resource path
        local_var_path = '/words/storage/folder/{path}'[1..-1]
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Path') + '}', request.path.nil? ? '' : request.path.to_s)
        local_var_path = local_var_path.sub('//', '/')

        # query parameters
        query_params = {}
        query_params[downcase_first_letter('StorageName')] = request.storage_name unless request.storage_name.nil?
        query_params[downcase_first_letter('Recursive')] = request.recursive unless request.recursive.nil?

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
    # @param request DeleteFootnoteRequest
    # @return [Array<(nil, Fixnum, Hash)>]
    # nil, response status code and response headers
    private def delete_footnote_with_http_info(request)
        raise ArgumentError, 'Incorrect request type' unless request.is_a? DeleteFootnoteRequest

        @api_client.config.logger.debug 'Calling API: WordsApi.delete_footnote ...' if @api_client.config.debugging
        # verify the required parameter 'name' is set
        raise ArgumentError, 'Missing the required parameter name when calling WordsApi.delete_footnote' if @api_client.config.client_side_validation && request.name.nil?
        # verify the required parameter 'index' is set
        raise ArgumentError, 'Missing the required parameter index when calling WordsApi.delete_footnote' if @api_client.config.client_side_validation && request.index.nil?

        # resource path
        local_var_path = '/words/{name}/{nodePath}/footnotes/{index}'[1..-1]
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.nil? ? '' : request.name.to_s)
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Index') + '}', request.index.nil? ? '' : request.index.to_s)
        local_var_path = local_var_path.sub('{' + downcase_first_letter('NodePath') + '}', request.node_path.nil? ? '' : request.node_path.to_s)
        local_var_path = local_var_path.sub('//', '/')

        # query parameters
        query_params = {}
        query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
        query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
        query_params[downcase_first_letter('LoadEncoding')] = request.load_encoding unless request.load_encoding.nil?
        query_params[downcase_first_letter('Password')] = request.password unless request.password.nil?
        query_params[downcase_first_letter('DestFileName')] = request.dest_file_name unless request.dest_file_name.nil?
        query_params[downcase_first_letter('RevisionAuthor')] = request.revision_author unless request.revision_author.nil?
        query_params[downcase_first_letter('RevisionDateTime')] = request.revision_date_time unless request.revision_date_time.nil?

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

    # Removes form field from document.
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
    # @param request DeleteFormFieldRequest
    # @return [Array<(nil, Fixnum, Hash)>]
    # nil, response status code and response headers
    private def delete_form_field_with_http_info(request)
        raise ArgumentError, 'Incorrect request type' unless request.is_a? DeleteFormFieldRequest

        @api_client.config.logger.debug 'Calling API: WordsApi.delete_form_field ...' if @api_client.config.debugging
        # verify the required parameter 'name' is set
        raise ArgumentError, 'Missing the required parameter name when calling WordsApi.delete_form_field' if @api_client.config.client_side_validation && request.name.nil?
        # verify the required parameter 'index' is set
        raise ArgumentError, 'Missing the required parameter index when calling WordsApi.delete_form_field' if @api_client.config.client_side_validation && request.index.nil?

        # resource path
        local_var_path = '/words/{name}/{nodePath}/formfields/{index}'[1..-1]
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.nil? ? '' : request.name.to_s)
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Index') + '}', request.index.nil? ? '' : request.index.to_s)
        local_var_path = local_var_path.sub('{' + downcase_first_letter('NodePath') + '}', request.node_path.nil? ? '' : request.node_path.to_s)
        local_var_path = local_var_path.sub('//', '/')

        # query parameters
        query_params = {}
        query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
        query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
        query_params[downcase_first_letter('LoadEncoding')] = request.load_encoding unless request.load_encoding.nil?
        query_params[downcase_first_letter('Password')] = request.password unless request.password.nil?
        query_params[downcase_first_letter('DestFileName')] = request.dest_file_name unless request.dest_file_name.nil?
        query_params[downcase_first_letter('RevisionAuthor')] = request.revision_author unless request.revision_author.nil?
        query_params[downcase_first_letter('RevisionDateTime')] = request.revision_date_time unless request.revision_date_time.nil?

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

    # Deletes header/footer from document.
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
    # @param request DeleteHeaderFooterRequest
    # @return [Array<(nil, Fixnum, Hash)>]
    # nil, response status code and response headers
    private def delete_header_footer_with_http_info(request)
        raise ArgumentError, 'Incorrect request type' unless request.is_a? DeleteHeaderFooterRequest

        @api_client.config.logger.debug 'Calling API: WordsApi.delete_header_footer ...' if @api_client.config.debugging
        # verify the required parameter 'name' is set
        raise ArgumentError, 'Missing the required parameter name when calling WordsApi.delete_header_footer' if @api_client.config.client_side_validation && request.name.nil?
        # verify the required parameter 'section_path' is set
        raise ArgumentError, 'Missing the required parameter section_path when calling WordsApi.delete_header_footer' if @api_client.config.client_side_validation && request.section_path.nil?
        # verify the required parameter 'index' is set
        raise ArgumentError, 'Missing the required parameter index when calling WordsApi.delete_header_footer' if @api_client.config.client_side_validation && request.index.nil?

        # resource path
        local_var_path = '/words/{name}/{sectionPath}/headersfooters/{index}'[1..-1]
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.nil? ? '' : request.name.to_s)
        local_var_path = local_var_path.sub('{' + downcase_first_letter('SectionPath') + '}', request.section_path.nil? ? '' : request.section_path.to_s)
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Index') + '}', request.index.nil? ? '' : request.index.to_s)
        local_var_path = local_var_path.sub('//', '/')

        # query parameters
        query_params = {}
        query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
        query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
        query_params[downcase_first_letter('LoadEncoding')] = request.load_encoding unless request.load_encoding.nil?
        query_params[downcase_first_letter('Password')] = request.password unless request.password.nil?
        query_params[downcase_first_letter('DestFileName')] = request.dest_file_name unless request.dest_file_name.nil?
        query_params[downcase_first_letter('RevisionAuthor')] = request.revision_author unless request.revision_author.nil?
        query_params[downcase_first_letter('RevisionDateTime')] = request.revision_date_time unless request.revision_date_time.nil?

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
    # @param request DeleteHeadersFootersRequest
    # @return [Array<(nil, Fixnum, Hash)>]
    # nil, response status code and response headers
    private def delete_headers_footers_with_http_info(request)
        raise ArgumentError, 'Incorrect request type' unless request.is_a? DeleteHeadersFootersRequest

        @api_client.config.logger.debug 'Calling API: WordsApi.delete_headers_footers ...' if @api_client.config.debugging
        # verify the required parameter 'name' is set
        raise ArgumentError, 'Missing the required parameter name when calling WordsApi.delete_headers_footers' if @api_client.config.client_side_validation && request.name.nil?
        # verify the required parameter 'section_path' is set
        raise ArgumentError, 'Missing the required parameter section_path when calling WordsApi.delete_headers_footers' if @api_client.config.client_side_validation && request.section_path.nil?

        # resource path
        local_var_path = '/words/{name}/{sectionPath}/headersfooters'[1..-1]
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.nil? ? '' : request.name.to_s)
        local_var_path = local_var_path.sub('{' + downcase_first_letter('SectionPath') + '}', request.section_path.nil? ? '' : request.section_path.to_s)
        local_var_path = local_var_path.sub('//', '/')

        # query parameters
        query_params = {}
        query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
        query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
        query_params[downcase_first_letter('LoadEncoding')] = request.load_encoding unless request.load_encoding.nil?
        query_params[downcase_first_letter('Password')] = request.password unless request.password.nil?
        query_params[downcase_first_letter('DestFileName')] = request.dest_file_name unless request.dest_file_name.nil?
        query_params[downcase_first_letter('RevisionAuthor')] = request.revision_author unless request.revision_author.nil?
        query_params[downcase_first_letter('RevisionDateTime')] = request.revision_date_time unless request.revision_date_time.nil?
        query_params[downcase_first_letter('HeadersFootersTypes')] = request.headers_footers_types unless request.headers_footers_types.nil?

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
    # @param request DeleteMacrosRequest
    # @return [Array<(nil, Fixnum, Hash)>]
    # nil, response status code and response headers
    private def delete_macros_with_http_info(request)
        raise ArgumentError, 'Incorrect request type' unless request.is_a? DeleteMacrosRequest

        @api_client.config.logger.debug 'Calling API: WordsApi.delete_macros ...' if @api_client.config.debugging
        # verify the required parameter 'name' is set
        raise ArgumentError, 'Missing the required parameter name when calling WordsApi.delete_macros' if @api_client.config.client_side_validation && request.name.nil?

        # resource path
        local_var_path = '/words/{name}/macros'[1..-1]
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.nil? ? '' : request.name.to_s)
        local_var_path = local_var_path.sub('//', '/')

        # query parameters
        query_params = {}
        query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
        query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
        query_params[downcase_first_letter('LoadEncoding')] = request.load_encoding unless request.load_encoding.nil?
        query_params[downcase_first_letter('Password')] = request.password unless request.password.nil?
        query_params[downcase_first_letter('DestFileName')] = request.dest_file_name unless request.dest_file_name.nil?
        query_params[downcase_first_letter('RevisionAuthor')] = request.revision_author unless request.revision_author.nil?
        query_params[downcase_first_letter('RevisionDateTime')] = request.revision_date_time unless request.revision_date_time.nil?

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
    # @param request DeleteOfficeMathObjectRequest
    # @return [Array<(nil, Fixnum, Hash)>]
    # nil, response status code and response headers
    private def delete_office_math_object_with_http_info(request)
        raise ArgumentError, 'Incorrect request type' unless request.is_a? DeleteOfficeMathObjectRequest

        @api_client.config.logger.debug 'Calling API: WordsApi.delete_office_math_object ...' if @api_client.config.debugging
        # verify the required parameter 'name' is set
        raise ArgumentError, 'Missing the required parameter name when calling WordsApi.delete_office_math_object' if @api_client.config.client_side_validation && request.name.nil?
        # verify the required parameter 'index' is set
        raise ArgumentError, 'Missing the required parameter index when calling WordsApi.delete_office_math_object' if @api_client.config.client_side_validation && request.index.nil?

        # resource path
        local_var_path = '/words/{name}/{nodePath}/OfficeMathObjects/{index}'[1..-1]
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.nil? ? '' : request.name.to_s)
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Index') + '}', request.index.nil? ? '' : request.index.to_s)
        local_var_path = local_var_path.sub('{' + downcase_first_letter('NodePath') + '}', request.node_path.nil? ? '' : request.node_path.to_s)
        local_var_path = local_var_path.sub('//', '/')

        # query parameters
        query_params = {}
        query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
        query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
        query_params[downcase_first_letter('LoadEncoding')] = request.load_encoding unless request.load_encoding.nil?
        query_params[downcase_first_letter('Password')] = request.password unless request.password.nil?
        query_params[downcase_first_letter('DestFileName')] = request.dest_file_name unless request.dest_file_name.nil?
        query_params[downcase_first_letter('RevisionAuthor')] = request.revision_author unless request.revision_author.nil?
        query_params[downcase_first_letter('RevisionDateTime')] = request.revision_date_time unless request.revision_date_time.nil?

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

    # Removes paragraph from section.
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
    # @param request DeleteParagraphRequest
    # @return [Array<(nil, Fixnum, Hash)>]
    # nil, response status code and response headers
    private def delete_paragraph_with_http_info(request)
        raise ArgumentError, 'Incorrect request type' unless request.is_a? DeleteParagraphRequest

        @api_client.config.logger.debug 'Calling API: WordsApi.delete_paragraph ...' if @api_client.config.debugging
        # verify the required parameter 'name' is set
        raise ArgumentError, 'Missing the required parameter name when calling WordsApi.delete_paragraph' if @api_client.config.client_side_validation && request.name.nil?
        # verify the required parameter 'index' is set
        raise ArgumentError, 'Missing the required parameter index when calling WordsApi.delete_paragraph' if @api_client.config.client_side_validation && request.index.nil?

        # resource path
        local_var_path = '/words/{name}/{nodePath}/paragraphs/{index}'[1..-1]
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.nil? ? '' : request.name.to_s)
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Index') + '}', request.index.nil? ? '' : request.index.to_s)
        local_var_path = local_var_path.sub('{' + downcase_first_letter('NodePath') + '}', request.node_path.nil? ? '' : request.node_path.to_s)
        local_var_path = local_var_path.sub('//', '/')

        # query parameters
        query_params = {}
        query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
        query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
        query_params[downcase_first_letter('LoadEncoding')] = request.load_encoding unless request.load_encoding.nil?
        query_params[downcase_first_letter('Password')] = request.password unless request.password.nil?
        query_params[downcase_first_letter('DestFileName')] = request.dest_file_name unless request.dest_file_name.nil?
        query_params[downcase_first_letter('RevisionAuthor')] = request.revision_author unless request.revision_author.nil?
        query_params[downcase_first_letter('RevisionDateTime')] = request.revision_date_time unless request.revision_date_time.nil?

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

    # Delete paragraph list format, returns updated list format properties.
    # @param request DeleteParagraphListFormatRequest
    # @return [ParagraphListFormatResponse]
    def delete_paragraph_list_format(request)
        begin
        data, _status_code, _headers = delete_paragraph_list_format_with_http_info(request)
        rescue ApiError => e
            if e.code == 401
            request_token
            data, _status_code, _headers = delete_paragraph_list_format_with_http_info(request)
            else
            raise
            end
        end
        data
    end

    # Delete paragraph list format, returns updated list format properties.
    # @param request DeleteParagraphListFormatRequest
    # @return [Array<(ParagraphListFormatResponse, Fixnum, Hash)>]
    # ParagraphListFormatResponse data, response status code and response headers
    private def delete_paragraph_list_format_with_http_info(request)
        raise ArgumentError, 'Incorrect request type' unless request.is_a? DeleteParagraphListFormatRequest

        @api_client.config.logger.debug 'Calling API: WordsApi.delete_paragraph_list_format ...' if @api_client.config.debugging
        # verify the required parameter 'name' is set
        raise ArgumentError, 'Missing the required parameter name when calling WordsApi.delete_paragraph_list_format' if @api_client.config.client_side_validation && request.name.nil?
        # verify the required parameter 'index' is set
        raise ArgumentError, 'Missing the required parameter index when calling WordsApi.delete_paragraph_list_format' if @api_client.config.client_side_validation && request.index.nil?

        # resource path
        local_var_path = '/words/{name}/{nodePath}/paragraphs/{index}/listFormat'[1..-1]
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.nil? ? '' : request.name.to_s)
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Index') + '}', request.index.nil? ? '' : request.index.to_s)
        local_var_path = local_var_path.sub('{' + downcase_first_letter('NodePath') + '}', request.node_path.nil? ? '' : request.node_path.to_s)
        local_var_path = local_var_path.sub('//', '/')

        # query parameters
        query_params = {}
        query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
        query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
        query_params[downcase_first_letter('LoadEncoding')] = request.load_encoding unless request.load_encoding.nil?
        query_params[downcase_first_letter('Password')] = request.password unless request.password.nil?
        query_params[downcase_first_letter('DestFileName')] = request.dest_file_name unless request.dest_file_name.nil?
        query_params[downcase_first_letter('RevisionAuthor')] = request.revision_author unless request.revision_author.nil?
        query_params[downcase_first_letter('RevisionDateTime')] = request.revision_date_time unless request.revision_date_time.nil?

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
        auth_names = ['JWT']

        data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names,
                                                        return_type: 'ParagraphListFormatResponse')
        if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#delete_paragraph_list_format\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
        end
        [data, status_code, headers]
    end

    # Remove the i-th tab stop.
    # @param request DeleteParagraphTabStopRequest
    # @return [TabStopsResponse]
    def delete_paragraph_tab_stop(request)
        begin
        data, _status_code, _headers = delete_paragraph_tab_stop_with_http_info(request)
        rescue ApiError => e
            if e.code == 401
            request_token
            data, _status_code, _headers = delete_paragraph_tab_stop_with_http_info(request)
            else
            raise
            end
        end
        data
    end

    # Remove the i-th tab stop.
    # @param request DeleteParagraphTabStopRequest
    # @return [Array<(TabStopsResponse, Fixnum, Hash)>]
    # TabStopsResponse data, response status code and response headers
    private def delete_paragraph_tab_stop_with_http_info(request)
        raise ArgumentError, 'Incorrect request type' unless request.is_a? DeleteParagraphTabStopRequest

        @api_client.config.logger.debug 'Calling API: WordsApi.delete_paragraph_tab_stop ...' if @api_client.config.debugging
        # verify the required parameter 'name' is set
        raise ArgumentError, 'Missing the required parameter name when calling WordsApi.delete_paragraph_tab_stop' if @api_client.config.client_side_validation && request.name.nil?
        # verify the required parameter 'position' is set
        raise ArgumentError, 'Missing the required parameter position when calling WordsApi.delete_paragraph_tab_stop' if @api_client.config.client_side_validation && request.position.nil?
        # verify the required parameter 'index' is set
        raise ArgumentError, 'Missing the required parameter index when calling WordsApi.delete_paragraph_tab_stop' if @api_client.config.client_side_validation && request.index.nil?

        # resource path
        local_var_path = '/words/{name}/{nodePath}/paragraphs/{index}/tabstop'[1..-1]
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.nil? ? '' : request.name.to_s)
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Index') + '}', request.index.nil? ? '' : request.index.to_s)
        local_var_path = local_var_path.sub('{' + downcase_first_letter('NodePath') + '}', request.node_path.nil? ? '' : request.node_path.to_s)
        local_var_path = local_var_path.sub('//', '/')

        # query parameters
        query_params = {}
        query_params[downcase_first_letter('Position')] = request.position
        query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
        query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
        query_params[downcase_first_letter('LoadEncoding')] = request.load_encoding unless request.load_encoding.nil?
        query_params[downcase_first_letter('Password')] = request.password unless request.password.nil?
        query_params[downcase_first_letter('DestFileName')] = request.dest_file_name unless request.dest_file_name.nil?

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
        auth_names = ['JWT']

        data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names,
                                                        return_type: 'TabStopsResponse')
        if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#delete_paragraph_tab_stop\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
        end
        [data, status_code, headers]
    end

    # Removes run from document.
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
    # @param request DeleteRunRequest
    # @return [Array<(nil, Fixnum, Hash)>]
    # nil, response status code and response headers
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
        local_var_path = '/words/{name}/{paragraphPath}/runs/{index}'[1..-1]
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.nil? ? '' : request.name.to_s)
        local_var_path = local_var_path.sub('{' + downcase_first_letter('ParagraphPath') + '}', request.paragraph_path.nil? ? '' : request.paragraph_path.to_s)
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Index') + '}', request.index.nil? ? '' : request.index.to_s)
        local_var_path = local_var_path.sub('//', '/')

        # query parameters
        query_params = {}
        query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
        query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
        query_params[downcase_first_letter('LoadEncoding')] = request.load_encoding unless request.load_encoding.nil?
        query_params[downcase_first_letter('Password')] = request.password unless request.password.nil?
        query_params[downcase_first_letter('DestFileName')] = request.dest_file_name unless request.dest_file_name.nil?
        query_params[downcase_first_letter('RevisionAuthor')] = request.revision_author unless request.revision_author.nil?
        query_params[downcase_first_letter('RevisionDateTime')] = request.revision_date_time unless request.revision_date_time.nil?

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
    # @param request DeleteSectionRequest
    # @return [Array<(nil, Fixnum, Hash)>]
    # nil, response status code and response headers
    private def delete_section_with_http_info(request)
        raise ArgumentError, 'Incorrect request type' unless request.is_a? DeleteSectionRequest

        @api_client.config.logger.debug 'Calling API: WordsApi.delete_section ...' if @api_client.config.debugging
        # verify the required parameter 'name' is set
        raise ArgumentError, 'Missing the required parameter name when calling WordsApi.delete_section' if @api_client.config.client_side_validation && request.name.nil?
        # verify the required parameter 'section_index' is set
        raise ArgumentError, 'Missing the required parameter section_index when calling WordsApi.delete_section' if @api_client.config.client_side_validation && request.section_index.nil?

        # resource path
        local_var_path = '/words/{name}/sections/{sectionIndex}'[1..-1]
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.nil? ? '' : request.name.to_s)
        local_var_path = local_var_path.sub('{' + downcase_first_letter('SectionIndex') + '}', request.section_index.nil? ? '' : request.section_index.to_s)
        local_var_path = local_var_path.sub('//', '/')

        # query parameters
        query_params = {}
        query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
        query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
        query_params[downcase_first_letter('LoadEncoding')] = request.load_encoding unless request.load_encoding.nil?
        query_params[downcase_first_letter('Password')] = request.password unless request.password.nil?
        query_params[downcase_first_letter('DestFileName')] = request.dest_file_name unless request.dest_file_name.nil?
        query_params[downcase_first_letter('RevisionAuthor')] = request.revision_author unless request.revision_author.nil?
        query_params[downcase_first_letter('RevisionDateTime')] = request.revision_date_time unless request.revision_date_time.nil?

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
    # @param request DeleteTableRequest
    # @return [Array<(nil, Fixnum, Hash)>]
    # nil, response status code and response headers
    private def delete_table_with_http_info(request)
        raise ArgumentError, 'Incorrect request type' unless request.is_a? DeleteTableRequest

        @api_client.config.logger.debug 'Calling API: WordsApi.delete_table ...' if @api_client.config.debugging
        # verify the required parameter 'name' is set
        raise ArgumentError, 'Missing the required parameter name when calling WordsApi.delete_table' if @api_client.config.client_side_validation && request.name.nil?
        # verify the required parameter 'index' is set
        raise ArgumentError, 'Missing the required parameter index when calling WordsApi.delete_table' if @api_client.config.client_side_validation && request.index.nil?

        # resource path
        local_var_path = '/words/{name}/{nodePath}/tables/{index}'[1..-1]
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.nil? ? '' : request.name.to_s)
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Index') + '}', request.index.nil? ? '' : request.index.to_s)
        local_var_path = local_var_path.sub('{' + downcase_first_letter('NodePath') + '}', request.node_path.nil? ? '' : request.node_path.to_s)
        local_var_path = local_var_path.sub('//', '/')

        # query parameters
        query_params = {}
        query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
        query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
        query_params[downcase_first_letter('LoadEncoding')] = request.load_encoding unless request.load_encoding.nil?
        query_params[downcase_first_letter('Password')] = request.password unless request.password.nil?
        query_params[downcase_first_letter('DestFileName')] = request.dest_file_name unless request.dest_file_name.nil?
        query_params[downcase_first_letter('RevisionAuthor')] = request.revision_author unless request.revision_author.nil?
        query_params[downcase_first_letter('RevisionDateTime')] = request.revision_date_time unless request.revision_date_time.nil?

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
    # @param request DeleteTableCellRequest
    # @return [Array<(nil, Fixnum, Hash)>]
    # nil, response status code and response headers
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
        local_var_path = '/words/{name}/{tableRowPath}/cells/{index}'[1..-1]
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.nil? ? '' : request.name.to_s)
        local_var_path = local_var_path.sub('{' + downcase_first_letter('TableRowPath') + '}', request.table_row_path.nil? ? '' : request.table_row_path.to_s)
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Index') + '}', request.index.nil? ? '' : request.index.to_s)
        local_var_path = local_var_path.sub('//', '/')

        # query parameters
        query_params = {}
        query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
        query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
        query_params[downcase_first_letter('LoadEncoding')] = request.load_encoding unless request.load_encoding.nil?
        query_params[downcase_first_letter('Password')] = request.password unless request.password.nil?
        query_params[downcase_first_letter('DestFileName')] = request.dest_file_name unless request.dest_file_name.nil?
        query_params[downcase_first_letter('RevisionAuthor')] = request.revision_author unless request.revision_author.nil?
        query_params[downcase_first_letter('RevisionDateTime')] = request.revision_date_time unless request.revision_date_time.nil?

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
    # @param request DeleteTableRowRequest
    # @return [Array<(nil, Fixnum, Hash)>]
    # nil, response status code and response headers
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
        local_var_path = '/words/{name}/{tablePath}/rows/{index}'[1..-1]
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.nil? ? '' : request.name.to_s)
        local_var_path = local_var_path.sub('{' + downcase_first_letter('TablePath') + '}', request.table_path.nil? ? '' : request.table_path.to_s)
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Index') + '}', request.index.nil? ? '' : request.index.to_s)
        local_var_path = local_var_path.sub('//', '/')

        # query parameters
        query_params = {}
        query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
        query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
        query_params[downcase_first_letter('LoadEncoding')] = request.load_encoding unless request.load_encoding.nil?
        query_params[downcase_first_letter('Password')] = request.password unless request.password.nil?
        query_params[downcase_first_letter('DestFileName')] = request.dest_file_name unless request.dest_file_name.nil?
        query_params[downcase_first_letter('RevisionAuthor')] = request.revision_author unless request.revision_author.nil?
        query_params[downcase_first_letter('RevisionDateTime')] = request.revision_date_time unless request.revision_date_time.nil?

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

    # Deletes watermark (for deleting last watermark from the document).
    # @param request DeleteWatermarkRequest
    # @return [DocumentResponse]
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
    # @param request DeleteWatermarkRequest
    # @return [Array<(DocumentResponse, Fixnum, Hash)>]
    # DocumentResponse data, response status code and response headers
    private def delete_watermark_with_http_info(request)
        raise ArgumentError, 'Incorrect request type' unless request.is_a? DeleteWatermarkRequest

        @api_client.config.logger.debug 'Calling API: WordsApi.delete_watermark ...' if @api_client.config.debugging
        # verify the required parameter 'name' is set
        raise ArgumentError, 'Missing the required parameter name when calling WordsApi.delete_watermark' if @api_client.config.client_side_validation && request.name.nil?

        # resource path
        local_var_path = '/words/{name}/watermarks/deleteLast'[1..-1]
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.nil? ? '' : request.name.to_s)
        local_var_path = local_var_path.sub('//', '/')

        # query parameters
        query_params = {}
        query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
        query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
        query_params[downcase_first_letter('LoadEncoding')] = request.load_encoding unless request.load_encoding.nil?
        query_params[downcase_first_letter('Password')] = request.password unless request.password.nil?
        query_params[downcase_first_letter('DestFileName')] = request.dest_file_name unless request.dest_file_name.nil?
        query_params[downcase_first_letter('RevisionAuthor')] = request.revision_author unless request.revision_author.nil?
        query_params[downcase_first_letter('RevisionDateTime')] = request.revision_date_time unless request.revision_date_time.nil?

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
        auth_names = ['JWT']

        data, status_code, headers = @api_client.call_api(:POST, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names,
                                                        return_type: 'DocumentResponse')
        if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#delete_watermark\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
        end
        [data, status_code, headers]
    end

    # Download file.
    # @param request DownloadFileRequest
    # @return [File]
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

    # Download file.
    # @param request DownloadFileRequest
    # @return [Array<(File, Fixnum, Hash)>]
    # File data, response status code and response headers
    private def download_file_with_http_info(request)
        raise ArgumentError, 'Incorrect request type' unless request.is_a? DownloadFileRequest

        @api_client.config.logger.debug 'Calling API: WordsApi.download_file ...' if @api_client.config.debugging
        # verify the required parameter 'path' is set
        raise ArgumentError, 'Missing the required parameter path when calling WordsApi.download_file' if @api_client.config.client_side_validation && request.path.nil?

        # resource path
        local_var_path = '/words/storage/file/{path}'[1..-1]
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Path') + '}', request.path.nil? ? '' : request.path.to_s)
        local_var_path = local_var_path.sub('//', '/')

        # query parameters
        query_params = {}
        query_params[downcase_first_letter('StorageName')] = request.storage_name unless request.storage_name.nil?
        query_params[downcase_first_letter('VersionId')] = request.version_id unless request.version_id.nil?

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
        auth_names = ['JWT']

        data, status_code, headers = @api_client.call_api(:GET, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names,
                                                        return_type: 'File')
        if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#download_file\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
        end
        [data, status_code, headers]
    end

    # Executes document mail merge operation.
    # @param request ExecuteMailMergeRequest
    # @return [DocumentResponse]
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
    # @param request ExecuteMailMergeRequest
    # @return [Array<(DocumentResponse, Fixnum, Hash)>]
    # DocumentResponse data, response status code and response headers
    private def execute_mail_merge_with_http_info(request)
        raise ArgumentError, 'Incorrect request type' unless request.is_a? ExecuteMailMergeRequest

        @api_client.config.logger.debug 'Calling API: WordsApi.execute_mail_merge ...' if @api_client.config.debugging
        # verify the required parameter 'name' is set
        raise ArgumentError, 'Missing the required parameter name when calling WordsApi.execute_mail_merge' if @api_client.config.client_side_validation && request.name.nil?

        # resource path
        local_var_path = '/words/{name}/MailMerge'[1..-1]
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.nil? ? '' : request.name.to_s)
        local_var_path = local_var_path.sub('//', '/')

        # query parameters
        query_params = {}
        query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
        query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
        query_params[downcase_first_letter('LoadEncoding')] = request.load_encoding unless request.load_encoding.nil?
        query_params[downcase_first_letter('Password')] = request.password unless request.password.nil?
        query_params[downcase_first_letter('WithRegions')] = request.with_regions unless request.with_regions.nil?
        query_params[downcase_first_letter('MailMergeDataFile')] = request.mail_merge_data_file unless request.mail_merge_data_file.nil?
        query_params[downcase_first_letter('Cleanup')] = request.cleanup unless request.cleanup.nil?
        query_params[downcase_first_letter('UseWholeParagraphAsRegion')] = request.use_whole_paragraph_as_region unless request.use_whole_paragraph_as_region.nil?
        query_params[downcase_first_letter('DestFileName')] = request.dest_file_name unless request.dest_file_name.nil?

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
        auth_names = ['JWT']

        data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names,
                                                        return_type: 'DocumentResponse')
        if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#execute_mail_merge\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
        end
        [data, status_code, headers]
    end

    # Executes document mail merge online.
    # @param request ExecuteMailMergeOnlineRequest
    # @return [File]
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
    # @param request ExecuteMailMergeOnlineRequest
    # @return [Array<(File, Fixnum, Hash)>]
    # File data, response status code and response headers
    private def execute_mail_merge_online_with_http_info(request)
        raise ArgumentError, 'Incorrect request type' unless request.is_a? ExecuteMailMergeOnlineRequest

        @api_client.config.logger.debug 'Calling API: WordsApi.execute_mail_merge_online ...' if @api_client.config.debugging
        # verify the required parameter 'template' is set
        raise ArgumentError, 'Missing the required parameter template when calling WordsApi.execute_mail_merge_online' if @api_client.config.client_side_validation && request.template.nil?
        # verify the required parameter 'data' is set
        raise ArgumentError, 'Missing the required parameter data when calling WordsApi.execute_mail_merge_online' if @api_client.config.client_side_validation && request.data.nil?

        # resource path
        local_var_path = '/words/MailMerge'[1..-1]
        local_var_path = local_var_path.sub('//', '/')

        # query parameters
        query_params = {}
        query_params[downcase_first_letter('WithRegions')] = request.with_regions unless request.with_regions.nil?
        query_params[downcase_first_letter('Cleanup')] = request.cleanup unless request.cleanup.nil?
        query_params[downcase_first_letter('DocumentFileName')] = request.document_file_name unless request.document_file_name.nil?

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
        auth_names = ['JWT']

        data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names,
                                                        return_type: 'File')
        if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#execute_mail_merge_online\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
        end
        [data, status_code, headers]
    end

    # Gets the list of fonts, available for document processing.
    # @param request GetAvailableFontsRequest
    # @return [AvailableFontsResponse]
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
    # @param request GetAvailableFontsRequest
    # @return [Array<(AvailableFontsResponse, Fixnum, Hash)>]
    # AvailableFontsResponse data, response status code and response headers
    private def get_available_fonts_with_http_info(request)
        raise ArgumentError, 'Incorrect request type' unless request.is_a? GetAvailableFontsRequest

        @api_client.config.logger.debug 'Calling API: WordsApi.get_available_fonts ...' if @api_client.config.debugging
        # resource path
        local_var_path = '/words/fonts/available'[1..-1]
        local_var_path = local_var_path.sub('//', '/')

        # query parameters
        query_params = {}
        query_params[downcase_first_letter('FontsLocation')] = request.fonts_location unless request.fonts_location.nil?

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
        auth_names = ['JWT']

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

    # Reads document bookmark data by its name.
    # @param request GetBookmarkByNameRequest
    # @return [BookmarkResponse]
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
    # @param request GetBookmarkByNameRequest
    # @return [Array<(BookmarkResponse, Fixnum, Hash)>]
    # BookmarkResponse data, response status code and response headers
    private def get_bookmark_by_name_with_http_info(request)
        raise ArgumentError, 'Incorrect request type' unless request.is_a? GetBookmarkByNameRequest

        @api_client.config.logger.debug 'Calling API: WordsApi.get_bookmark_by_name ...' if @api_client.config.debugging
        # verify the required parameter 'name' is set
        raise ArgumentError, 'Missing the required parameter name when calling WordsApi.get_bookmark_by_name' if @api_client.config.client_side_validation && request.name.nil?
        # verify the required parameter 'bookmark_name' is set
        raise ArgumentError, 'Missing the required parameter bookmark_name when calling WordsApi.get_bookmark_by_name' if @api_client.config.client_side_validation && request.bookmark_name.nil?

        # resource path
        local_var_path = '/words/{name}/bookmarks/{bookmarkName}'[1..-1]
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.nil? ? '' : request.name.to_s)
        local_var_path = local_var_path.sub('{' + downcase_first_letter('BookmarkName') + '}', request.bookmark_name.nil? ? '' : request.bookmark_name.to_s)
        local_var_path = local_var_path.sub('//', '/')

        # query parameters
        query_params = {}
        query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
        query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
        query_params[downcase_first_letter('LoadEncoding')] = request.load_encoding unless request.load_encoding.nil?
        query_params[downcase_first_letter('Password')] = request.password unless request.password.nil?

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
        auth_names = ['JWT']

        data, status_code, headers = @api_client.call_api(:GET, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names,
                                                        return_type: 'BookmarkResponse')
        if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#get_bookmark_by_name\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
        end
        [data, status_code, headers]
    end

    # Reads document bookmarks common info.
    # @param request GetBookmarksRequest
    # @return [BookmarksResponse]
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
    # @param request GetBookmarksRequest
    # @return [Array<(BookmarksResponse, Fixnum, Hash)>]
    # BookmarksResponse data, response status code and response headers
    private def get_bookmarks_with_http_info(request)
        raise ArgumentError, 'Incorrect request type' unless request.is_a? GetBookmarksRequest

        @api_client.config.logger.debug 'Calling API: WordsApi.get_bookmarks ...' if @api_client.config.debugging
        # verify the required parameter 'name' is set
        raise ArgumentError, 'Missing the required parameter name when calling WordsApi.get_bookmarks' if @api_client.config.client_side_validation && request.name.nil?

        # resource path
        local_var_path = '/words/{name}/bookmarks'[1..-1]
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.nil? ? '' : request.name.to_s)
        local_var_path = local_var_path.sub('//', '/')

        # query parameters
        query_params = {}
        query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
        query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
        query_params[downcase_first_letter('LoadEncoding')] = request.load_encoding unless request.load_encoding.nil?
        query_params[downcase_first_letter('Password')] = request.password unless request.password.nil?

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
        auth_names = ['JWT']

        data, status_code, headers = @api_client.call_api(:GET, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names,
                                                        return_type: 'BookmarksResponse')
        if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#get_bookmarks\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
        end
        [data, status_code, headers]
    end

    # 'nodePath' should refer to paragraph, cell or row.
    # @param request GetBorderRequest
    # @return [BorderResponse]
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

    # 'nodePath' should refer to paragraph, cell or row.
    # @param request GetBorderRequest
    # @return [Array<(BorderResponse, Fixnum, Hash)>]
    # BorderResponse data, response status code and response headers
    private def get_border_with_http_info(request)
        raise ArgumentError, 'Incorrect request type' unless request.is_a? GetBorderRequest

        @api_client.config.logger.debug 'Calling API: WordsApi.get_border ...' if @api_client.config.debugging
        # verify the required parameter 'name' is set
        raise ArgumentError, 'Missing the required parameter name when calling WordsApi.get_border' if @api_client.config.client_side_validation && request.name.nil?
        # verify the required parameter 'border_type' is set
        raise ArgumentError, 'Missing the required parameter border_type when calling WordsApi.get_border' if @api_client.config.client_side_validation && request.border_type.nil?

        # resource path
        local_var_path = '/words/{name}/{nodePath}/borders/{borderType}'[1..-1]
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.nil? ? '' : request.name.to_s)
        local_var_path = local_var_path.sub('{' + downcase_first_letter('BorderType') + '}', request.border_type.nil? ? '' : request.border_type.to_s)
        local_var_path = local_var_path.sub('{' + downcase_first_letter('NodePath') + '}', request.node_path.nil? ? '' : request.node_path.to_s)
        local_var_path = local_var_path.sub('//', '/')

        # query parameters
        query_params = {}
        query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
        query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
        query_params[downcase_first_letter('LoadEncoding')] = request.load_encoding unless request.load_encoding.nil?
        query_params[downcase_first_letter('Password')] = request.password unless request.password.nil?

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
        auth_names = ['JWT']

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

    # 'nodePath' should refer to paragraph, cell or row.
    # @param request GetBordersRequest
    # @return [BordersResponse]
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

    # 'nodePath' should refer to paragraph, cell or row.
    # @param request GetBordersRequest
    # @return [Array<(BordersResponse, Fixnum, Hash)>]
    # BordersResponse data, response status code and response headers
    private def get_borders_with_http_info(request)
        raise ArgumentError, 'Incorrect request type' unless request.is_a? GetBordersRequest

        @api_client.config.logger.debug 'Calling API: WordsApi.get_borders ...' if @api_client.config.debugging
        # verify the required parameter 'name' is set
        raise ArgumentError, 'Missing the required parameter name when calling WordsApi.get_borders' if @api_client.config.client_side_validation && request.name.nil?

        # resource path
        local_var_path = '/words/{name}/{nodePath}/borders'[1..-1]
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.nil? ? '' : request.name.to_s)
        local_var_path = local_var_path.sub('{' + downcase_first_letter('NodePath') + '}', request.node_path.nil? ? '' : request.node_path.to_s)
        local_var_path = local_var_path.sub('//', '/')

        # query parameters
        query_params = {}
        query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
        query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
        query_params[downcase_first_letter('LoadEncoding')] = request.load_encoding unless request.load_encoding.nil?
        query_params[downcase_first_letter('Password')] = request.password unless request.password.nil?

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
        auth_names = ['JWT']

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

    # Gets comment from document.
    # @param request GetCommentRequest
    # @return [CommentResponse]
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
        local_var_path = '/words/{name}/comments/{commentIndex}'[1..-1]
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.nil? ? '' : request.name.to_s)
        local_var_path = local_var_path.sub('{' + downcase_first_letter('CommentIndex') + '}', request.comment_index.nil? ? '' : request.comment_index.to_s)
        local_var_path = local_var_path.sub('//', '/')

        # query parameters
        query_params = {}
        query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
        query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
        query_params[downcase_first_letter('LoadEncoding')] = request.load_encoding unless request.load_encoding.nil?
        query_params[downcase_first_letter('Password')] = request.password unless request.password.nil?

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
        auth_names = ['JWT']

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

    # Gets comments from document.
    # @param request GetCommentsRequest
    # @return [CommentsResponse]
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
    # @param request GetCommentsRequest
    # @return [Array<(CommentsResponse, Fixnum, Hash)>]
    # CommentsResponse data, response status code and response headers
    private def get_comments_with_http_info(request)
        raise ArgumentError, 'Incorrect request type' unless request.is_a? GetCommentsRequest

        @api_client.config.logger.debug 'Calling API: WordsApi.get_comments ...' if @api_client.config.debugging
        # verify the required parameter 'name' is set
        raise ArgumentError, 'Missing the required parameter name when calling WordsApi.get_comments' if @api_client.config.client_side_validation && request.name.nil?

        # resource path
        local_var_path = '/words/{name}/comments'[1..-1]
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.nil? ? '' : request.name.to_s)
        local_var_path = local_var_path.sub('//', '/')

        # query parameters
        query_params = {}
        query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
        query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
        query_params[downcase_first_letter('LoadEncoding')] = request.load_encoding unless request.load_encoding.nil?
        query_params[downcase_first_letter('Password')] = request.password unless request.password.nil?

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
        auth_names = ['JWT']

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

    # Reads document common info.
    # @param request GetDocumentRequest
    # @return [DocumentResponse]
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
    # @param request GetDocumentRequest
    # @return [Array<(DocumentResponse, Fixnum, Hash)>]
    # DocumentResponse data, response status code and response headers
    private def get_document_with_http_info(request)
        raise ArgumentError, 'Incorrect request type' unless request.is_a? GetDocumentRequest

        @api_client.config.logger.debug 'Calling API: WordsApi.get_document ...' if @api_client.config.debugging
        # verify the required parameter 'document_name' is set
        raise ArgumentError, 'Missing the required parameter document_name when calling WordsApi.get_document' if @api_client.config.client_side_validation && request.document_name.nil?

        # resource path
        local_var_path = '/words/{documentName}'[1..-1]
        local_var_path = local_var_path.sub('{' + downcase_first_letter('DocumentName') + '}', request.document_name.nil? ? '' : request.document_name.to_s)
        local_var_path = local_var_path.sub('//', '/')

        # query parameters
        query_params = {}
        query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
        query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
        query_params[downcase_first_letter('LoadEncoding')] = request.load_encoding unless request.load_encoding.nil?
        query_params[downcase_first_letter('Password')] = request.password unless request.password.nil?

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
        auth_names = ['JWT']

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

    # Reads document drawing object common info by its index or convert to format specified.
    # @param request GetDocumentDrawingObjectByIndexRequest
    # @return [DrawingObjectResponse]
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
        local_var_path = '/words/{name}/{nodePath}/drawingObjects/{index}'[1..-1]
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.nil? ? '' : request.name.to_s)
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Index') + '}', request.index.nil? ? '' : request.index.to_s)
        local_var_path = local_var_path.sub('{' + downcase_first_letter('NodePath') + '}', request.node_path.nil? ? '' : request.node_path.to_s)
        local_var_path = local_var_path.sub('//', '/')

        # query parameters
        query_params = {}
        query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
        query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
        query_params[downcase_first_letter('LoadEncoding')] = request.load_encoding unless request.load_encoding.nil?
        query_params[downcase_first_letter('Password')] = request.password unless request.password.nil?

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
        auth_names = ['JWT']

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

    # Reads drawing object image data.
    # @param request GetDocumentDrawingObjectImageDataRequest
    # @return [File]
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
        local_var_path = '/words/{name}/{nodePath}/drawingObjects/{index}/imageData'[1..-1]
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.nil? ? '' : request.name.to_s)
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Index') + '}', request.index.nil? ? '' : request.index.to_s)
        local_var_path = local_var_path.sub('{' + downcase_first_letter('NodePath') + '}', request.node_path.nil? ? '' : request.node_path.to_s)
        local_var_path = local_var_path.sub('//', '/')

        # query parameters
        query_params = {}
        query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
        query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
        query_params[downcase_first_letter('LoadEncoding')] = request.load_encoding unless request.load_encoding.nil?
        query_params[downcase_first_letter('Password')] = request.password unless request.password.nil?

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
        auth_names = ['JWT']

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

    # Gets drawing object OLE data.
    # @param request GetDocumentDrawingObjectOleDataRequest
    # @return [File]
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
        local_var_path = '/words/{name}/{nodePath}/drawingObjects/{index}/oleData'[1..-1]
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.nil? ? '' : request.name.to_s)
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Index') + '}', request.index.nil? ? '' : request.index.to_s)
        local_var_path = local_var_path.sub('{' + downcase_first_letter('NodePath') + '}', request.node_path.nil? ? '' : request.node_path.to_s)
        local_var_path = local_var_path.sub('//', '/')

        # query parameters
        query_params = {}
        query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
        query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
        query_params[downcase_first_letter('LoadEncoding')] = request.load_encoding unless request.load_encoding.nil?
        query_params[downcase_first_letter('Password')] = request.password unless request.password.nil?

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
        auth_names = ['JWT']

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

    # Reads document drawing objects common info.
    # @param request GetDocumentDrawingObjectsRequest
    # @return [DrawingObjectsResponse]
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
    # @param request GetDocumentDrawingObjectsRequest
    # @return [Array<(DrawingObjectsResponse, Fixnum, Hash)>]
    # DrawingObjectsResponse data, response status code and response headers
    private def get_document_drawing_objects_with_http_info(request)
        raise ArgumentError, 'Incorrect request type' unless request.is_a? GetDocumentDrawingObjectsRequest

        @api_client.config.logger.debug 'Calling API: WordsApi.get_document_drawing_objects ...' if @api_client.config.debugging
        # verify the required parameter 'name' is set
        raise ArgumentError, 'Missing the required parameter name when calling WordsApi.get_document_drawing_objects' if @api_client.config.client_side_validation && request.name.nil?

        # resource path
        local_var_path = '/words/{name}/{nodePath}/drawingObjects'[1..-1]
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.nil? ? '' : request.name.to_s)
        local_var_path = local_var_path.sub('{' + downcase_first_letter('NodePath') + '}', request.node_path.nil? ? '' : request.node_path.to_s)
        local_var_path = local_var_path.sub('//', '/')

        # query parameters
        query_params = {}
        query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
        query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
        query_params[downcase_first_letter('LoadEncoding')] = request.load_encoding unless request.load_encoding.nil?
        query_params[downcase_first_letter('Password')] = request.password unless request.password.nil?

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
        auth_names = ['JWT']

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

    # Reads document field names.
    # @param request GetDocumentFieldNamesRequest
    # @return [FieldNamesResponse]
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
    # @param request GetDocumentFieldNamesRequest
    # @return [Array<(FieldNamesResponse, Fixnum, Hash)>]
    # FieldNamesResponse data, response status code and response headers
    private def get_document_field_names_with_http_info(request)
        raise ArgumentError, 'Incorrect request type' unless request.is_a? GetDocumentFieldNamesRequest

        @api_client.config.logger.debug 'Calling API: WordsApi.get_document_field_names ...' if @api_client.config.debugging
        # verify the required parameter 'name' is set
        raise ArgumentError, 'Missing the required parameter name when calling WordsApi.get_document_field_names' if @api_client.config.client_side_validation && request.name.nil?

        # resource path
        local_var_path = '/words/{name}/mailMerge/FieldNames'[1..-1]
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.nil? ? '' : request.name.to_s)
        local_var_path = local_var_path.sub('//', '/')

        # query parameters
        query_params = {}
        query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
        query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
        query_params[downcase_first_letter('LoadEncoding')] = request.load_encoding unless request.load_encoding.nil?
        query_params[downcase_first_letter('Password')] = request.password unless request.password.nil?
        query_params[downcase_first_letter('UseNonMergeFields')] = request.use_non_merge_fields unless request.use_non_merge_fields.nil?

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
        auth_names = ['JWT']

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

    # Reads document field names.
    # @param request GetDocumentFieldNamesOnlineRequest
    # @return [FieldNamesResponse]
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
    # @param request GetDocumentFieldNamesOnlineRequest
    # @return [Array<(FieldNamesResponse, Fixnum, Hash)>]
    # FieldNamesResponse data, response status code and response headers
    private def get_document_field_names_online_with_http_info(request)
        raise ArgumentError, 'Incorrect request type' unless request.is_a? GetDocumentFieldNamesOnlineRequest

        @api_client.config.logger.debug 'Calling API: WordsApi.get_document_field_names_online ...' if @api_client.config.debugging
        # verify the required parameter 'template' is set
        raise ArgumentError, 'Missing the required parameter template when calling WordsApi.get_document_field_names_online' if @api_client.config.client_side_validation && request.template.nil?

        # resource path
        local_var_path = '/words/mailMerge/FieldNames'[1..-1]
        local_var_path = local_var_path.sub('//', '/')

        # query parameters
        query_params = {}
        query_params[downcase_first_letter('UseNonMergeFields')] = request.use_non_merge_fields unless request.use_non_merge_fields.nil?

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
        auth_names = ['JWT']

        data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names,
                                                        return_type: 'FieldNamesResponse')
        if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#get_document_field_names_online\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
        end
        [data, status_code, headers]
    end

    # Reads document hyperlink by its index.
    # @param request GetDocumentHyperlinkByIndexRequest
    # @return [HyperlinkResponse]
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
        local_var_path = '/words/{name}/hyperlinks/{hyperlinkIndex}'[1..-1]
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.nil? ? '' : request.name.to_s)
        local_var_path = local_var_path.sub('{' + downcase_first_letter('HyperlinkIndex') + '}', request.hyperlink_index.nil? ? '' : request.hyperlink_index.to_s)
        local_var_path = local_var_path.sub('//', '/')

        # query parameters
        query_params = {}
        query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
        query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
        query_params[downcase_first_letter('LoadEncoding')] = request.load_encoding unless request.load_encoding.nil?
        query_params[downcase_first_letter('Password')] = request.password unless request.password.nil?

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
        auth_names = ['JWT']

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

    # Reads document hyperlinks common info.
    # @param request GetDocumentHyperlinksRequest
    # @return [HyperlinksResponse]
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
    # @param request GetDocumentHyperlinksRequest
    # @return [Array<(HyperlinksResponse, Fixnum, Hash)>]
    # HyperlinksResponse data, response status code and response headers
    private def get_document_hyperlinks_with_http_info(request)
        raise ArgumentError, 'Incorrect request type' unless request.is_a? GetDocumentHyperlinksRequest

        @api_client.config.logger.debug 'Calling API: WordsApi.get_document_hyperlinks ...' if @api_client.config.debugging
        # verify the required parameter 'name' is set
        raise ArgumentError, 'Missing the required parameter name when calling WordsApi.get_document_hyperlinks' if @api_client.config.client_side_validation && request.name.nil?

        # resource path
        local_var_path = '/words/{name}/hyperlinks'[1..-1]
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.nil? ? '' : request.name.to_s)
        local_var_path = local_var_path.sub('//', '/')

        # query parameters
        query_params = {}
        query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
        query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
        query_params[downcase_first_letter('LoadEncoding')] = request.load_encoding unless request.load_encoding.nil?
        query_params[downcase_first_letter('Password')] = request.password unless request.password.nil?

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
        auth_names = ['JWT']

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

    # Reads document properties info.
    # @param request GetDocumentPropertiesRequest
    # @return [DocumentPropertiesResponse]
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
    # @param request GetDocumentPropertiesRequest
    # @return [Array<(DocumentPropertiesResponse, Fixnum, Hash)>]
    # DocumentPropertiesResponse data, response status code and response headers
    private def get_document_properties_with_http_info(request)
        raise ArgumentError, 'Incorrect request type' unless request.is_a? GetDocumentPropertiesRequest

        @api_client.config.logger.debug 'Calling API: WordsApi.get_document_properties ...' if @api_client.config.debugging
        # verify the required parameter 'name' is set
        raise ArgumentError, 'Missing the required parameter name when calling WordsApi.get_document_properties' if @api_client.config.client_side_validation && request.name.nil?

        # resource path
        local_var_path = '/words/{name}/documentProperties'[1..-1]
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.nil? ? '' : request.name.to_s)
        local_var_path = local_var_path.sub('//', '/')

        # query parameters
        query_params = {}
        query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
        query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
        query_params[downcase_first_letter('LoadEncoding')] = request.load_encoding unless request.load_encoding.nil?
        query_params[downcase_first_letter('Password')] = request.password unless request.password.nil?

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
        auth_names = ['JWT']

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

    # Reads document property info by the property name.
    # @param request GetDocumentPropertyRequest
    # @return [DocumentPropertyResponse]
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
        local_var_path = '/words/{name}/documentProperties/{propertyName}'[1..-1]
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.nil? ? '' : request.name.to_s)
        local_var_path = local_var_path.sub('{' + downcase_first_letter('PropertyName') + '}', request.property_name.nil? ? '' : request.property_name.to_s)
        local_var_path = local_var_path.sub('//', '/')

        # query parameters
        query_params = {}
        query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
        query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
        query_params[downcase_first_letter('LoadEncoding')] = request.load_encoding unless request.load_encoding.nil?
        query_params[downcase_first_letter('Password')] = request.password unless request.password.nil?

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
        auth_names = ['JWT']

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

    # Reads document protection common info.
    # @param request GetDocumentProtectionRequest
    # @return [ProtectionDataResponse]
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
    # @param request GetDocumentProtectionRequest
    # @return [Array<(ProtectionDataResponse, Fixnum, Hash)>]
    # ProtectionDataResponse data, response status code and response headers
    private def get_document_protection_with_http_info(request)
        raise ArgumentError, 'Incorrect request type' unless request.is_a? GetDocumentProtectionRequest

        @api_client.config.logger.debug 'Calling API: WordsApi.get_document_protection ...' if @api_client.config.debugging
        # verify the required parameter 'name' is set
        raise ArgumentError, 'Missing the required parameter name when calling WordsApi.get_document_protection' if @api_client.config.client_side_validation && request.name.nil?

        # resource path
        local_var_path = '/words/{name}/protection'[1..-1]
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.nil? ? '' : request.name.to_s)
        local_var_path = local_var_path.sub('//', '/')

        # query parameters
        query_params = {}
        query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
        query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
        query_params[downcase_first_letter('LoadEncoding')] = request.load_encoding unless request.load_encoding.nil?
        query_params[downcase_first_letter('Password')] = request.password unless request.password.nil?

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
        auth_names = ['JWT']

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

    # Reads document statistics.
    # @param request GetDocumentStatisticsRequest
    # @return [StatDataResponse]
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
    # @param request GetDocumentStatisticsRequest
    # @return [Array<(StatDataResponse, Fixnum, Hash)>]
    # StatDataResponse data, response status code and response headers
    private def get_document_statistics_with_http_info(request)
        raise ArgumentError, 'Incorrect request type' unless request.is_a? GetDocumentStatisticsRequest

        @api_client.config.logger.debug 'Calling API: WordsApi.get_document_statistics ...' if @api_client.config.debugging
        # verify the required parameter 'name' is set
        raise ArgumentError, 'Missing the required parameter name when calling WordsApi.get_document_statistics' if @api_client.config.client_side_validation && request.name.nil?

        # resource path
        local_var_path = '/words/{name}/statistics'[1..-1]
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.nil? ? '' : request.name.to_s)
        local_var_path = local_var_path.sub('//', '/')

        # query parameters
        query_params = {}
        query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
        query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
        query_params[downcase_first_letter('LoadEncoding')] = request.load_encoding unless request.load_encoding.nil?
        query_params[downcase_first_letter('Password')] = request.password unless request.password.nil?
        query_params[downcase_first_letter('IncludeComments')] = request.include_comments unless request.include_comments.nil?
        query_params[downcase_first_letter('IncludeFootnotes')] = request.include_footnotes unless request.include_footnotes.nil?
        query_params[downcase_first_letter('IncludeTextInShapes')] = request.include_text_in_shapes unless request.include_text_in_shapes.nil?

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
        auth_names = ['JWT']

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

    # Exports the document into the specified format.
    # @param request GetDocumentWithFormatRequest
    # @return [File]
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
        local_var_path = '/words/{name}'[1..-1]
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.nil? ? '' : request.name.to_s)
        local_var_path = local_var_path.sub('//', '/')

        # query parameters
        query_params = {}
        query_params[downcase_first_letter('Format')] = request.format
        query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
        query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
        query_params[downcase_first_letter('LoadEncoding')] = request.load_encoding unless request.load_encoding.nil?
        query_params[downcase_first_letter('Password')] = request.password unless request.password.nil?
        query_params[downcase_first_letter('OutPath')] = request.out_path unless request.out_path.nil?
        query_params[downcase_first_letter('FontsLocation')] = request.fonts_location unless request.fonts_location.nil?

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
        auth_names = ['JWT']

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

    # Gets field from document.
    # @param request GetFieldRequest
    # @return [FieldResponse]
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
        local_var_path = '/words/{name}/{nodePath}/fields/{index}'[1..-1]
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.nil? ? '' : request.name.to_s)
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Index') + '}', request.index.nil? ? '' : request.index.to_s)
        local_var_path = local_var_path.sub('{' + downcase_first_letter('NodePath') + '}', request.node_path.nil? ? '' : request.node_path.to_s)
        local_var_path = local_var_path.sub('//', '/')

        # query parameters
        query_params = {}
        query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
        query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
        query_params[downcase_first_letter('LoadEncoding')] = request.load_encoding unless request.load_encoding.nil?
        query_params[downcase_first_letter('Password')] = request.password unless request.password.nil?

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
        auth_names = ['JWT']

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
    # @param request GetFieldsRequest
    # @return [FieldsResponse]
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
    # @param request GetFieldsRequest
    # @return [Array<(FieldsResponse, Fixnum, Hash)>]
    # FieldsResponse data, response status code and response headers
    private def get_fields_with_http_info(request)
        raise ArgumentError, 'Incorrect request type' unless request.is_a? GetFieldsRequest

        @api_client.config.logger.debug 'Calling API: WordsApi.get_fields ...' if @api_client.config.debugging
        # verify the required parameter 'name' is set
        raise ArgumentError, 'Missing the required parameter name when calling WordsApi.get_fields' if @api_client.config.client_side_validation && request.name.nil?

        # resource path
        local_var_path = '/words/{name}/{nodePath}/fields'[1..-1]
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.nil? ? '' : request.name.to_s)
        local_var_path = local_var_path.sub('{' + downcase_first_letter('NodePath') + '}', request.node_path.nil? ? '' : request.node_path.to_s)
        local_var_path = local_var_path.sub('//', '/')

        # query parameters
        query_params = {}
        query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
        query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
        query_params[downcase_first_letter('LoadEncoding')] = request.load_encoding unless request.load_encoding.nil?
        query_params[downcase_first_letter('Password')] = request.password unless request.password.nil?

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
        auth_names = ['JWT']

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

    # Get all files and folders within a folder.
    # @param request GetFilesListRequest
    # @return [FilesList]
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

    # Get all files and folders within a folder.
    # @param request GetFilesListRequest
    # @return [Array<(FilesList, Fixnum, Hash)>]
    # FilesList data, response status code and response headers
    private def get_files_list_with_http_info(request)
        raise ArgumentError, 'Incorrect request type' unless request.is_a? GetFilesListRequest

        @api_client.config.logger.debug 'Calling API: WordsApi.get_files_list ...' if @api_client.config.debugging
        # verify the required parameter 'path' is set
        raise ArgumentError, 'Missing the required parameter path when calling WordsApi.get_files_list' if @api_client.config.client_side_validation && request.path.nil?

        # resource path
        local_var_path = '/words/storage/folder/{path}'[1..-1]
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Path') + '}', request.path.nil? ? '' : request.path.to_s)
        local_var_path = local_var_path.sub('//', '/')

        # query parameters
        query_params = {}
        query_params[downcase_first_letter('StorageName')] = request.storage_name unless request.storage_name.nil?

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
        auth_names = ['JWT']

        data, status_code, headers = @api_client.call_api(:GET, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names,
                                                        return_type: 'FilesList')
        if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#get_files_list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
        end
        [data, status_code, headers]
    end

    # Reads footnote by index.
    # @param request GetFootnoteRequest
    # @return [FootnoteResponse]
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
        local_var_path = '/words/{name}/{nodePath}/footnotes/{index}'[1..-1]
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.nil? ? '' : request.name.to_s)
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Index') + '}', request.index.nil? ? '' : request.index.to_s)
        local_var_path = local_var_path.sub('{' + downcase_first_letter('NodePath') + '}', request.node_path.nil? ? '' : request.node_path.to_s)
        local_var_path = local_var_path.sub('//', '/')

        # query parameters
        query_params = {}
        query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
        query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
        query_params[downcase_first_letter('LoadEncoding')] = request.load_encoding unless request.load_encoding.nil?
        query_params[downcase_first_letter('Password')] = request.password unless request.password.nil?

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
        auth_names = ['JWT']

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

    # Gets footnotes from document.
    # @param request GetFootnotesRequest
    # @return [FootnotesResponse]
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
    # @param request GetFootnotesRequest
    # @return [Array<(FootnotesResponse, Fixnum, Hash)>]
    # FootnotesResponse data, response status code and response headers
    private def get_footnotes_with_http_info(request)
        raise ArgumentError, 'Incorrect request type' unless request.is_a? GetFootnotesRequest

        @api_client.config.logger.debug 'Calling API: WordsApi.get_footnotes ...' if @api_client.config.debugging
        # verify the required parameter 'name' is set
        raise ArgumentError, 'Missing the required parameter name when calling WordsApi.get_footnotes' if @api_client.config.client_side_validation && request.name.nil?

        # resource path
        local_var_path = '/words/{name}/{nodePath}/footnotes'[1..-1]
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.nil? ? '' : request.name.to_s)
        local_var_path = local_var_path.sub('{' + downcase_first_letter('NodePath') + '}', request.node_path.nil? ? '' : request.node_path.to_s)
        local_var_path = local_var_path.sub('//', '/')

        # query parameters
        query_params = {}
        query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
        query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
        query_params[downcase_first_letter('LoadEncoding')] = request.load_encoding unless request.load_encoding.nil?
        query_params[downcase_first_letter('Password')] = request.password unless request.password.nil?

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
        auth_names = ['JWT']

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
    # @param request GetFormFieldRequest
    # @return [FormFieldResponse]
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
        local_var_path = '/words/{name}/{nodePath}/formfields/{index}'[1..-1]
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.nil? ? '' : request.name.to_s)
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Index') + '}', request.index.nil? ? '' : request.index.to_s)
        local_var_path = local_var_path.sub('{' + downcase_first_letter('NodePath') + '}', request.node_path.nil? ? '' : request.node_path.to_s)
        local_var_path = local_var_path.sub('//', '/')

        # query parameters
        query_params = {}
        query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
        query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
        query_params[downcase_first_letter('LoadEncoding')] = request.load_encoding unless request.load_encoding.nil?
        query_params[downcase_first_letter('Password')] = request.password unless request.password.nil?

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
        auth_names = ['JWT']

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

    # Gets form fields from document.
    # @param request GetFormFieldsRequest
    # @return [FormFieldsResponse]
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
    # @param request GetFormFieldsRequest
    # @return [Array<(FormFieldsResponse, Fixnum, Hash)>]
    # FormFieldsResponse data, response status code and response headers
    private def get_form_fields_with_http_info(request)
        raise ArgumentError, 'Incorrect request type' unless request.is_a? GetFormFieldsRequest

        @api_client.config.logger.debug 'Calling API: WordsApi.get_form_fields ...' if @api_client.config.debugging
        # verify the required parameter 'name' is set
        raise ArgumentError, 'Missing the required parameter name when calling WordsApi.get_form_fields' if @api_client.config.client_side_validation && request.name.nil?

        # resource path
        local_var_path = '/words/{name}/{nodePath}/formfields'[1..-1]
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.nil? ? '' : request.name.to_s)
        local_var_path = local_var_path.sub('{' + downcase_first_letter('NodePath') + '}', request.node_path.nil? ? '' : request.node_path.to_s)
        local_var_path = local_var_path.sub('//', '/')

        # query parameters
        query_params = {}
        query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
        query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
        query_params[downcase_first_letter('LoadEncoding')] = request.load_encoding unless request.load_encoding.nil?
        query_params[downcase_first_letter('Password')] = request.password unless request.password.nil?

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
        auth_names = ['JWT']

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

    # Returns a header/footer from the document by index.
    # @param request GetHeaderFooterRequest
    # @return [HeaderFooterResponse]
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
        local_var_path = '/words/{name}/headersfooters/{headerFooterIndex}'[1..-1]
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.nil? ? '' : request.name.to_s)
        local_var_path = local_var_path.sub('{' + downcase_first_letter('HeaderFooterIndex') + '}', request.header_footer_index.nil? ? '' : request.header_footer_index.to_s)
        local_var_path = local_var_path.sub('//', '/')

        # query parameters
        query_params = {}
        query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
        query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
        query_params[downcase_first_letter('LoadEncoding')] = request.load_encoding unless request.load_encoding.nil?
        query_params[downcase_first_letter('Password')] = request.password unless request.password.nil?
        query_params[downcase_first_letter('FilterByType')] = request.filter_by_type unless request.filter_by_type.nil?

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
        auth_names = ['JWT']

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

    # Returns a header/footer from the document section.
    # @param request GetHeaderFooterOfSectionRequest
    # @return [HeaderFooterResponse]
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
        local_var_path = '/words/{name}/sections/{sectionIndex}/headersfooters/{headerFooterIndex}'[1..-1]
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.nil? ? '' : request.name.to_s)
        local_var_path = local_var_path.sub('{' + downcase_first_letter('HeaderFooterIndex') + '}', request.header_footer_index.nil? ? '' : request.header_footer_index.to_s)
        local_var_path = local_var_path.sub('{' + downcase_first_letter('SectionIndex') + '}', request.section_index.nil? ? '' : request.section_index.to_s)
        local_var_path = local_var_path.sub('//', '/')

        # query parameters
        query_params = {}
        query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
        query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
        query_params[downcase_first_letter('LoadEncoding')] = request.load_encoding unless request.load_encoding.nil?
        query_params[downcase_first_letter('Password')] = request.password unless request.password.nil?
        query_params[downcase_first_letter('FilterByType')] = request.filter_by_type unless request.filter_by_type.nil?

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
        auth_names = ['JWT']

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

    # Returns a list of header/footers from the document.
    # @param request GetHeaderFootersRequest
    # @return [HeaderFootersResponse]
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
    # @param request GetHeaderFootersRequest
    # @return [Array<(HeaderFootersResponse, Fixnum, Hash)>]
    # HeaderFootersResponse data, response status code and response headers
    private def get_header_footers_with_http_info(request)
        raise ArgumentError, 'Incorrect request type' unless request.is_a? GetHeaderFootersRequest

        @api_client.config.logger.debug 'Calling API: WordsApi.get_header_footers ...' if @api_client.config.debugging
        # verify the required parameter 'name' is set
        raise ArgumentError, 'Missing the required parameter name when calling WordsApi.get_header_footers' if @api_client.config.client_side_validation && request.name.nil?
        # verify the required parameter 'section_path' is set
        raise ArgumentError, 'Missing the required parameter section_path when calling WordsApi.get_header_footers' if @api_client.config.client_side_validation && request.section_path.nil?

        # resource path
        local_var_path = '/words/{name}/{sectionPath}/headersfooters'[1..-1]
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.nil? ? '' : request.name.to_s)
        local_var_path = local_var_path.sub('{' + downcase_first_letter('SectionPath') + '}', request.section_path.nil? ? '' : request.section_path.to_s)
        local_var_path = local_var_path.sub('//', '/')

        # query parameters
        query_params = {}
        query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
        query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
        query_params[downcase_first_letter('LoadEncoding')] = request.load_encoding unless request.load_encoding.nil?
        query_params[downcase_first_letter('Password')] = request.password unless request.password.nil?
        query_params[downcase_first_letter('FilterByType')] = request.filter_by_type unless request.filter_by_type.nil?

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
        auth_names = ['JWT']

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

    # This resource represents one of the lists contained in the document.
    # @param request GetListRequest
    # @return [ListResponse]
    def get_list(request)
        begin
        data, _status_code, _headers = get_list_with_http_info(request)
        rescue ApiError => e
            if e.code == 401
            request_token
            data, _status_code, _headers = get_list_with_http_info(request)
            else
            raise
            end
        end
        data
    end

    # This resource represents one of the lists contained in the document.
    # @param request GetListRequest
    # @return [Array<(ListResponse, Fixnum, Hash)>]
    # ListResponse data, response status code and response headers
    private def get_list_with_http_info(request)
        raise ArgumentError, 'Incorrect request type' unless request.is_a? GetListRequest

        @api_client.config.logger.debug 'Calling API: WordsApi.get_list ...' if @api_client.config.debugging
        # verify the required parameter 'name' is set
        raise ArgumentError, 'Missing the required parameter name when calling WordsApi.get_list' if @api_client.config.client_side_validation && request.name.nil?
        # verify the required parameter 'list_id' is set
        raise ArgumentError, 'Missing the required parameter list_id when calling WordsApi.get_list' if @api_client.config.client_side_validation && request.list_id.nil?

        # resource path
        local_var_path = '/words/{name}/lists/{listId}'[1..-1]
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.nil? ? '' : request.name.to_s)
        local_var_path = local_var_path.sub('{' + downcase_first_letter('ListId') + '}', request.list_id.nil? ? '' : request.list_id.to_s)
        local_var_path = local_var_path.sub('//', '/')

        # query parameters
        query_params = {}
        query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
        query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
        query_params[downcase_first_letter('LoadEncoding')] = request.load_encoding unless request.load_encoding.nil?
        query_params[downcase_first_letter('Password')] = request.password unless request.password.nil?

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
        auth_names = ['JWT']

        data, status_code, headers = @api_client.call_api(:GET, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names,
                                                        return_type: 'ListResponse')
        if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#get_list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
        end
        [data, status_code, headers]
    end

    # Returns a list of lists that are contained in the document.
    # @param request GetListsRequest
    # @return [ListsResponse]
    def get_lists(request)
        begin
        data, _status_code, _headers = get_lists_with_http_info(request)
        rescue ApiError => e
            if e.code == 401
            request_token
            data, _status_code, _headers = get_lists_with_http_info(request)
            else
            raise
            end
        end
        data
    end

    # Returns a list of lists that are contained in the document.
    # @param request GetListsRequest
    # @return [Array<(ListsResponse, Fixnum, Hash)>]
    # ListsResponse data, response status code and response headers
    private def get_lists_with_http_info(request)
        raise ArgumentError, 'Incorrect request type' unless request.is_a? GetListsRequest

        @api_client.config.logger.debug 'Calling API: WordsApi.get_lists ...' if @api_client.config.debugging
        # verify the required parameter 'name' is set
        raise ArgumentError, 'Missing the required parameter name when calling WordsApi.get_lists' if @api_client.config.client_side_validation && request.name.nil?

        # resource path
        local_var_path = '/words/{name}/lists'[1..-1]
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.nil? ? '' : request.name.to_s)
        local_var_path = local_var_path.sub('//', '/')

        # query parameters
        query_params = {}
        query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
        query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
        query_params[downcase_first_letter('LoadEncoding')] = request.load_encoding unless request.load_encoding.nil?
        query_params[downcase_first_letter('Password')] = request.password unless request.password.nil?

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
        auth_names = ['JWT']

        data, status_code, headers = @api_client.call_api(:GET, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names,
                                                        return_type: 'ListsResponse')
        if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#get_lists\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
        end
        [data, status_code, headers]
    end

    # Reads OfficeMath object by index.
    # @param request GetOfficeMathObjectRequest
    # @return [OfficeMathObjectResponse]
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
        local_var_path = '/words/{name}/{nodePath}/OfficeMathObjects/{index}'[1..-1]
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.nil? ? '' : request.name.to_s)
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Index') + '}', request.index.nil? ? '' : request.index.to_s)
        local_var_path = local_var_path.sub('{' + downcase_first_letter('NodePath') + '}', request.node_path.nil? ? '' : request.node_path.to_s)
        local_var_path = local_var_path.sub('//', '/')

        # query parameters
        query_params = {}
        query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
        query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
        query_params[downcase_first_letter('LoadEncoding')] = request.load_encoding unless request.load_encoding.nil?
        query_params[downcase_first_letter('Password')] = request.password unless request.password.nil?

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
        auth_names = ['JWT']

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

    # Gets OfficeMath objects from document.
    # @param request GetOfficeMathObjectsRequest
    # @return [OfficeMathObjectsResponse]
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
    # @param request GetOfficeMathObjectsRequest
    # @return [Array<(OfficeMathObjectsResponse, Fixnum, Hash)>]
    # OfficeMathObjectsResponse data, response status code and response headers
    private def get_office_math_objects_with_http_info(request)
        raise ArgumentError, 'Incorrect request type' unless request.is_a? GetOfficeMathObjectsRequest

        @api_client.config.logger.debug 'Calling API: WordsApi.get_office_math_objects ...' if @api_client.config.debugging
        # verify the required parameter 'name' is set
        raise ArgumentError, 'Missing the required parameter name when calling WordsApi.get_office_math_objects' if @api_client.config.client_side_validation && request.name.nil?

        # resource path
        local_var_path = '/words/{name}/{nodePath}/OfficeMathObjects'[1..-1]
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.nil? ? '' : request.name.to_s)
        local_var_path = local_var_path.sub('{' + downcase_first_letter('NodePath') + '}', request.node_path.nil? ? '' : request.node_path.to_s)
        local_var_path = local_var_path.sub('//', '/')

        # query parameters
        query_params = {}
        query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
        query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
        query_params[downcase_first_letter('LoadEncoding')] = request.load_encoding unless request.load_encoding.nil?
        query_params[downcase_first_letter('Password')] = request.password unless request.password.nil?

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
        auth_names = ['JWT']

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

    # This resource represents one of the paragraphs contained in the document.
    # @param request GetParagraphRequest
    # @return [ParagraphResponse]
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
    # @param request GetParagraphRequest
    # @return [Array<(ParagraphResponse, Fixnum, Hash)>]
    # ParagraphResponse data, response status code and response headers
    private def get_paragraph_with_http_info(request)
        raise ArgumentError, 'Incorrect request type' unless request.is_a? GetParagraphRequest

        @api_client.config.logger.debug 'Calling API: WordsApi.get_paragraph ...' if @api_client.config.debugging
        # verify the required parameter 'name' is set
        raise ArgumentError, 'Missing the required parameter name when calling WordsApi.get_paragraph' if @api_client.config.client_side_validation && request.name.nil?
        # verify the required parameter 'index' is set
        raise ArgumentError, 'Missing the required parameter index when calling WordsApi.get_paragraph' if @api_client.config.client_side_validation && request.index.nil?

        # resource path
        local_var_path = '/words/{name}/{nodePath}/paragraphs/{index}'[1..-1]
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.nil? ? '' : request.name.to_s)
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Index') + '}', request.index.nil? ? '' : request.index.to_s)
        local_var_path = local_var_path.sub('{' + downcase_first_letter('NodePath') + '}', request.node_path.nil? ? '' : request.node_path.to_s)
        local_var_path = local_var_path.sub('//', '/')

        # query parameters
        query_params = {}
        query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
        query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
        query_params[downcase_first_letter('LoadEncoding')] = request.load_encoding unless request.load_encoding.nil?
        query_params[downcase_first_letter('Password')] = request.password unless request.password.nil?

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
        auth_names = ['JWT']

        data, status_code, headers = @api_client.call_api(:GET, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names,
                                                        return_type: 'ParagraphResponse')
        if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#get_paragraph\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
        end
        [data, status_code, headers]
    end

    # Represents all the formatting for a paragraph.
    # @param request GetParagraphFormatRequest
    # @return [ParagraphFormatResponse]
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
    # @param request GetParagraphFormatRequest
    # @return [Array<(ParagraphFormatResponse, Fixnum, Hash)>]
    # ParagraphFormatResponse data, response status code and response headers
    private def get_paragraph_format_with_http_info(request)
        raise ArgumentError, 'Incorrect request type' unless request.is_a? GetParagraphFormatRequest

        @api_client.config.logger.debug 'Calling API: WordsApi.get_paragraph_format ...' if @api_client.config.debugging
        # verify the required parameter 'name' is set
        raise ArgumentError, 'Missing the required parameter name when calling WordsApi.get_paragraph_format' if @api_client.config.client_side_validation && request.name.nil?
        # verify the required parameter 'index' is set
        raise ArgumentError, 'Missing the required parameter index when calling WordsApi.get_paragraph_format' if @api_client.config.client_side_validation && request.index.nil?

        # resource path
        local_var_path = '/words/{name}/{nodePath}/paragraphs/{index}/format'[1..-1]
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.nil? ? '' : request.name.to_s)
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Index') + '}', request.index.nil? ? '' : request.index.to_s)
        local_var_path = local_var_path.sub('{' + downcase_first_letter('NodePath') + '}', request.node_path.nil? ? '' : request.node_path.to_s)
        local_var_path = local_var_path.sub('//', '/')

        # query parameters
        query_params = {}
        query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
        query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
        query_params[downcase_first_letter('LoadEncoding')] = request.load_encoding unless request.load_encoding.nil?
        query_params[downcase_first_letter('Password')] = request.password unless request.password.nil?

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
        auth_names = ['JWT']

        data, status_code, headers = @api_client.call_api(:GET, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names,
                                                        return_type: 'ParagraphFormatResponse')
        if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#get_paragraph_format\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
        end
        [data, status_code, headers]
    end

    # Represents list format for a paragraph.
    # @param request GetParagraphListFormatRequest
    # @return [ParagraphListFormatResponse]
    def get_paragraph_list_format(request)
        begin
        data, _status_code, _headers = get_paragraph_list_format_with_http_info(request)
        rescue ApiError => e
            if e.code == 401
            request_token
            data, _status_code, _headers = get_paragraph_list_format_with_http_info(request)
            else
            raise
            end
        end
        data
    end

    # Represents list format for a paragraph.
    # @param request GetParagraphListFormatRequest
    # @return [Array<(ParagraphListFormatResponse, Fixnum, Hash)>]
    # ParagraphListFormatResponse data, response status code and response headers
    private def get_paragraph_list_format_with_http_info(request)
        raise ArgumentError, 'Incorrect request type' unless request.is_a? GetParagraphListFormatRequest

        @api_client.config.logger.debug 'Calling API: WordsApi.get_paragraph_list_format ...' if @api_client.config.debugging
        # verify the required parameter 'name' is set
        raise ArgumentError, 'Missing the required parameter name when calling WordsApi.get_paragraph_list_format' if @api_client.config.client_side_validation && request.name.nil?
        # verify the required parameter 'index' is set
        raise ArgumentError, 'Missing the required parameter index when calling WordsApi.get_paragraph_list_format' if @api_client.config.client_side_validation && request.index.nil?

        # resource path
        local_var_path = '/words/{name}/{nodePath}/paragraphs/{index}/listFormat'[1..-1]
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.nil? ? '' : request.name.to_s)
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Index') + '}', request.index.nil? ? '' : request.index.to_s)
        local_var_path = local_var_path.sub('{' + downcase_first_letter('NodePath') + '}', request.node_path.nil? ? '' : request.node_path.to_s)
        local_var_path = local_var_path.sub('//', '/')

        # query parameters
        query_params = {}
        query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
        query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
        query_params[downcase_first_letter('LoadEncoding')] = request.load_encoding unless request.load_encoding.nil?
        query_params[downcase_first_letter('Password')] = request.password unless request.password.nil?

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
        auth_names = ['JWT']

        data, status_code, headers = @api_client.call_api(:GET, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names,
                                                        return_type: 'ParagraphListFormatResponse')
        if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#get_paragraph_list_format\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
        end
        [data, status_code, headers]
    end

    # Returns a list of paragraphs that are contained in the document.
    # @param request GetParagraphsRequest
    # @return [ParagraphLinkCollectionResponse]
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
    # @param request GetParagraphsRequest
    # @return [Array<(ParagraphLinkCollectionResponse, Fixnum, Hash)>]
    # ParagraphLinkCollectionResponse data, response status code and response headers
    private def get_paragraphs_with_http_info(request)
        raise ArgumentError, 'Incorrect request type' unless request.is_a? GetParagraphsRequest

        @api_client.config.logger.debug 'Calling API: WordsApi.get_paragraphs ...' if @api_client.config.debugging
        # verify the required parameter 'name' is set
        raise ArgumentError, 'Missing the required parameter name when calling WordsApi.get_paragraphs' if @api_client.config.client_side_validation && request.name.nil?

        # resource path
        local_var_path = '/words/{name}/{nodePath}/paragraphs'[1..-1]
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.nil? ? '' : request.name.to_s)
        local_var_path = local_var_path.sub('{' + downcase_first_letter('NodePath') + '}', request.node_path.nil? ? '' : request.node_path.to_s)
        local_var_path = local_var_path.sub('//', '/')

        # query parameters
        query_params = {}
        query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
        query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
        query_params[downcase_first_letter('LoadEncoding')] = request.load_encoding unless request.load_encoding.nil?
        query_params[downcase_first_letter('Password')] = request.password unless request.password.nil?

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
        auth_names = ['JWT']

        data, status_code, headers = @api_client.call_api(:GET, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names,
                                                        return_type: 'ParagraphLinkCollectionResponse')
        if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#get_paragraphs\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
        end
        [data, status_code, headers]
    end

    # Get all tab stops for the paragraph.
    # @param request GetParagraphTabStopsRequest
    # @return [TabStopsResponse]
    def get_paragraph_tab_stops(request)
        begin
        data, _status_code, _headers = get_paragraph_tab_stops_with_http_info(request)
        rescue ApiError => e
            if e.code == 401
            request_token
            data, _status_code, _headers = get_paragraph_tab_stops_with_http_info(request)
            else
            raise
            end
        end
        data
    end

    # Get all tab stops for the paragraph.
    # @param request GetParagraphTabStopsRequest
    # @return [Array<(TabStopsResponse, Fixnum, Hash)>]
    # TabStopsResponse data, response status code and response headers
    private def get_paragraph_tab_stops_with_http_info(request)
        raise ArgumentError, 'Incorrect request type' unless request.is_a? GetParagraphTabStopsRequest

        @api_client.config.logger.debug 'Calling API: WordsApi.get_paragraph_tab_stops ...' if @api_client.config.debugging
        # verify the required parameter 'name' is set
        raise ArgumentError, 'Missing the required parameter name when calling WordsApi.get_paragraph_tab_stops' if @api_client.config.client_side_validation && request.name.nil?
        # verify the required parameter 'index' is set
        raise ArgumentError, 'Missing the required parameter index when calling WordsApi.get_paragraph_tab_stops' if @api_client.config.client_side_validation && request.index.nil?

        # resource path
        local_var_path = '/words/{name}/{nodePath}/paragraphs/{index}/tabstops'[1..-1]
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.nil? ? '' : request.name.to_s)
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Index') + '}', request.index.nil? ? '' : request.index.to_s)
        local_var_path = local_var_path.sub('{' + downcase_first_letter('NodePath') + '}', request.node_path.nil? ? '' : request.node_path.to_s)
        local_var_path = local_var_path.sub('//', '/')

        # query parameters
        query_params = {}
        query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
        query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
        query_params[downcase_first_letter('LoadEncoding')] = request.load_encoding unless request.load_encoding.nil?
        query_params[downcase_first_letter('Password')] = request.password unless request.password.nil?

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
        auth_names = ['JWT']

        data, status_code, headers = @api_client.call_api(:GET, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names,
                                                        return_type: 'TabStopsResponse')
        if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#get_paragraph_tab_stops\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
        end
        [data, status_code, headers]
    end

    # Gets the text from the range.
    # @param request GetRangeTextRequest
    # @return [RangeTextResponse]
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
    # @param request GetRangeTextRequest
    # @return [Array<(RangeTextResponse, Fixnum, Hash)>]
    # RangeTextResponse data, response status code and response headers
    private def get_range_text_with_http_info(request)
        raise ArgumentError, 'Incorrect request type' unless request.is_a? GetRangeTextRequest

        @api_client.config.logger.debug 'Calling API: WordsApi.get_range_text ...' if @api_client.config.debugging
        # verify the required parameter 'name' is set
        raise ArgumentError, 'Missing the required parameter name when calling WordsApi.get_range_text' if @api_client.config.client_side_validation && request.name.nil?
        # verify the required parameter 'range_start_identifier' is set
        raise ArgumentError, 'Missing the required parameter range_start_identifier when calling WordsApi.get_range_text' if @api_client.config.client_side_validation && request.range_start_identifier.nil?

        # resource path
        local_var_path = '/words/{name}/range/{rangeStartIdentifier}/{rangeEndIdentifier}'[1..-1]
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.nil? ? '' : request.name.to_s)
        local_var_path = local_var_path.sub('{' + downcase_first_letter('RangeStartIdentifier') + '}', request.range_start_identifier.nil? ? '' : request.range_start_identifier.to_s)
        local_var_path = local_var_path.sub('{' + downcase_first_letter('RangeEndIdentifier') + '}', request.range_end_identifier.nil? ? '' : request.range_end_identifier.to_s)
        local_var_path = local_var_path.sub('//', '/')

        # query parameters
        query_params = {}
        query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
        query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
        query_params[downcase_first_letter('LoadEncoding')] = request.load_encoding unless request.load_encoding.nil?
        query_params[downcase_first_letter('Password')] = request.password unless request.password.nil?

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
        auth_names = ['JWT']

        data, status_code, headers = @api_client.call_api(:GET, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names,
                                                        return_type: 'RangeTextResponse')
        if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#get_range_text\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
        end
        [data, status_code, headers]
    end

    # This resource represents run of text contained in the document.
    # @param request GetRunRequest
    # @return [RunResponse]
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
    # @param request GetRunRequest
    # @return [Array<(RunResponse, Fixnum, Hash)>]
    # RunResponse data, response status code and response headers
    private def get_run_with_http_info(request)
        raise ArgumentError, 'Incorrect request type' unless request.is_a? GetRunRequest

        @api_client.config.logger.debug 'Calling API: WordsApi.get_run ...' if @api_client.config.debugging
        # verify the required parameter 'name' is set
        raise ArgumentError, 'Missing the required parameter name when calling WordsApi.get_run' if @api_client.config.client_side_validation && request.name.nil?
        # verify the required parameter 'paragraph_path' is set
        raise ArgumentError, 'Missing the required parameter paragraph_path when calling WordsApi.get_run' if @api_client.config.client_side_validation && request.paragraph_path.nil?
        # verify the required parameter 'index' is set
        raise ArgumentError, 'Missing the required parameter index when calling WordsApi.get_run' if @api_client.config.client_side_validation && request.index.nil?

        # resource path
        local_var_path = '/words/{name}/{paragraphPath}/runs/{index}'[1..-1]
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.nil? ? '' : request.name.to_s)
        local_var_path = local_var_path.sub('{' + downcase_first_letter('ParagraphPath') + '}', request.paragraph_path.nil? ? '' : request.paragraph_path.to_s)
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Index') + '}', request.index.nil? ? '' : request.index.to_s)
        local_var_path = local_var_path.sub('//', '/')

        # query parameters
        query_params = {}
        query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
        query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
        query_params[downcase_first_letter('LoadEncoding')] = request.load_encoding unless request.load_encoding.nil?
        query_params[downcase_first_letter('Password')] = request.password unless request.password.nil?

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
        auth_names = ['JWT']

        data, status_code, headers = @api_client.call_api(:GET, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names,
                                                        return_type: 'RunResponse')
        if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#get_run\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
        end
        [data, status_code, headers]
    end

    # This resource represents font of run.
    # @param request GetRunFontRequest
    # @return [FontResponse]
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
    # @param request GetRunFontRequest
    # @return [Array<(FontResponse, Fixnum, Hash)>]
    # FontResponse data, response status code and response headers
    private def get_run_font_with_http_info(request)
        raise ArgumentError, 'Incorrect request type' unless request.is_a? GetRunFontRequest

        @api_client.config.logger.debug 'Calling API: WordsApi.get_run_font ...' if @api_client.config.debugging
        # verify the required parameter 'name' is set
        raise ArgumentError, 'Missing the required parameter name when calling WordsApi.get_run_font' if @api_client.config.client_side_validation && request.name.nil?
        # verify the required parameter 'paragraph_path' is set
        raise ArgumentError, 'Missing the required parameter paragraph_path when calling WordsApi.get_run_font' if @api_client.config.client_side_validation && request.paragraph_path.nil?
        # verify the required parameter 'index' is set
        raise ArgumentError, 'Missing the required parameter index when calling WordsApi.get_run_font' if @api_client.config.client_side_validation && request.index.nil?

        # resource path
        local_var_path = '/words/{name}/{paragraphPath}/runs/{index}/font'[1..-1]
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.nil? ? '' : request.name.to_s)
        local_var_path = local_var_path.sub('{' + downcase_first_letter('ParagraphPath') + '}', request.paragraph_path.nil? ? '' : request.paragraph_path.to_s)
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Index') + '}', request.index.nil? ? '' : request.index.to_s)
        local_var_path = local_var_path.sub('//', '/')

        # query parameters
        query_params = {}
        query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
        query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
        query_params[downcase_first_letter('LoadEncoding')] = request.load_encoding unless request.load_encoding.nil?
        query_params[downcase_first_letter('Password')] = request.password unless request.password.nil?

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
        auth_names = ['JWT']

        data, status_code, headers = @api_client.call_api(:GET, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names,
                                                        return_type: 'FontResponse')
        if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#get_run_font\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
        end
        [data, status_code, headers]
    end

    # This resource represents collection of runs in the paragraph.
    # @param request GetRunsRequest
    # @return [RunsResponse]
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
    # @param request GetRunsRequest
    # @return [Array<(RunsResponse, Fixnum, Hash)>]
    # RunsResponse data, response status code and response headers
    private def get_runs_with_http_info(request)
        raise ArgumentError, 'Incorrect request type' unless request.is_a? GetRunsRequest

        @api_client.config.logger.debug 'Calling API: WordsApi.get_runs ...' if @api_client.config.debugging
        # verify the required parameter 'name' is set
        raise ArgumentError, 'Missing the required parameter name when calling WordsApi.get_runs' if @api_client.config.client_side_validation && request.name.nil?
        # verify the required parameter 'paragraph_path' is set
        raise ArgumentError, 'Missing the required parameter paragraph_path when calling WordsApi.get_runs' if @api_client.config.client_side_validation && request.paragraph_path.nil?

        # resource path
        local_var_path = '/words/{name}/{paragraphPath}/runs'[1..-1]
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.nil? ? '' : request.name.to_s)
        local_var_path = local_var_path.sub('{' + downcase_first_letter('ParagraphPath') + '}', request.paragraph_path.nil? ? '' : request.paragraph_path.to_s)
        local_var_path = local_var_path.sub('//', '/')

        # query parameters
        query_params = {}
        query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
        query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
        query_params[downcase_first_letter('LoadEncoding')] = request.load_encoding unless request.load_encoding.nil?
        query_params[downcase_first_letter('Password')] = request.password unless request.password.nil?

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
        auth_names = ['JWT']

        data, status_code, headers = @api_client.call_api(:GET, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names,
                                                        return_type: 'RunsResponse')
        if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#get_runs\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
        end
        [data, status_code, headers]
    end

    # Gets document section by index.
    # @param request GetSectionRequest
    # @return [SectionResponse]
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
        local_var_path = '/words/{name}/sections/{sectionIndex}'[1..-1]
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.nil? ? '' : request.name.to_s)
        local_var_path = local_var_path.sub('{' + downcase_first_letter('SectionIndex') + '}', request.section_index.nil? ? '' : request.section_index.to_s)
        local_var_path = local_var_path.sub('//', '/')

        # query parameters
        query_params = {}
        query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
        query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
        query_params[downcase_first_letter('LoadEncoding')] = request.load_encoding unless request.load_encoding.nil?
        query_params[downcase_first_letter('Password')] = request.password unless request.password.nil?

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
        auth_names = ['JWT']

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

    # Gets page setup of section.
    # @param request GetSectionPageSetupRequest
    # @return [SectionPageSetupResponse]
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
        local_var_path = '/words/{name}/sections/{sectionIndex}/pageSetup'[1..-1]
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.nil? ? '' : request.name.to_s)
        local_var_path = local_var_path.sub('{' + downcase_first_letter('SectionIndex') + '}', request.section_index.nil? ? '' : request.section_index.to_s)
        local_var_path = local_var_path.sub('//', '/')

        # query parameters
        query_params = {}
        query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
        query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
        query_params[downcase_first_letter('LoadEncoding')] = request.load_encoding unless request.load_encoding.nil?
        query_params[downcase_first_letter('Password')] = request.password unless request.password.nil?

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
        auth_names = ['JWT']

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

    # Returns a list of sections that are contained in the document.
    # @param request GetSectionsRequest
    # @return [SectionLinkCollectionResponse]
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
    # @param request GetSectionsRequest
    # @return [Array<(SectionLinkCollectionResponse, Fixnum, Hash)>]
    # SectionLinkCollectionResponse data, response status code and response headers
    private def get_sections_with_http_info(request)
        raise ArgumentError, 'Incorrect request type' unless request.is_a? GetSectionsRequest

        @api_client.config.logger.debug 'Calling API: WordsApi.get_sections ...' if @api_client.config.debugging
        # verify the required parameter 'name' is set
        raise ArgumentError, 'Missing the required parameter name when calling WordsApi.get_sections' if @api_client.config.client_side_validation && request.name.nil?

        # resource path
        local_var_path = '/words/{name}/sections'[1..-1]
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.nil? ? '' : request.name.to_s)
        local_var_path = local_var_path.sub('//', '/')

        # query parameters
        query_params = {}
        query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
        query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
        query_params[downcase_first_letter('LoadEncoding')] = request.load_encoding unless request.load_encoding.nil?
        query_params[downcase_first_letter('Password')] = request.password unless request.password.nil?

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
        auth_names = ['JWT']

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

    # This resource represents one of the styles contained in the document.
    # @param request GetStyleRequest
    # @return [StyleResponse]
    def get_style(request)
        begin
        data, _status_code, _headers = get_style_with_http_info(request)
        rescue ApiError => e
            if e.code == 401
            request_token
            data, _status_code, _headers = get_style_with_http_info(request)
            else
            raise
            end
        end
        data
    end

    # This resource represents one of the styles contained in the document.
    # @param request GetStyleRequest
    # @return [Array<(StyleResponse, Fixnum, Hash)>]
    # StyleResponse data, response status code and response headers
    private def get_style_with_http_info(request)
        raise ArgumentError, 'Incorrect request type' unless request.is_a? GetStyleRequest

        @api_client.config.logger.debug 'Calling API: WordsApi.get_style ...' if @api_client.config.debugging
        # verify the required parameter 'name' is set
        raise ArgumentError, 'Missing the required parameter name when calling WordsApi.get_style' if @api_client.config.client_side_validation && request.name.nil?
        # verify the required parameter 'style_name' is set
        raise ArgumentError, 'Missing the required parameter style_name when calling WordsApi.get_style' if @api_client.config.client_side_validation && request.style_name.nil?

        # resource path
        local_var_path = '/words/{name}/styles/{styleName}'[1..-1]
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.nil? ? '' : request.name.to_s)
        local_var_path = local_var_path.sub('{' + downcase_first_letter('StyleName') + '}', request.style_name.nil? ? '' : request.style_name.to_s)
        local_var_path = local_var_path.sub('//', '/')

        # query parameters
        query_params = {}
        query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
        query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
        query_params[downcase_first_letter('LoadEncoding')] = request.load_encoding unless request.load_encoding.nil?
        query_params[downcase_first_letter('Password')] = request.password unless request.password.nil?

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
        auth_names = ['JWT']

        data, status_code, headers = @api_client.call_api(:GET, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names,
                                                        return_type: 'StyleResponse')
        if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#get_style\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
        end
        [data, status_code, headers]
    end

    # Gets a style from the document node.
    # @param request GetStyleFromDocumentElementRequest
    # @return [StyleResponse]
    def get_style_from_document_element(request)
        begin
        data, _status_code, _headers = get_style_from_document_element_with_http_info(request)
        rescue ApiError => e
            if e.code == 401
            request_token
            data, _status_code, _headers = get_style_from_document_element_with_http_info(request)
            else
            raise
            end
        end
        data
    end

    # Gets a style from the document node.
    # @param request GetStyleFromDocumentElementRequest
    # @return [Array<(StyleResponse, Fixnum, Hash)>]
    # StyleResponse data, response status code and response headers
    private def get_style_from_document_element_with_http_info(request)
        raise ArgumentError, 'Incorrect request type' unless request.is_a? GetStyleFromDocumentElementRequest

        @api_client.config.logger.debug 'Calling API: WordsApi.get_style_from_document_element ...' if @api_client.config.debugging
        # verify the required parameter 'name' is set
        raise ArgumentError, 'Missing the required parameter name when calling WordsApi.get_style_from_document_element' if @api_client.config.client_side_validation && request.name.nil?
        # verify the required parameter 'styled_node_path' is set
        raise ArgumentError, 'Missing the required parameter styled_node_path when calling WordsApi.get_style_from_document_element' if @api_client.config.client_side_validation && request.styled_node_path.nil?

        # resource path
        local_var_path = '/words/{name}/{styledNodePath}/style'[1..-1]
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.nil? ? '' : request.name.to_s)
        local_var_path = local_var_path.sub('{' + downcase_first_letter('StyledNodePath') + '}', request.styled_node_path.nil? ? '' : request.styled_node_path.to_s)
        local_var_path = local_var_path.sub('//', '/')

        # query parameters
        query_params = {}
        query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
        query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
        query_params[downcase_first_letter('LoadEncoding')] = request.load_encoding unless request.load_encoding.nil?
        query_params[downcase_first_letter('Password')] = request.password unless request.password.nil?

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
        auth_names = ['JWT']

        data, status_code, headers = @api_client.call_api(:GET, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names,
                                                        return_type: 'StyleResponse')
        if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#get_style_from_document_element\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
        end
        [data, status_code, headers]
    end

    # Returns a list of styles contained in the document.
    # @param request GetStylesRequest
    # @return [StylesResponse]
    def get_styles(request)
        begin
        data, _status_code, _headers = get_styles_with_http_info(request)
        rescue ApiError => e
            if e.code == 401
            request_token
            data, _status_code, _headers = get_styles_with_http_info(request)
            else
            raise
            end
        end
        data
    end

    # Returns a list of styles contained in the document.
    # @param request GetStylesRequest
    # @return [Array<(StylesResponse, Fixnum, Hash)>]
    # StylesResponse data, response status code and response headers
    private def get_styles_with_http_info(request)
        raise ArgumentError, 'Incorrect request type' unless request.is_a? GetStylesRequest

        @api_client.config.logger.debug 'Calling API: WordsApi.get_styles ...' if @api_client.config.debugging
        # verify the required parameter 'name' is set
        raise ArgumentError, 'Missing the required parameter name when calling WordsApi.get_styles' if @api_client.config.client_side_validation && request.name.nil?

        # resource path
        local_var_path = '/words/{name}/styles'[1..-1]
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.nil? ? '' : request.name.to_s)
        local_var_path = local_var_path.sub('//', '/')

        # query parameters
        query_params = {}
        query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
        query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
        query_params[downcase_first_letter('LoadEncoding')] = request.load_encoding unless request.load_encoding.nil?
        query_params[downcase_first_letter('Password')] = request.password unless request.password.nil?

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
        auth_names = ['JWT']

        data, status_code, headers = @api_client.call_api(:GET, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names,
                                                        return_type: 'StylesResponse')
        if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#get_styles\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
        end
        [data, status_code, headers]
    end

    # Returns a table.
    # @param request GetTableRequest
    # @return [TableResponse]
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
        local_var_path = '/words/{name}/{nodePath}/tables/{index}'[1..-1]
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.nil? ? '' : request.name.to_s)
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Index') + '}', request.index.nil? ? '' : request.index.to_s)
        local_var_path = local_var_path.sub('{' + downcase_first_letter('NodePath') + '}', request.node_path.nil? ? '' : request.node_path.to_s)
        local_var_path = local_var_path.sub('//', '/')

        # query parameters
        query_params = {}
        query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
        query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
        query_params[downcase_first_letter('LoadEncoding')] = request.load_encoding unless request.load_encoding.nil?
        query_params[downcase_first_letter('Password')] = request.password unless request.password.nil?

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
        auth_names = ['JWT']

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

    # Returns a table cell.
    # @param request GetTableCellRequest
    # @return [TableCellResponse]
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
        local_var_path = '/words/{name}/{tableRowPath}/cells/{index}'[1..-1]
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.nil? ? '' : request.name.to_s)
        local_var_path = local_var_path.sub('{' + downcase_first_letter('TableRowPath') + '}', request.table_row_path.nil? ? '' : request.table_row_path.to_s)
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Index') + '}', request.index.nil? ? '' : request.index.to_s)
        local_var_path = local_var_path.sub('//', '/')

        # query parameters
        query_params = {}
        query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
        query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
        query_params[downcase_first_letter('LoadEncoding')] = request.load_encoding unless request.load_encoding.nil?
        query_params[downcase_first_letter('Password')] = request.password unless request.password.nil?

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
        auth_names = ['JWT']

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

    # Returns a table cell format.
    # @param request GetTableCellFormatRequest
    # @return [TableCellFormatResponse]
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
        local_var_path = '/words/{name}/{tableRowPath}/cells/{index}/cellformat'[1..-1]
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.nil? ? '' : request.name.to_s)
        local_var_path = local_var_path.sub('{' + downcase_first_letter('TableRowPath') + '}', request.table_row_path.nil? ? '' : request.table_row_path.to_s)
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Index') + '}', request.index.nil? ? '' : request.index.to_s)
        local_var_path = local_var_path.sub('//', '/')

        # query parameters
        query_params = {}
        query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
        query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
        query_params[downcase_first_letter('LoadEncoding')] = request.load_encoding unless request.load_encoding.nil?
        query_params[downcase_first_letter('Password')] = request.password unless request.password.nil?

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
        auth_names = ['JWT']

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

    # Returns a table properties.
    # @param request GetTablePropertiesRequest
    # @return [TablePropertiesResponse]
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
        local_var_path = '/words/{name}/{nodePath}/tables/{index}/properties'[1..-1]
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.nil? ? '' : request.name.to_s)
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Index') + '}', request.index.nil? ? '' : request.index.to_s)
        local_var_path = local_var_path.sub('{' + downcase_first_letter('NodePath') + '}', request.node_path.nil? ? '' : request.node_path.to_s)
        local_var_path = local_var_path.sub('//', '/')

        # query parameters
        query_params = {}
        query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
        query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
        query_params[downcase_first_letter('LoadEncoding')] = request.load_encoding unless request.load_encoding.nil?
        query_params[downcase_first_letter('Password')] = request.password unless request.password.nil?

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
        auth_names = ['JWT']

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

    # Returns a table row.
    # @param request GetTableRowRequest
    # @return [TableRowResponse]
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
        local_var_path = '/words/{name}/{tablePath}/rows/{index}'[1..-1]
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.nil? ? '' : request.name.to_s)
        local_var_path = local_var_path.sub('{' + downcase_first_letter('TablePath') + '}', request.table_path.nil? ? '' : request.table_path.to_s)
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Index') + '}', request.index.nil? ? '' : request.index.to_s)
        local_var_path = local_var_path.sub('//', '/')

        # query parameters
        query_params = {}
        query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
        query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
        query_params[downcase_first_letter('LoadEncoding')] = request.load_encoding unless request.load_encoding.nil?
        query_params[downcase_first_letter('Password')] = request.password unless request.password.nil?

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
        auth_names = ['JWT']

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

    # Returns a table row format.
    # @param request GetTableRowFormatRequest
    # @return [TableRowFormatResponse]
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
        local_var_path = '/words/{name}/{tablePath}/rows/{index}/rowformat'[1..-1]
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.nil? ? '' : request.name.to_s)
        local_var_path = local_var_path.sub('{' + downcase_first_letter('TablePath') + '}', request.table_path.nil? ? '' : request.table_path.to_s)
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Index') + '}', request.index.nil? ? '' : request.index.to_s)
        local_var_path = local_var_path.sub('//', '/')

        # query parameters
        query_params = {}
        query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
        query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
        query_params[downcase_first_letter('LoadEncoding')] = request.load_encoding unless request.load_encoding.nil?
        query_params[downcase_first_letter('Password')] = request.password unless request.password.nil?

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
        auth_names = ['JWT']

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

    # Returns a list of tables that are contained in the document.
    # @param request GetTablesRequest
    # @return [TableLinkCollectionResponse]
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
    # @param request GetTablesRequest
    # @return [Array<(TableLinkCollectionResponse, Fixnum, Hash)>]
    # TableLinkCollectionResponse data, response status code and response headers
    private def get_tables_with_http_info(request)
        raise ArgumentError, 'Incorrect request type' unless request.is_a? GetTablesRequest

        @api_client.config.logger.debug 'Calling API: WordsApi.get_tables ...' if @api_client.config.debugging
        # verify the required parameter 'name' is set
        raise ArgumentError, 'Missing the required parameter name when calling WordsApi.get_tables' if @api_client.config.client_side_validation && request.name.nil?

        # resource path
        local_var_path = '/words/{name}/{nodePath}/tables'[1..-1]
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.nil? ? '' : request.name.to_s)
        local_var_path = local_var_path.sub('{' + downcase_first_letter('NodePath') + '}', request.node_path.nil? ? '' : request.node_path.to_s)
        local_var_path = local_var_path.sub('//', '/')

        # query parameters
        query_params = {}
        query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
        query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
        query_params[downcase_first_letter('LoadEncoding')] = request.load_encoding unless request.load_encoding.nil?
        query_params[downcase_first_letter('Password')] = request.password unless request.password.nil?

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
        auth_names = ['JWT']

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

    # Adds comment to document, returns inserted comment data.
    # @param request InsertCommentRequest
    # @return [CommentResponse]
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
    # @param request InsertCommentRequest
    # @return [Array<(CommentResponse, Fixnum, Hash)>]
    # CommentResponse data, response status code and response headers
    private def insert_comment_with_http_info(request)
        raise ArgumentError, 'Incorrect request type' unless request.is_a? InsertCommentRequest

        @api_client.config.logger.debug 'Calling API: WordsApi.insert_comment ...' if @api_client.config.debugging
        # verify the required parameter 'name' is set
        raise ArgumentError, 'Missing the required parameter name when calling WordsApi.insert_comment' if @api_client.config.client_side_validation && request.name.nil?
        # verify the required parameter 'comment' is set
        raise ArgumentError, 'Missing the required parameter comment when calling WordsApi.insert_comment' if @api_client.config.client_side_validation && request.comment.nil?

        # resource path
        local_var_path = '/words/{name}/comments'[1..-1]
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.nil? ? '' : request.name.to_s)
        local_var_path = local_var_path.sub('//', '/')

        # query parameters
        query_params = {}
        query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
        query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
        query_params[downcase_first_letter('LoadEncoding')] = request.load_encoding unless request.load_encoding.nil?
        query_params[downcase_first_letter('Password')] = request.password unless request.password.nil?
        query_params[downcase_first_letter('DestFileName')] = request.dest_file_name unless request.dest_file_name.nil?
        query_params[downcase_first_letter('RevisionAuthor')] = request.revision_author unless request.revision_author.nil?
        query_params[downcase_first_letter('RevisionDateTime')] = request.revision_date_time unless request.revision_date_time.nil?

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
        auth_names = ['JWT']

        data, status_code, headers = @api_client.call_api(:POST, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names,
                                                        return_type: 'CommentResponse')
        if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#insert_comment\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
        end
        [data, status_code, headers]
    end

    # Adds drawing object to document, returns added  drawing object's data.
    # @param request InsertDrawingObjectRequest
    # @return [DrawingObjectResponse]
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

    # Adds drawing object to document, returns added  drawing object's data.
    # @param request InsertDrawingObjectRequest
    # @return [Array<(DrawingObjectResponse, Fixnum, Hash)>]
    # DrawingObjectResponse data, response status code and response headers
    private def insert_drawing_object_with_http_info(request)
        raise ArgumentError, 'Incorrect request type' unless request.is_a? InsertDrawingObjectRequest

        @api_client.config.logger.debug 'Calling API: WordsApi.insert_drawing_object ...' if @api_client.config.debugging
        # verify the required parameter 'name' is set
        raise ArgumentError, 'Missing the required parameter name when calling WordsApi.insert_drawing_object' if @api_client.config.client_side_validation && request.name.nil?
        # verify the required parameter 'drawing_object' is set
        raise ArgumentError, 'Missing the required parameter drawing_object when calling WordsApi.insert_drawing_object' if @api_client.config.client_side_validation && request.drawing_object.nil?
        # verify the required parameter 'image_file' is set
        raise ArgumentError, 'Missing the required parameter image_file when calling WordsApi.insert_drawing_object' if @api_client.config.client_side_validation && request.image_file.nil?

        # resource path
        local_var_path = '/words/{name}/{nodePath}/drawingObjects'[1..-1]
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.nil? ? '' : request.name.to_s)
        local_var_path = local_var_path.sub('{' + downcase_first_letter('NodePath') + '}', request.node_path.nil? ? '' : request.node_path.to_s)
        local_var_path = local_var_path.sub('//', '/')

        # query parameters
        query_params = {}
        query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
        query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
        query_params[downcase_first_letter('LoadEncoding')] = request.load_encoding unless request.load_encoding.nil?
        query_params[downcase_first_letter('Password')] = request.password unless request.password.nil?
        query_params[downcase_first_letter('DestFileName')] = request.dest_file_name unless request.dest_file_name.nil?
        query_params[downcase_first_letter('RevisionAuthor')] = request.revision_author unless request.revision_author.nil?
        query_params[downcase_first_letter('RevisionDateTime')] = request.revision_date_time unless request.revision_date_time.nil?

        # header parameters
        header_params = {}
        # HTTP header 'Accept' (if needed)
        header_params['Accept'] = @api_client.select_header_accept(['application/xml', 'application/json'])
        # HTTP header 'Content-Type'
        header_params['Content-Type'] = @api_client.select_header_content_type(['multipart/form-data'])

        # form parameters
        form_params = {}
        form_params[downcase_first_letter('DrawingObject')] = request.drawing_object.to_body.to_json
        form_params[downcase_first_letter('ImageFile')] = request.image_file

        # http body (model)
        post_body = nil
        auth_names = ['JWT']

        data, status_code, headers = @api_client.call_api(:POST, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names,
                                                        return_type: 'DrawingObjectResponse')
        if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#insert_drawing_object\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
        end
        [data, status_code, headers]
    end

    # Adds field to document, returns inserted field's data.
    # @param request InsertFieldRequest
    # @return [FieldResponse]
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

    # Adds field to document, returns inserted field's data.
    # @param request InsertFieldRequest
    # @return [Array<(FieldResponse, Fixnum, Hash)>]
    # FieldResponse data, response status code and response headers
    private def insert_field_with_http_info(request)
        raise ArgumentError, 'Incorrect request type' unless request.is_a? InsertFieldRequest

        @api_client.config.logger.debug 'Calling API: WordsApi.insert_field ...' if @api_client.config.debugging
        # verify the required parameter 'name' is set
        raise ArgumentError, 'Missing the required parameter name when calling WordsApi.insert_field' if @api_client.config.client_side_validation && request.name.nil?
        # verify the required parameter 'field' is set
        raise ArgumentError, 'Missing the required parameter field when calling WordsApi.insert_field' if @api_client.config.client_side_validation && request.field.nil?

        # resource path
        local_var_path = '/words/{name}/{nodePath}/fields'[1..-1]
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.nil? ? '' : request.name.to_s)
        local_var_path = local_var_path.sub('{' + downcase_first_letter('NodePath') + '}', request.node_path.nil? ? '' : request.node_path.to_s)
        local_var_path = local_var_path.sub('//', '/')

        # query parameters
        query_params = {}
        query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
        query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
        query_params[downcase_first_letter('LoadEncoding')] = request.load_encoding unless request.load_encoding.nil?
        query_params[downcase_first_letter('Password')] = request.password unless request.password.nil?
        query_params[downcase_first_letter('DestFileName')] = request.dest_file_name unless request.dest_file_name.nil?
        query_params[downcase_first_letter('RevisionAuthor')] = request.revision_author unless request.revision_author.nil?
        query_params[downcase_first_letter('RevisionDateTime')] = request.revision_date_time unless request.revision_date_time.nil?
        query_params[downcase_first_letter('InsertBeforeNode')] = request.insert_before_node unless request.insert_before_node.nil?

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
        auth_names = ['JWT']

        data, status_code, headers = @api_client.call_api(:POST, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names,
                                                        return_type: 'FieldResponse')
        if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#insert_field\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
        end
        [data, status_code, headers]
    end

    # Adds footnote to document, returns added footnote's data.
    # @param request InsertFootnoteRequest
    # @return [FootnoteResponse]
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

    # Adds footnote to document, returns added footnote's data.
    # @param request InsertFootnoteRequest
    # @return [Array<(FootnoteResponse, Fixnum, Hash)>]
    # FootnoteResponse data, response status code and response headers
    private def insert_footnote_with_http_info(request)
        raise ArgumentError, 'Incorrect request type' unless request.is_a? InsertFootnoteRequest

        @api_client.config.logger.debug 'Calling API: WordsApi.insert_footnote ...' if @api_client.config.debugging
        # verify the required parameter 'name' is set
        raise ArgumentError, 'Missing the required parameter name when calling WordsApi.insert_footnote' if @api_client.config.client_side_validation && request.name.nil?
        # verify the required parameter 'footnote_dto' is set
        raise ArgumentError, 'Missing the required parameter footnote_dto when calling WordsApi.insert_footnote' if @api_client.config.client_side_validation && request.footnote_dto.nil?

        # resource path
        local_var_path = '/words/{name}/{nodePath}/footnotes'[1..-1]
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.nil? ? '' : request.name.to_s)
        local_var_path = local_var_path.sub('{' + downcase_first_letter('NodePath') + '}', request.node_path.nil? ? '' : request.node_path.to_s)
        local_var_path = local_var_path.sub('//', '/')

        # query parameters
        query_params = {}
        query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
        query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
        query_params[downcase_first_letter('LoadEncoding')] = request.load_encoding unless request.load_encoding.nil?
        query_params[downcase_first_letter('Password')] = request.password unless request.password.nil?
        query_params[downcase_first_letter('DestFileName')] = request.dest_file_name unless request.dest_file_name.nil?
        query_params[downcase_first_letter('RevisionAuthor')] = request.revision_author unless request.revision_author.nil?
        query_params[downcase_first_letter('RevisionDateTime')] = request.revision_date_time unless request.revision_date_time.nil?

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
        auth_names = ['JWT']

        data, status_code, headers = @api_client.call_api(:POST, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names,
                                                        return_type: 'FootnoteResponse')
        if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#insert_footnote\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
        end
        [data, status_code, headers]
    end

    # Adds form field to paragraph, returns added form field's data.
    # @param request InsertFormFieldRequest
    # @return [FormFieldResponse]
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

    # Adds form field to paragraph, returns added form field's data.
    # @param request InsertFormFieldRequest
    # @return [Array<(FormFieldResponse, Fixnum, Hash)>]
    # FormFieldResponse data, response status code and response headers
    private def insert_form_field_with_http_info(request)
        raise ArgumentError, 'Incorrect request type' unless request.is_a? InsertFormFieldRequest

        @api_client.config.logger.debug 'Calling API: WordsApi.insert_form_field ...' if @api_client.config.debugging
        # verify the required parameter 'name' is set
        raise ArgumentError, 'Missing the required parameter name when calling WordsApi.insert_form_field' if @api_client.config.client_side_validation && request.name.nil?
        # verify the required parameter 'form_field' is set
        raise ArgumentError, 'Missing the required parameter form_field when calling WordsApi.insert_form_field' if @api_client.config.client_side_validation && request.form_field.nil?

        # resource path
        local_var_path = '/words/{name}/{nodePath}/formfields'[1..-1]
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.nil? ? '' : request.name.to_s)
        local_var_path = local_var_path.sub('{' + downcase_first_letter('NodePath') + '}', request.node_path.nil? ? '' : request.node_path.to_s)
        local_var_path = local_var_path.sub('//', '/')

        # query parameters
        query_params = {}
        query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
        query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
        query_params[downcase_first_letter('LoadEncoding')] = request.load_encoding unless request.load_encoding.nil?
        query_params[downcase_first_letter('Password')] = request.password unless request.password.nil?
        query_params[downcase_first_letter('DestFileName')] = request.dest_file_name unless request.dest_file_name.nil?
        query_params[downcase_first_letter('RevisionAuthor')] = request.revision_author unless request.revision_author.nil?
        query_params[downcase_first_letter('RevisionDateTime')] = request.revision_date_time unless request.revision_date_time.nil?
        query_params[downcase_first_letter('InsertBeforeNode')] = request.insert_before_node unless request.insert_before_node.nil?

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
        auth_names = ['JWT']

        data, status_code, headers = @api_client.call_api(:POST, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names,
                                                        return_type: 'FormFieldResponse')
        if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#insert_form_field\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
        end
        [data, status_code, headers]
    end

    # Inserts to document header or footer.
    # @param request InsertHeaderFooterRequest
    # @return [HeaderFooterResponse]
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
    # @param request InsertHeaderFooterRequest
    # @return [Array<(HeaderFooterResponse, Fixnum, Hash)>]
    # HeaderFooterResponse data, response status code and response headers
    private def insert_header_footer_with_http_info(request)
        raise ArgumentError, 'Incorrect request type' unless request.is_a? InsertHeaderFooterRequest

        @api_client.config.logger.debug 'Calling API: WordsApi.insert_header_footer ...' if @api_client.config.debugging
        # verify the required parameter 'name' is set
        raise ArgumentError, 'Missing the required parameter name when calling WordsApi.insert_header_footer' if @api_client.config.client_side_validation && request.name.nil?
        # verify the required parameter 'header_footer_type' is set
        raise ArgumentError, 'Missing the required parameter header_footer_type when calling WordsApi.insert_header_footer' if @api_client.config.client_side_validation && request.header_footer_type.nil?
        # verify the required parameter 'section_path' is set
        raise ArgumentError, 'Missing the required parameter section_path when calling WordsApi.insert_header_footer' if @api_client.config.client_side_validation && request.section_path.nil?

        # resource path
        local_var_path = '/words/{name}/{sectionPath}/headersfooters'[1..-1]
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.nil? ? '' : request.name.to_s)
        local_var_path = local_var_path.sub('{' + downcase_first_letter('SectionPath') + '}', request.section_path.nil? ? '' : request.section_path.to_s)
        local_var_path = local_var_path.sub('//', '/')

        # query parameters
        query_params = {}
        query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
        query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
        query_params[downcase_first_letter('LoadEncoding')] = request.load_encoding unless request.load_encoding.nil?
        query_params[downcase_first_letter('Password')] = request.password unless request.password.nil?
        query_params[downcase_first_letter('DestFileName')] = request.dest_file_name unless request.dest_file_name.nil?
        query_params[downcase_first_letter('RevisionAuthor')] = request.revision_author unless request.revision_author.nil?
        query_params[downcase_first_letter('RevisionDateTime')] = request.revision_date_time unless request.revision_date_time.nil?

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
        auth_names = ['JWT']

        data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names,
                                                        return_type: 'HeaderFooterResponse')
        if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#insert_header_footer\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
        end
        [data, status_code, headers]
    end

    # Adds list to document, returns added list's data.
    # @param request InsertListRequest
    # @return [ListResponse]
    def insert_list(request)
        begin
        data, _status_code, _headers = insert_list_with_http_info(request)
        rescue ApiError => e
            if e.code == 401
            request_token
            data, _status_code, _headers = insert_list_with_http_info(request)
            else
            raise
            end
        end
        data
    end

    # Adds list to document, returns added list's data.
    # @param request InsertListRequest
    # @return [Array<(ListResponse, Fixnum, Hash)>]
    # ListResponse data, response status code and response headers
    private def insert_list_with_http_info(request)
        raise ArgumentError, 'Incorrect request type' unless request.is_a? InsertListRequest

        @api_client.config.logger.debug 'Calling API: WordsApi.insert_list ...' if @api_client.config.debugging
        # verify the required parameter 'name' is set
        raise ArgumentError, 'Missing the required parameter name when calling WordsApi.insert_list' if @api_client.config.client_side_validation && request.name.nil?
        # verify the required parameter 'list_insert' is set
        raise ArgumentError, 'Missing the required parameter list_insert when calling WordsApi.insert_list' if @api_client.config.client_side_validation && request.list_insert.nil?

        # resource path
        local_var_path = '/words/{name}/lists'[1..-1]
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.nil? ? '' : request.name.to_s)
        local_var_path = local_var_path.sub('//', '/')

        # query parameters
        query_params = {}
        query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
        query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
        query_params[downcase_first_letter('LoadEncoding')] = request.load_encoding unless request.load_encoding.nil?
        query_params[downcase_first_letter('Password')] = request.password unless request.password.nil?
        query_params[downcase_first_letter('DestFileName')] = request.dest_file_name unless request.dest_file_name.nil?
        query_params[downcase_first_letter('RevisionAuthor')] = request.revision_author unless request.revision_author.nil?
        query_params[downcase_first_letter('RevisionDateTime')] = request.revision_date_time unless request.revision_date_time.nil?

        # header parameters
        header_params = {}
        # HTTP header 'Accept' (if needed)
        header_params['Accept'] = @api_client.select_header_accept(['application/xml', 'application/json'])
        # HTTP header 'Content-Type'
        header_params['Content-Type'] = @api_client.select_header_content_type(['application/xml', 'application/json'])

        # form parameters
        form_params = {}

        # http body (model)
        post_body = @api_client.object_to_http_body(request.list_insert)
        auth_names = ['JWT']

        data, status_code, headers = @api_client.call_api(:POST, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names,
                                                        return_type: 'ListResponse')
        if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#insert_list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
        end
        [data, status_code, headers]
    end

    # Insert or resplace tab stop if a tab stop with the position exists.
    # @param request InsertOrUpdateParagraphTabStopRequest
    # @return [TabStopsResponse]
    def insert_or_update_paragraph_tab_stop(request)
        begin
        data, _status_code, _headers = insert_or_update_paragraph_tab_stop_with_http_info(request)
        rescue ApiError => e
            if e.code == 401
            request_token
            data, _status_code, _headers = insert_or_update_paragraph_tab_stop_with_http_info(request)
            else
            raise
            end
        end
        data
    end

    # Insert or resplace tab stop if a tab stop with the position exists.
    # @param request InsertOrUpdateParagraphTabStopRequest
    # @return [Array<(TabStopsResponse, Fixnum, Hash)>]
    # TabStopsResponse data, response status code and response headers
    private def insert_or_update_paragraph_tab_stop_with_http_info(request)
        raise ArgumentError, 'Incorrect request type' unless request.is_a? InsertOrUpdateParagraphTabStopRequest

        @api_client.config.logger.debug 'Calling API: WordsApi.insert_or_update_paragraph_tab_stop ...' if @api_client.config.debugging
        # verify the required parameter 'name' is set
        raise ArgumentError, 'Missing the required parameter name when calling WordsApi.insert_or_update_paragraph_tab_stop' if @api_client.config.client_side_validation && request.name.nil?
        # verify the required parameter 'dto' is set
        raise ArgumentError, 'Missing the required parameter dto when calling WordsApi.insert_or_update_paragraph_tab_stop' if @api_client.config.client_side_validation && request.dto.nil?
        # verify the required parameter 'index' is set
        raise ArgumentError, 'Missing the required parameter index when calling WordsApi.insert_or_update_paragraph_tab_stop' if @api_client.config.client_side_validation && request.index.nil?

        # resource path
        local_var_path = '/words/{name}/{nodePath}/paragraphs/{index}/tabstops'[1..-1]
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.nil? ? '' : request.name.to_s)
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Index') + '}', request.index.nil? ? '' : request.index.to_s)
        local_var_path = local_var_path.sub('{' + downcase_first_letter('NodePath') + '}', request.node_path.nil? ? '' : request.node_path.to_s)
        local_var_path = local_var_path.sub('//', '/')

        # query parameters
        query_params = {}
        query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
        query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
        query_params[downcase_first_letter('LoadEncoding')] = request.load_encoding unless request.load_encoding.nil?
        query_params[downcase_first_letter('Password')] = request.password unless request.password.nil?
        query_params[downcase_first_letter('DestFileName')] = request.dest_file_name unless request.dest_file_name.nil?

        # header parameters
        header_params = {}
        # HTTP header 'Accept' (if needed)
        header_params['Accept'] = @api_client.select_header_accept(['application/xml', 'application/json'])
        # HTTP header 'Content-Type'
        header_params['Content-Type'] = @api_client.select_header_content_type(['application/xml', 'application/json'])

        # form parameters
        form_params = {}

        # http body (model)
        post_body = @api_client.object_to_http_body(request.dto)
        auth_names = ['JWT']

        data, status_code, headers = @api_client.call_api(:POST, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names,
                                                        return_type: 'TabStopsResponse')
        if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#insert_or_update_paragraph_tab_stop\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
        end
        [data, status_code, headers]
    end

    # Inserts document page numbers.
    # @param request InsertPageNumbersRequest
    # @return [DocumentResponse]
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
    # @param request InsertPageNumbersRequest
    # @return [Array<(DocumentResponse, Fixnum, Hash)>]
    # DocumentResponse data, response status code and response headers
    private def insert_page_numbers_with_http_info(request)
        raise ArgumentError, 'Incorrect request type' unless request.is_a? InsertPageNumbersRequest

        @api_client.config.logger.debug 'Calling API: WordsApi.insert_page_numbers ...' if @api_client.config.debugging
        # verify the required parameter 'name' is set
        raise ArgumentError, 'Missing the required parameter name when calling WordsApi.insert_page_numbers' if @api_client.config.client_side_validation && request.name.nil?
        # verify the required parameter 'page_number' is set
        raise ArgumentError, 'Missing the required parameter page_number when calling WordsApi.insert_page_numbers' if @api_client.config.client_side_validation && request.page_number.nil?

        # resource path
        local_var_path = '/words/{name}/PageNumbers'[1..-1]
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.nil? ? '' : request.name.to_s)
        local_var_path = local_var_path.sub('//', '/')

        # query parameters
        query_params = {}
        query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
        query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
        query_params[downcase_first_letter('LoadEncoding')] = request.load_encoding unless request.load_encoding.nil?
        query_params[downcase_first_letter('Password')] = request.password unless request.password.nil?
        query_params[downcase_first_letter('DestFileName')] = request.dest_file_name unless request.dest_file_name.nil?
        query_params[downcase_first_letter('RevisionAuthor')] = request.revision_author unless request.revision_author.nil?
        query_params[downcase_first_letter('RevisionDateTime')] = request.revision_date_time unless request.revision_date_time.nil?

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
        auth_names = ['JWT']

        data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names,
                                                        return_type: 'DocumentResponse')
        if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#insert_page_numbers\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
        end
        [data, status_code, headers]
    end

    # Adds paragraph to document, returns added paragraph's data.
    # @param request InsertParagraphRequest
    # @return [ParagraphResponse]
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

    # Adds paragraph to document, returns added paragraph's data.
    # @param request InsertParagraphRequest
    # @return [Array<(ParagraphResponse, Fixnum, Hash)>]
    # ParagraphResponse data, response status code and response headers
    private def insert_paragraph_with_http_info(request)
        raise ArgumentError, 'Incorrect request type' unless request.is_a? InsertParagraphRequest

        @api_client.config.logger.debug 'Calling API: WordsApi.insert_paragraph ...' if @api_client.config.debugging
        # verify the required parameter 'name' is set
        raise ArgumentError, 'Missing the required parameter name when calling WordsApi.insert_paragraph' if @api_client.config.client_side_validation && request.name.nil?
        # verify the required parameter 'paragraph' is set
        raise ArgumentError, 'Missing the required parameter paragraph when calling WordsApi.insert_paragraph' if @api_client.config.client_side_validation && request.paragraph.nil?

        # resource path
        local_var_path = '/words/{name}/{nodePath}/paragraphs'[1..-1]
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.nil? ? '' : request.name.to_s)
        local_var_path = local_var_path.sub('{' + downcase_first_letter('NodePath') + '}', request.node_path.nil? ? '' : request.node_path.to_s)
        local_var_path = local_var_path.sub('//', '/')

        # query parameters
        query_params = {}
        query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
        query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
        query_params[downcase_first_letter('LoadEncoding')] = request.load_encoding unless request.load_encoding.nil?
        query_params[downcase_first_letter('Password')] = request.password unless request.password.nil?
        query_params[downcase_first_letter('DestFileName')] = request.dest_file_name unless request.dest_file_name.nil?
        query_params[downcase_first_letter('RevisionAuthor')] = request.revision_author unless request.revision_author.nil?
        query_params[downcase_first_letter('RevisionDateTime')] = request.revision_date_time unless request.revision_date_time.nil?
        query_params[downcase_first_letter('InsertBeforeNode')] = request.insert_before_node unless request.insert_before_node.nil?

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
        auth_names = ['JWT']

        data, status_code, headers = @api_client.call_api(:POST, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names,
                                                        return_type: 'ParagraphResponse')
        if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#insert_paragraph\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
        end
        [data, status_code, headers]
    end

    # Adds run to document, returns added paragraph's data.
    # @param request InsertRunRequest
    # @return [RunResponse]
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

    # Adds run to document, returns added paragraph's data.
    # @param request InsertRunRequest
    # @return [Array<(RunResponse, Fixnum, Hash)>]
    # RunResponse data, response status code and response headers
    private def insert_run_with_http_info(request)
        raise ArgumentError, 'Incorrect request type' unless request.is_a? InsertRunRequest

        @api_client.config.logger.debug 'Calling API: WordsApi.insert_run ...' if @api_client.config.debugging
        # verify the required parameter 'name' is set
        raise ArgumentError, 'Missing the required parameter name when calling WordsApi.insert_run' if @api_client.config.client_side_validation && request.name.nil?
        # verify the required parameter 'paragraph_path' is set
        raise ArgumentError, 'Missing the required parameter paragraph_path when calling WordsApi.insert_run' if @api_client.config.client_side_validation && request.paragraph_path.nil?
        # verify the required parameter 'run' is set
        raise ArgumentError, 'Missing the required parameter run when calling WordsApi.insert_run' if @api_client.config.client_side_validation && request.run.nil?

        # resource path
        local_var_path = '/words/{name}/{paragraphPath}/runs'[1..-1]
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.nil? ? '' : request.name.to_s)
        local_var_path = local_var_path.sub('{' + downcase_first_letter('ParagraphPath') + '}', request.paragraph_path.nil? ? '' : request.paragraph_path.to_s)
        local_var_path = local_var_path.sub('//', '/')

        # query parameters
        query_params = {}
        query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
        query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
        query_params[downcase_first_letter('LoadEncoding')] = request.load_encoding unless request.load_encoding.nil?
        query_params[downcase_first_letter('Password')] = request.password unless request.password.nil?
        query_params[downcase_first_letter('DestFileName')] = request.dest_file_name unless request.dest_file_name.nil?
        query_params[downcase_first_letter('RevisionAuthor')] = request.revision_author unless request.revision_author.nil?
        query_params[downcase_first_letter('RevisionDateTime')] = request.revision_date_time unless request.revision_date_time.nil?
        query_params[downcase_first_letter('InsertBeforeNode')] = request.insert_before_node unless request.insert_before_node.nil?

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
        auth_names = ['JWT']

        data, status_code, headers = @api_client.call_api(:POST, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names,
                                                        return_type: 'RunResponse')
        if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#insert_run\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
        end
        [data, status_code, headers]
    end

    # Adds a style to the document, returns an added style.
    # @param request InsertStyleRequest
    # @return [StyleResponse]
    def insert_style(request)
        begin
        data, _status_code, _headers = insert_style_with_http_info(request)
        rescue ApiError => e
            if e.code == 401
            request_token
            data, _status_code, _headers = insert_style_with_http_info(request)
            else
            raise
            end
        end
        data
    end

    # Adds a style to the document, returns an added style.
    # @param request InsertStyleRequest
    # @return [Array<(StyleResponse, Fixnum, Hash)>]
    # StyleResponse data, response status code and response headers
    private def insert_style_with_http_info(request)
        raise ArgumentError, 'Incorrect request type' unless request.is_a? InsertStyleRequest

        @api_client.config.logger.debug 'Calling API: WordsApi.insert_style ...' if @api_client.config.debugging
        # verify the required parameter 'name' is set
        raise ArgumentError, 'Missing the required parameter name when calling WordsApi.insert_style' if @api_client.config.client_side_validation && request.name.nil?
        # verify the required parameter 'style_insert' is set
        raise ArgumentError, 'Missing the required parameter style_insert when calling WordsApi.insert_style' if @api_client.config.client_side_validation && request.style_insert.nil?

        # resource path
        local_var_path = '/words/{name}/styles/insert'[1..-1]
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.nil? ? '' : request.name.to_s)
        local_var_path = local_var_path.sub('//', '/')

        # query parameters
        query_params = {}
        query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
        query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
        query_params[downcase_first_letter('LoadEncoding')] = request.load_encoding unless request.load_encoding.nil?
        query_params[downcase_first_letter('Password')] = request.password unless request.password.nil?
        query_params[downcase_first_letter('DestFileName')] = request.dest_file_name unless request.dest_file_name.nil?
        query_params[downcase_first_letter('RevisionAuthor')] = request.revision_author unless request.revision_author.nil?
        query_params[downcase_first_letter('RevisionDateTime')] = request.revision_date_time unless request.revision_date_time.nil?

        # header parameters
        header_params = {}
        # HTTP header 'Accept' (if needed)
        header_params['Accept'] = @api_client.select_header_accept(['application/xml', 'application/json'])
        # HTTP header 'Content-Type'
        header_params['Content-Type'] = @api_client.select_header_content_type(['application/xml', 'application/json'])

        # form parameters
        form_params = {}

        # http body (model)
        post_body = @api_client.object_to_http_body(request.style_insert)
        auth_names = ['JWT']

        data, status_code, headers = @api_client.call_api(:POST, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names,
                                                        return_type: 'StyleResponse')
        if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#insert_style\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
        end
        [data, status_code, headers]
    end

    # Adds table to document, returns added table's data.
    # @param request InsertTableRequest
    # @return [TableResponse]
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

    # Adds table to document, returns added table's data.
    # @param request InsertTableRequest
    # @return [Array<(TableResponse, Fixnum, Hash)>]
    # TableResponse data, response status code and response headers
    private def insert_table_with_http_info(request)
        raise ArgumentError, 'Incorrect request type' unless request.is_a? InsertTableRequest

        @api_client.config.logger.debug 'Calling API: WordsApi.insert_table ...' if @api_client.config.debugging
        # verify the required parameter 'name' is set
        raise ArgumentError, 'Missing the required parameter name when calling WordsApi.insert_table' if @api_client.config.client_side_validation && request.name.nil?
        # verify the required parameter 'table' is set
        raise ArgumentError, 'Missing the required parameter table when calling WordsApi.insert_table' if @api_client.config.client_side_validation && request.table.nil?

        # resource path
        local_var_path = '/words/{name}/{nodePath}/tables'[1..-1]
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.nil? ? '' : request.name.to_s)
        local_var_path = local_var_path.sub('{' + downcase_first_letter('NodePath') + '}', request.node_path.nil? ? '' : request.node_path.to_s)
        local_var_path = local_var_path.sub('//', '/')

        # query parameters
        query_params = {}
        query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
        query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
        query_params[downcase_first_letter('LoadEncoding')] = request.load_encoding unless request.load_encoding.nil?
        query_params[downcase_first_letter('Password')] = request.password unless request.password.nil?
        query_params[downcase_first_letter('DestFileName')] = request.dest_file_name unless request.dest_file_name.nil?
        query_params[downcase_first_letter('RevisionAuthor')] = request.revision_author unless request.revision_author.nil?
        query_params[downcase_first_letter('RevisionDateTime')] = request.revision_date_time unless request.revision_date_time.nil?

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
        auth_names = ['JWT']

        data, status_code, headers = @api_client.call_api(:POST, local_var_path,
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
    # @param request InsertTableCellRequest
    # @return [TableCellResponse]
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

    # Adds table cell to table, returns added cell's data.
    # @param request InsertTableCellRequest
    # @return [Array<(TableCellResponse, Fixnum, Hash)>]
    # TableCellResponse data, response status code and response headers
    private def insert_table_cell_with_http_info(request)
        raise ArgumentError, 'Incorrect request type' unless request.is_a? InsertTableCellRequest

        @api_client.config.logger.debug 'Calling API: WordsApi.insert_table_cell ...' if @api_client.config.debugging
        # verify the required parameter 'name' is set
        raise ArgumentError, 'Missing the required parameter name when calling WordsApi.insert_table_cell' if @api_client.config.client_side_validation && request.name.nil?
        # verify the required parameter 'cell' is set
        raise ArgumentError, 'Missing the required parameter cell when calling WordsApi.insert_table_cell' if @api_client.config.client_side_validation && request.cell.nil?
        # verify the required parameter 'table_row_path' is set
        raise ArgumentError, 'Missing the required parameter table_row_path when calling WordsApi.insert_table_cell' if @api_client.config.client_side_validation && request.table_row_path.nil?

        # resource path
        local_var_path = '/words/{name}/{tableRowPath}/cells'[1..-1]
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.nil? ? '' : request.name.to_s)
        local_var_path = local_var_path.sub('{' + downcase_first_letter('TableRowPath') + '}', request.table_row_path.nil? ? '' : request.table_row_path.to_s)
        local_var_path = local_var_path.sub('//', '/')

        # query parameters
        query_params = {}
        query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
        query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
        query_params[downcase_first_letter('LoadEncoding')] = request.load_encoding unless request.load_encoding.nil?
        query_params[downcase_first_letter('Password')] = request.password unless request.password.nil?
        query_params[downcase_first_letter('DestFileName')] = request.dest_file_name unless request.dest_file_name.nil?
        query_params[downcase_first_letter('RevisionAuthor')] = request.revision_author unless request.revision_author.nil?
        query_params[downcase_first_letter('RevisionDateTime')] = request.revision_date_time unless request.revision_date_time.nil?

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
        auth_names = ['JWT']

        data, status_code, headers = @api_client.call_api(:POST, local_var_path,
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
    # @param request InsertTableRowRequest
    # @return [TableRowResponse]
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

    # Adds table row to table, returns added row's data.
    # @param request InsertTableRowRequest
    # @return [Array<(TableRowResponse, Fixnum, Hash)>]
    # TableRowResponse data, response status code and response headers
    private def insert_table_row_with_http_info(request)
        raise ArgumentError, 'Incorrect request type' unless request.is_a? InsertTableRowRequest

        @api_client.config.logger.debug 'Calling API: WordsApi.insert_table_row ...' if @api_client.config.debugging
        # verify the required parameter 'name' is set
        raise ArgumentError, 'Missing the required parameter name when calling WordsApi.insert_table_row' if @api_client.config.client_side_validation && request.name.nil?
        # verify the required parameter 'row' is set
        raise ArgumentError, 'Missing the required parameter row when calling WordsApi.insert_table_row' if @api_client.config.client_side_validation && request.row.nil?
        # verify the required parameter 'table_path' is set
        raise ArgumentError, 'Missing the required parameter table_path when calling WordsApi.insert_table_row' if @api_client.config.client_side_validation && request.table_path.nil?

        # resource path
        local_var_path = '/words/{name}/{tablePath}/rows'[1..-1]
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.nil? ? '' : request.name.to_s)
        local_var_path = local_var_path.sub('{' + downcase_first_letter('TablePath') + '}', request.table_path.nil? ? '' : request.table_path.to_s)
        local_var_path = local_var_path.sub('//', '/')

        # query parameters
        query_params = {}
        query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
        query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
        query_params[downcase_first_letter('LoadEncoding')] = request.load_encoding unless request.load_encoding.nil?
        query_params[downcase_first_letter('Password')] = request.password unless request.password.nil?
        query_params[downcase_first_letter('DestFileName')] = request.dest_file_name unless request.dest_file_name.nil?
        query_params[downcase_first_letter('RevisionAuthor')] = request.revision_author unless request.revision_author.nil?
        query_params[downcase_first_letter('RevisionDateTime')] = request.revision_date_time unless request.revision_date_time.nil?

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
        auth_names = ['JWT']

        data, status_code, headers = @api_client.call_api(:POST, local_var_path,
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

    # Inserts document watermark image.
    # @param request InsertWatermarkImageRequest
    # @return [DocumentResponse]
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
    # @param request InsertWatermarkImageRequest
    # @return [Array<(DocumentResponse, Fixnum, Hash)>]
    # DocumentResponse data, response status code and response headers
    private def insert_watermark_image_with_http_info(request)
        raise ArgumentError, 'Incorrect request type' unless request.is_a? InsertWatermarkImageRequest

        @api_client.config.logger.debug 'Calling API: WordsApi.insert_watermark_image ...' if @api_client.config.debugging
        # verify the required parameter 'name' is set
        raise ArgumentError, 'Missing the required parameter name when calling WordsApi.insert_watermark_image' if @api_client.config.client_side_validation && request.name.nil?

        # resource path
        local_var_path = '/words/{name}/watermarks/images'[1..-1]
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.nil? ? '' : request.name.to_s)
        local_var_path = local_var_path.sub('//', '/')

        # query parameters
        query_params = {}
        query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
        query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
        query_params[downcase_first_letter('LoadEncoding')] = request.load_encoding unless request.load_encoding.nil?
        query_params[downcase_first_letter('Password')] = request.password unless request.password.nil?
        query_params[downcase_first_letter('DestFileName')] = request.dest_file_name unless request.dest_file_name.nil?
        query_params[downcase_first_letter('RevisionAuthor')] = request.revision_author unless request.revision_author.nil?
        query_params[downcase_first_letter('RevisionDateTime')] = request.revision_date_time unless request.revision_date_time.nil?
        query_params[downcase_first_letter('RotationAngle')] = request.rotation_angle unless request.rotation_angle.nil?
        query_params[downcase_first_letter('Image')] = request.image unless request.image.nil?

        # header parameters
        header_params = {}
        # HTTP header 'Accept' (if needed)
        header_params['Accept'] = @api_client.select_header_accept(['application/xml', 'application/json'])
        # HTTP header 'Content-Type'
        header_params['Content-Type'] = @api_client.select_header_content_type(['multipart/form-data'])

        # form parameters
        form_params = {}
        form_params[downcase_first_letter('ImageFile')] = request.image_file

        # http body (model)
        post_body = nil
        auth_names = ['JWT']

        data, status_code, headers = @api_client.call_api(:POST, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names,
                                                        return_type: 'DocumentResponse')
        if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#insert_watermark_image\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
        end
        [data, status_code, headers]
    end

    # Inserts document watermark text.
    # @param request InsertWatermarkTextRequest
    # @return [DocumentResponse]
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
    # @param request InsertWatermarkTextRequest
    # @return [Array<(DocumentResponse, Fixnum, Hash)>]
    # DocumentResponse data, response status code and response headers
    private def insert_watermark_text_with_http_info(request)
        raise ArgumentError, 'Incorrect request type' unless request.is_a? InsertWatermarkTextRequest

        @api_client.config.logger.debug 'Calling API: WordsApi.insert_watermark_text ...' if @api_client.config.debugging
        # verify the required parameter 'name' is set
        raise ArgumentError, 'Missing the required parameter name when calling WordsApi.insert_watermark_text' if @api_client.config.client_side_validation && request.name.nil?
        # verify the required parameter 'watermark_text' is set
        raise ArgumentError, 'Missing the required parameter watermark_text when calling WordsApi.insert_watermark_text' if @api_client.config.client_side_validation && request.watermark_text.nil?

        # resource path
        local_var_path = '/words/{name}/watermarks/texts'[1..-1]
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.nil? ? '' : request.name.to_s)
        local_var_path = local_var_path.sub('//', '/')

        # query parameters
        query_params = {}
        query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
        query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
        query_params[downcase_first_letter('LoadEncoding')] = request.load_encoding unless request.load_encoding.nil?
        query_params[downcase_first_letter('Password')] = request.password unless request.password.nil?
        query_params[downcase_first_letter('DestFileName')] = request.dest_file_name unless request.dest_file_name.nil?
        query_params[downcase_first_letter('RevisionAuthor')] = request.revision_author unless request.revision_author.nil?
        query_params[downcase_first_letter('RevisionDateTime')] = request.revision_date_time unless request.revision_date_time.nil?

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
        auth_names = ['JWT']

        data, status_code, headers = @api_client.call_api(:POST, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names,
                                                        return_type: 'DocumentResponse')
        if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#insert_watermark_text\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
        end
        [data, status_code, headers]
    end

    # Loads new document from web into the file with any supported format of data.
    # @param request LoadWebDocumentRequest
    # @return [SaveResponse]
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
    # @param request LoadWebDocumentRequest
    # @return [Array<(SaveResponse, Fixnum, Hash)>]
    # SaveResponse data, response status code and response headers
    private def load_web_document_with_http_info(request)
        raise ArgumentError, 'Incorrect request type' unless request.is_a? LoadWebDocumentRequest

        @api_client.config.logger.debug 'Calling API: WordsApi.load_web_document ...' if @api_client.config.debugging
        # verify the required parameter 'data' is set
        raise ArgumentError, 'Missing the required parameter data when calling WordsApi.load_web_document' if @api_client.config.client_side_validation && request.data.nil?

        # resource path
        local_var_path = '/words/loadWebDocument'[1..-1]
        local_var_path = local_var_path.sub('//', '/')

        # query parameters
        query_params = {}
        query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?

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
        auth_names = ['JWT']

        data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names,
                                                        return_type: 'SaveResponse')
        if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#load_web_document\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
        end
        [data, status_code, headers]
    end

    # Move file.
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

    # Move file.
    # @param request MoveFileRequest
    # @return [Array<(nil, Fixnum, Hash)>]
    # nil, response status code and response headers
    private def move_file_with_http_info(request)
        raise ArgumentError, 'Incorrect request type' unless request.is_a? MoveFileRequest

        @api_client.config.logger.debug 'Calling API: WordsApi.move_file ...' if @api_client.config.debugging
        # verify the required parameter 'dest_path' is set
        raise ArgumentError, 'Missing the required parameter dest_path when calling WordsApi.move_file' if @api_client.config.client_side_validation && request.dest_path.nil?
        # verify the required parameter 'src_path' is set
        raise ArgumentError, 'Missing the required parameter src_path when calling WordsApi.move_file' if @api_client.config.client_side_validation && request.src_path.nil?

        # resource path
        local_var_path = '/words/storage/file/move/{srcPath}'[1..-1]
        local_var_path = local_var_path.sub('{' + downcase_first_letter('SrcPath') + '}', request.src_path.nil? ? '' : request.src_path.to_s)
        local_var_path = local_var_path.sub('//', '/')

        # query parameters
        query_params = {}
        query_params[downcase_first_letter('DestPath')] = request.dest_path
        query_params[downcase_first_letter('SrcStorageName')] = request.src_storage_name unless request.src_storage_name.nil?
        query_params[downcase_first_letter('DestStorageName')] = request.dest_storage_name unless request.dest_storage_name.nil?
        query_params[downcase_first_letter('VersionId')] = request.version_id unless request.version_id.nil?

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

    # Move folder.
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

    # Move folder.
    # @param request MoveFolderRequest
    # @return [Array<(nil, Fixnum, Hash)>]
    # nil, response status code and response headers
    private def move_folder_with_http_info(request)
        raise ArgumentError, 'Incorrect request type' unless request.is_a? MoveFolderRequest

        @api_client.config.logger.debug 'Calling API: WordsApi.move_folder ...' if @api_client.config.debugging
        # verify the required parameter 'dest_path' is set
        raise ArgumentError, 'Missing the required parameter dest_path when calling WordsApi.move_folder' if @api_client.config.client_side_validation && request.dest_path.nil?
        # verify the required parameter 'src_path' is set
        raise ArgumentError, 'Missing the required parameter src_path when calling WordsApi.move_folder' if @api_client.config.client_side_validation && request.src_path.nil?

        # resource path
        local_var_path = '/words/storage/folder/move/{srcPath}'[1..-1]
        local_var_path = local_var_path.sub('{' + downcase_first_letter('SrcPath') + '}', request.src_path.nil? ? '' : request.src_path.to_s)
        local_var_path = local_var_path.sub('//', '/')

        # query parameters
        query_params = {}
        query_params[downcase_first_letter('DestPath')] = request.dest_path
        query_params[downcase_first_letter('SrcStorageName')] = request.src_storage_name unless request.src_storage_name.nil?
        query_params[downcase_first_letter('DestStorageName')] = request.dest_storage_name unless request.dest_storage_name.nil?

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

    # Allows to optimize the document contents as well as default Aspose.Words behavior to a particular versions of MS Word.
    # @param request OptimizeDocumentRequest
    # @return [nil]
    def optimize_document(request)
        begin
        data, _status_code, _headers = optimize_document_with_http_info(request)
        rescue ApiError => e
            if e.code == 401
            request_token
            data, _status_code, _headers = optimize_document_with_http_info(request)
            else
            raise
            end
        end
        nil
    end

    # Allows to optimize the document contents as well as default Aspose.Words behavior to a particular versions of MS Word.
    # @param request OptimizeDocumentRequest
    # @return [Array<(nil, Fixnum, Hash)>]
    # nil, response status code and response headers
    private def optimize_document_with_http_info(request)
        raise ArgumentError, 'Incorrect request type' unless request.is_a? OptimizeDocumentRequest

        @api_client.config.logger.debug 'Calling API: WordsApi.optimize_document ...' if @api_client.config.debugging
        # verify the required parameter 'name' is set
        raise ArgumentError, 'Missing the required parameter name when calling WordsApi.optimize_document' if @api_client.config.client_side_validation && request.name.nil?
        # verify the required parameter 'options' is set
        raise ArgumentError, 'Missing the required parameter options when calling WordsApi.optimize_document' if @api_client.config.client_side_validation && request.options.nil?

        # resource path
        local_var_path = '/words/{name}/compatibility/optimize'[1..-1]
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.nil? ? '' : request.name.to_s)
        local_var_path = local_var_path.sub('//', '/')

        # query parameters
        query_params = {}
        query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
        query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
        query_params[downcase_first_letter('LoadEncoding')] = request.load_encoding unless request.load_encoding.nil?
        query_params[downcase_first_letter('Password')] = request.password unless request.password.nil?
        query_params[downcase_first_letter('DestFileName')] = request.dest_file_name unless request.dest_file_name.nil?
        query_params[downcase_first_letter('RevisionAuthor')] = request.revision_author unless request.revision_author.nil?
        query_params[downcase_first_letter('RevisionDateTime')] = request.revision_date_time unless request.revision_date_time.nil?

        # header parameters
        header_params = {}
        # HTTP header 'Accept' (if needed)
        header_params['Accept'] = @api_client.select_header_accept(['application/xml', 'application/json'])
        # HTTP header 'Content-Type'
        header_params['Content-Type'] = @api_client.select_header_content_type(['application/xml', 'application/json'])

        # form parameters
        form_params = {}

        # http body (model)
        post_body = @api_client.object_to_http_body(request.options)
        auth_names = ['JWT']

        data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names)
        if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#optimize_document\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
        end
        [data, status_code, headers]
    end

    # Protects document.
    # @param request ProtectDocumentRequest
    # @return [ProtectionDataResponse]
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
    # @param request ProtectDocumentRequest
    # @return [Array<(ProtectionDataResponse, Fixnum, Hash)>]
    # ProtectionDataResponse data, response status code and response headers
    private def protect_document_with_http_info(request)
        raise ArgumentError, 'Incorrect request type' unless request.is_a? ProtectDocumentRequest

        @api_client.config.logger.debug 'Calling API: WordsApi.protect_document ...' if @api_client.config.debugging
        # verify the required parameter 'name' is set
        raise ArgumentError, 'Missing the required parameter name when calling WordsApi.protect_document' if @api_client.config.client_side_validation && request.name.nil?
        # verify the required parameter 'protection_request' is set
        raise ArgumentError, 'Missing the required parameter protection_request when calling WordsApi.protect_document' if @api_client.config.client_side_validation && request.protection_request.nil?

        # resource path
        local_var_path = '/words/{name}/protection'[1..-1]
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.nil? ? '' : request.name.to_s)
        local_var_path = local_var_path.sub('//', '/')

        # query parameters
        query_params = {}
        query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
        query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
        query_params[downcase_first_letter('LoadEncoding')] = request.load_encoding unless request.load_encoding.nil?
        query_params[downcase_first_letter('Password')] = request.password unless request.password.nil?
        query_params[downcase_first_letter('DestFileName')] = request.dest_file_name unless request.dest_file_name.nil?

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
        auth_names = ['JWT']

        data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names,
                                                        return_type: 'ProtectionDataResponse')
        if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#protect_document\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
        end
        [data, status_code, headers]
    end

    # Rejects all revisions in document.
    # @param request RejectAllRevisionsRequest
    # @return [RevisionsModificationResponse]
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
    # @param request RejectAllRevisionsRequest
    # @return [Array<(RevisionsModificationResponse, Fixnum, Hash)>]
    # RevisionsModificationResponse data, response status code and response headers
    private def reject_all_revisions_with_http_info(request)
        raise ArgumentError, 'Incorrect request type' unless request.is_a? RejectAllRevisionsRequest

        @api_client.config.logger.debug 'Calling API: WordsApi.reject_all_revisions ...' if @api_client.config.debugging
        # verify the required parameter 'name' is set
        raise ArgumentError, 'Missing the required parameter name when calling WordsApi.reject_all_revisions' if @api_client.config.client_side_validation && request.name.nil?

        # resource path
        local_var_path = '/words/{name}/revisions/rejectAll'[1..-1]
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.nil? ? '' : request.name.to_s)
        local_var_path = local_var_path.sub('//', '/')

        # query parameters
        query_params = {}
        query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
        query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
        query_params[downcase_first_letter('LoadEncoding')] = request.load_encoding unless request.load_encoding.nil?
        query_params[downcase_first_letter('Password')] = request.password unless request.password.nil?
        query_params[downcase_first_letter('DestFileName')] = request.dest_file_name unless request.dest_file_name.nil?

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
        auth_names = ['JWT']

        data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
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

    # Removes the range from the document.
    # @param request RemoveRangeRequest
    # @return [DocumentResponse]
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
    # @param request RemoveRangeRequest
    # @return [Array<(DocumentResponse, Fixnum, Hash)>]
    # DocumentResponse data, response status code and response headers
    private def remove_range_with_http_info(request)
        raise ArgumentError, 'Incorrect request type' unless request.is_a? RemoveRangeRequest

        @api_client.config.logger.debug 'Calling API: WordsApi.remove_range ...' if @api_client.config.debugging
        # verify the required parameter 'name' is set
        raise ArgumentError, 'Missing the required parameter name when calling WordsApi.remove_range' if @api_client.config.client_side_validation && request.name.nil?
        # verify the required parameter 'range_start_identifier' is set
        raise ArgumentError, 'Missing the required parameter range_start_identifier when calling WordsApi.remove_range' if @api_client.config.client_side_validation && request.range_start_identifier.nil?

        # resource path
        local_var_path = '/words/{name}/range/{rangeStartIdentifier}/{rangeEndIdentifier}'[1..-1]
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.nil? ? '' : request.name.to_s)
        local_var_path = local_var_path.sub('{' + downcase_first_letter('RangeStartIdentifier') + '}', request.range_start_identifier.nil? ? '' : request.range_start_identifier.to_s)
        local_var_path = local_var_path.sub('{' + downcase_first_letter('RangeEndIdentifier') + '}', request.range_end_identifier.nil? ? '' : request.range_end_identifier.to_s)
        local_var_path = local_var_path.sub('//', '/')

        # query parameters
        query_params = {}
        query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
        query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
        query_params[downcase_first_letter('LoadEncoding')] = request.load_encoding unless request.load_encoding.nil?
        query_params[downcase_first_letter('Password')] = request.password unless request.password.nil?
        query_params[downcase_first_letter('DestFileName')] = request.dest_file_name unless request.dest_file_name.nil?

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
        auth_names = ['JWT']

        data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names,
                                                        return_type: 'DocumentResponse')
        if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#remove_range\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
        end
        [data, status_code, headers]
    end

    # Renders drawing object to specified format.
    # @param request RenderDrawingObjectRequest
    # @return [File]
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
        local_var_path = '/words/{name}/{nodePath}/drawingObjects/{index}/render'[1..-1]
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.nil? ? '' : request.name.to_s)
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Index') + '}', request.index.nil? ? '' : request.index.to_s)
        local_var_path = local_var_path.sub('{' + downcase_first_letter('NodePath') + '}', request.node_path.nil? ? '' : request.node_path.to_s)
        local_var_path = local_var_path.sub('//', '/')

        # query parameters
        query_params = {}
        query_params[downcase_first_letter('Format')] = request.format
        query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
        query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
        query_params[downcase_first_letter('LoadEncoding')] = request.load_encoding unless request.load_encoding.nil?
        query_params[downcase_first_letter('Password')] = request.password unless request.password.nil?
        query_params[downcase_first_letter('FontsLocation')] = request.fonts_location unless request.fonts_location.nil?

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
        auth_names = ['JWT']

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
    # @param request RenderMathObjectRequest
    # @return [File]
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
        local_var_path = '/words/{name}/{nodePath}/OfficeMathObjects/{index}/render'[1..-1]
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.nil? ? '' : request.name.to_s)
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Index') + '}', request.index.nil? ? '' : request.index.to_s)
        local_var_path = local_var_path.sub('{' + downcase_first_letter('NodePath') + '}', request.node_path.nil? ? '' : request.node_path.to_s)
        local_var_path = local_var_path.sub('//', '/')

        # query parameters
        query_params = {}
        query_params[downcase_first_letter('Format')] = request.format
        query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
        query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
        query_params[downcase_first_letter('LoadEncoding')] = request.load_encoding unless request.load_encoding.nil?
        query_params[downcase_first_letter('Password')] = request.password unless request.password.nil?
        query_params[downcase_first_letter('FontsLocation')] = request.fonts_location unless request.fonts_location.nil?

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
        auth_names = ['JWT']

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
    # @param request RenderPageRequest
    # @return [File]
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
        local_var_path = '/words/{name}/pages/{pageIndex}/render'[1..-1]
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.nil? ? '' : request.name.to_s)
        local_var_path = local_var_path.sub('{' + downcase_first_letter('PageIndex') + '}', request.page_index.nil? ? '' : request.page_index.to_s)
        local_var_path = local_var_path.sub('//', '/')

        # query parameters
        query_params = {}
        query_params[downcase_first_letter('Format')] = request.format
        query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
        query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
        query_params[downcase_first_letter('LoadEncoding')] = request.load_encoding unless request.load_encoding.nil?
        query_params[downcase_first_letter('Password')] = request.password unless request.password.nil?
        query_params[downcase_first_letter('FontsLocation')] = request.fonts_location unless request.fonts_location.nil?

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
        auth_names = ['JWT']

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
    # @param request RenderParagraphRequest
    # @return [File]
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
        local_var_path = '/words/{name}/{nodePath}/paragraphs/{index}/render'[1..-1]
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.nil? ? '' : request.name.to_s)
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Index') + '}', request.index.nil? ? '' : request.index.to_s)
        local_var_path = local_var_path.sub('{' + downcase_first_letter('NodePath') + '}', request.node_path.nil? ? '' : request.node_path.to_s)
        local_var_path = local_var_path.sub('//', '/')

        # query parameters
        query_params = {}
        query_params[downcase_first_letter('Format')] = request.format
        query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
        query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
        query_params[downcase_first_letter('LoadEncoding')] = request.load_encoding unless request.load_encoding.nil?
        query_params[downcase_first_letter('Password')] = request.password unless request.password.nil?
        query_params[downcase_first_letter('FontsLocation')] = request.fonts_location unless request.fonts_location.nil?

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
        auth_names = ['JWT']

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
    # @param request RenderTableRequest
    # @return [File]
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
        local_var_path = '/words/{name}/{nodePath}/tables/{index}/render'[1..-1]
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.nil? ? '' : request.name.to_s)
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Index') + '}', request.index.nil? ? '' : request.index.to_s)
        local_var_path = local_var_path.sub('{' + downcase_first_letter('NodePath') + '}', request.node_path.nil? ? '' : request.node_path.to_s)
        local_var_path = local_var_path.sub('//', '/')

        # query parameters
        query_params = {}
        query_params[downcase_first_letter('Format')] = request.format
        query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
        query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
        query_params[downcase_first_letter('LoadEncoding')] = request.load_encoding unless request.load_encoding.nil?
        query_params[downcase_first_letter('Password')] = request.password unless request.password.nil?
        query_params[downcase_first_letter('FontsLocation')] = request.fonts_location unless request.fonts_location.nil?

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
        auth_names = ['JWT']

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

    # Replaces document text.
    # @param request ReplaceTextRequest
    # @return [ReplaceTextResponse]
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
    # @param request ReplaceTextRequest
    # @return [Array<(ReplaceTextResponse, Fixnum, Hash)>]
    # ReplaceTextResponse data, response status code and response headers
    private def replace_text_with_http_info(request)
        raise ArgumentError, 'Incorrect request type' unless request.is_a? ReplaceTextRequest

        @api_client.config.logger.debug 'Calling API: WordsApi.replace_text ...' if @api_client.config.debugging
        # verify the required parameter 'name' is set
        raise ArgumentError, 'Missing the required parameter name when calling WordsApi.replace_text' if @api_client.config.client_side_validation && request.name.nil?
        # verify the required parameter 'replace_text' is set
        raise ArgumentError, 'Missing the required parameter replace_text when calling WordsApi.replace_text' if @api_client.config.client_side_validation && request.replace_text.nil?

        # resource path
        local_var_path = '/words/{name}/replaceText'[1..-1]
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.nil? ? '' : request.name.to_s)
        local_var_path = local_var_path.sub('//', '/')

        # query parameters
        query_params = {}
        query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
        query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
        query_params[downcase_first_letter('LoadEncoding')] = request.load_encoding unless request.load_encoding.nil?
        query_params[downcase_first_letter('Password')] = request.password unless request.password.nil?
        query_params[downcase_first_letter('DestFileName')] = request.dest_file_name unless request.dest_file_name.nil?
        query_params[downcase_first_letter('RevisionAuthor')] = request.revision_author unless request.revision_author.nil?
        query_params[downcase_first_letter('RevisionDateTime')] = request.revision_date_time unless request.revision_date_time.nil?

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
        auth_names = ['JWT']

        data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names,
                                                        return_type: 'ReplaceTextResponse')
        if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#replace_text\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
        end
        [data, status_code, headers]
    end

    # Replaces the content in the range.
    # @param request ReplaceWithTextRequest
    # @return [DocumentResponse]
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
    # @param request ReplaceWithTextRequest
    # @return [Array<(DocumentResponse, Fixnum, Hash)>]
    # DocumentResponse data, response status code and response headers
    private def replace_with_text_with_http_info(request)
        raise ArgumentError, 'Incorrect request type' unless request.is_a? ReplaceWithTextRequest

        @api_client.config.logger.debug 'Calling API: WordsApi.replace_with_text ...' if @api_client.config.debugging
        # verify the required parameter 'name' is set
        raise ArgumentError, 'Missing the required parameter name when calling WordsApi.replace_with_text' if @api_client.config.client_side_validation && request.name.nil?
        # verify the required parameter 'range_start_identifier' is set
        raise ArgumentError, 'Missing the required parameter range_start_identifier when calling WordsApi.replace_with_text' if @api_client.config.client_side_validation && request.range_start_identifier.nil?
        # verify the required parameter 'range_text' is set
        raise ArgumentError, 'Missing the required parameter range_text when calling WordsApi.replace_with_text' if @api_client.config.client_side_validation && request.range_text.nil?

        # resource path
        local_var_path = '/words/{name}/range/{rangeStartIdentifier}/{rangeEndIdentifier}'[1..-1]
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.nil? ? '' : request.name.to_s)
        local_var_path = local_var_path.sub('{' + downcase_first_letter('RangeStartIdentifier') + '}', request.range_start_identifier.nil? ? '' : request.range_start_identifier.to_s)
        local_var_path = local_var_path.sub('{' + downcase_first_letter('RangeEndIdentifier') + '}', request.range_end_identifier.nil? ? '' : request.range_end_identifier.to_s)
        local_var_path = local_var_path.sub('//', '/')

        # query parameters
        query_params = {}
        query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
        query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
        query_params[downcase_first_letter('LoadEncoding')] = request.load_encoding unless request.load_encoding.nil?
        query_params[downcase_first_letter('Password')] = request.password unless request.password.nil?
        query_params[downcase_first_letter('DestFileName')] = request.dest_file_name unless request.dest_file_name.nil?

        # header parameters
        header_params = {}
        # HTTP header 'Accept' (if needed)
        header_params['Accept'] = @api_client.select_header_accept(['application/xml', 'application/json'])
        # HTTP header 'Content-Type'
        header_params['Content-Type'] = @api_client.select_header_content_type(['application/xml', 'application/json'])

        # form parameters
        form_params = {}

        # http body (model)
        post_body = @api_client.object_to_http_body(request.range_text)
        auth_names = ['JWT']

        data, status_code, headers = @api_client.call_api(:POST, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names,
                                                        return_type: 'DocumentResponse')
        if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#replace_with_text\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
        end
        [data, status_code, headers]
    end

    # Resets font's cache.
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

    # Resets font's cache.
    # @param request ResetCacheRequest
    # @return [Array<(nil, Fixnum, Hash)>]
    # nil, response status code and response headers
    private def reset_cache_with_http_info(request)
        raise ArgumentError, 'Incorrect request type' unless request.is_a? ResetCacheRequest

        @api_client.config.logger.debug 'Calling API: WordsApi.reset_cache ...' if @api_client.config.debugging
        # resource path
        local_var_path = '/words/fonts/cache'[1..-1]
        local_var_path = local_var_path.sub('//', '/')

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
    # @param request SaveAsRequest
    # @return [SaveResponse]
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
    # @param request SaveAsRequest
    # @return [Array<(SaveResponse, Fixnum, Hash)>]
    # SaveResponse data, response status code and response headers
    private def save_as_with_http_info(request)
        raise ArgumentError, 'Incorrect request type' unless request.is_a? SaveAsRequest

        @api_client.config.logger.debug 'Calling API: WordsApi.save_as ...' if @api_client.config.debugging
        # verify the required parameter 'name' is set
        raise ArgumentError, 'Missing the required parameter name when calling WordsApi.save_as' if @api_client.config.client_side_validation && request.name.nil?
        # verify the required parameter 'save_options_data' is set
        raise ArgumentError, 'Missing the required parameter save_options_data when calling WordsApi.save_as' if @api_client.config.client_side_validation && request.save_options_data.nil?

        # resource path
        local_var_path = '/words/{name}/saveAs'[1..-1]
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.nil? ? '' : request.name.to_s)
        local_var_path = local_var_path.sub('//', '/')

        # query parameters
        query_params = {}
        query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
        query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
        query_params[downcase_first_letter('LoadEncoding')] = request.load_encoding unless request.load_encoding.nil?
        query_params[downcase_first_letter('Password')] = request.password unless request.password.nil?
        query_params[downcase_first_letter('FontsLocation')] = request.fonts_location unless request.fonts_location.nil?

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
        auth_names = ['JWT']

        data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names,
                                                        return_type: 'SaveResponse')
        if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#save_as\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
        end
        [data, status_code, headers]
    end

    # Saves the selected range as a new document.
    # @param request SaveAsRangeRequest
    # @return [DocumentResponse]
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
    # @param request SaveAsRangeRequest
    # @return [Array<(DocumentResponse, Fixnum, Hash)>]
    # DocumentResponse data, response status code and response headers
    private def save_as_range_with_http_info(request)
        raise ArgumentError, 'Incorrect request type' unless request.is_a? SaveAsRangeRequest

        @api_client.config.logger.debug 'Calling API: WordsApi.save_as_range ...' if @api_client.config.debugging
        # verify the required parameter 'name' is set
        raise ArgumentError, 'Missing the required parameter name when calling WordsApi.save_as_range' if @api_client.config.client_side_validation && request.name.nil?
        # verify the required parameter 'range_start_identifier' is set
        raise ArgumentError, 'Missing the required parameter range_start_identifier when calling WordsApi.save_as_range' if @api_client.config.client_side_validation && request.range_start_identifier.nil?
        # verify the required parameter 'document_parameters' is set
        raise ArgumentError, 'Missing the required parameter document_parameters when calling WordsApi.save_as_range' if @api_client.config.client_side_validation && request.document_parameters.nil?

        # resource path
        local_var_path = '/words/{name}/range/{rangeStartIdentifier}/{rangeEndIdentifier}/SaveAs'[1..-1]
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.nil? ? '' : request.name.to_s)
        local_var_path = local_var_path.sub('{' + downcase_first_letter('RangeStartIdentifier') + '}', request.range_start_identifier.nil? ? '' : request.range_start_identifier.to_s)
        local_var_path = local_var_path.sub('{' + downcase_first_letter('RangeEndIdentifier') + '}', request.range_end_identifier.nil? ? '' : request.range_end_identifier.to_s)
        local_var_path = local_var_path.sub('//', '/')

        # query parameters
        query_params = {}
        query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
        query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
        query_params[downcase_first_letter('LoadEncoding')] = request.load_encoding unless request.load_encoding.nil?
        query_params[downcase_first_letter('Password')] = request.password unless request.password.nil?

        # header parameters
        header_params = {}
        # HTTP header 'Accept' (if needed)
        header_params['Accept'] = @api_client.select_header_accept(['application/xml', 'application/json'])
        # HTTP header 'Content-Type'
        header_params['Content-Type'] = @api_client.select_header_content_type(['application/xml', 'application/json'])

        # form parameters
        form_params = {}

        # http body (model)
        post_body = @api_client.object_to_http_body(request.document_parameters)
        auth_names = ['JWT']

        data, status_code, headers = @api_client.call_api(:POST, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names,
                                                        return_type: 'DocumentResponse')
        if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#save_as_range\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
        end
        [data, status_code, headers]
    end

    # Converts document to tiff with detailed settings and saves result to storage.
    # @param request SaveAsTiffRequest
    # @return [SaveResponse]
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
    # @param request SaveAsTiffRequest
    # @return [Array<(SaveResponse, Fixnum, Hash)>]
    # SaveResponse data, response status code and response headers
    private def save_as_tiff_with_http_info(request)
        raise ArgumentError, 'Incorrect request type' unless request.is_a? SaveAsTiffRequest

        @api_client.config.logger.debug 'Calling API: WordsApi.save_as_tiff ...' if @api_client.config.debugging
        # verify the required parameter 'name' is set
        raise ArgumentError, 'Missing the required parameter name when calling WordsApi.save_as_tiff' if @api_client.config.client_side_validation && request.name.nil?
        # verify the required parameter 'save_options' is set
        raise ArgumentError, 'Missing the required parameter save_options when calling WordsApi.save_as_tiff' if @api_client.config.client_side_validation && request.save_options.nil?

        # resource path
        local_var_path = '/words/{name}/saveAs/tiff'[1..-1]
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.nil? ? '' : request.name.to_s)
        local_var_path = local_var_path.sub('//', '/')

        # query parameters
        query_params = {}
        query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
        query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
        query_params[downcase_first_letter('LoadEncoding')] = request.load_encoding unless request.load_encoding.nil?
        query_params[downcase_first_letter('Password')] = request.password unless request.password.nil?
        query_params[downcase_first_letter('UseAntiAliasing')] = request.use_anti_aliasing unless request.use_anti_aliasing.nil?
        query_params[downcase_first_letter('UseHighQualityRendering')] = request.use_high_quality_rendering unless request.use_high_quality_rendering.nil?
        query_params[downcase_first_letter('ImageBrightness')] = request.image_brightness unless request.image_brightness.nil?
        query_params[downcase_first_letter('ImageColorMode')] = request.image_color_mode unless request.image_color_mode.nil?
        query_params[downcase_first_letter('ImageContrast')] = request.image_contrast unless request.image_contrast.nil?
        query_params[downcase_first_letter('NumeralFormat')] = request.numeral_format unless request.numeral_format.nil?
        query_params[downcase_first_letter('PageCount')] = request.page_count unless request.page_count.nil?
        query_params[downcase_first_letter('PageIndex')] = request.page_index unless request.page_index.nil?
        query_params[downcase_first_letter('PaperColor')] = request.paper_color unless request.paper_color.nil?
        query_params[downcase_first_letter('PixelFormat')] = request.pixel_format unless request.pixel_format.nil?
        query_params[downcase_first_letter('Resolution')] = request.resolution unless request.resolution.nil?
        query_params[downcase_first_letter('Scale')] = request.scale unless request.scale.nil?
        query_params[downcase_first_letter('TiffCompression')] = request.tiff_compression unless request.tiff_compression.nil?
        query_params[downcase_first_letter('DmlRenderingMode')] = request.dml_rendering_mode unless request.dml_rendering_mode.nil?
        query_params[downcase_first_letter('DmlEffectsRenderingMode')] = request.dml_effects_rendering_mode unless request.dml_effects_rendering_mode.nil?
        query_params[downcase_first_letter('TiffBinarizationMethod')] = request.tiff_binarization_method unless request.tiff_binarization_method.nil?
        query_params[downcase_first_letter('ZipOutput')] = request.zip_output unless request.zip_output.nil?
        query_params[downcase_first_letter('FontsLocation')] = request.fonts_location unless request.fonts_location.nil?

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
        auth_names = ['JWT']

        data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names,
                                                        return_type: 'SaveResponse')
        if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#save_as_tiff\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
        end
        [data, status_code, headers]
    end

    # Searches text in document.
    # @param request SearchRequest
    # @return [SearchResponse]
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
        local_var_path = '/words/{name}/search'[1..-1]
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.nil? ? '' : request.name.to_s)
        local_var_path = local_var_path.sub('//', '/')

        # query parameters
        query_params = {}
        query_params[downcase_first_letter('Pattern')] = request.pattern
        query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
        query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
        query_params[downcase_first_letter('LoadEncoding')] = request.load_encoding unless request.load_encoding.nil?
        query_params[downcase_first_letter('Password')] = request.password unless request.password.nil?

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
        auth_names = ['JWT']

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

    # Splits document.
    # @param request SplitDocumentRequest
    # @return [SplitDocumentResponse]
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
    # @param request SplitDocumentRequest
    # @return [Array<(SplitDocumentResponse, Fixnum, Hash)>]
    # SplitDocumentResponse data, response status code and response headers
    private def split_document_with_http_info(request)
        raise ArgumentError, 'Incorrect request type' unless request.is_a? SplitDocumentRequest

        @api_client.config.logger.debug 'Calling API: WordsApi.split_document ...' if @api_client.config.debugging
        # verify the required parameter 'name' is set
        raise ArgumentError, 'Missing the required parameter name when calling WordsApi.split_document' if @api_client.config.client_side_validation && request.name.nil?
        # verify the required parameter 'format' is set
        raise ArgumentError, 'Missing the required parameter format when calling WordsApi.split_document' if @api_client.config.client_side_validation && request.format.nil?

        # resource path
        local_var_path = '/words/{name}/split'[1..-1]
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.nil? ? '' : request.name.to_s)
        local_var_path = local_var_path.sub('//', '/')

        # query parameters
        query_params = {}
        query_params[downcase_first_letter('Format')] = request.format
        query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
        query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
        query_params[downcase_first_letter('LoadEncoding')] = request.load_encoding unless request.load_encoding.nil?
        query_params[downcase_first_letter('Password')] = request.password unless request.password.nil?
        query_params[downcase_first_letter('DestFileName')] = request.dest_file_name unless request.dest_file_name.nil?
        query_params[downcase_first_letter('From')] = request.from unless request.from.nil?
        query_params[downcase_first_letter('To')] = request.to unless request.to.nil?
        query_params[downcase_first_letter('ZipOutput')] = request.zip_output unless request.zip_output.nil?
        query_params[downcase_first_letter('FontsLocation')] = request.fonts_location unless request.fonts_location.nil?

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
        auth_names = ['JWT']

        data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names,
                                                        return_type: 'SplitDocumentResponse')
        if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#split_document\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
        end
        [data, status_code, headers]
    end

    # Unprotects document.
    # @param request UnprotectDocumentRequest
    # @return [ProtectionDataResponse]
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
    # @param request UnprotectDocumentRequest
    # @return [Array<(ProtectionDataResponse, Fixnum, Hash)>]
    # ProtectionDataResponse data, response status code and response headers
    private def unprotect_document_with_http_info(request)
        raise ArgumentError, 'Incorrect request type' unless request.is_a? UnprotectDocumentRequest

        @api_client.config.logger.debug 'Calling API: WordsApi.unprotect_document ...' if @api_client.config.debugging
        # verify the required parameter 'name' is set
        raise ArgumentError, 'Missing the required parameter name when calling WordsApi.unprotect_document' if @api_client.config.client_side_validation && request.name.nil?
        # verify the required parameter 'protection_request' is set
        raise ArgumentError, 'Missing the required parameter protection_request when calling WordsApi.unprotect_document' if @api_client.config.client_side_validation && request.protection_request.nil?

        # resource path
        local_var_path = '/words/{name}/protection'[1..-1]
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.nil? ? '' : request.name.to_s)
        local_var_path = local_var_path.sub('//', '/')

        # query parameters
        query_params = {}
        query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
        query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
        query_params[downcase_first_letter('LoadEncoding')] = request.load_encoding unless request.load_encoding.nil?
        query_params[downcase_first_letter('Password')] = request.password unless request.password.nil?
        query_params[downcase_first_letter('DestFileName')] = request.dest_file_name unless request.dest_file_name.nil?

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
        auth_names = ['JWT']

        data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names,
                                                        return_type: 'ProtectionDataResponse')
        if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#unprotect_document\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
        end
        [data, status_code, headers]
    end

    # Updates document bookmark.
    # @param request UpdateBookmarkRequest
    # @return [BookmarkResponse]
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
    # @param request UpdateBookmarkRequest
    # @return [Array<(BookmarkResponse, Fixnum, Hash)>]
    # BookmarkResponse data, response status code and response headers
    private def update_bookmark_with_http_info(request)
        raise ArgumentError, 'Incorrect request type' unless request.is_a? UpdateBookmarkRequest

        @api_client.config.logger.debug 'Calling API: WordsApi.update_bookmark ...' if @api_client.config.debugging
        # verify the required parameter 'name' is set
        raise ArgumentError, 'Missing the required parameter name when calling WordsApi.update_bookmark' if @api_client.config.client_side_validation && request.name.nil?
        # verify the required parameter 'bookmark_data' is set
        raise ArgumentError, 'Missing the required parameter bookmark_data when calling WordsApi.update_bookmark' if @api_client.config.client_side_validation && request.bookmark_data.nil?
        # verify the required parameter 'bookmark_name' is set
        raise ArgumentError, 'Missing the required parameter bookmark_name when calling WordsApi.update_bookmark' if @api_client.config.client_side_validation && request.bookmark_name.nil?

        # resource path
        local_var_path = '/words/{name}/bookmarks/{bookmarkName}'[1..-1]
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.nil? ? '' : request.name.to_s)
        local_var_path = local_var_path.sub('{' + downcase_first_letter('BookmarkName') + '}', request.bookmark_name.nil? ? '' : request.bookmark_name.to_s)
        local_var_path = local_var_path.sub('//', '/')

        # query parameters
        query_params = {}
        query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
        query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
        query_params[downcase_first_letter('LoadEncoding')] = request.load_encoding unless request.load_encoding.nil?
        query_params[downcase_first_letter('Password')] = request.password unless request.password.nil?
        query_params[downcase_first_letter('DestFileName')] = request.dest_file_name unless request.dest_file_name.nil?
        query_params[downcase_first_letter('RevisionAuthor')] = request.revision_author unless request.revision_author.nil?
        query_params[downcase_first_letter('RevisionDateTime')] = request.revision_date_time unless request.revision_date_time.nil?

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
        auth_names = ['JWT']

        data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names,
                                                        return_type: 'BookmarkResponse')
        if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#update_bookmark\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
        end
        [data, status_code, headers]
    end

    # 'nodePath' should refer to paragraph, cell or row.
    # @param request UpdateBorderRequest
    # @return [BorderResponse]
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

    # 'nodePath' should refer to paragraph, cell or row.
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
        # verify the required parameter 'border_type' is set
        raise ArgumentError, 'Missing the required parameter border_type when calling WordsApi.update_border' if @api_client.config.client_side_validation && request.border_type.nil?

        # resource path
        local_var_path = '/words/{name}/{nodePath}/borders/{borderType}'[1..-1]
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.nil? ? '' : request.name.to_s)
        local_var_path = local_var_path.sub('{' + downcase_first_letter('BorderType') + '}', request.border_type.nil? ? '' : request.border_type.to_s)
        local_var_path = local_var_path.sub('{' + downcase_first_letter('NodePath') + '}', request.node_path.nil? ? '' : request.node_path.to_s)
        local_var_path = local_var_path.sub('//', '/')

        # query parameters
        query_params = {}
        query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
        query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
        query_params[downcase_first_letter('LoadEncoding')] = request.load_encoding unless request.load_encoding.nil?
        query_params[downcase_first_letter('Password')] = request.password unless request.password.nil?
        query_params[downcase_first_letter('DestFileName')] = request.dest_file_name unless request.dest_file_name.nil?
        query_params[downcase_first_letter('RevisionAuthor')] = request.revision_author unless request.revision_author.nil?
        query_params[downcase_first_letter('RevisionDateTime')] = request.revision_date_time unless request.revision_date_time.nil?

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
        auth_names = ['JWT']

        data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
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

    # Updates the comment, returns updated comment data.
    # @param request UpdateCommentRequest
    # @return [CommentResponse]
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
    # @param request UpdateCommentRequest
    # @return [Array<(CommentResponse, Fixnum, Hash)>]
    # CommentResponse data, response status code and response headers
    private def update_comment_with_http_info(request)
        raise ArgumentError, 'Incorrect request type' unless request.is_a? UpdateCommentRequest

        @api_client.config.logger.debug 'Calling API: WordsApi.update_comment ...' if @api_client.config.debugging
        # verify the required parameter 'name' is set
        raise ArgumentError, 'Missing the required parameter name when calling WordsApi.update_comment' if @api_client.config.client_side_validation && request.name.nil?
        # verify the required parameter 'comment_index' is set
        raise ArgumentError, 'Missing the required parameter comment_index when calling WordsApi.update_comment' if @api_client.config.client_side_validation && request.comment_index.nil?
        # verify the required parameter 'comment' is set
        raise ArgumentError, 'Missing the required parameter comment when calling WordsApi.update_comment' if @api_client.config.client_side_validation && request.comment.nil?

        # resource path
        local_var_path = '/words/{name}/comments/{commentIndex}'[1..-1]
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.nil? ? '' : request.name.to_s)
        local_var_path = local_var_path.sub('{' + downcase_first_letter('CommentIndex') + '}', request.comment_index.nil? ? '' : request.comment_index.to_s)
        local_var_path = local_var_path.sub('//', '/')

        # query parameters
        query_params = {}
        query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
        query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
        query_params[downcase_first_letter('LoadEncoding')] = request.load_encoding unless request.load_encoding.nil?
        query_params[downcase_first_letter('Password')] = request.password unless request.password.nil?
        query_params[downcase_first_letter('DestFileName')] = request.dest_file_name unless request.dest_file_name.nil?
        query_params[downcase_first_letter('RevisionAuthor')] = request.revision_author unless request.revision_author.nil?
        query_params[downcase_first_letter('RevisionDateTime')] = request.revision_date_time unless request.revision_date_time.nil?

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
        auth_names = ['JWT']

        data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names,
                                                        return_type: 'CommentResponse')
        if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#update_comment\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
        end
        [data, status_code, headers]
    end

    # Updates drawing object, returns updated  drawing object's data.
    # @param request UpdateDrawingObjectRequest
    # @return [DrawingObjectResponse]
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

    # Updates drawing object, returns updated  drawing object's data.
    # @param request UpdateDrawingObjectRequest
    # @return [Array<(DrawingObjectResponse, Fixnum, Hash)>]
    # DrawingObjectResponse data, response status code and response headers
    private def update_drawing_object_with_http_info(request)
        raise ArgumentError, 'Incorrect request type' unless request.is_a? UpdateDrawingObjectRequest

        @api_client.config.logger.debug 'Calling API: WordsApi.update_drawing_object ...' if @api_client.config.debugging
        # verify the required parameter 'name' is set
        raise ArgumentError, 'Missing the required parameter name when calling WordsApi.update_drawing_object' if @api_client.config.client_side_validation && request.name.nil?
        # verify the required parameter 'drawing_object' is set
        raise ArgumentError, 'Missing the required parameter drawing_object when calling WordsApi.update_drawing_object' if @api_client.config.client_side_validation && request.drawing_object.nil?
        # verify the required parameter 'image_file' is set
        raise ArgumentError, 'Missing the required parameter image_file when calling WordsApi.update_drawing_object' if @api_client.config.client_side_validation && request.image_file.nil?
        # verify the required parameter 'index' is set
        raise ArgumentError, 'Missing the required parameter index when calling WordsApi.update_drawing_object' if @api_client.config.client_side_validation && request.index.nil?

        # resource path
        local_var_path = '/words/{name}/{nodePath}/drawingObjects/{index}'[1..-1]
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.nil? ? '' : request.name.to_s)
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Index') + '}', request.index.nil? ? '' : request.index.to_s)
        local_var_path = local_var_path.sub('{' + downcase_first_letter('NodePath') + '}', request.node_path.nil? ? '' : request.node_path.to_s)
        local_var_path = local_var_path.sub('//', '/')

        # query parameters
        query_params = {}
        query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
        query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
        query_params[downcase_first_letter('LoadEncoding')] = request.load_encoding unless request.load_encoding.nil?
        query_params[downcase_first_letter('Password')] = request.password unless request.password.nil?
        query_params[downcase_first_letter('DestFileName')] = request.dest_file_name unless request.dest_file_name.nil?
        query_params[downcase_first_letter('RevisionAuthor')] = request.revision_author unless request.revision_author.nil?
        query_params[downcase_first_letter('RevisionDateTime')] = request.revision_date_time unless request.revision_date_time.nil?

        # header parameters
        header_params = {}
        # HTTP header 'Accept' (if needed)
        header_params['Accept'] = @api_client.select_header_accept(['application/xml', 'application/json'])
        # HTTP header 'Content-Type'
        header_params['Content-Type'] = @api_client.select_header_content_type(['multipart/form-data'])

        # form parameters
        form_params = {}
        form_params[downcase_first_letter('DrawingObject')] = request.drawing_object.to_body.to_json
        form_params[downcase_first_letter('ImageFile')] = request.image_file

        # http body (model)
        post_body = nil
        auth_names = ['JWT']

        data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names,
                                                        return_type: 'DrawingObjectResponse')
        if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#update_drawing_object\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
        end
        [data, status_code, headers]
    end

    # Updates field's properties, returns updated field's data.
    # @param request UpdateFieldRequest
    # @return [FieldResponse]
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

    # Updates field's properties, returns updated field's data.
    # @param request UpdateFieldRequest
    # @return [Array<(FieldResponse, Fixnum, Hash)>]
    # FieldResponse data, response status code and response headers
    private def update_field_with_http_info(request)
        raise ArgumentError, 'Incorrect request type' unless request.is_a? UpdateFieldRequest

        @api_client.config.logger.debug 'Calling API: WordsApi.update_field ...' if @api_client.config.debugging
        # verify the required parameter 'name' is set
        raise ArgumentError, 'Missing the required parameter name when calling WordsApi.update_field' if @api_client.config.client_side_validation && request.name.nil?
        # verify the required parameter 'field' is set
        raise ArgumentError, 'Missing the required parameter field when calling WordsApi.update_field' if @api_client.config.client_side_validation && request.field.nil?
        # verify the required parameter 'index' is set
        raise ArgumentError, 'Missing the required parameter index when calling WordsApi.update_field' if @api_client.config.client_side_validation && request.index.nil?

        # resource path
        local_var_path = '/words/{name}/{nodePath}/fields/{index}'[1..-1]
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.nil? ? '' : request.name.to_s)
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Index') + '}', request.index.nil? ? '' : request.index.to_s)
        local_var_path = local_var_path.sub('{' + downcase_first_letter('NodePath') + '}', request.node_path.nil? ? '' : request.node_path.to_s)
        local_var_path = local_var_path.sub('//', '/')

        # query parameters
        query_params = {}
        query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
        query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
        query_params[downcase_first_letter('LoadEncoding')] = request.load_encoding unless request.load_encoding.nil?
        query_params[downcase_first_letter('Password')] = request.password unless request.password.nil?
        query_params[downcase_first_letter('DestFileName')] = request.dest_file_name unless request.dest_file_name.nil?
        query_params[downcase_first_letter('RevisionAuthor')] = request.revision_author unless request.revision_author.nil?
        query_params[downcase_first_letter('RevisionDateTime')] = request.revision_date_time unless request.revision_date_time.nil?

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
        auth_names = ['JWT']

        data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names,
                                                        return_type: 'FieldResponse')
        if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#update_field\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
        end
        [data, status_code, headers]
    end

    # Updates (reevaluate) fields in document.
    # @param request UpdateFieldsRequest
    # @return [DocumentResponse]
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
    # @param request UpdateFieldsRequest
    # @return [Array<(DocumentResponse, Fixnum, Hash)>]
    # DocumentResponse data, response status code and response headers
    private def update_fields_with_http_info(request)
        raise ArgumentError, 'Incorrect request type' unless request.is_a? UpdateFieldsRequest

        @api_client.config.logger.debug 'Calling API: WordsApi.update_fields ...' if @api_client.config.debugging
        # verify the required parameter 'name' is set
        raise ArgumentError, 'Missing the required parameter name when calling WordsApi.update_fields' if @api_client.config.client_side_validation && request.name.nil?

        # resource path
        local_var_path = '/words/{name}/updateFields'[1..-1]
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.nil? ? '' : request.name.to_s)
        local_var_path = local_var_path.sub('//', '/')

        # query parameters
        query_params = {}
        query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
        query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
        query_params[downcase_first_letter('LoadEncoding')] = request.load_encoding unless request.load_encoding.nil?
        query_params[downcase_first_letter('Password')] = request.password unless request.password.nil?
        query_params[downcase_first_letter('DestFileName')] = request.dest_file_name unless request.dest_file_name.nil?

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
        auth_names = ['JWT']

        data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names,
                                                        return_type: 'DocumentResponse')
        if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#update_fields\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
        end
        [data, status_code, headers]
    end

    # Updates footnote's properties, returns updated run's data.
    # @param request UpdateFootnoteRequest
    # @return [FootnoteResponse]
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

    # Updates footnote's properties, returns updated run's data.
    # @param request UpdateFootnoteRequest
    # @return [Array<(FootnoteResponse, Fixnum, Hash)>]
    # FootnoteResponse data, response status code and response headers
    private def update_footnote_with_http_info(request)
        raise ArgumentError, 'Incorrect request type' unless request.is_a? UpdateFootnoteRequest

        @api_client.config.logger.debug 'Calling API: WordsApi.update_footnote ...' if @api_client.config.debugging
        # verify the required parameter 'name' is set
        raise ArgumentError, 'Missing the required parameter name when calling WordsApi.update_footnote' if @api_client.config.client_side_validation && request.name.nil?
        # verify the required parameter 'footnote_dto' is set
        raise ArgumentError, 'Missing the required parameter footnote_dto when calling WordsApi.update_footnote' if @api_client.config.client_side_validation && request.footnote_dto.nil?
        # verify the required parameter 'index' is set
        raise ArgumentError, 'Missing the required parameter index when calling WordsApi.update_footnote' if @api_client.config.client_side_validation && request.index.nil?

        # resource path
        local_var_path = '/words/{name}/{nodePath}/footnotes/{index}'[1..-1]
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.nil? ? '' : request.name.to_s)
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Index') + '}', request.index.nil? ? '' : request.index.to_s)
        local_var_path = local_var_path.sub('{' + downcase_first_letter('NodePath') + '}', request.node_path.nil? ? '' : request.node_path.to_s)
        local_var_path = local_var_path.sub('//', '/')

        # query parameters
        query_params = {}
        query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
        query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
        query_params[downcase_first_letter('LoadEncoding')] = request.load_encoding unless request.load_encoding.nil?
        query_params[downcase_first_letter('Password')] = request.password unless request.password.nil?
        query_params[downcase_first_letter('DestFileName')] = request.dest_file_name unless request.dest_file_name.nil?
        query_params[downcase_first_letter('RevisionAuthor')] = request.revision_author unless request.revision_author.nil?
        query_params[downcase_first_letter('RevisionDateTime')] = request.revision_date_time unless request.revision_date_time.nil?

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
        auth_names = ['JWT']

        data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names,
                                                        return_type: 'FootnoteResponse')
        if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#update_footnote\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
        end
        [data, status_code, headers]
    end

    # Updates properties of form field, returns updated form field.
    # @param request UpdateFormFieldRequest
    # @return [FormFieldResponse]
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
    # @param request UpdateFormFieldRequest
    # @return [Array<(FormFieldResponse, Fixnum, Hash)>]
    # FormFieldResponse data, response status code and response headers
    private def update_form_field_with_http_info(request)
        raise ArgumentError, 'Incorrect request type' unless request.is_a? UpdateFormFieldRequest

        @api_client.config.logger.debug 'Calling API: WordsApi.update_form_field ...' if @api_client.config.debugging
        # verify the required parameter 'name' is set
        raise ArgumentError, 'Missing the required parameter name when calling WordsApi.update_form_field' if @api_client.config.client_side_validation && request.name.nil?
        # verify the required parameter 'form_field' is set
        raise ArgumentError, 'Missing the required parameter form_field when calling WordsApi.update_form_field' if @api_client.config.client_side_validation && request.form_field.nil?
        # verify the required parameter 'index' is set
        raise ArgumentError, 'Missing the required parameter index when calling WordsApi.update_form_field' if @api_client.config.client_side_validation && request.index.nil?

        # resource path
        local_var_path = '/words/{name}/{nodePath}/formfields/{index}'[1..-1]
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.nil? ? '' : request.name.to_s)
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Index') + '}', request.index.nil? ? '' : request.index.to_s)
        local_var_path = local_var_path.sub('{' + downcase_first_letter('NodePath') + '}', request.node_path.nil? ? '' : request.node_path.to_s)
        local_var_path = local_var_path.sub('//', '/')

        # query parameters
        query_params = {}
        query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
        query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
        query_params[downcase_first_letter('LoadEncoding')] = request.load_encoding unless request.load_encoding.nil?
        query_params[downcase_first_letter('Password')] = request.password unless request.password.nil?
        query_params[downcase_first_letter('DestFileName')] = request.dest_file_name unless request.dest_file_name.nil?
        query_params[downcase_first_letter('RevisionAuthor')] = request.revision_author unless request.revision_author.nil?
        query_params[downcase_first_letter('RevisionDateTime')] = request.revision_date_time unless request.revision_date_time.nil?

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
        auth_names = ['JWT']

        data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names,
                                                        return_type: 'FormFieldResponse')
        if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#update_form_field\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
        end
        [data, status_code, headers]
    end

    # Updates list properties, returns updated list.
    # @param request UpdateListRequest
    # @return [ListResponse]
    def update_list(request)
        begin
        data, _status_code, _headers = update_list_with_http_info(request)
        rescue ApiError => e
            if e.code == 401
            request_token
            data, _status_code, _headers = update_list_with_http_info(request)
            else
            raise
            end
        end
        data
    end

    # Updates list properties, returns updated list.
    # @param request UpdateListRequest
    # @return [Array<(ListResponse, Fixnum, Hash)>]
    # ListResponse data, response status code and response headers
    private def update_list_with_http_info(request)
        raise ArgumentError, 'Incorrect request type' unless request.is_a? UpdateListRequest

        @api_client.config.logger.debug 'Calling API: WordsApi.update_list ...' if @api_client.config.debugging
        # verify the required parameter 'name' is set
        raise ArgumentError, 'Missing the required parameter name when calling WordsApi.update_list' if @api_client.config.client_side_validation && request.name.nil?
        # verify the required parameter 'list_update' is set
        raise ArgumentError, 'Missing the required parameter list_update when calling WordsApi.update_list' if @api_client.config.client_side_validation && request.list_update.nil?
        # verify the required parameter 'list_id' is set
        raise ArgumentError, 'Missing the required parameter list_id when calling WordsApi.update_list' if @api_client.config.client_side_validation && request.list_id.nil?

        # resource path
        local_var_path = '/words/{name}/lists/{listId}'[1..-1]
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.nil? ? '' : request.name.to_s)
        local_var_path = local_var_path.sub('{' + downcase_first_letter('ListId') + '}', request.list_id.nil? ? '' : request.list_id.to_s)
        local_var_path = local_var_path.sub('//', '/')

        # query parameters
        query_params = {}
        query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
        query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
        query_params[downcase_first_letter('LoadEncoding')] = request.load_encoding unless request.load_encoding.nil?
        query_params[downcase_first_letter('Password')] = request.password unless request.password.nil?
        query_params[downcase_first_letter('DestFileName')] = request.dest_file_name unless request.dest_file_name.nil?
        query_params[downcase_first_letter('RevisionAuthor')] = request.revision_author unless request.revision_author.nil?
        query_params[downcase_first_letter('RevisionDateTime')] = request.revision_date_time unless request.revision_date_time.nil?

        # header parameters
        header_params = {}
        # HTTP header 'Accept' (if needed)
        header_params['Accept'] = @api_client.select_header_accept(['application/xml', 'application/json'])
        # HTTP header 'Content-Type'
        header_params['Content-Type'] = @api_client.select_header_content_type(['application/xml', 'application/json'])

        # form parameters
        form_params = {}

        # http body (model)
        post_body = @api_client.object_to_http_body(request.list_update)
        auth_names = ['JWT']

        data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names,
                                                        return_type: 'ListResponse')
        if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#update_list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
        end
        [data, status_code, headers]
    end

    # Updates list level in document list, returns updated list.
    # @param request UpdateListLevelRequest
    # @return [ListResponse]
    def update_list_level(request)
        begin
        data, _status_code, _headers = update_list_level_with_http_info(request)
        rescue ApiError => e
            if e.code == 401
            request_token
            data, _status_code, _headers = update_list_level_with_http_info(request)
            else
            raise
            end
        end
        data
    end

    # Updates list level in document list, returns updated list.
    # @param request UpdateListLevelRequest
    # @return [Array<(ListResponse, Fixnum, Hash)>]
    # ListResponse data, response status code and response headers
    private def update_list_level_with_http_info(request)
        raise ArgumentError, 'Incorrect request type' unless request.is_a? UpdateListLevelRequest

        @api_client.config.logger.debug 'Calling API: WordsApi.update_list_level ...' if @api_client.config.debugging
        # verify the required parameter 'name' is set
        raise ArgumentError, 'Missing the required parameter name when calling WordsApi.update_list_level' if @api_client.config.client_side_validation && request.name.nil?
        # verify the required parameter 'list_update' is set
        raise ArgumentError, 'Missing the required parameter list_update when calling WordsApi.update_list_level' if @api_client.config.client_side_validation && request.list_update.nil?
        # verify the required parameter 'list_id' is set
        raise ArgumentError, 'Missing the required parameter list_id when calling WordsApi.update_list_level' if @api_client.config.client_side_validation && request.list_id.nil?
        # verify the required parameter 'list_level' is set
        raise ArgumentError, 'Missing the required parameter list_level when calling WordsApi.update_list_level' if @api_client.config.client_side_validation && request.list_level.nil?

        # resource path
        local_var_path = '/words/{name}/lists/{listId}/listLevels/{listLevel}'[1..-1]
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.nil? ? '' : request.name.to_s)
        local_var_path = local_var_path.sub('{' + downcase_first_letter('ListId') + '}', request.list_id.nil? ? '' : request.list_id.to_s)
        local_var_path = local_var_path.sub('{' + downcase_first_letter('ListLevel') + '}', request.list_level.nil? ? '' : request.list_level.to_s)
        local_var_path = local_var_path.sub('//', '/')

        # query parameters
        query_params = {}
        query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
        query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
        query_params[downcase_first_letter('LoadEncoding')] = request.load_encoding unless request.load_encoding.nil?
        query_params[downcase_first_letter('Password')] = request.password unless request.password.nil?
        query_params[downcase_first_letter('DestFileName')] = request.dest_file_name unless request.dest_file_name.nil?
        query_params[downcase_first_letter('RevisionAuthor')] = request.revision_author unless request.revision_author.nil?
        query_params[downcase_first_letter('RevisionDateTime')] = request.revision_date_time unless request.revision_date_time.nil?

        # header parameters
        header_params = {}
        # HTTP header 'Accept' (if needed)
        header_params['Accept'] = @api_client.select_header_accept(['application/xml', 'application/json'])
        # HTTP header 'Content-Type'
        header_params['Content-Type'] = @api_client.select_header_content_type(['application/xml', 'application/json'])

        # form parameters
        form_params = {}

        # http body (model)
        post_body = @api_client.object_to_http_body(request.list_update)
        auth_names = ['JWT']

        data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names,
                                                        return_type: 'ListResponse')
        if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#update_list_level\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
        end
        [data, status_code, headers]
    end

    # Updates paragraph format properties, returns updated format properties.
    # @param request UpdateParagraphFormatRequest
    # @return [ParagraphFormatResponse]
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
    # @param request UpdateParagraphFormatRequest
    # @return [Array<(ParagraphFormatResponse, Fixnum, Hash)>]
    # ParagraphFormatResponse data, response status code and response headers
    private def update_paragraph_format_with_http_info(request)
        raise ArgumentError, 'Incorrect request type' unless request.is_a? UpdateParagraphFormatRequest

        @api_client.config.logger.debug 'Calling API: WordsApi.update_paragraph_format ...' if @api_client.config.debugging
        # verify the required parameter 'name' is set
        raise ArgumentError, 'Missing the required parameter name when calling WordsApi.update_paragraph_format' if @api_client.config.client_side_validation && request.name.nil?
        # verify the required parameter 'dto' is set
        raise ArgumentError, 'Missing the required parameter dto when calling WordsApi.update_paragraph_format' if @api_client.config.client_side_validation && request.dto.nil?
        # verify the required parameter 'index' is set
        raise ArgumentError, 'Missing the required parameter index when calling WordsApi.update_paragraph_format' if @api_client.config.client_side_validation && request.index.nil?

        # resource path
        local_var_path = '/words/{name}/{nodePath}/paragraphs/{index}/format'[1..-1]
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.nil? ? '' : request.name.to_s)
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Index') + '}', request.index.nil? ? '' : request.index.to_s)
        local_var_path = local_var_path.sub('{' + downcase_first_letter('NodePath') + '}', request.node_path.nil? ? '' : request.node_path.to_s)
        local_var_path = local_var_path.sub('//', '/')

        # query parameters
        query_params = {}
        query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
        query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
        query_params[downcase_first_letter('LoadEncoding')] = request.load_encoding unless request.load_encoding.nil?
        query_params[downcase_first_letter('Password')] = request.password unless request.password.nil?
        query_params[downcase_first_letter('DestFileName')] = request.dest_file_name unless request.dest_file_name.nil?
        query_params[downcase_first_letter('RevisionAuthor')] = request.revision_author unless request.revision_author.nil?
        query_params[downcase_first_letter('RevisionDateTime')] = request.revision_date_time unless request.revision_date_time.nil?

        # header parameters
        header_params = {}
        # HTTP header 'Accept' (if needed)
        header_params['Accept'] = @api_client.select_header_accept(['application/xml', 'application/json'])
        # HTTP header 'Content-Type'
        header_params['Content-Type'] = @api_client.select_header_content_type(['application/xml', 'application/json'])

        # form parameters
        form_params = {}

        # http body (model)
        post_body = @api_client.object_to_http_body(request.dto)
        auth_names = ['JWT']

        data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names,
                                                        return_type: 'ParagraphFormatResponse')
        if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#update_paragraph_format\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
        end
        [data, status_code, headers]
    end

    # Updates paragraph list format properties, returns updated list format properties.
    # @param request UpdateParagraphListFormatRequest
    # @return [ParagraphListFormatResponse]
    def update_paragraph_list_format(request)
        begin
        data, _status_code, _headers = update_paragraph_list_format_with_http_info(request)
        rescue ApiError => e
            if e.code == 401
            request_token
            data, _status_code, _headers = update_paragraph_list_format_with_http_info(request)
            else
            raise
            end
        end
        data
    end

    # Updates paragraph list format properties, returns updated list format properties.
    # @param request UpdateParagraphListFormatRequest
    # @return [Array<(ParagraphListFormatResponse, Fixnum, Hash)>]
    # ParagraphListFormatResponse data, response status code and response headers
    private def update_paragraph_list_format_with_http_info(request)
        raise ArgumentError, 'Incorrect request type' unless request.is_a? UpdateParagraphListFormatRequest

        @api_client.config.logger.debug 'Calling API: WordsApi.update_paragraph_list_format ...' if @api_client.config.debugging
        # verify the required parameter 'name' is set
        raise ArgumentError, 'Missing the required parameter name when calling WordsApi.update_paragraph_list_format' if @api_client.config.client_side_validation && request.name.nil?
        # verify the required parameter 'dto' is set
        raise ArgumentError, 'Missing the required parameter dto when calling WordsApi.update_paragraph_list_format' if @api_client.config.client_side_validation && request.dto.nil?
        # verify the required parameter 'index' is set
        raise ArgumentError, 'Missing the required parameter index when calling WordsApi.update_paragraph_list_format' if @api_client.config.client_side_validation && request.index.nil?

        # resource path
        local_var_path = '/words/{name}/{nodePath}/paragraphs/{index}/listFormat'[1..-1]
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.nil? ? '' : request.name.to_s)
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Index') + '}', request.index.nil? ? '' : request.index.to_s)
        local_var_path = local_var_path.sub('{' + downcase_first_letter('NodePath') + '}', request.node_path.nil? ? '' : request.node_path.to_s)
        local_var_path = local_var_path.sub('//', '/')

        # query parameters
        query_params = {}
        query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
        query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
        query_params[downcase_first_letter('LoadEncoding')] = request.load_encoding unless request.load_encoding.nil?
        query_params[downcase_first_letter('Password')] = request.password unless request.password.nil?
        query_params[downcase_first_letter('DestFileName')] = request.dest_file_name unless request.dest_file_name.nil?
        query_params[downcase_first_letter('RevisionAuthor')] = request.revision_author unless request.revision_author.nil?
        query_params[downcase_first_letter('RevisionDateTime')] = request.revision_date_time unless request.revision_date_time.nil?

        # header parameters
        header_params = {}
        # HTTP header 'Accept' (if needed)
        header_params['Accept'] = @api_client.select_header_accept(['application/xml', 'application/json'])
        # HTTP header 'Content-Type'
        header_params['Content-Type'] = @api_client.select_header_content_type(['application/xml', 'application/json'])

        # form parameters
        form_params = {}

        # http body (model)
        post_body = @api_client.object_to_http_body(request.dto)
        auth_names = ['JWT']

        data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names,
                                                        return_type: 'ParagraphListFormatResponse')
        if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#update_paragraph_list_format\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
        end
        [data, status_code, headers]
    end

    # Updates run's properties, returns updated run's data.
    # @param request UpdateRunRequest
    # @return [RunResponse]
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

    # Updates run's properties, returns updated run's data.
    # @param request UpdateRunRequest
    # @return [Array<(RunResponse, Fixnum, Hash)>]
    # RunResponse data, response status code and response headers
    private def update_run_with_http_info(request)
        raise ArgumentError, 'Incorrect request type' unless request.is_a? UpdateRunRequest

        @api_client.config.logger.debug 'Calling API: WordsApi.update_run ...' if @api_client.config.debugging
        # verify the required parameter 'name' is set
        raise ArgumentError, 'Missing the required parameter name when calling WordsApi.update_run' if @api_client.config.client_side_validation && request.name.nil?
        # verify the required parameter 'run' is set
        raise ArgumentError, 'Missing the required parameter run when calling WordsApi.update_run' if @api_client.config.client_side_validation && request.run.nil?
        # verify the required parameter 'paragraph_path' is set
        raise ArgumentError, 'Missing the required parameter paragraph_path when calling WordsApi.update_run' if @api_client.config.client_side_validation && request.paragraph_path.nil?
        # verify the required parameter 'index' is set
        raise ArgumentError, 'Missing the required parameter index when calling WordsApi.update_run' if @api_client.config.client_side_validation && request.index.nil?

        # resource path
        local_var_path = '/words/{name}/{paragraphPath}/runs/{index}'[1..-1]
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.nil? ? '' : request.name.to_s)
        local_var_path = local_var_path.sub('{' + downcase_first_letter('ParagraphPath') + '}', request.paragraph_path.nil? ? '' : request.paragraph_path.to_s)
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Index') + '}', request.index.nil? ? '' : request.index.to_s)
        local_var_path = local_var_path.sub('//', '/')

        # query parameters
        query_params = {}
        query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
        query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
        query_params[downcase_first_letter('LoadEncoding')] = request.load_encoding unless request.load_encoding.nil?
        query_params[downcase_first_letter('Password')] = request.password unless request.password.nil?
        query_params[downcase_first_letter('DestFileName')] = request.dest_file_name unless request.dest_file_name.nil?
        query_params[downcase_first_letter('RevisionAuthor')] = request.revision_author unless request.revision_author.nil?
        query_params[downcase_first_letter('RevisionDateTime')] = request.revision_date_time unless request.revision_date_time.nil?

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
        auth_names = ['JWT']

        data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names,
                                                        return_type: 'RunResponse')
        if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#update_run\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
        end
        [data, status_code, headers]
    end

    # Updates font properties, returns updated font data.
    # @param request UpdateRunFontRequest
    # @return [FontResponse]
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
    # @param request UpdateRunFontRequest
    # @return [Array<(FontResponse, Fixnum, Hash)>]
    # FontResponse data, response status code and response headers
    private def update_run_font_with_http_info(request)
        raise ArgumentError, 'Incorrect request type' unless request.is_a? UpdateRunFontRequest

        @api_client.config.logger.debug 'Calling API: WordsApi.update_run_font ...' if @api_client.config.debugging
        # verify the required parameter 'name' is set
        raise ArgumentError, 'Missing the required parameter name when calling WordsApi.update_run_font' if @api_client.config.client_side_validation && request.name.nil?
        # verify the required parameter 'font_dto' is set
        raise ArgumentError, 'Missing the required parameter font_dto when calling WordsApi.update_run_font' if @api_client.config.client_side_validation && request.font_dto.nil?
        # verify the required parameter 'paragraph_path' is set
        raise ArgumentError, 'Missing the required parameter paragraph_path when calling WordsApi.update_run_font' if @api_client.config.client_side_validation && request.paragraph_path.nil?
        # verify the required parameter 'index' is set
        raise ArgumentError, 'Missing the required parameter index when calling WordsApi.update_run_font' if @api_client.config.client_side_validation && request.index.nil?

        # resource path
        local_var_path = '/words/{name}/{paragraphPath}/runs/{index}/font'[1..-1]
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.nil? ? '' : request.name.to_s)
        local_var_path = local_var_path.sub('{' + downcase_first_letter('ParagraphPath') + '}', request.paragraph_path.nil? ? '' : request.paragraph_path.to_s)
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Index') + '}', request.index.nil? ? '' : request.index.to_s)
        local_var_path = local_var_path.sub('//', '/')

        # query parameters
        query_params = {}
        query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
        query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
        query_params[downcase_first_letter('LoadEncoding')] = request.load_encoding unless request.load_encoding.nil?
        query_params[downcase_first_letter('Password')] = request.password unless request.password.nil?
        query_params[downcase_first_letter('DestFileName')] = request.dest_file_name unless request.dest_file_name.nil?
        query_params[downcase_first_letter('RevisionAuthor')] = request.revision_author unless request.revision_author.nil?
        query_params[downcase_first_letter('RevisionDateTime')] = request.revision_date_time unless request.revision_date_time.nil?

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
        auth_names = ['JWT']

        data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names,
                                                        return_type: 'FontResponse')
        if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#update_run_font\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
        end
        [data, status_code, headers]
    end

    # Updates page setup of section.
    # @param request UpdateSectionPageSetupRequest
    # @return [SectionPageSetupResponse]
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
        local_var_path = '/words/{name}/sections/{sectionIndex}/pageSetup'[1..-1]
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.nil? ? '' : request.name.to_s)
        local_var_path = local_var_path.sub('{' + downcase_first_letter('SectionIndex') + '}', request.section_index.nil? ? '' : request.section_index.to_s)
        local_var_path = local_var_path.sub('//', '/')

        # query parameters
        query_params = {}
        query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
        query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
        query_params[downcase_first_letter('LoadEncoding')] = request.load_encoding unless request.load_encoding.nil?
        query_params[downcase_first_letter('Password')] = request.password unless request.password.nil?
        query_params[downcase_first_letter('DestFileName')] = request.dest_file_name unless request.dest_file_name.nil?
        query_params[downcase_first_letter('RevisionAuthor')] = request.revision_author unless request.revision_author.nil?
        query_params[downcase_first_letter('RevisionDateTime')] = request.revision_date_time unless request.revision_date_time.nil?

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
        auth_names = ['JWT']

        data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
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

    # Updates style properties, returns an updated style.
    # @param request UpdateStyleRequest
    # @return [StyleResponse]
    def update_style(request)
        begin
        data, _status_code, _headers = update_style_with_http_info(request)
        rescue ApiError => e
            if e.code == 401
            request_token
            data, _status_code, _headers = update_style_with_http_info(request)
            else
            raise
            end
        end
        data
    end

    # Updates style properties, returns an updated style.
    # @param request UpdateStyleRequest
    # @return [Array<(StyleResponse, Fixnum, Hash)>]
    # StyleResponse data, response status code and response headers
    private def update_style_with_http_info(request)
        raise ArgumentError, 'Incorrect request type' unless request.is_a? UpdateStyleRequest

        @api_client.config.logger.debug 'Calling API: WordsApi.update_style ...' if @api_client.config.debugging
        # verify the required parameter 'name' is set
        raise ArgumentError, 'Missing the required parameter name when calling WordsApi.update_style' if @api_client.config.client_side_validation && request.name.nil?
        # verify the required parameter 'style_update' is set
        raise ArgumentError, 'Missing the required parameter style_update when calling WordsApi.update_style' if @api_client.config.client_side_validation && request.style_update.nil?
        # verify the required parameter 'style_name' is set
        raise ArgumentError, 'Missing the required parameter style_name when calling WordsApi.update_style' if @api_client.config.client_side_validation && request.style_name.nil?

        # resource path
        local_var_path = '/words/{name}/styles/{styleName}/update'[1..-1]
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.nil? ? '' : request.name.to_s)
        local_var_path = local_var_path.sub('{' + downcase_first_letter('StyleName') + '}', request.style_name.nil? ? '' : request.style_name.to_s)
        local_var_path = local_var_path.sub('//', '/')

        # query parameters
        query_params = {}
        query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
        query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
        query_params[downcase_first_letter('LoadEncoding')] = request.load_encoding unless request.load_encoding.nil?
        query_params[downcase_first_letter('Password')] = request.password unless request.password.nil?
        query_params[downcase_first_letter('DestFileName')] = request.dest_file_name unless request.dest_file_name.nil?
        query_params[downcase_first_letter('RevisionAuthor')] = request.revision_author unless request.revision_author.nil?
        query_params[downcase_first_letter('RevisionDateTime')] = request.revision_date_time unless request.revision_date_time.nil?

        # header parameters
        header_params = {}
        # HTTP header 'Accept' (if needed)
        header_params['Accept'] = @api_client.select_header_accept(['application/xml', 'application/json'])
        # HTTP header 'Content-Type'
        header_params['Content-Type'] = @api_client.select_header_content_type(['application/xml', 'application/json'])

        # form parameters
        form_params = {}

        # http body (model)
        post_body = @api_client.object_to_http_body(request.style_update)
        auth_names = ['JWT']

        data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names,
                                                        return_type: 'StyleResponse')
        if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        WordsApi#update_style\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
        end
        [data, status_code, headers]
    end

    # Updates a table cell format.
    # @param request UpdateTableCellFormatRequest
    # @return [TableCellFormatResponse]
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
    # @param request UpdateTableCellFormatRequest
    # @return [Array<(TableCellFormatResponse, Fixnum, Hash)>]
    # TableCellFormatResponse data, response status code and response headers
    private def update_table_cell_format_with_http_info(request)
        raise ArgumentError, 'Incorrect request type' unless request.is_a? UpdateTableCellFormatRequest

        @api_client.config.logger.debug 'Calling API: WordsApi.update_table_cell_format ...' if @api_client.config.debugging
        # verify the required parameter 'name' is set
        raise ArgumentError, 'Missing the required parameter name when calling WordsApi.update_table_cell_format' if @api_client.config.client_side_validation && request.name.nil?
        # verify the required parameter 'format' is set
        raise ArgumentError, 'Missing the required parameter format when calling WordsApi.update_table_cell_format' if @api_client.config.client_side_validation && request.format.nil?
        # verify the required parameter 'table_row_path' is set
        raise ArgumentError, 'Missing the required parameter table_row_path when calling WordsApi.update_table_cell_format' if @api_client.config.client_side_validation && request.table_row_path.nil?
        # verify the required parameter 'index' is set
        raise ArgumentError, 'Missing the required parameter index when calling WordsApi.update_table_cell_format' if @api_client.config.client_side_validation && request.index.nil?

        # resource path
        local_var_path = '/words/{name}/{tableRowPath}/cells/{index}/cellformat'[1..-1]
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.nil? ? '' : request.name.to_s)
        local_var_path = local_var_path.sub('{' + downcase_first_letter('TableRowPath') + '}', request.table_row_path.nil? ? '' : request.table_row_path.to_s)
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Index') + '}', request.index.nil? ? '' : request.index.to_s)
        local_var_path = local_var_path.sub('//', '/')

        # query parameters
        query_params = {}
        query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
        query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
        query_params[downcase_first_letter('LoadEncoding')] = request.load_encoding unless request.load_encoding.nil?
        query_params[downcase_first_letter('Password')] = request.password unless request.password.nil?
        query_params[downcase_first_letter('DestFileName')] = request.dest_file_name unless request.dest_file_name.nil?
        query_params[downcase_first_letter('RevisionAuthor')] = request.revision_author unless request.revision_author.nil?
        query_params[downcase_first_letter('RevisionDateTime')] = request.revision_date_time unless request.revision_date_time.nil?

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
        auth_names = ['JWT']

        data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
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
    # @param request UpdateTablePropertiesRequest
    # @return [TablePropertiesResponse]
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
    # @param request UpdateTablePropertiesRequest
    # @return [Array<(TablePropertiesResponse, Fixnum, Hash)>]
    # TablePropertiesResponse data, response status code and response headers
    private def update_table_properties_with_http_info(request)
        raise ArgumentError, 'Incorrect request type' unless request.is_a? UpdateTablePropertiesRequest

        @api_client.config.logger.debug 'Calling API: WordsApi.update_table_properties ...' if @api_client.config.debugging
        # verify the required parameter 'name' is set
        raise ArgumentError, 'Missing the required parameter name when calling WordsApi.update_table_properties' if @api_client.config.client_side_validation && request.name.nil?
        # verify the required parameter 'properties' is set
        raise ArgumentError, 'Missing the required parameter properties when calling WordsApi.update_table_properties' if @api_client.config.client_side_validation && request.properties.nil?
        # verify the required parameter 'index' is set
        raise ArgumentError, 'Missing the required parameter index when calling WordsApi.update_table_properties' if @api_client.config.client_side_validation && request.index.nil?

        # resource path
        local_var_path = '/words/{name}/{nodePath}/tables/{index}/properties'[1..-1]
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.nil? ? '' : request.name.to_s)
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Index') + '}', request.index.nil? ? '' : request.index.to_s)
        local_var_path = local_var_path.sub('{' + downcase_first_letter('NodePath') + '}', request.node_path.nil? ? '' : request.node_path.to_s)
        local_var_path = local_var_path.sub('//', '/')

        # query parameters
        query_params = {}
        query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
        query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
        query_params[downcase_first_letter('LoadEncoding')] = request.load_encoding unless request.load_encoding.nil?
        query_params[downcase_first_letter('Password')] = request.password unless request.password.nil?
        query_params[downcase_first_letter('DestFileName')] = request.dest_file_name unless request.dest_file_name.nil?
        query_params[downcase_first_letter('RevisionAuthor')] = request.revision_author unless request.revision_author.nil?
        query_params[downcase_first_letter('RevisionDateTime')] = request.revision_date_time unless request.revision_date_time.nil?

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
        auth_names = ['JWT']

        data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
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
    # @param request UpdateTableRowFormatRequest
    # @return [TableRowFormatResponse]
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
    # @param request UpdateTableRowFormatRequest
    # @return [Array<(TableRowFormatResponse, Fixnum, Hash)>]
    # TableRowFormatResponse data, response status code and response headers
    private def update_table_row_format_with_http_info(request)
        raise ArgumentError, 'Incorrect request type' unless request.is_a? UpdateTableRowFormatRequest

        @api_client.config.logger.debug 'Calling API: WordsApi.update_table_row_format ...' if @api_client.config.debugging
        # verify the required parameter 'name' is set
        raise ArgumentError, 'Missing the required parameter name when calling WordsApi.update_table_row_format' if @api_client.config.client_side_validation && request.name.nil?
        # verify the required parameter 'format' is set
        raise ArgumentError, 'Missing the required parameter format when calling WordsApi.update_table_row_format' if @api_client.config.client_side_validation && request.format.nil?
        # verify the required parameter 'table_path' is set
        raise ArgumentError, 'Missing the required parameter table_path when calling WordsApi.update_table_row_format' if @api_client.config.client_side_validation && request.table_path.nil?
        # verify the required parameter 'index' is set
        raise ArgumentError, 'Missing the required parameter index when calling WordsApi.update_table_row_format' if @api_client.config.client_side_validation && request.index.nil?

        # resource path
        local_var_path = '/words/{name}/{tablePath}/rows/{index}/rowformat'[1..-1]
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.nil? ? '' : request.name.to_s)
        local_var_path = local_var_path.sub('{' + downcase_first_letter('TablePath') + '}', request.table_path.nil? ? '' : request.table_path.to_s)
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Index') + '}', request.index.nil? ? '' : request.index.to_s)
        local_var_path = local_var_path.sub('//', '/')

        # query parameters
        query_params = {}
        query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
        query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
        query_params[downcase_first_letter('LoadEncoding')] = request.load_encoding unless request.load_encoding.nil?
        query_params[downcase_first_letter('Password')] = request.password unless request.password.nil?
        query_params[downcase_first_letter('DestFileName')] = request.dest_file_name unless request.dest_file_name.nil?
        query_params[downcase_first_letter('RevisionAuthor')] = request.revision_author unless request.revision_author.nil?
        query_params[downcase_first_letter('RevisionDateTime')] = request.revision_date_time unless request.revision_date_time.nil?

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
        auth_names = ['JWT']

        data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
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

    # Upload file.
    # @param request UploadFileRequest
    # @return [FilesUploadResult]
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

    # Upload file.
    # @param request UploadFileRequest
    # @return [Array<(FilesUploadResult, Fixnum, Hash)>]
    # FilesUploadResult data, response status code and response headers
    private def upload_file_with_http_info(request)
        raise ArgumentError, 'Incorrect request type' unless request.is_a? UploadFileRequest

        @api_client.config.logger.debug 'Calling API: WordsApi.upload_file ...' if @api_client.config.debugging
        # verify the required parameter 'file_content' is set
        raise ArgumentError, 'Missing the required parameter file_content when calling WordsApi.upload_file' if @api_client.config.client_side_validation && request.file_content.nil?
        # verify the required parameter 'path' is set
        raise ArgumentError, 'Missing the required parameter path when calling WordsApi.upload_file' if @api_client.config.client_side_validation && request.path.nil?

        # resource path
        local_var_path = '/words/storage/file/{path}'[1..-1]
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Path') + '}', request.path.nil? ? '' : request.path.to_s)
        local_var_path = local_var_path.sub('//', '/')

        # query parameters
        query_params = {}
        query_params[downcase_first_letter('StorageName')] = request.storage_name unless request.storage_name.nil?

        # header parameters
        header_params = {}
        # HTTP header 'Accept' (if needed)
        header_params['Accept'] = @api_client.select_header_accept(['application/xml', 'application/json'])
        # HTTP header 'Content-Type'
        header_params['Content-Type'] = @api_client.select_header_content_type(['multipart/form-data'])

        # form parameters
        form_params = {}
        form_params[downcase_first_letter('FileContent')] = request.file_content

        # http body (model)
        post_body = nil
        auth_names = ['JWT']

        data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names,
                                                        return_type: 'FilesUploadResult')
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
