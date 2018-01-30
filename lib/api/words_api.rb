 #
 # --------------------------------------------------------------------------------------------------------------------
 # <copyright company="Aspose" file="words_api.rb">
 #   Copyright (c) 2017 Aspose.Words for Cloud
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
 # --------------------------------------------------------------------------------------------------------------------
 #

require "uri"

 #
 # Aspose.Words for Cloud API
 #
module RubySDK
  class WordsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Accept all revisions in document
    # 
    # @param name The document name.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder Original document folder.
    # @option opts [String] :storage File storage, which have to be used.
    # @option opts [String] :load_encoding Encoding that will be used to load an HTML (or TXT) document if the encoding is not specified in HTML.
    # @option opts [String] :password Password for opening an encrypted document.
    # @option opts [String] :dest_file_name Result name of the document after the operation. If this parameter is omitted then result of the operation will be saved as the source document.
    # @return [RevisionsModificationResponse]
    def accept_all_revisions(acceptAllRevisionsRequest)
      data, _status_code, _headers = accept_all_revisions_with_http_info(acceptAllRevisionsRequest)
      data
    end

    # Accept all revisions in document
    # 
    # @param name The document name.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder Original document folder.
    # @option opts [String] :storage File storage, which have to be used.
    # @option opts [String] :load_encoding Encoding that will be used to load an HTML (or TXT) document if the encoding is not specified in HTML.
    # @option opts [String] :password Password for opening an encrypted document.
    # @option opts [String] :dest_file_name Result name of the document after the operation. If this parameter is omitted then result of the operation will be saved as the source document.
    # @return [Array<(RevisionsModificationResponse, Fixnum, Hash)>] RevisionsModificationResponse data, response status code and response headers
    def accept_all_revisions_with_http_info(acceptAllRevisionsRequest)
	  if !acceptAllRevisionsRequest.is_a? accept_all_revisionsRequest
	    fail ArgumentError, "Incorrect request type"
	  end
	  
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WordsApi.accept_all_revisions ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && acceptAllRevisionsRequest.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling WordsApi.accept_all_revisions"
      end
      # resource path
      local_var_path = "/words/{name}/revisions/acceptAll"
	  local_var_path.sub('{' + downcase_first_letter('Name') + '}', acceptAllRevisionsRequest.name.to_s)

      # query parameters
      query_params = {}
      query_params[downcase_first_letter('Folder')] = acceptAllRevisionsRequest.folder unless acceptAllRevisionsRequest.folder.nil?
      query_params[downcase_first_letter('Storage')] = acceptAllRevisionsRequest.storage unless acceptAllRevisionsRequest.storage.nil?
      query_params[downcase_first_letter('LoadEncoding')] = acceptAllRevisionsRequest.load_encoding unless acceptAllRevisionsRequest.load_encoding.nil?
      query_params[downcase_first_letter('Password')] = acceptAllRevisionsRequest.password unless acceptAllRevisionsRequest.password.nil?
      query_params[downcase_first_letter('DestFileName')] = acceptAllRevisionsRequest.dest_file_name unless acceptAllRevisionsRequest.dest_file_name.nil?

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
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'RevisionsModificationResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WordsApi#accept_all_revisions\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Add new or update existing document property.
    # 
    # @param name The document name.
    # @param property_name The property name.
    # @param property The property with new value.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder Original document folder.
    # @option opts [String] :storage File storage, which have to be used.
    # @option opts [String] :load_encoding Encoding that will be used to load an HTML (or TXT) document if the encoding is not specified in HTML.
    # @option opts [String] :password Password for opening an encrypted document.
    # @option opts [String] :dest_file_name Result name of the document after the operation. If this parameter is omitted then result of the operation will be saved as the source document.
    # @option opts [String] :revision_author Initials of the author to use for revisions.If you set this parameter and then make some changes to the document programmatically, save the document and later open the document in MS Word you will see these changes as revisions.
    # @option opts [String] :revision_date_time The date and time to use for revisions.
    # @return [DocumentPropertyResponse]
    def create_or_update_document_property(createOrUpdateDocumentPropertyRequest)
      data, _status_code, _headers = create_or_update_document_property_with_http_info(createOrUpdateDocumentPropertyRequest)
      data
    end

    # Add new or update existing document property.
    # 
    # @param name The document name.
    # @param property_name The property name.
    # @param property The property with new value.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder Original document folder.
    # @option opts [String] :storage File storage, which have to be used.
    # @option opts [String] :load_encoding Encoding that will be used to load an HTML (or TXT) document if the encoding is not specified in HTML.
    # @option opts [String] :password Password for opening an encrypted document.
    # @option opts [String] :dest_file_name Result name of the document after the operation. If this parameter is omitted then result of the operation will be saved as the source document.
    # @option opts [String] :revision_author Initials of the author to use for revisions.If you set this parameter and then make some changes to the document programmatically, save the document and later open the document in MS Word you will see these changes as revisions.
    # @option opts [String] :revision_date_time The date and time to use for revisions.
    # @return [Array<(DocumentPropertyResponse, Fixnum, Hash)>] DocumentPropertyResponse data, response status code and response headers
    def create_or_update_document_property_with_http_info(createOrUpdateDocumentPropertyRequest)
	  if !createOrUpdateDocumentPropertyRequest.is_a? create_or_update_document_propertyRequest
	    fail ArgumentError, "Incorrect request type"
	  end
	  
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WordsApi.create_or_update_document_property ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && createOrUpdateDocumentPropertyRequest.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling WordsApi.create_or_update_document_property"
      end
      # verify the required parameter 'property_name' is set
      if @api_client.config.client_side_validation && createOrUpdateDocumentPropertyRequest.property_name.nil?
        fail ArgumentError, "Missing the required parameter 'property_name' when calling WordsApi.create_or_update_document_property"
      end
      # verify the required parameter 'property' is set
      if @api_client.config.client_side_validation && createOrUpdateDocumentPropertyRequest.property.nil?
        fail ArgumentError, "Missing the required parameter 'property' when calling WordsApi.create_or_update_document_property"
      end
      # resource path
      local_var_path = "/words/{name}/documentProperties/{propertyName}"
	  local_var_path.sub('{' + downcase_first_letter('Name') + '}', createOrUpdateDocumentPropertyRequest.name.to_s)
	  local_var_path.sub('{' + downcase_first_letter('PropertyName') + '}', createOrUpdateDocumentPropertyRequest.property_name.to_s)

      # query parameters
      query_params = {}
      query_params[downcase_first_letter('Folder')] = createOrUpdateDocumentPropertyRequest.folder unless createOrUpdateDocumentPropertyRequest.folder.nil?
      query_params[downcase_first_letter('Storage')] = createOrUpdateDocumentPropertyRequest.storage unless createOrUpdateDocumentPropertyRequest.storage.nil?
      query_params[downcase_first_letter('LoadEncoding')] = createOrUpdateDocumentPropertyRequest.load_encoding unless createOrUpdateDocumentPropertyRequest.load_encoding.nil?
      query_params[downcase_first_letter('Password')] = createOrUpdateDocumentPropertyRequest.password unless createOrUpdateDocumentPropertyRequest.password.nil?
      query_params[downcase_first_letter('DestFileName')] = createOrUpdateDocumentPropertyRequest.dest_file_name unless createOrUpdateDocumentPropertyRequest.dest_file_name.nil?
      query_params[downcase_first_letter('RevisionAuthor')] = createOrUpdateDocumentPropertyRequest.revision_author unless createOrUpdateDocumentPropertyRequest.revision_author.nil?
      query_params[downcase_first_letter('RevisionDateTime')] = createOrUpdateDocumentPropertyRequest.revision_date_time unless createOrUpdateDocumentPropertyRequest.revision_date_time.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/xml', 'application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/xml', 'application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(createOrUpdateDocumentPropertyRequest.property)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'DocumentPropertyResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WordsApi#create_or_update_document_property\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Resets border properties to default values.             
    # 'nodePath' should refer to node with cell or row
    # @param name The document name.
    # @param node_path Path to node with border(node should be cell or row).
    # @param index Object&#39;s index
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder Original document folder.
    # @option opts [String] :storage File storage, which have to be used.
    # @option opts [String] :load_encoding Encoding that will be used to load an HTML (or TXT) document if the encoding is not specified in HTML.
    # @option opts [String] :password Password for opening an encrypted document.
    # @option opts [String] :dest_file_name Result name of the document after the operation. If this parameter is omitted then result of the operation will be saved as the source document.
    # @option opts [String] :revision_author Initials of the author to use for revisions.If you set this parameter and then make some changes to the document programmatically, save the document and later open the document in MS Word you will see these changes as revisions.
    # @option opts [String] :revision_date_time The date and time to use for revisions.
    # @return [BorderResponse]
    def delete_border(deleteBorderRequest)
      data, _status_code, _headers = delete_border_with_http_info(deleteBorderRequest)
      data
    end

    # Resets border properties to default values.             
    # &#39;nodePath&#39; should refer to node with cell or row
    # @param name The document name.
    # @param node_path Path to node with border(node should be cell or row).
    # @param index Object&#39;s index
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder Original document folder.
    # @option opts [String] :storage File storage, which have to be used.
    # @option opts [String] :load_encoding Encoding that will be used to load an HTML (or TXT) document if the encoding is not specified in HTML.
    # @option opts [String] :password Password for opening an encrypted document.
    # @option opts [String] :dest_file_name Result name of the document after the operation. If this parameter is omitted then result of the operation will be saved as the source document.
    # @option opts [String] :revision_author Initials of the author to use for revisions.If you set this parameter and then make some changes to the document programmatically, save the document and later open the document in MS Word you will see these changes as revisions.
    # @option opts [String] :revision_date_time The date and time to use for revisions.
    # @return [Array<(BorderResponse, Fixnum, Hash)>] BorderResponse data, response status code and response headers
    def delete_border_with_http_info(deleteBorderRequest)
	  if !deleteBorderRequest.is_a? delete_borderRequest
	    fail ArgumentError, "Incorrect request type"
	  end
	  
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WordsApi.delete_border ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && deleteBorderRequest.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling WordsApi.delete_border"
      end
      # verify the required parameter 'node_path' is set
      if @api_client.config.client_side_validation && deleteBorderRequest.node_path.nil?
        fail ArgumentError, "Missing the required parameter 'node_path' when calling WordsApi.delete_border"
      end
      # verify the required parameter 'index' is set
      if @api_client.config.client_side_validation && deleteBorderRequest.index.nil?
        fail ArgumentError, "Missing the required parameter 'index' when calling WordsApi.delete_border"
      end
      # resource path
      local_var_path = "/words/{name}/{nodePath}/borders/{index}"
	  local_var_path.sub('{' + downcase_first_letter('Name') + '}', deleteBorderRequest.name.to_s)
	  local_var_path.sub('{' + downcase_first_letter('NodePath') + '}', deleteBorderRequest.node_path.to_s)
	  local_var_path.sub('{' + downcase_first_letter('Index') + '}', deleteBorderRequest.index.to_s)

      # query parameters
      query_params = {}
      query_params[downcase_first_letter('Folder')] = deleteBorderRequest.folder unless deleteBorderRequest.folder.nil?
      query_params[downcase_first_letter('Storage')] = deleteBorderRequest.storage unless deleteBorderRequest.storage.nil?
      query_params[downcase_first_letter('LoadEncoding')] = deleteBorderRequest.load_encoding unless deleteBorderRequest.load_encoding.nil?
      query_params[downcase_first_letter('Password')] = deleteBorderRequest.password unless deleteBorderRequest.password.nil?
      query_params[downcase_first_letter('DestFileName')] = deleteBorderRequest.dest_file_name unless deleteBorderRequest.dest_file_name.nil?
      query_params[downcase_first_letter('RevisionAuthor')] = deleteBorderRequest.revision_author unless deleteBorderRequest.revision_author.nil?
      query_params[downcase_first_letter('RevisionDateTime')] = deleteBorderRequest.revision_date_time unless deleteBorderRequest.revision_date_time.nil?

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
      auth_names = []
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'BorderResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WordsApi#delete_border\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Resets borders properties to default values.             
    # 'nodePath' should refer to node with cell or row
    # @param name The document name.
    # @param node_path Path to node with borders(node should be cell or row).
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder Original document folder.
    # @option opts [String] :storage File storage, which have to be used.
    # @option opts [String] :load_encoding Encoding that will be used to load an HTML (or TXT) document if the encoding is not specified in HTML.
    # @option opts [String] :password Password for opening an encrypted document.
    # @option opts [String] :dest_file_name Result name of the document after the operation. If this parameter is omitted then result of the operation will be saved as the source document.
    # @option opts [String] :revision_author Initials of the author to use for revisions.If you set this parameter and then make some changes to the document programmatically, save the document and later open the document in MS Word you will see these changes as revisions.
    # @option opts [String] :revision_date_time The date and time to use for revisions.
    # @return [BordersResponse]
    def delete_borders(deleteBordersRequest)
      data, _status_code, _headers = delete_borders_with_http_info(deleteBordersRequest)
      data
    end

    # Resets borders properties to default values.             
    # &#39;nodePath&#39; should refer to node with cell or row
    # @param name The document name.
    # @param node_path Path to node with borders(node should be cell or row).
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder Original document folder.
    # @option opts [String] :storage File storage, which have to be used.
    # @option opts [String] :load_encoding Encoding that will be used to load an HTML (or TXT) document if the encoding is not specified in HTML.
    # @option opts [String] :password Password for opening an encrypted document.
    # @option opts [String] :dest_file_name Result name of the document after the operation. If this parameter is omitted then result of the operation will be saved as the source document.
    # @option opts [String] :revision_author Initials of the author to use for revisions.If you set this parameter and then make some changes to the document programmatically, save the document and later open the document in MS Word you will see these changes as revisions.
    # @option opts [String] :revision_date_time The date and time to use for revisions.
    # @return [Array<(BordersResponse, Fixnum, Hash)>] BordersResponse data, response status code and response headers
    def delete_borders_with_http_info(deleteBordersRequest)
	  if !deleteBordersRequest.is_a? delete_bordersRequest
	    fail ArgumentError, "Incorrect request type"
	  end
	  
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WordsApi.delete_borders ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && deleteBordersRequest.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling WordsApi.delete_borders"
      end
      # verify the required parameter 'node_path' is set
      if @api_client.config.client_side_validation && deleteBordersRequest.node_path.nil?
        fail ArgumentError, "Missing the required parameter 'node_path' when calling WordsApi.delete_borders"
      end
      # resource path
      local_var_path = "/words/{name}/{nodePath}/borders"
	  local_var_path.sub('{' + downcase_first_letter('Name') + '}', deleteBordersRequest.name.to_s)
	  local_var_path.sub('{' + downcase_first_letter('NodePath') + '}', deleteBordersRequest.node_path.to_s)

      # query parameters
      query_params = {}
      query_params[downcase_first_letter('Folder')] = deleteBordersRequest.folder unless deleteBordersRequest.folder.nil?
      query_params[downcase_first_letter('Storage')] = deleteBordersRequest.storage unless deleteBordersRequest.storage.nil?
      query_params[downcase_first_letter('LoadEncoding')] = deleteBordersRequest.load_encoding unless deleteBordersRequest.load_encoding.nil?
      query_params[downcase_first_letter('Password')] = deleteBordersRequest.password unless deleteBordersRequest.password.nil?
      query_params[downcase_first_letter('DestFileName')] = deleteBordersRequest.dest_file_name unless deleteBordersRequest.dest_file_name.nil?
      query_params[downcase_first_letter('RevisionAuthor')] = deleteBordersRequest.revision_author unless deleteBordersRequest.revision_author.nil?
      query_params[downcase_first_letter('RevisionDateTime')] = deleteBordersRequest.revision_date_time unless deleteBordersRequest.revision_date_time.nil?

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
      auth_names = []
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'BordersResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WordsApi#delete_borders\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Remove comment from document.
    # 
    # @param name The file name.
    # @param comment_index Comment index
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder Original document folder.
    # @option opts [String] :storage File storage, which have to be used.
    # @option opts [String] :load_encoding Encoding that will be used to load an HTML (or TXT) document if the encoding is not specified in HTML.
    # @option opts [String] :password Password for opening an encrypted document.
    # @option opts [String] :dest_file_name Result name of the document after the operation. If this parameter is omitted then result of the operation will be saved as the source document.
    # @option opts [String] :revision_author Initials of the author to use for revisions.If you set this parameter and then make some changes to the document programmatically, save the document and later open the document in MS Word you will see these changes as revisions.
    # @option opts [String] :revision_date_time The date and time to use for revisions.
    # @return [AsposeResponse]
    def delete_comment(deleteCommentRequest)
      data, _status_code, _headers = delete_comment_with_http_info(deleteCommentRequest)
      data
    end

    # Remove comment from document.
    # 
    # @param name The file name.
    # @param comment_index Comment index
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder Original document folder.
    # @option opts [String] :storage File storage, which have to be used.
    # @option opts [String] :load_encoding Encoding that will be used to load an HTML (or TXT) document if the encoding is not specified in HTML.
    # @option opts [String] :password Password for opening an encrypted document.
    # @option opts [String] :dest_file_name Result name of the document after the operation. If this parameter is omitted then result of the operation will be saved as the source document.
    # @option opts [String] :revision_author Initials of the author to use for revisions.If you set this parameter and then make some changes to the document programmatically, save the document and later open the document in MS Word you will see these changes as revisions.
    # @option opts [String] :revision_date_time The date and time to use for revisions.
    # @return [Array<(AsposeResponse, Fixnum, Hash)>] AsposeResponse data, response status code and response headers
    def delete_comment_with_http_info(deleteCommentRequest)
	  if !deleteCommentRequest.is_a? delete_commentRequest
	    fail ArgumentError, "Incorrect request type"
	  end
	  
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WordsApi.delete_comment ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && deleteCommentRequest.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling WordsApi.delete_comment"
      end
      # verify the required parameter 'comment_index' is set
      if @api_client.config.client_side_validation && deleteCommentRequest.comment_index.nil?
        fail ArgumentError, "Missing the required parameter 'comment_index' when calling WordsApi.delete_comment"
      end
      # resource path
      local_var_path = "/words/{name}/comments/{commentIndex}"
	  local_var_path.sub('{' + downcase_first_letter('Name') + '}', deleteCommentRequest.name.to_s)
	  local_var_path.sub('{' + downcase_first_letter('CommentIndex') + '}', deleteCommentRequest.comment_index.to_s)

      # query parameters
      query_params = {}
      query_params[downcase_first_letter('Folder')] = deleteCommentRequest.folder unless deleteCommentRequest.folder.nil?
      query_params[downcase_first_letter('Storage')] = deleteCommentRequest.storage unless deleteCommentRequest.storage.nil?
      query_params[downcase_first_letter('LoadEncoding')] = deleteCommentRequest.load_encoding unless deleteCommentRequest.load_encoding.nil?
      query_params[downcase_first_letter('Password')] = deleteCommentRequest.password unless deleteCommentRequest.password.nil?
      query_params[downcase_first_letter('DestFileName')] = deleteCommentRequest.dest_file_name unless deleteCommentRequest.dest_file_name.nil?
      query_params[downcase_first_letter('RevisionAuthor')] = deleteCommentRequest.revision_author unless deleteCommentRequest.revision_author.nil?
      query_params[downcase_first_letter('RevisionDateTime')] = deleteCommentRequest.revision_date_time unless deleteCommentRequest.revision_date_time.nil?

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
      auth_names = []
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'AsposeResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WordsApi#delete_comment\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Remove macros from document.
    # 
    # @param name The file name.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder Original document folder.
    # @option opts [String] :storage File storage, which have to be used.
    # @option opts [String] :load_encoding Encoding that will be used to load an HTML (or TXT) document if the encoding is not specified in HTML.
    # @option opts [String] :password Password for opening an encrypted document.
    # @option opts [String] :dest_file_name Result name of the document after the operation. If this parameter is omitted then result of the operation will be saved as the source document.
    # @option opts [String] :revision_author Initials of the author to use for revisions.If you set this parameter and then make some changes to the document programmatically, save the document and later open the document in MS Word you will see these changes as revisions.
    # @option opts [String] :revision_date_time The date and time to use for revisions.
    # @return [AsposeResponse]
    def delete_document_macros(deleteDocumentMacrosRequest)
      data, _status_code, _headers = delete_document_macros_with_http_info(deleteDocumentMacrosRequest)
      data
    end

    # Remove macros from document.
    # 
    # @param name The file name.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder Original document folder.
    # @option opts [String] :storage File storage, which have to be used.
    # @option opts [String] :load_encoding Encoding that will be used to load an HTML (or TXT) document if the encoding is not specified in HTML.
    # @option opts [String] :password Password for opening an encrypted document.
    # @option opts [String] :dest_file_name Result name of the document after the operation. If this parameter is omitted then result of the operation will be saved as the source document.
    # @option opts [String] :revision_author Initials of the author to use for revisions.If you set this parameter and then make some changes to the document programmatically, save the document and later open the document in MS Word you will see these changes as revisions.
    # @option opts [String] :revision_date_time The date and time to use for revisions.
    # @return [Array<(AsposeResponse, Fixnum, Hash)>] AsposeResponse data, response status code and response headers
    def delete_document_macros_with_http_info(deleteDocumentMacrosRequest)
	  if !deleteDocumentMacrosRequest.is_a? delete_document_macrosRequest
	    fail ArgumentError, "Incorrect request type"
	  end
	  
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WordsApi.delete_document_macros ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && deleteDocumentMacrosRequest.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling WordsApi.delete_document_macros"
      end
      # resource path
      local_var_path = "/words/{name}/macros"
	  local_var_path.sub('{' + downcase_first_letter('Name') + '}', deleteDocumentMacrosRequest.name.to_s)

      # query parameters
      query_params = {}
      query_params[downcase_first_letter('Folder')] = deleteDocumentMacrosRequest.folder unless deleteDocumentMacrosRequest.folder.nil?
      query_params[downcase_first_letter('Storage')] = deleteDocumentMacrosRequest.storage unless deleteDocumentMacrosRequest.storage.nil?
      query_params[downcase_first_letter('LoadEncoding')] = deleteDocumentMacrosRequest.load_encoding unless deleteDocumentMacrosRequest.load_encoding.nil?
      query_params[downcase_first_letter('Password')] = deleteDocumentMacrosRequest.password unless deleteDocumentMacrosRequest.password.nil?
      query_params[downcase_first_letter('DestFileName')] = deleteDocumentMacrosRequest.dest_file_name unless deleteDocumentMacrosRequest.dest_file_name.nil?
      query_params[downcase_first_letter('RevisionAuthor')] = deleteDocumentMacrosRequest.revision_author unless deleteDocumentMacrosRequest.revision_author.nil?
      query_params[downcase_first_letter('RevisionDateTime')] = deleteDocumentMacrosRequest.revision_date_time unless deleteDocumentMacrosRequest.revision_date_time.nil?

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
      auth_names = []
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'AsposeResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WordsApi#delete_document_macros\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete document property.
    # 
    # @param name The document name.
    # @param property_name The property name.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder Original document folder.
    # @option opts [String] :storage File storage, which have to be used.
    # @option opts [String] :load_encoding Encoding that will be used to load an HTML (or TXT) document if the encoding is not specified in HTML.
    # @option opts [String] :password Password for opening an encrypted document.
    # @option opts [String] :dest_file_name Result name of the document after the operation. If this parameter is omitted then result of the operation will be saved as the source document.
    # @option opts [String] :revision_author Initials of the author to use for revisions.If you set this parameter and then make some changes to the document programmatically, save the document and later open the document in MS Word you will see these changes as revisions.
    # @option opts [String] :revision_date_time The date and time to use for revisions.
    # @return [AsposeResponse]
    def delete_document_property(deleteDocumentPropertyRequest)
      data, _status_code, _headers = delete_document_property_with_http_info(deleteDocumentPropertyRequest)
      data
    end

    # Delete document property.
    # 
    # @param name The document name.
    # @param property_name The property name.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder Original document folder.
    # @option opts [String] :storage File storage, which have to be used.
    # @option opts [String] :load_encoding Encoding that will be used to load an HTML (or TXT) document if the encoding is not specified in HTML.
    # @option opts [String] :password Password for opening an encrypted document.
    # @option opts [String] :dest_file_name Result name of the document after the operation. If this parameter is omitted then result of the operation will be saved as the source document.
    # @option opts [String] :revision_author Initials of the author to use for revisions.If you set this parameter and then make some changes to the document programmatically, save the document and later open the document in MS Word you will see these changes as revisions.
    # @option opts [String] :revision_date_time The date and time to use for revisions.
    # @return [Array<(AsposeResponse, Fixnum, Hash)>] AsposeResponse data, response status code and response headers
    def delete_document_property_with_http_info(deleteDocumentPropertyRequest)
	  if !deleteDocumentPropertyRequest.is_a? delete_document_propertyRequest
	    fail ArgumentError, "Incorrect request type"
	  end
	  
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WordsApi.delete_document_property ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && deleteDocumentPropertyRequest.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling WordsApi.delete_document_property"
      end
      # verify the required parameter 'property_name' is set
      if @api_client.config.client_side_validation && deleteDocumentPropertyRequest.property_name.nil?
        fail ArgumentError, "Missing the required parameter 'property_name' when calling WordsApi.delete_document_property"
      end
      # resource path
      local_var_path = "/words/{name}/documentProperties/{propertyName}"
	  local_var_path.sub('{' + downcase_first_letter('Name') + '}', deleteDocumentPropertyRequest.name.to_s)
	  local_var_path.sub('{' + downcase_first_letter('PropertyName') + '}', deleteDocumentPropertyRequest.property_name.to_s)

      # query parameters
      query_params = {}
      query_params[downcase_first_letter('Folder')] = deleteDocumentPropertyRequest.folder unless deleteDocumentPropertyRequest.folder.nil?
      query_params[downcase_first_letter('Storage')] = deleteDocumentPropertyRequest.storage unless deleteDocumentPropertyRequest.storage.nil?
      query_params[downcase_first_letter('LoadEncoding')] = deleteDocumentPropertyRequest.load_encoding unless deleteDocumentPropertyRequest.load_encoding.nil?
      query_params[downcase_first_letter('Password')] = deleteDocumentPropertyRequest.password unless deleteDocumentPropertyRequest.password.nil?
      query_params[downcase_first_letter('DestFileName')] = deleteDocumentPropertyRequest.dest_file_name unless deleteDocumentPropertyRequest.dest_file_name.nil?
      query_params[downcase_first_letter('RevisionAuthor')] = deleteDocumentPropertyRequest.revision_author unless deleteDocumentPropertyRequest.revision_author.nil?
      query_params[downcase_first_letter('RevisionDateTime')] = deleteDocumentPropertyRequest.revision_date_time unless deleteDocumentPropertyRequest.revision_date_time.nil?

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
      auth_names = []
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'AsposeResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WordsApi#delete_document_property\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete watermark (for deleting last watermark from the document).
    # 
    # @param name The document name.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder Original document folder.
    # @option opts [String] :storage File storage, which have to be used.
    # @option opts [String] :load_encoding Encoding that will be used to load an HTML (or TXT) document if the encoding is not specified in HTML.
    # @option opts [String] :password Password for opening an encrypted document.
    # @option opts [String] :dest_file_name Result name of the document after the operation. If this parameter is omitted then result of the operation will be saved as the source document.
    # @option opts [String] :revision_author Initials of the author to use for revisions.If you set this parameter and then make some changes to the document programmatically, save the document and later open the document in MS Word you will see these changes as revisions.
    # @option opts [String] :revision_date_time The date and time to use for revisions.
    # @return [DocumentResponse]
    def delete_document_watermark(deleteDocumentWatermarkRequest)
      data, _status_code, _headers = delete_document_watermark_with_http_info(deleteDocumentWatermarkRequest)
      data
    end

    # Delete watermark (for deleting last watermark from the document).
    # 
    # @param name The document name.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder Original document folder.
    # @option opts [String] :storage File storage, which have to be used.
    # @option opts [String] :load_encoding Encoding that will be used to load an HTML (or TXT) document if the encoding is not specified in HTML.
    # @option opts [String] :password Password for opening an encrypted document.
    # @option opts [String] :dest_file_name Result name of the document after the operation. If this parameter is omitted then result of the operation will be saved as the source document.
    # @option opts [String] :revision_author Initials of the author to use for revisions.If you set this parameter and then make some changes to the document programmatically, save the document and later open the document in MS Word you will see these changes as revisions.
    # @option opts [String] :revision_date_time The date and time to use for revisions.
    # @return [Array<(DocumentResponse, Fixnum, Hash)>] DocumentResponse data, response status code and response headers
    def delete_document_watermark_with_http_info(deleteDocumentWatermarkRequest)
	  if !deleteDocumentWatermarkRequest.is_a? delete_document_watermarkRequest
	    fail ArgumentError, "Incorrect request type"
	  end
	  
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WordsApi.delete_document_watermark ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && deleteDocumentWatermarkRequest.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling WordsApi.delete_document_watermark"
      end
      # resource path
      local_var_path = "/words/{name}/watermark"
	  local_var_path.sub('{' + downcase_first_letter('Name') + '}', deleteDocumentWatermarkRequest.name.to_s)

      # query parameters
      query_params = {}
      query_params[downcase_first_letter('Folder')] = deleteDocumentWatermarkRequest.folder unless deleteDocumentWatermarkRequest.folder.nil?
      query_params[downcase_first_letter('Storage')] = deleteDocumentWatermarkRequest.storage unless deleteDocumentWatermarkRequest.storage.nil?
      query_params[downcase_first_letter('LoadEncoding')] = deleteDocumentWatermarkRequest.load_encoding unless deleteDocumentWatermarkRequest.load_encoding.nil?
      query_params[downcase_first_letter('Password')] = deleteDocumentWatermarkRequest.password unless deleteDocumentWatermarkRequest.password.nil?
      query_params[downcase_first_letter('DestFileName')] = deleteDocumentWatermarkRequest.dest_file_name unless deleteDocumentWatermarkRequest.dest_file_name.nil?
      query_params[downcase_first_letter('RevisionAuthor')] = deleteDocumentWatermarkRequest.revision_author unless deleteDocumentWatermarkRequest.revision_author.nil?
      query_params[downcase_first_letter('RevisionDateTime')] = deleteDocumentWatermarkRequest.revision_date_time unless deleteDocumentWatermarkRequest.revision_date_time.nil?

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
      auth_names = []
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'DocumentResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WordsApi#delete_document_watermark\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Removes drawing object from document.
    # 
    # @param name The file name.
    # @param index Object&#39;s index
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder Original document folder.
    # @option opts [String] :storage File storage, which have to be used.
    # @option opts [String] :load_encoding Encoding that will be used to load an HTML (or TXT) document if the encoding is not specified in HTML.
    # @option opts [String] :password Password for opening an encrypted document.
    # @option opts [String] :dest_file_name Result name of the document after the operation. If this parameter is omitted then result of the operation will be saved as the source document.
    # @option opts [String] :revision_author Initials of the author to use for revisions.If you set this parameter and then make some changes to the document programmatically, save the document and later open the document in MS Word you will see these changes as revisions.
    # @option opts [String] :revision_date_time The date and time to use for revisions.
    # @option opts [String] :node_path Path to node, which contains collection of drawing objects.
    # @return [AsposeResponse]
    def delete_drawing_object(deleteDrawingObjectRequest)
      data, _status_code, _headers = delete_drawing_object_with_http_info(deleteDrawingObjectRequest)
      data
    end

    # Removes drawing object from document.
    # 
    # @param name The file name.
    # @param index Object&#39;s index
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder Original document folder.
    # @option opts [String] :storage File storage, which have to be used.
    # @option opts [String] :load_encoding Encoding that will be used to load an HTML (or TXT) document if the encoding is not specified in HTML.
    # @option opts [String] :password Password for opening an encrypted document.
    # @option opts [String] :dest_file_name Result name of the document after the operation. If this parameter is omitted then result of the operation will be saved as the source document.
    # @option opts [String] :revision_author Initials of the author to use for revisions.If you set this parameter and then make some changes to the document programmatically, save the document and later open the document in MS Word you will see these changes as revisions.
    # @option opts [String] :revision_date_time The date and time to use for revisions.
    # @option opts [String] :node_path Path to node, which contains collection of drawing objects.
    # @return [Array<(AsposeResponse, Fixnum, Hash)>] AsposeResponse data, response status code and response headers
    def delete_drawing_object_with_http_info(deleteDrawingObjectRequest)
	  if !deleteDrawingObjectRequest.is_a? delete_drawing_objectRequest
	    fail ArgumentError, "Incorrect request type"
	  end
	  
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WordsApi.delete_drawing_object ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && deleteDrawingObjectRequest.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling WordsApi.delete_drawing_object"
      end
      # verify the required parameter 'index' is set
      if @api_client.config.client_side_validation && deleteDrawingObjectRequest.index.nil?
        fail ArgumentError, "Missing the required parameter 'index' when calling WordsApi.delete_drawing_object"
      end
      # resource path
      local_var_path = "/words/{name}/{nodePath}/drawingObjects/{index}"
	  local_var_path.sub('{' + downcase_first_letter('Name') + '}', deleteDrawingObjectRequest.name.to_s)
	  local_var_path.sub('{' + downcase_first_letter('Index') + '}', deleteDrawingObjectRequest.index.to_s)

      # query parameters
      query_params = {}
      query_params[downcase_first_letter('Folder')] = deleteDrawingObjectRequest.folder unless deleteDrawingObjectRequest.folder.nil?
      query_params[downcase_first_letter('Storage')] = deleteDrawingObjectRequest.storage unless deleteDrawingObjectRequest.storage.nil?
      query_params[downcase_first_letter('LoadEncoding')] = deleteDrawingObjectRequest.load_encoding unless deleteDrawingObjectRequest.load_encoding.nil?
      query_params[downcase_first_letter('Password')] = deleteDrawingObjectRequest.password unless deleteDrawingObjectRequest.password.nil?
      query_params[downcase_first_letter('DestFileName')] = deleteDrawingObjectRequest.dest_file_name unless deleteDrawingObjectRequest.dest_file_name.nil?
      query_params[downcase_first_letter('RevisionAuthor')] = deleteDrawingObjectRequest.revision_author unless deleteDrawingObjectRequest.revision_author.nil?
      query_params[downcase_first_letter('RevisionDateTime')] = deleteDrawingObjectRequest.revision_date_time unless deleteDrawingObjectRequest.revision_date_time.nil?
      query_params[downcase_first_letter('NodePath')] = deleteDrawingObjectRequest.node_path unless deleteDrawingObjectRequest.node_path.nil?

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
      auth_names = []
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'AsposeResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WordsApi#delete_drawing_object\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete field from document.
    # 
    # @param name The file name.
    # @param index Object&#39;s index
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder Original document folder.
    # @option opts [String] :storage File storage, which have to be used.
    # @option opts [String] :load_encoding Encoding that will be used to load an HTML (or TXT) document if the encoding is not specified in HTML.
    # @option opts [String] :password Password for opening an encrypted document.
    # @option opts [String] :dest_file_name Result name of the document after the operation. If this parameter is omitted then result of the operation will be saved as the source document.
    # @option opts [String] :revision_author Initials of the author to use for revisions.If you set this parameter and then make some changes to the document programmatically, save the document and later open the document in MS Word you will see these changes as revisions.
    # @option opts [String] :revision_date_time The date and time to use for revisions.
    # @option opts [String] :node_path Path to node, which contains collection of fields.
    # @return [AsposeResponse]
    def delete_field(deleteFieldRequest)
      data, _status_code, _headers = delete_field_with_http_info(deleteFieldRequest)
      data
    end

    # Delete field from document.
    # 
    # @param name The file name.
    # @param index Object&#39;s index
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder Original document folder.
    # @option opts [String] :storage File storage, which have to be used.
    # @option opts [String] :load_encoding Encoding that will be used to load an HTML (or TXT) document if the encoding is not specified in HTML.
    # @option opts [String] :password Password for opening an encrypted document.
    # @option opts [String] :dest_file_name Result name of the document after the operation. If this parameter is omitted then result of the operation will be saved as the source document.
    # @option opts [String] :revision_author Initials of the author to use for revisions.If you set this parameter and then make some changes to the document programmatically, save the document and later open the document in MS Word you will see these changes as revisions.
    # @option opts [String] :revision_date_time The date and time to use for revisions.
    # @option opts [String] :node_path Path to node, which contains collection of fields.
    # @return [Array<(AsposeResponse, Fixnum, Hash)>] AsposeResponse data, response status code and response headers
    def delete_field_with_http_info(deleteFieldRequest)
	  if !deleteFieldRequest.is_a? delete_fieldRequest
	    fail ArgumentError, "Incorrect request type"
	  end
	  
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WordsApi.delete_field ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && deleteFieldRequest.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling WordsApi.delete_field"
      end
      # verify the required parameter 'index' is set
      if @api_client.config.client_side_validation && deleteFieldRequest.index.nil?
        fail ArgumentError, "Missing the required parameter 'index' when calling WordsApi.delete_field"
      end
      # resource path
      local_var_path = "/words/{name}/{nodePath}/fields/{index}"
	  local_var_path.sub('{' + downcase_first_letter('Name') + '}', deleteFieldRequest.name.to_s)
	  local_var_path.sub('{' + downcase_first_letter('Index') + '}', deleteFieldRequest.index.to_s)

      # query parameters
      query_params = {}
      query_params[downcase_first_letter('Folder')] = deleteFieldRequest.folder unless deleteFieldRequest.folder.nil?
      query_params[downcase_first_letter('Storage')] = deleteFieldRequest.storage unless deleteFieldRequest.storage.nil?
      query_params[downcase_first_letter('LoadEncoding')] = deleteFieldRequest.load_encoding unless deleteFieldRequest.load_encoding.nil?
      query_params[downcase_first_letter('Password')] = deleteFieldRequest.password unless deleteFieldRequest.password.nil?
      query_params[downcase_first_letter('DestFileName')] = deleteFieldRequest.dest_file_name unless deleteFieldRequest.dest_file_name.nil?
      query_params[downcase_first_letter('RevisionAuthor')] = deleteFieldRequest.revision_author unless deleteFieldRequest.revision_author.nil?
      query_params[downcase_first_letter('RevisionDateTime')] = deleteFieldRequest.revision_date_time unless deleteFieldRequest.revision_date_time.nil?
      query_params[downcase_first_letter('NodePath')] = deleteFieldRequest.node_path unless deleteFieldRequest.node_path.nil?

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
      auth_names = []
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'AsposeResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WordsApi#delete_field\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Remove fields from section paragraph.
    # 
    # @param name The file name.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder Original document folder.
    # @option opts [String] :storage File storage, which have to be used.
    # @option opts [String] :load_encoding Encoding that will be used to load an HTML (or TXT) document if the encoding is not specified in HTML.
    # @option opts [String] :password Password for opening an encrypted document.
    # @option opts [String] :dest_file_name Result name of the document after the operation. If this parameter is omitted then result of the operation will be saved as the source document.
    # @option opts [String] :revision_author Initials of the author to use for revisions.If you set this parameter and then make some changes to the document programmatically, save the document and later open the document in MS Word you will see these changes as revisions.
    # @option opts [String] :revision_date_time The date and time to use for revisions.
    # @option opts [String] :node_path Path to node, which contains collection of fields.
    # @return [AsposeResponse]
    def delete_fields(deleteFieldsRequest)
      data, _status_code, _headers = delete_fields_with_http_info(deleteFieldsRequest)
      data
    end

    # Remove fields from section paragraph.
    # 
    # @param name The file name.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder Original document folder.
    # @option opts [String] :storage File storage, which have to be used.
    # @option opts [String] :load_encoding Encoding that will be used to load an HTML (or TXT) document if the encoding is not specified in HTML.
    # @option opts [String] :password Password for opening an encrypted document.
    # @option opts [String] :dest_file_name Result name of the document after the operation. If this parameter is omitted then result of the operation will be saved as the source document.
    # @option opts [String] :revision_author Initials of the author to use for revisions.If you set this parameter and then make some changes to the document programmatically, save the document and later open the document in MS Word you will see these changes as revisions.
    # @option opts [String] :revision_date_time The date and time to use for revisions.
    # @option opts [String] :node_path Path to node, which contains collection of fields.
    # @return [Array<(AsposeResponse, Fixnum, Hash)>] AsposeResponse data, response status code and response headers
    def delete_fields_with_http_info(deleteFieldsRequest)
	  if !deleteFieldsRequest.is_a? delete_fieldsRequest
	    fail ArgumentError, "Incorrect request type"
	  end
	  
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WordsApi.delete_fields ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && deleteFieldsRequest.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling WordsApi.delete_fields"
      end
      # resource path
      local_var_path = "/words/{name}/{nodePath}/fields"
	  local_var_path.sub('{' + downcase_first_letter('Name') + '}', deleteFieldsRequest.name.to_s)

      # query parameters
      query_params = {}
      query_params[downcase_first_letter('Folder')] = deleteFieldsRequest.folder unless deleteFieldsRequest.folder.nil?
      query_params[downcase_first_letter('Storage')] = deleteFieldsRequest.storage unless deleteFieldsRequest.storage.nil?
      query_params[downcase_first_letter('LoadEncoding')] = deleteFieldsRequest.load_encoding unless deleteFieldsRequest.load_encoding.nil?
      query_params[downcase_first_letter('Password')] = deleteFieldsRequest.password unless deleteFieldsRequest.password.nil?
      query_params[downcase_first_letter('DestFileName')] = deleteFieldsRequest.dest_file_name unless deleteFieldsRequest.dest_file_name.nil?
      query_params[downcase_first_letter('RevisionAuthor')] = deleteFieldsRequest.revision_author unless deleteFieldsRequest.revision_author.nil?
      query_params[downcase_first_letter('RevisionDateTime')] = deleteFieldsRequest.revision_date_time unless deleteFieldsRequest.revision_date_time.nil?
      query_params[downcase_first_letter('NodePath')] = deleteFieldsRequest.node_path unless deleteFieldsRequest.node_path.nil?

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
      auth_names = []
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'AsposeResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WordsApi#delete_fields\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Removes footnote from document.
    # 
    # @param name The file name.
    # @param index Object&#39;s index
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder Original document folder.
    # @option opts [String] :storage File storage, which have to be used.
    # @option opts [String] :load_encoding Encoding that will be used to load an HTML (or TXT) document if the encoding is not specified in HTML.
    # @option opts [String] :password Password for opening an encrypted document.
    # @option opts [String] :dest_file_name Result name of the document after the operation. If this parameter is omitted then result of the operation will be saved as the source document.
    # @option opts [String] :revision_author Initials of the author to use for revisions.If you set this parameter and then make some changes to the document programmatically, save the document and later open the document in MS Word you will see these changes as revisions.
    # @option opts [String] :revision_date_time The date and time to use for revisions.
    # @option opts [String] :node_path Path to node, which contains collection of footnotes.
    # @return [AsposeResponse]
    def delete_footnote(deleteFootnoteRequest)
      data, _status_code, _headers = delete_footnote_with_http_info(deleteFootnoteRequest)
      data
    end

    # Removes footnote from document.
    # 
    # @param name The file name.
    # @param index Object&#39;s index
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder Original document folder.
    # @option opts [String] :storage File storage, which have to be used.
    # @option opts [String] :load_encoding Encoding that will be used to load an HTML (or TXT) document if the encoding is not specified in HTML.
    # @option opts [String] :password Password for opening an encrypted document.
    # @option opts [String] :dest_file_name Result name of the document after the operation. If this parameter is omitted then result of the operation will be saved as the source document.
    # @option opts [String] :revision_author Initials of the author to use for revisions.If you set this parameter and then make some changes to the document programmatically, save the document and later open the document in MS Word you will see these changes as revisions.
    # @option opts [String] :revision_date_time The date and time to use for revisions.
    # @option opts [String] :node_path Path to node, which contains collection of footnotes.
    # @return [Array<(AsposeResponse, Fixnum, Hash)>] AsposeResponse data, response status code and response headers
    def delete_footnote_with_http_info(deleteFootnoteRequest)
	  if !deleteFootnoteRequest.is_a? delete_footnoteRequest
	    fail ArgumentError, "Incorrect request type"
	  end
	  
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WordsApi.delete_footnote ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && deleteFootnoteRequest.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling WordsApi.delete_footnote"
      end
      # verify the required parameter 'index' is set
      if @api_client.config.client_side_validation && deleteFootnoteRequest.index.nil?
        fail ArgumentError, "Missing the required parameter 'index' when calling WordsApi.delete_footnote"
      end
      # resource path
      local_var_path = "/words/{name}/{nodePath}/footnotes/{index}"
	  local_var_path.sub('{' + downcase_first_letter('Name') + '}', deleteFootnoteRequest.name.to_s)
	  local_var_path.sub('{' + downcase_first_letter('Index') + '}', deleteFootnoteRequest.index.to_s)

      # query parameters
      query_params = {}
      query_params[downcase_first_letter('Folder')] = deleteFootnoteRequest.folder unless deleteFootnoteRequest.folder.nil?
      query_params[downcase_first_letter('Storage')] = deleteFootnoteRequest.storage unless deleteFootnoteRequest.storage.nil?
      query_params[downcase_first_letter('LoadEncoding')] = deleteFootnoteRequest.load_encoding unless deleteFootnoteRequest.load_encoding.nil?
      query_params[downcase_first_letter('Password')] = deleteFootnoteRequest.password unless deleteFootnoteRequest.password.nil?
      query_params[downcase_first_letter('DestFileName')] = deleteFootnoteRequest.dest_file_name unless deleteFootnoteRequest.dest_file_name.nil?
      query_params[downcase_first_letter('RevisionAuthor')] = deleteFootnoteRequest.revision_author unless deleteFootnoteRequest.revision_author.nil?
      query_params[downcase_first_letter('RevisionDateTime')] = deleteFootnoteRequest.revision_date_time unless deleteFootnoteRequest.revision_date_time.nil?
      query_params[downcase_first_letter('NodePath')] = deleteFootnoteRequest.node_path unless deleteFootnoteRequest.node_path.nil?

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
      auth_names = []
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'AsposeResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WordsApi#delete_footnote\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Removes form field from document.
    # 
    # @param name The document name.
    # @param index Object&#39;s index
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder Original document folder.
    # @option opts [String] :storage File storage, which have to be used.
    # @option opts [String] :load_encoding Encoding that will be used to load an HTML (or TXT) document if the encoding is not specified in HTML.
    # @option opts [String] :password Password for opening an encrypted document.
    # @option opts [String] :dest_file_name Result name of the document after the operation. If this parameter is omitted then result of the operation will be saved as the source document.
    # @option opts [String] :revision_author Initials of the author to use for revisions.If you set this parameter and then make some changes to the document programmatically, save the document and later open the document in MS Word you will see these changes as revisions.
    # @option opts [String] :revision_date_time The date and time to use for revisions.
    # @option opts [String] :node_path Path to node that contains collection of formfields.
    # @return [AsposeResponse]
    def delete_form_field(deleteFormFieldRequest)
      data, _status_code, _headers = delete_form_field_with_http_info(deleteFormFieldRequest)
      data
    end

    # Removes form field from document.
    # 
    # @param name The document name.
    # @param index Object&#39;s index
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder Original document folder.
    # @option opts [String] :storage File storage, which have to be used.
    # @option opts [String] :load_encoding Encoding that will be used to load an HTML (or TXT) document if the encoding is not specified in HTML.
    # @option opts [String] :password Password for opening an encrypted document.
    # @option opts [String] :dest_file_name Result name of the document after the operation. If this parameter is omitted then result of the operation will be saved as the source document.
    # @option opts [String] :revision_author Initials of the author to use for revisions.If you set this parameter and then make some changes to the document programmatically, save the document and later open the document in MS Word you will see these changes as revisions.
    # @option opts [String] :revision_date_time The date and time to use for revisions.
    # @option opts [String] :node_path Path to node that contains collection of formfields.
    # @return [Array<(AsposeResponse, Fixnum, Hash)>] AsposeResponse data, response status code and response headers
    def delete_form_field_with_http_info(deleteFormFieldRequest)
	  if !deleteFormFieldRequest.is_a? delete_form_fieldRequest
	    fail ArgumentError, "Incorrect request type"
	  end
	  
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WordsApi.delete_form_field ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && deleteFormFieldRequest.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling WordsApi.delete_form_field"
      end
      # verify the required parameter 'index' is set
      if @api_client.config.client_side_validation && deleteFormFieldRequest.index.nil?
        fail ArgumentError, "Missing the required parameter 'index' when calling WordsApi.delete_form_field"
      end
      # resource path
      local_var_path = "/words/{name}/{nodePath}/formfields/{index}"
	  local_var_path.sub('{' + downcase_first_letter('Name') + '}', deleteFormFieldRequest.name.to_s)
	  local_var_path.sub('{' + downcase_first_letter('Index') + '}', deleteFormFieldRequest.index.to_s)

      # query parameters
      query_params = {}
      query_params[downcase_first_letter('Folder')] = deleteFormFieldRequest.folder unless deleteFormFieldRequest.folder.nil?
      query_params[downcase_first_letter('Storage')] = deleteFormFieldRequest.storage unless deleteFormFieldRequest.storage.nil?
      query_params[downcase_first_letter('LoadEncoding')] = deleteFormFieldRequest.load_encoding unless deleteFormFieldRequest.load_encoding.nil?
      query_params[downcase_first_letter('Password')] = deleteFormFieldRequest.password unless deleteFormFieldRequest.password.nil?
      query_params[downcase_first_letter('DestFileName')] = deleteFormFieldRequest.dest_file_name unless deleteFormFieldRequest.dest_file_name.nil?
      query_params[downcase_first_letter('RevisionAuthor')] = deleteFormFieldRequest.revision_author unless deleteFormFieldRequest.revision_author.nil?
      query_params[downcase_first_letter('RevisionDateTime')] = deleteFormFieldRequest.revision_date_time unless deleteFormFieldRequest.revision_date_time.nil?
      query_params[downcase_first_letter('NodePath')] = deleteFormFieldRequest.node_path unless deleteFormFieldRequest.node_path.nil?

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
      auth_names = []
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'AsposeResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WordsApi#delete_form_field\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete header/footer from document.
    # 
    # @param name The document name.
    # @param index Object&#39;s index
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder Original document folder.
    # @option opts [String] :storage File storage, which have to be used.
    # @option opts [String] :load_encoding Encoding that will be used to load an HTML (or TXT) document if the encoding is not specified in HTML.
    # @option opts [String] :password Password for opening an encrypted document.
    # @option opts [String] :dest_file_name Result name of the document after the operation. If this parameter is omitted then result of the operation will be saved as the source document.
    # @option opts [String] :revision_author Initials of the author to use for revisions.If you set this parameter and then make some changes to the document programmatically, save the document and later open the document in MS Word you will see these changes as revisions.
    # @option opts [String] :revision_date_time The date and time to use for revisions.
    # @option opts [String] :section_path Path to parent section.
    # @return [AsposeResponse]
    def delete_header_footer(deleteHeaderFooterRequest)
      data, _status_code, _headers = delete_header_footer_with_http_info(deleteHeaderFooterRequest)
      data
    end

    # Delete header/footer from document.
    # 
    # @param name The document name.
    # @param index Object&#39;s index
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder Original document folder.
    # @option opts [String] :storage File storage, which have to be used.
    # @option opts [String] :load_encoding Encoding that will be used to load an HTML (or TXT) document if the encoding is not specified in HTML.
    # @option opts [String] :password Password for opening an encrypted document.
    # @option opts [String] :dest_file_name Result name of the document after the operation. If this parameter is omitted then result of the operation will be saved as the source document.
    # @option opts [String] :revision_author Initials of the author to use for revisions.If you set this parameter and then make some changes to the document programmatically, save the document and later open the document in MS Word you will see these changes as revisions.
    # @option opts [String] :revision_date_time The date and time to use for revisions.
    # @option opts [String] :section_path Path to parent section.
    # @return [Array<(AsposeResponse, Fixnum, Hash)>] AsposeResponse data, response status code and response headers
    def delete_header_footer_with_http_info(deleteHeaderFooterRequest)
	  if !deleteHeaderFooterRequest.is_a? delete_header_footerRequest
	    fail ArgumentError, "Incorrect request type"
	  end
	  
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WordsApi.delete_header_footer ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && deleteHeaderFooterRequest.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling WordsApi.delete_header_footer"
      end
      # verify the required parameter 'index' is set
      if @api_client.config.client_side_validation && deleteHeaderFooterRequest.index.nil?
        fail ArgumentError, "Missing the required parameter 'index' when calling WordsApi.delete_header_footer"
      end
      # resource path
      local_var_path = "/words/{name}/{sectionPath}/headersfooters/{index}"
	  local_var_path.sub('{' + downcase_first_letter('Name') + '}', deleteHeaderFooterRequest.name.to_s)
	  local_var_path.sub('{' + downcase_first_letter('Index') + '}', deleteHeaderFooterRequest.index.to_s)

      # query parameters
      query_params = {}
      query_params[downcase_first_letter('Folder')] = deleteHeaderFooterRequest.folder unless deleteHeaderFooterRequest.folder.nil?
      query_params[downcase_first_letter('Storage')] = deleteHeaderFooterRequest.storage unless deleteHeaderFooterRequest.storage.nil?
      query_params[downcase_first_letter('LoadEncoding')] = deleteHeaderFooterRequest.load_encoding unless deleteHeaderFooterRequest.load_encoding.nil?
      query_params[downcase_first_letter('Password')] = deleteHeaderFooterRequest.password unless deleteHeaderFooterRequest.password.nil?
      query_params[downcase_first_letter('DestFileName')] = deleteHeaderFooterRequest.dest_file_name unless deleteHeaderFooterRequest.dest_file_name.nil?
      query_params[downcase_first_letter('RevisionAuthor')] = deleteHeaderFooterRequest.revision_author unless deleteHeaderFooterRequest.revision_author.nil?
      query_params[downcase_first_letter('RevisionDateTime')] = deleteHeaderFooterRequest.revision_date_time unless deleteHeaderFooterRequest.revision_date_time.nil?
      query_params[downcase_first_letter('SectionPath')] = deleteHeaderFooterRequest.section_path unless deleteHeaderFooterRequest.section_path.nil?

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
      auth_names = []
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'AsposeResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WordsApi#delete_header_footer\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete document headers and footers.
    # 
    # @param name The document name.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder Original document folder.
    # @option opts [String] :storage File storage, which have to be used.
    # @option opts [String] :load_encoding Encoding that will be used to load an HTML (or TXT) document if the encoding is not specified in HTML.
    # @option opts [String] :password Password for opening an encrypted document.
    # @option opts [String] :dest_file_name Result name of the document after the operation. If this parameter is omitted then result of the operation will be saved as the source document.
    # @option opts [String] :revision_author Initials of the author to use for revisions.If you set this parameter and then make some changes to the document programmatically, save the document and later open the document in MS Word you will see these changes as revisions.
    # @option opts [String] :revision_date_time The date and time to use for revisions.
    # @option opts [String] :section_path Path to parent section.
    # @option opts [String] :headers_footers_types List of types of headers and footers.
    # @return [AsposeResponse]
    def delete_headers_footers(deleteHeadersFootersRequest)
      data, _status_code, _headers = delete_headers_footers_with_http_info(deleteHeadersFootersRequest)
      data
    end

    # Delete document headers and footers.
    # 
    # @param name The document name.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder Original document folder.
    # @option opts [String] :storage File storage, which have to be used.
    # @option opts [String] :load_encoding Encoding that will be used to load an HTML (or TXT) document if the encoding is not specified in HTML.
    # @option opts [String] :password Password for opening an encrypted document.
    # @option opts [String] :dest_file_name Result name of the document after the operation. If this parameter is omitted then result of the operation will be saved as the source document.
    # @option opts [String] :revision_author Initials of the author to use for revisions.If you set this parameter and then make some changes to the document programmatically, save the document and later open the document in MS Word you will see these changes as revisions.
    # @option opts [String] :revision_date_time The date and time to use for revisions.
    # @option opts [String] :section_path Path to parent section.
    # @option opts [String] :headers_footers_types List of types of headers and footers.
    # @return [Array<(AsposeResponse, Fixnum, Hash)>] AsposeResponse data, response status code and response headers
    def delete_headers_footers_with_http_info(deleteHeadersFootersRequest)
	  if !deleteHeadersFootersRequest.is_a? delete_headers_footersRequest
	    fail ArgumentError, "Incorrect request type"
	  end
	  
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WordsApi.delete_headers_footers ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && deleteHeadersFootersRequest.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling WordsApi.delete_headers_footers"
      end
      # resource path
      local_var_path = "/words/{name}/{sectionPath}/headersfooters"
	  local_var_path.sub('{' + downcase_first_letter('Name') + '}', deleteHeadersFootersRequest.name.to_s)

      # query parameters
      query_params = {}
      query_params[downcase_first_letter('Folder')] = deleteHeadersFootersRequest.folder unless deleteHeadersFootersRequest.folder.nil?
      query_params[downcase_first_letter('Storage')] = deleteHeadersFootersRequest.storage unless deleteHeadersFootersRequest.storage.nil?
      query_params[downcase_first_letter('LoadEncoding')] = deleteHeadersFootersRequest.load_encoding unless deleteHeadersFootersRequest.load_encoding.nil?
      query_params[downcase_first_letter('Password')] = deleteHeadersFootersRequest.password unless deleteHeadersFootersRequest.password.nil?
      query_params[downcase_first_letter('DestFileName')] = deleteHeadersFootersRequest.dest_file_name unless deleteHeadersFootersRequest.dest_file_name.nil?
      query_params[downcase_first_letter('RevisionAuthor')] = deleteHeadersFootersRequest.revision_author unless deleteHeadersFootersRequest.revision_author.nil?
      query_params[downcase_first_letter('RevisionDateTime')] = deleteHeadersFootersRequest.revision_date_time unless deleteHeadersFootersRequest.revision_date_time.nil?
      query_params[downcase_first_letter('SectionPath')] = deleteHeadersFootersRequest.section_path unless deleteHeadersFootersRequest.section_path.nil?
      query_params[downcase_first_letter('HeadersFootersTypes')] = deleteHeadersFootersRequest.headers_footers_types unless deleteHeadersFootersRequest.headers_footers_types.nil?

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
      auth_names = []
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'AsposeResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WordsApi#delete_headers_footers\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Removes OfficeMath object from document.
    # 
    # @param name The file name.
    # @param index Object&#39;s index
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder Original document folder.
    # @option opts [String] :storage File storage, which have to be used.
    # @option opts [String] :load_encoding Encoding that will be used to load an HTML (or TXT) document if the encoding is not specified in HTML.
    # @option opts [String] :password Password for opening an encrypted document.
    # @option opts [String] :dest_file_name Result name of the document after the operation. If this parameter is omitted then result of the operation will be saved as the source document.
    # @option opts [String] :revision_author Initials of the author to use for revisions.If you set this parameter and then make some changes to the document programmatically, save the document and later open the document in MS Word you will see these changes as revisions.
    # @option opts [String] :revision_date_time The date and time to use for revisions.
    # @option opts [String] :node_path Path to node, which contains collection of OfficeMath objects.
    # @return [AsposeResponse]
    def delete_office_math_object(deleteOfficeMathObjectRequest)
      data, _status_code, _headers = delete_office_math_object_with_http_info(deleteOfficeMathObjectRequest)
      data
    end

    # Removes OfficeMath object from document.
    # 
    # @param name The file name.
    # @param index Object&#39;s index
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder Original document folder.
    # @option opts [String] :storage File storage, which have to be used.
    # @option opts [String] :load_encoding Encoding that will be used to load an HTML (or TXT) document if the encoding is not specified in HTML.
    # @option opts [String] :password Password for opening an encrypted document.
    # @option opts [String] :dest_file_name Result name of the document after the operation. If this parameter is omitted then result of the operation will be saved as the source document.
    # @option opts [String] :revision_author Initials of the author to use for revisions.If you set this parameter and then make some changes to the document programmatically, save the document and later open the document in MS Word you will see these changes as revisions.
    # @option opts [String] :revision_date_time The date and time to use for revisions.
    # @option opts [String] :node_path Path to node, which contains collection of OfficeMath objects.
    # @return [Array<(AsposeResponse, Fixnum, Hash)>] AsposeResponse data, response status code and response headers
    def delete_office_math_object_with_http_info(deleteOfficeMathObjectRequest)
	  if !deleteOfficeMathObjectRequest.is_a? delete_office_math_objectRequest
	    fail ArgumentError, "Incorrect request type"
	  end
	  
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WordsApi.delete_office_math_object ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && deleteOfficeMathObjectRequest.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling WordsApi.delete_office_math_object"
      end
      # verify the required parameter 'index' is set
      if @api_client.config.client_side_validation && deleteOfficeMathObjectRequest.index.nil?
        fail ArgumentError, "Missing the required parameter 'index' when calling WordsApi.delete_office_math_object"
      end
      # resource path
      local_var_path = "/words/{name}/{nodePath}/OfficeMathObjects/{index}"
	  local_var_path.sub('{' + downcase_first_letter('Name') + '}', deleteOfficeMathObjectRequest.name.to_s)
	  local_var_path.sub('{' + downcase_first_letter('Index') + '}', deleteOfficeMathObjectRequest.index.to_s)

      # query parameters
      query_params = {}
      query_params[downcase_first_letter('Folder')] = deleteOfficeMathObjectRequest.folder unless deleteOfficeMathObjectRequest.folder.nil?
      query_params[downcase_first_letter('Storage')] = deleteOfficeMathObjectRequest.storage unless deleteOfficeMathObjectRequest.storage.nil?
      query_params[downcase_first_letter('LoadEncoding')] = deleteOfficeMathObjectRequest.load_encoding unless deleteOfficeMathObjectRequest.load_encoding.nil?
      query_params[downcase_first_letter('Password')] = deleteOfficeMathObjectRequest.password unless deleteOfficeMathObjectRequest.password.nil?
      query_params[downcase_first_letter('DestFileName')] = deleteOfficeMathObjectRequest.dest_file_name unless deleteOfficeMathObjectRequest.dest_file_name.nil?
      query_params[downcase_first_letter('RevisionAuthor')] = deleteOfficeMathObjectRequest.revision_author unless deleteOfficeMathObjectRequest.revision_author.nil?
      query_params[downcase_first_letter('RevisionDateTime')] = deleteOfficeMathObjectRequest.revision_date_time unless deleteOfficeMathObjectRequest.revision_date_time.nil?
      query_params[downcase_first_letter('NodePath')] = deleteOfficeMathObjectRequest.node_path unless deleteOfficeMathObjectRequest.node_path.nil?

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
      auth_names = []
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'AsposeResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WordsApi#delete_office_math_object\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Remove paragraph from section.
    # 
    # @param name The file name.
    # @param index Object&#39;s index
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder Original document folder.
    # @option opts [String] :storage File storage, which have to be used.
    # @option opts [String] :load_encoding Encoding that will be used to load an HTML (or TXT) document if the encoding is not specified in HTML.
    # @option opts [String] :password Password for opening an encrypted document.
    # @option opts [String] :dest_file_name Result name of the document after the operation. If this parameter is omitted then result of the operation will be saved as the source document.
    # @option opts [String] :revision_author Initials of the author to use for revisions.If you set this parameter and then make some changes to the document programmatically, save the document and later open the document in MS Word you will see these changes as revisions.
    # @option opts [String] :revision_date_time The date and time to use for revisions.
    # @option opts [String] :node_path Path to node which contains paragraphs.
    # @return [AsposeResponse]
    def delete_paragraph(deleteParagraphRequest)
      data, _status_code, _headers = delete_paragraph_with_http_info(deleteParagraphRequest)
      data
    end

    # Remove paragraph from section.
    # 
    # @param name The file name.
    # @param index Object&#39;s index
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder Original document folder.
    # @option opts [String] :storage File storage, which have to be used.
    # @option opts [String] :load_encoding Encoding that will be used to load an HTML (or TXT) document if the encoding is not specified in HTML.
    # @option opts [String] :password Password for opening an encrypted document.
    # @option opts [String] :dest_file_name Result name of the document after the operation. If this parameter is omitted then result of the operation will be saved as the source document.
    # @option opts [String] :revision_author Initials of the author to use for revisions.If you set this parameter and then make some changes to the document programmatically, save the document and later open the document in MS Word you will see these changes as revisions.
    # @option opts [String] :revision_date_time The date and time to use for revisions.
    # @option opts [String] :node_path Path to node which contains paragraphs.
    # @return [Array<(AsposeResponse, Fixnum, Hash)>] AsposeResponse data, response status code and response headers
    def delete_paragraph_with_http_info(deleteParagraphRequest)
	  if !deleteParagraphRequest.is_a? delete_paragraphRequest
	    fail ArgumentError, "Incorrect request type"
	  end
	  
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WordsApi.delete_paragraph ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && deleteParagraphRequest.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling WordsApi.delete_paragraph"
      end
      # verify the required parameter 'index' is set
      if @api_client.config.client_side_validation && deleteParagraphRequest.index.nil?
        fail ArgumentError, "Missing the required parameter 'index' when calling WordsApi.delete_paragraph"
      end
      # resource path
      local_var_path = "/words/{name}/{nodePath}/paragraphs/{index}"
	  local_var_path.sub('{' + downcase_first_letter('Name') + '}', deleteParagraphRequest.name.to_s)
	  local_var_path.sub('{' + downcase_first_letter('Index') + '}', deleteParagraphRequest.index.to_s)

      # query parameters
      query_params = {}
      query_params[downcase_first_letter('Folder')] = deleteParagraphRequest.folder unless deleteParagraphRequest.folder.nil?
      query_params[downcase_first_letter('Storage')] = deleteParagraphRequest.storage unless deleteParagraphRequest.storage.nil?
      query_params[downcase_first_letter('LoadEncoding')] = deleteParagraphRequest.load_encoding unless deleteParagraphRequest.load_encoding.nil?
      query_params[downcase_first_letter('Password')] = deleteParagraphRequest.password unless deleteParagraphRequest.password.nil?
      query_params[downcase_first_letter('DestFileName')] = deleteParagraphRequest.dest_file_name unless deleteParagraphRequest.dest_file_name.nil?
      query_params[downcase_first_letter('RevisionAuthor')] = deleteParagraphRequest.revision_author unless deleteParagraphRequest.revision_author.nil?
      query_params[downcase_first_letter('RevisionDateTime')] = deleteParagraphRequest.revision_date_time unless deleteParagraphRequest.revision_date_time.nil?
      query_params[downcase_first_letter('NodePath')] = deleteParagraphRequest.node_path unless deleteParagraphRequest.node_path.nil?

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
      auth_names = []
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'AsposeResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WordsApi#delete_paragraph\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Removes run from document.
    # 
    # @param name The file name.
    # @param paragraph_path Path to parent paragraph.
    # @param index Object&#39;s index
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder Original document folder.
    # @option opts [String] :storage File storage, which have to be used.
    # @option opts [String] :load_encoding Encoding that will be used to load an HTML (or TXT) document if the encoding is not specified in HTML.
    # @option opts [String] :password Password for opening an encrypted document.
    # @option opts [String] :dest_file_name Result name of the document after the operation. If this parameter is omitted then result of the operation will be saved as the source document.
    # @option opts [String] :revision_author Initials of the author to use for revisions.If you set this parameter and then make some changes to the document programmatically, save the document and later open the document in MS Word you will see these changes as revisions.
    # @option opts [String] :revision_date_time The date and time to use for revisions.
    # @return [AsposeResponse]
    def delete_run(deleteRunRequest)
      data, _status_code, _headers = delete_run_with_http_info(deleteRunRequest)
      data
    end

    # Removes run from document.
    # 
    # @param name The file name.
    # @param paragraph_path Path to parent paragraph.
    # @param index Object&#39;s index
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder Original document folder.
    # @option opts [String] :storage File storage, which have to be used.
    # @option opts [String] :load_encoding Encoding that will be used to load an HTML (or TXT) document if the encoding is not specified in HTML.
    # @option opts [String] :password Password for opening an encrypted document.
    # @option opts [String] :dest_file_name Result name of the document after the operation. If this parameter is omitted then result of the operation will be saved as the source document.
    # @option opts [String] :revision_author Initials of the author to use for revisions.If you set this parameter and then make some changes to the document programmatically, save the document and later open the document in MS Word you will see these changes as revisions.
    # @option opts [String] :revision_date_time The date and time to use for revisions.
    # @return [Array<(AsposeResponse, Fixnum, Hash)>] AsposeResponse data, response status code and response headers
    def delete_run_with_http_info(deleteRunRequest)
	  if !deleteRunRequest.is_a? delete_runRequest
	    fail ArgumentError, "Incorrect request type"
	  end
	  
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WordsApi.delete_run ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && deleteRunRequest.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling WordsApi.delete_run"
      end
      # verify the required parameter 'paragraph_path' is set
      if @api_client.config.client_side_validation && deleteRunRequest.paragraph_path.nil?
        fail ArgumentError, "Missing the required parameter 'paragraph_path' when calling WordsApi.delete_run"
      end
      # verify the required parameter 'index' is set
      if @api_client.config.client_side_validation && deleteRunRequest.index.nil?
        fail ArgumentError, "Missing the required parameter 'index' when calling WordsApi.delete_run"
      end
      # resource path
      local_var_path = "/words/{name}/{paragraphPath}/runs/{index}"
	  local_var_path.sub('{' + downcase_first_letter('Name') + '}', deleteRunRequest.name.to_s)
	  local_var_path.sub('{' + downcase_first_letter('ParagraphPath') + '}', deleteRunRequest.paragraph_path.to_s)
	  local_var_path.sub('{' + downcase_first_letter('Index') + '}', deleteRunRequest.index.to_s)

      # query parameters
      query_params = {}
      query_params[downcase_first_letter('Folder')] = deleteRunRequest.folder unless deleteRunRequest.folder.nil?
      query_params[downcase_first_letter('Storage')] = deleteRunRequest.storage unless deleteRunRequest.storage.nil?
      query_params[downcase_first_letter('LoadEncoding')] = deleteRunRequest.load_encoding unless deleteRunRequest.load_encoding.nil?
      query_params[downcase_first_letter('Password')] = deleteRunRequest.password unless deleteRunRequest.password.nil?
      query_params[downcase_first_letter('DestFileName')] = deleteRunRequest.dest_file_name unless deleteRunRequest.dest_file_name.nil?
      query_params[downcase_first_letter('RevisionAuthor')] = deleteRunRequest.revision_author unless deleteRunRequest.revision_author.nil?
      query_params[downcase_first_letter('RevisionDateTime')] = deleteRunRequest.revision_date_time unless deleteRunRequest.revision_date_time.nil?

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
      auth_names = []
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'AsposeResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WordsApi#delete_run\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete a table.
    # 
    # @param name The document name.
    # @param index Object&#39;s index
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder Original document folder.
    # @option opts [String] :storage File storage, which have to be used.
    # @option opts [String] :load_encoding Encoding that will be used to load an HTML (or TXT) document if the encoding is not specified in HTML.
    # @option opts [String] :password Password for opening an encrypted document.
    # @option opts [String] :dest_file_name Result name of the document after the operation. If this parameter is omitted then result of the operation will be saved as the source document.
    # @option opts [String] :revision_author Initials of the author to use for revisions.If you set this parameter and then make some changes to the document programmatically, save the document and later open the document in MS Word you will see these changes as revisions.
    # @option opts [String] :revision_date_time The date and time to use for revisions.
    # @option opts [String] :node_path Path to node, which contains tables.
    # @return [AsposeResponse]
    def delete_table(deleteTableRequest)
      data, _status_code, _headers = delete_table_with_http_info(deleteTableRequest)
      data
    end

    # Delete a table.
    # 
    # @param name The document name.
    # @param index Object&#39;s index
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder Original document folder.
    # @option opts [String] :storage File storage, which have to be used.
    # @option opts [String] :load_encoding Encoding that will be used to load an HTML (or TXT) document if the encoding is not specified in HTML.
    # @option opts [String] :password Password for opening an encrypted document.
    # @option opts [String] :dest_file_name Result name of the document after the operation. If this parameter is omitted then result of the operation will be saved as the source document.
    # @option opts [String] :revision_author Initials of the author to use for revisions.If you set this parameter and then make some changes to the document programmatically, save the document and later open the document in MS Word you will see these changes as revisions.
    # @option opts [String] :revision_date_time The date and time to use for revisions.
    # @option opts [String] :node_path Path to node, which contains tables.
    # @return [Array<(AsposeResponse, Fixnum, Hash)>] AsposeResponse data, response status code and response headers
    def delete_table_with_http_info(deleteTableRequest)
	  if !deleteTableRequest.is_a? delete_tableRequest
	    fail ArgumentError, "Incorrect request type"
	  end
	  
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WordsApi.delete_table ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && deleteTableRequest.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling WordsApi.delete_table"
      end
      # verify the required parameter 'index' is set
      if @api_client.config.client_side_validation && deleteTableRequest.index.nil?
        fail ArgumentError, "Missing the required parameter 'index' when calling WordsApi.delete_table"
      end
      # resource path
      local_var_path = "/words/{name}/{nodePath}/tables/{index}"
	  local_var_path.sub('{' + downcase_first_letter('Name') + '}', deleteTableRequest.name.to_s)
	  local_var_path.sub('{' + downcase_first_letter('Index') + '}', deleteTableRequest.index.to_s)

      # query parameters
      query_params = {}
      query_params[downcase_first_letter('Folder')] = deleteTableRequest.folder unless deleteTableRequest.folder.nil?
      query_params[downcase_first_letter('Storage')] = deleteTableRequest.storage unless deleteTableRequest.storage.nil?
      query_params[downcase_first_letter('LoadEncoding')] = deleteTableRequest.load_encoding unless deleteTableRequest.load_encoding.nil?
      query_params[downcase_first_letter('Password')] = deleteTableRequest.password unless deleteTableRequest.password.nil?
      query_params[downcase_first_letter('DestFileName')] = deleteTableRequest.dest_file_name unless deleteTableRequest.dest_file_name.nil?
      query_params[downcase_first_letter('RevisionAuthor')] = deleteTableRequest.revision_author unless deleteTableRequest.revision_author.nil?
      query_params[downcase_first_letter('RevisionDateTime')] = deleteTableRequest.revision_date_time unless deleteTableRequest.revision_date_time.nil?
      query_params[downcase_first_letter('NodePath')] = deleteTableRequest.node_path unless deleteTableRequest.node_path.nil?

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
      auth_names = []
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'AsposeResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WordsApi#delete_table\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete a table cell.
    # 
    # @param name The document name.
    # @param table_row_path Path to table row.
    # @param index Object&#39;s index
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder Original document folder.
    # @option opts [String] :storage File storage, which have to be used.
    # @option opts [String] :load_encoding Encoding that will be used to load an HTML (or TXT) document if the encoding is not specified in HTML.
    # @option opts [String] :password Password for opening an encrypted document.
    # @option opts [String] :dest_file_name Result name of the document after the operation. If this parameter is omitted then result of the operation will be saved as the source document.
    # @option opts [String] :revision_author Initials of the author to use for revisions.If you set this parameter and then make some changes to the document programmatically, save the document and later open the document in MS Word you will see these changes as revisions.
    # @option opts [String] :revision_date_time The date and time to use for revisions.
    # @return [AsposeResponse]
    def delete_table_cell(deleteTableCellRequest)
      data, _status_code, _headers = delete_table_cell_with_http_info(deleteTableCellRequest)
      data
    end

    # Delete a table cell.
    # 
    # @param name The document name.
    # @param table_row_path Path to table row.
    # @param index Object&#39;s index
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder Original document folder.
    # @option opts [String] :storage File storage, which have to be used.
    # @option opts [String] :load_encoding Encoding that will be used to load an HTML (or TXT) document if the encoding is not specified in HTML.
    # @option opts [String] :password Password for opening an encrypted document.
    # @option opts [String] :dest_file_name Result name of the document after the operation. If this parameter is omitted then result of the operation will be saved as the source document.
    # @option opts [String] :revision_author Initials of the author to use for revisions.If you set this parameter and then make some changes to the document programmatically, save the document and later open the document in MS Word you will see these changes as revisions.
    # @option opts [String] :revision_date_time The date and time to use for revisions.
    # @return [Array<(AsposeResponse, Fixnum, Hash)>] AsposeResponse data, response status code and response headers
    def delete_table_cell_with_http_info(deleteTableCellRequest)
	  if !deleteTableCellRequest.is_a? delete_table_cellRequest
	    fail ArgumentError, "Incorrect request type"
	  end
	  
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WordsApi.delete_table_cell ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && deleteTableCellRequest.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling WordsApi.delete_table_cell"
      end
      # verify the required parameter 'table_row_path' is set
      if @api_client.config.client_side_validation && deleteTableCellRequest.table_row_path.nil?
        fail ArgumentError, "Missing the required parameter 'table_row_path' when calling WordsApi.delete_table_cell"
      end
      # verify the required parameter 'index' is set
      if @api_client.config.client_side_validation && deleteTableCellRequest.index.nil?
        fail ArgumentError, "Missing the required parameter 'index' when calling WordsApi.delete_table_cell"
      end
      # resource path
      local_var_path = "/words/{name}/{tableRowPath}/cells/{index}"
	  local_var_path.sub('{' + downcase_first_letter('Name') + '}', deleteTableCellRequest.name.to_s)
	  local_var_path.sub('{' + downcase_first_letter('TableRowPath') + '}', deleteTableCellRequest.table_row_path.to_s)
	  local_var_path.sub('{' + downcase_first_letter('Index') + '}', deleteTableCellRequest.index.to_s)

      # query parameters
      query_params = {}
      query_params[downcase_first_letter('Folder')] = deleteTableCellRequest.folder unless deleteTableCellRequest.folder.nil?
      query_params[downcase_first_letter('Storage')] = deleteTableCellRequest.storage unless deleteTableCellRequest.storage.nil?
      query_params[downcase_first_letter('LoadEncoding')] = deleteTableCellRequest.load_encoding unless deleteTableCellRequest.load_encoding.nil?
      query_params[downcase_first_letter('Password')] = deleteTableCellRequest.password unless deleteTableCellRequest.password.nil?
      query_params[downcase_first_letter('DestFileName')] = deleteTableCellRequest.dest_file_name unless deleteTableCellRequest.dest_file_name.nil?
      query_params[downcase_first_letter('RevisionAuthor')] = deleteTableCellRequest.revision_author unless deleteTableCellRequest.revision_author.nil?
      query_params[downcase_first_letter('RevisionDateTime')] = deleteTableCellRequest.revision_date_time unless deleteTableCellRequest.revision_date_time.nil?

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
      auth_names = []
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'AsposeResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WordsApi#delete_table_cell\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete a table row.
    # 
    # @param name The document name.
    # @param table_path Path to table.
    # @param index Object&#39;s index
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder Original document folder.
    # @option opts [String] :storage File storage, which have to be used.
    # @option opts [String] :load_encoding Encoding that will be used to load an HTML (or TXT) document if the encoding is not specified in HTML.
    # @option opts [String] :password Password for opening an encrypted document.
    # @option opts [String] :dest_file_name Result name of the document after the operation. If this parameter is omitted then result of the operation will be saved as the source document.
    # @option opts [String] :revision_author Initials of the author to use for revisions.If you set this parameter and then make some changes to the document programmatically, save the document and later open the document in MS Word you will see these changes as revisions.
    # @option opts [String] :revision_date_time The date and time to use for revisions.
    # @return [AsposeResponse]
    def delete_table_row(deleteTableRowRequest)
      data, _status_code, _headers = delete_table_row_with_http_info(deleteTableRowRequest)
      data
    end

    # Delete a table row.
    # 
    # @param name The document name.
    # @param table_path Path to table.
    # @param index Object&#39;s index
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder Original document folder.
    # @option opts [String] :storage File storage, which have to be used.
    # @option opts [String] :load_encoding Encoding that will be used to load an HTML (or TXT) document if the encoding is not specified in HTML.
    # @option opts [String] :password Password for opening an encrypted document.
    # @option opts [String] :dest_file_name Result name of the document after the operation. If this parameter is omitted then result of the operation will be saved as the source document.
    # @option opts [String] :revision_author Initials of the author to use for revisions.If you set this parameter and then make some changes to the document programmatically, save the document and later open the document in MS Word you will see these changes as revisions.
    # @option opts [String] :revision_date_time The date and time to use for revisions.
    # @return [Array<(AsposeResponse, Fixnum, Hash)>] AsposeResponse data, response status code and response headers
    def delete_table_row_with_http_info(deleteTableRowRequest)
	  if !deleteTableRowRequest.is_a? delete_table_rowRequest
	    fail ArgumentError, "Incorrect request type"
	  end
	  
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WordsApi.delete_table_row ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && deleteTableRowRequest.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling WordsApi.delete_table_row"
      end
      # verify the required parameter 'table_path' is set
      if @api_client.config.client_side_validation && deleteTableRowRequest.table_path.nil?
        fail ArgumentError, "Missing the required parameter 'table_path' when calling WordsApi.delete_table_row"
      end
      # verify the required parameter 'index' is set
      if @api_client.config.client_side_validation && deleteTableRowRequest.index.nil?
        fail ArgumentError, "Missing the required parameter 'index' when calling WordsApi.delete_table_row"
      end
      # resource path
      local_var_path = "/words/{name}/{tablePath}/rows/{index}"
	  local_var_path.sub('{' + downcase_first_letter('Name') + '}', deleteTableRowRequest.name.to_s)
	  local_var_path.sub('{' + downcase_first_letter('TablePath') + '}', deleteTableRowRequest.table_path.to_s)
	  local_var_path.sub('{' + downcase_first_letter('Index') + '}', deleteTableRowRequest.index.to_s)

      # query parameters
      query_params = {}
      query_params[downcase_first_letter('Folder')] = deleteTableRowRequest.folder unless deleteTableRowRequest.folder.nil?
      query_params[downcase_first_letter('Storage')] = deleteTableRowRequest.storage unless deleteTableRowRequest.storage.nil?
      query_params[downcase_first_letter('LoadEncoding')] = deleteTableRowRequest.load_encoding unless deleteTableRowRequest.load_encoding.nil?
      query_params[downcase_first_letter('Password')] = deleteTableRowRequest.password unless deleteTableRowRequest.password.nil?
      query_params[downcase_first_letter('DestFileName')] = deleteTableRowRequest.dest_file_name unless deleteTableRowRequest.dest_file_name.nil?
      query_params[downcase_first_letter('RevisionAuthor')] = deleteTableRowRequest.revision_author unless deleteTableRowRequest.revision_author.nil?
      query_params[downcase_first_letter('RevisionDateTime')] = deleteTableRowRequest.revision_date_time unless deleteTableRowRequest.revision_date_time.nil?

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
      auth_names = []
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'AsposeResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WordsApi#delete_table_row\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Unprotect document.
    # 
    # @param name The document name.
    # @param protection_request with protection settings.            
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder Original document folder.
    # @option opts [String] :storage File storage, which have to be used.
    # @option opts [String] :load_encoding Encoding that will be used to load an HTML (or TXT) document if the encoding is not specified in HTML.
    # @option opts [String] :password Password for opening an encrypted document.
    # @option opts [String] :dest_file_name Result name of the document after the operation. If this parameter is omitted then result of the operation will be saved as the source document.
    # @return [ProtectionDataResponse]
    def delete_unprotect_document(deleteUnprotectDocumentRequest)
      data, _status_code, _headers = delete_unprotect_document_with_http_info(deleteUnprotectDocumentRequest)
      data
    end

    # Unprotect document.
    # 
    # @param name The document name.
    # @param protection_request with protection settings.            
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder Original document folder.
    # @option opts [String] :storage File storage, which have to be used.
    # @option opts [String] :load_encoding Encoding that will be used to load an HTML (or TXT) document if the encoding is not specified in HTML.
    # @option opts [String] :password Password for opening an encrypted document.
    # @option opts [String] :dest_file_name Result name of the document after the operation. If this parameter is omitted then result of the operation will be saved as the source document.
    # @return [Array<(ProtectionDataResponse, Fixnum, Hash)>] ProtectionDataResponse data, response status code and response headers
    def delete_unprotect_document_with_http_info(deleteUnprotectDocumentRequest)
	  if !deleteUnprotectDocumentRequest.is_a? delete_unprotect_documentRequest
	    fail ArgumentError, "Incorrect request type"
	  end
	  
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WordsApi.delete_unprotect_document ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && deleteUnprotectDocumentRequest.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling WordsApi.delete_unprotect_document"
      end
      # verify the required parameter 'protection_request' is set
      if @api_client.config.client_side_validation && deleteUnprotectDocumentRequest.protection_request.nil?
        fail ArgumentError, "Missing the required parameter 'protection_request' when calling WordsApi.delete_unprotect_document"
      end
      # resource path
      local_var_path = "/words/{name}/protection"
	  local_var_path.sub('{' + downcase_first_letter('Name') + '}', deleteUnprotectDocumentRequest.name.to_s)

      # query parameters
      query_params = {}
      query_params[downcase_first_letter('Folder')] = deleteUnprotectDocumentRequest.folder unless deleteUnprotectDocumentRequest.folder.nil?
      query_params[downcase_first_letter('Storage')] = deleteUnprotectDocumentRequest.storage unless deleteUnprotectDocumentRequest.storage.nil?
      query_params[downcase_first_letter('LoadEncoding')] = deleteUnprotectDocumentRequest.load_encoding unless deleteUnprotectDocumentRequest.load_encoding.nil?
      query_params[downcase_first_letter('Password')] = deleteUnprotectDocumentRequest.password unless deleteUnprotectDocumentRequest.password.nil?
      query_params[downcase_first_letter('DestFileName')] = deleteUnprotectDocumentRequest.dest_file_name unless deleteUnprotectDocumentRequest.dest_file_name.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/xml', 'application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/xml', 'application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(deleteUnprotectDocumentRequest.protection_request)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'ProtectionDataResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WordsApi#delete_unprotect_document\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Return a border.
    # 'nodePath' should refer to node with cell or row
    # @param name The document name.
    # @param node_path Path to node with border(node should be cell or row).
    # @param index Object&#39;s index
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder Original document folder.
    # @option opts [String] :storage File storage, which have to be used.
    # @option opts [String] :load_encoding Encoding that will be used to load an HTML (or TXT) document if the encoding is not specified in HTML.
    # @option opts [String] :password Password for opening an encrypted document.
    # @return [BorderResponse]
    def get_border(getBorderRequest)
      data, _status_code, _headers = get_border_with_http_info(getBorderRequest)
      data
    end

    # Return a border.
    # &#39;nodePath&#39; should refer to node with cell or row
    # @param name The document name.
    # @param node_path Path to node with border(node should be cell or row).
    # @param index Object&#39;s index
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder Original document folder.
    # @option opts [String] :storage File storage, which have to be used.
    # @option opts [String] :load_encoding Encoding that will be used to load an HTML (or TXT) document if the encoding is not specified in HTML.
    # @option opts [String] :password Password for opening an encrypted document.
    # @return [Array<(BorderResponse, Fixnum, Hash)>] BorderResponse data, response status code and response headers
    def get_border_with_http_info(getBorderRequest)
	  if !getBorderRequest.is_a? get_borderRequest
	    fail ArgumentError, "Incorrect request type"
	  end
	  
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WordsApi.get_border ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && getBorderRequest.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling WordsApi.get_border"
      end
      # verify the required parameter 'node_path' is set
      if @api_client.config.client_side_validation && getBorderRequest.node_path.nil?
        fail ArgumentError, "Missing the required parameter 'node_path' when calling WordsApi.get_border"
      end
      # verify the required parameter 'index' is set
      if @api_client.config.client_side_validation && getBorderRequest.index.nil?
        fail ArgumentError, "Missing the required parameter 'index' when calling WordsApi.get_border"
      end
      # resource path
      local_var_path = "/words/{name}/{nodePath}/borders/{index}"
	  local_var_path.sub('{' + downcase_first_letter('Name') + '}', getBorderRequest.name.to_s)
	  local_var_path.sub('{' + downcase_first_letter('NodePath') + '}', getBorderRequest.node_path.to_s)
	  local_var_path.sub('{' + downcase_first_letter('Index') + '}', getBorderRequest.index.to_s)

      # query parameters
      query_params = {}
      query_params[downcase_first_letter('Folder')] = getBorderRequest.folder unless getBorderRequest.folder.nil?
      query_params[downcase_first_letter('Storage')] = getBorderRequest.storage unless getBorderRequest.storage.nil?
      query_params[downcase_first_letter('LoadEncoding')] = getBorderRequest.load_encoding unless getBorderRequest.load_encoding.nil?
      query_params[downcase_first_letter('Password')] = getBorderRequest.password unless getBorderRequest.password.nil?

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
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'BorderResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WordsApi#get_border\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Return a collection of borders.
    # 'nodePath' should refer to node with cell or row
    # @param name The document name.
    # @param node_path Path to node with borders(node should be cell or row).
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder Original document folder.
    # @option opts [String] :storage File storage, which have to be used.
    # @option opts [String] :load_encoding Encoding that will be used to load an HTML (or TXT) document if the encoding is not specified in HTML.
    # @option opts [String] :password Password for opening an encrypted document.
    # @return [BordersResponse]
    def get_borders(getBordersRequest)
      data, _status_code, _headers = get_borders_with_http_info(getBordersRequest)
      data
    end

    # Return a collection of borders.
    # &#39;nodePath&#39; should refer to node with cell or row
    # @param name The document name.
    # @param node_path Path to node with borders(node should be cell or row).
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder Original document folder.
    # @option opts [String] :storage File storage, which have to be used.
    # @option opts [String] :load_encoding Encoding that will be used to load an HTML (or TXT) document if the encoding is not specified in HTML.
    # @option opts [String] :password Password for opening an encrypted document.
    # @return [Array<(BordersResponse, Fixnum, Hash)>] BordersResponse data, response status code and response headers
    def get_borders_with_http_info(getBordersRequest)
	  if !getBordersRequest.is_a? get_bordersRequest
	    fail ArgumentError, "Incorrect request type"
	  end
	  
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WordsApi.get_borders ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && getBordersRequest.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling WordsApi.get_borders"
      end
      # verify the required parameter 'node_path' is set
      if @api_client.config.client_side_validation && getBordersRequest.node_path.nil?
        fail ArgumentError, "Missing the required parameter 'node_path' when calling WordsApi.get_borders"
      end
      # resource path
      local_var_path = "/words/{name}/{nodePath}/borders"
	  local_var_path.sub('{' + downcase_first_letter('Name') + '}', getBordersRequest.name.to_s)
	  local_var_path.sub('{' + downcase_first_letter('NodePath') + '}', getBordersRequest.node_path.to_s)

      # query parameters
      query_params = {}
      query_params[downcase_first_letter('Folder')] = getBordersRequest.folder unless getBordersRequest.folder.nil?
      query_params[downcase_first_letter('Storage')] = getBordersRequest.storage unless getBordersRequest.storage.nil?
      query_params[downcase_first_letter('LoadEncoding')] = getBordersRequest.load_encoding unless getBordersRequest.load_encoding.nil?
      query_params[downcase_first_letter('Password')] = getBordersRequest.password unless getBordersRequest.password.nil?

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
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'BordersResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WordsApi#get_borders\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get comment from document.
    # 
    # @param name The file name.
    # @param comment_index Comment index
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder Original document folder.
    # @option opts [String] :storage File storage, which have to be used.
    # @option opts [String] :load_encoding Encoding that will be used to load an HTML (or TXT) document if the encoding is not specified in HTML.
    # @option opts [String] :password Password for opening an encrypted document.
    # @return [CommentResponse]
    def get_comment(getCommentRequest)
      data, _status_code, _headers = get_comment_with_http_info(getCommentRequest)
      data
    end

    # Get comment from document.
    # 
    # @param name The file name.
    # @param comment_index Comment index
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder Original document folder.
    # @option opts [String] :storage File storage, which have to be used.
    # @option opts [String] :load_encoding Encoding that will be used to load an HTML (or TXT) document if the encoding is not specified in HTML.
    # @option opts [String] :password Password for opening an encrypted document.
    # @return [Array<(CommentResponse, Fixnum, Hash)>] CommentResponse data, response status code and response headers
    def get_comment_with_http_info(getCommentRequest)
	  if !getCommentRequest.is_a? get_commentRequest
	    fail ArgumentError, "Incorrect request type"
	  end
	  
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WordsApi.get_comment ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && getCommentRequest.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling WordsApi.get_comment"
      end
      # verify the required parameter 'comment_index' is set
      if @api_client.config.client_side_validation && getCommentRequest.comment_index.nil?
        fail ArgumentError, "Missing the required parameter 'comment_index' when calling WordsApi.get_comment"
      end
      # resource path
      local_var_path = "/words/{name}/comments/{commentIndex}"
	  local_var_path.sub('{' + downcase_first_letter('Name') + '}', getCommentRequest.name.to_s)
	  local_var_path.sub('{' + downcase_first_letter('CommentIndex') + '}', getCommentRequest.comment_index.to_s)

      # query parameters
      query_params = {}
      query_params[downcase_first_letter('Folder')] = getCommentRequest.folder unless getCommentRequest.folder.nil?
      query_params[downcase_first_letter('Storage')] = getCommentRequest.storage unless getCommentRequest.storage.nil?
      query_params[downcase_first_letter('LoadEncoding')] = getCommentRequest.load_encoding unless getCommentRequest.load_encoding.nil?
      query_params[downcase_first_letter('Password')] = getCommentRequest.password unless getCommentRequest.password.nil?

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
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'CommentResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WordsApi#get_comment\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get comments from document.
    # 
    # @param name The file name.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder Original document folder.
    # @option opts [String] :storage File storage, which have to be used.
    # @option opts [String] :load_encoding Encoding that will be used to load an HTML (or TXT) document if the encoding is not specified in HTML.
    # @option opts [String] :password Password for opening an encrypted document.
    # @return [CommentsResponse]
    def get_comments(getCommentsRequest)
      data, _status_code, _headers = get_comments_with_http_info(getCommentsRequest)
      data
    end

    # Get comments from document.
    # 
    # @param name The file name.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder Original document folder.
    # @option opts [String] :storage File storage, which have to be used.
    # @option opts [String] :load_encoding Encoding that will be used to load an HTML (or TXT) document if the encoding is not specified in HTML.
    # @option opts [String] :password Password for opening an encrypted document.
    # @return [Array<(CommentsResponse, Fixnum, Hash)>] CommentsResponse data, response status code and response headers
    def get_comments_with_http_info(getCommentsRequest)
	  if !getCommentsRequest.is_a? get_commentsRequest
	    fail ArgumentError, "Incorrect request type"
	  end
	  
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WordsApi.get_comments ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && getCommentsRequest.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling WordsApi.get_comments"
      end
      # resource path
      local_var_path = "/words/{name}/comments"
	  local_var_path.sub('{' + downcase_first_letter('Name') + '}', getCommentsRequest.name.to_s)

      # query parameters
      query_params = {}
      query_params[downcase_first_letter('Folder')] = getCommentsRequest.folder unless getCommentsRequest.folder.nil?
      query_params[downcase_first_letter('Storage')] = getCommentsRequest.storage unless getCommentsRequest.storage.nil?
      query_params[downcase_first_letter('LoadEncoding')] = getCommentsRequest.load_encoding unless getCommentsRequest.load_encoding.nil?
      query_params[downcase_first_letter('Password')] = getCommentsRequest.password unless getCommentsRequest.password.nil?

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
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'CommentsResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WordsApi#get_comments\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Read document common info.
    # 
    # @param document_name The file name.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder Original document folder.
    # @option opts [String] :storage File storage, which have to be used.
    # @option opts [String] :load_encoding Encoding that will be used to load an HTML (or TXT) document if the encoding is not specified in HTML.
    # @option opts [String] :password Password for opening an encrypted document.
    # @return [DocumentResponse]
    def get_document(getDocumentRequest)
      data, _status_code, _headers = get_document_with_http_info(getDocumentRequest)
      data
    end

    # Read document common info.
    # 
    # @param document_name The file name.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder Original document folder.
    # @option opts [String] :storage File storage, which have to be used.
    # @option opts [String] :load_encoding Encoding that will be used to load an HTML (or TXT) document if the encoding is not specified in HTML.
    # @option opts [String] :password Password for opening an encrypted document.
    # @return [Array<(DocumentResponse, Fixnum, Hash)>] DocumentResponse data, response status code and response headers
    def get_document_with_http_info(getDocumentRequest)
	  if !getDocumentRequest.is_a? get_documentRequest
	    fail ArgumentError, "Incorrect request type"
	  end
	  
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WordsApi.get_document ..."
      end
      # verify the required parameter 'document_name' is set
      if @api_client.config.client_side_validation && getDocumentRequest.document_name.nil?
        fail ArgumentError, "Missing the required parameter 'document_name' when calling WordsApi.get_document"
      end
      # resource path
      local_var_path = "/words/{documentName}"
	  local_var_path.sub('{' + downcase_first_letter('DocumentName') + '}', getDocumentRequest.document_name.to_s)

      # query parameters
      query_params = {}
      query_params[downcase_first_letter('Folder')] = getDocumentRequest.folder unless getDocumentRequest.folder.nil?
      query_params[downcase_first_letter('Storage')] = getDocumentRequest.storage unless getDocumentRequest.storage.nil?
      query_params[downcase_first_letter('LoadEncoding')] = getDocumentRequest.load_encoding unless getDocumentRequest.load_encoding.nil?
      query_params[downcase_first_letter('Password')] = getDocumentRequest.password unless getDocumentRequest.password.nil?

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
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'DocumentResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WordsApi#get_document\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Read document bookmark data by its name.
    # 
    # @param name The document name.
    # @param bookmark_name The bookmark name.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder Original document folder.
    # @option opts [String] :storage File storage, which have to be used.
    # @option opts [String] :load_encoding Encoding that will be used to load an HTML (or TXT) document if the encoding is not specified in HTML.
    # @option opts [String] :password Password for opening an encrypted document.
    # @return [BookmarkResponse]
    def get_document_bookmark_by_name(getDocumentBookmarkByNameRequest)
      data, _status_code, _headers = get_document_bookmark_by_name_with_http_info(getDocumentBookmarkByNameRequest)
      data
    end

    # Read document bookmark data by its name.
    # 
    # @param name The document name.
    # @param bookmark_name The bookmark name.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder Original document folder.
    # @option opts [String] :storage File storage, which have to be used.
    # @option opts [String] :load_encoding Encoding that will be used to load an HTML (or TXT) document if the encoding is not specified in HTML.
    # @option opts [String] :password Password for opening an encrypted document.
    # @return [Array<(BookmarkResponse, Fixnum, Hash)>] BookmarkResponse data, response status code and response headers
    def get_document_bookmark_by_name_with_http_info(getDocumentBookmarkByNameRequest)
	  if !getDocumentBookmarkByNameRequest.is_a? get_document_bookmark_by_nameRequest
	    fail ArgumentError, "Incorrect request type"
	  end
	  
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WordsApi.get_document_bookmark_by_name ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && getDocumentBookmarkByNameRequest.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling WordsApi.get_document_bookmark_by_name"
      end
      # verify the required parameter 'bookmark_name' is set
      if @api_client.config.client_side_validation && getDocumentBookmarkByNameRequest.bookmark_name.nil?
        fail ArgumentError, "Missing the required parameter 'bookmark_name' when calling WordsApi.get_document_bookmark_by_name"
      end
      # resource path
      local_var_path = "/words/{name}/bookmarks/{bookmarkName}"
	  local_var_path.sub('{' + downcase_first_letter('Name') + '}', getDocumentBookmarkByNameRequest.name.to_s)
	  local_var_path.sub('{' + downcase_first_letter('BookmarkName') + '}', getDocumentBookmarkByNameRequest.bookmark_name.to_s)

      # query parameters
      query_params = {}
      query_params[downcase_first_letter('Folder')] = getDocumentBookmarkByNameRequest.folder unless getDocumentBookmarkByNameRequest.folder.nil?
      query_params[downcase_first_letter('Storage')] = getDocumentBookmarkByNameRequest.storage unless getDocumentBookmarkByNameRequest.storage.nil?
      query_params[downcase_first_letter('LoadEncoding')] = getDocumentBookmarkByNameRequest.load_encoding unless getDocumentBookmarkByNameRequest.load_encoding.nil?
      query_params[downcase_first_letter('Password')] = getDocumentBookmarkByNameRequest.password unless getDocumentBookmarkByNameRequest.password.nil?

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
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'BookmarkResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WordsApi#get_document_bookmark_by_name\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Read document bookmarks common info.
    # 
    # @param name The document name.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder Original document folder.
    # @option opts [String] :storage File storage, which have to be used.
    # @option opts [String] :load_encoding Encoding that will be used to load an HTML (or TXT) document if the encoding is not specified in HTML.
    # @option opts [String] :password Password for opening an encrypted document.
    # @return [BookmarksResponse]
    def get_document_bookmarks(getDocumentBookmarksRequest)
      data, _status_code, _headers = get_document_bookmarks_with_http_info(getDocumentBookmarksRequest)
      data
    end

    # Read document bookmarks common info.
    # 
    # @param name The document name.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder Original document folder.
    # @option opts [String] :storage File storage, which have to be used.
    # @option opts [String] :load_encoding Encoding that will be used to load an HTML (or TXT) document if the encoding is not specified in HTML.
    # @option opts [String] :password Password for opening an encrypted document.
    # @return [Array<(BookmarksResponse, Fixnum, Hash)>] BookmarksResponse data, response status code and response headers
    def get_document_bookmarks_with_http_info(getDocumentBookmarksRequest)
	  if !getDocumentBookmarksRequest.is_a? get_document_bookmarksRequest
	    fail ArgumentError, "Incorrect request type"
	  end
	  
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WordsApi.get_document_bookmarks ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && getDocumentBookmarksRequest.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling WordsApi.get_document_bookmarks"
      end
      # resource path
      local_var_path = "/words/{name}/bookmarks"
	  local_var_path.sub('{' + downcase_first_letter('Name') + '}', getDocumentBookmarksRequest.name.to_s)

      # query parameters
      query_params = {}
      query_params[downcase_first_letter('Folder')] = getDocumentBookmarksRequest.folder unless getDocumentBookmarksRequest.folder.nil?
      query_params[downcase_first_letter('Storage')] = getDocumentBookmarksRequest.storage unless getDocumentBookmarksRequest.storage.nil?
      query_params[downcase_first_letter('LoadEncoding')] = getDocumentBookmarksRequest.load_encoding unless getDocumentBookmarksRequest.load_encoding.nil?
      query_params[downcase_first_letter('Password')] = getDocumentBookmarksRequest.password unless getDocumentBookmarksRequest.password.nil?

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
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'BookmarksResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WordsApi#get_document_bookmarks\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Read document drawing object common info by its index or convert to format specified.
    # 
    # @param name The document name.
    # @param index Object&#39;s index
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder Original document folder.
    # @option opts [String] :storage File storage, which have to be used.
    # @option opts [String] :load_encoding Encoding that will be used to load an HTML (or TXT) document if the encoding is not specified in HTML.
    # @option opts [String] :password Password for opening an encrypted document.
    # @option opts [String] :node_path Path to node, which contains collection of drawing objects.
    # @return [DrawingObjectResponse]
    def get_document_drawing_object_by_index(getDocumentDrawingObjectByIndexRequest)
      data, _status_code, _headers = get_document_drawing_object_by_index_with_http_info(getDocumentDrawingObjectByIndexRequest)
      data
    end

    # Read document drawing object common info by its index or convert to format specified.
    # 
    # @param name The document name.
    # @param index Object&#39;s index
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder Original document folder.
    # @option opts [String] :storage File storage, which have to be used.
    # @option opts [String] :load_encoding Encoding that will be used to load an HTML (or TXT) document if the encoding is not specified in HTML.
    # @option opts [String] :password Password for opening an encrypted document.
    # @option opts [String] :node_path Path to node, which contains collection of drawing objects.
    # @return [Array<(DrawingObjectResponse, Fixnum, Hash)>] DrawingObjectResponse data, response status code and response headers
    def get_document_drawing_object_by_index_with_http_info(getDocumentDrawingObjectByIndexRequest)
	  if !getDocumentDrawingObjectByIndexRequest.is_a? get_document_drawing_object_by_indexRequest
	    fail ArgumentError, "Incorrect request type"
	  end
	  
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WordsApi.get_document_drawing_object_by_index ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && getDocumentDrawingObjectByIndexRequest.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling WordsApi.get_document_drawing_object_by_index"
      end
      # verify the required parameter 'index' is set
      if @api_client.config.client_side_validation && getDocumentDrawingObjectByIndexRequest.index.nil?
        fail ArgumentError, "Missing the required parameter 'index' when calling WordsApi.get_document_drawing_object_by_index"
      end
      # resource path
      local_var_path = "/words/{name}/{nodePath}/drawingObjects/{index}"
	  local_var_path.sub('{' + downcase_first_letter('Name') + '}', getDocumentDrawingObjectByIndexRequest.name.to_s)
	  local_var_path.sub('{' + downcase_first_letter('Index') + '}', getDocumentDrawingObjectByIndexRequest.index.to_s)

      # query parameters
      query_params = {}
      query_params[downcase_first_letter('Folder')] = getDocumentDrawingObjectByIndexRequest.folder unless getDocumentDrawingObjectByIndexRequest.folder.nil?
      query_params[downcase_first_letter('Storage')] = getDocumentDrawingObjectByIndexRequest.storage unless getDocumentDrawingObjectByIndexRequest.storage.nil?
      query_params[downcase_first_letter('LoadEncoding')] = getDocumentDrawingObjectByIndexRequest.load_encoding unless getDocumentDrawingObjectByIndexRequest.load_encoding.nil?
      query_params[downcase_first_letter('Password')] = getDocumentDrawingObjectByIndexRequest.password unless getDocumentDrawingObjectByIndexRequest.password.nil?
      query_params[downcase_first_letter('NodePath')] = getDocumentDrawingObjectByIndexRequest.node_path unless getDocumentDrawingObjectByIndexRequest.node_path.nil?

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
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'DrawingObjectResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WordsApi#get_document_drawing_object_by_index\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Read drawing object image data.
    # 
    # @param name The document name.
    # @param index Object&#39;s index
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder Original document folder.
    # @option opts [String] :storage File storage, which have to be used.
    # @option opts [String] :load_encoding Encoding that will be used to load an HTML (or TXT) document if the encoding is not specified in HTML.
    # @option opts [String] :password Password for opening an encrypted document.
    # @option opts [String] :node_path Path to node, which contains collection of drawing objects.
    # @return [File]
    def get_document_drawing_object_image_data(getDocumentDrawingObjectImageDataRequest)
      data, _status_code, _headers = get_document_drawing_object_image_data_with_http_info(getDocumentDrawingObjectImageDataRequest)
      data
    end

    # Read drawing object image data.
    # 
    # @param name The document name.
    # @param index Object&#39;s index
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder Original document folder.
    # @option opts [String] :storage File storage, which have to be used.
    # @option opts [String] :load_encoding Encoding that will be used to load an HTML (or TXT) document if the encoding is not specified in HTML.
    # @option opts [String] :password Password for opening an encrypted document.
    # @option opts [String] :node_path Path to node, which contains collection of drawing objects.
    # @return [Array<(File, Fixnum, Hash)>] File data, response status code and response headers
    def get_document_drawing_object_image_data_with_http_info(getDocumentDrawingObjectImageDataRequest)
	  if !getDocumentDrawingObjectImageDataRequest.is_a? get_document_drawing_object_image_dataRequest
	    fail ArgumentError, "Incorrect request type"
	  end
	  
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WordsApi.get_document_drawing_object_image_data ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && getDocumentDrawingObjectImageDataRequest.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling WordsApi.get_document_drawing_object_image_data"
      end
      # verify the required parameter 'index' is set
      if @api_client.config.client_side_validation && getDocumentDrawingObjectImageDataRequest.index.nil?
        fail ArgumentError, "Missing the required parameter 'index' when calling WordsApi.get_document_drawing_object_image_data"
      end
      # resource path
      local_var_path = "/words/{name}/{nodePath}/drawingObjects/{index}/imageData"
	  local_var_path.sub('{' + downcase_first_letter('Name') + '}', getDocumentDrawingObjectImageDataRequest.name.to_s)
	  local_var_path.sub('{' + downcase_first_letter('Index') + '}', getDocumentDrawingObjectImageDataRequest.index.to_s)

      # query parameters
      query_params = {}
      query_params[downcase_first_letter('Folder')] = getDocumentDrawingObjectImageDataRequest.folder unless getDocumentDrawingObjectImageDataRequest.folder.nil?
      query_params[downcase_first_letter('Storage')] = getDocumentDrawingObjectImageDataRequest.storage unless getDocumentDrawingObjectImageDataRequest.storage.nil?
      query_params[downcase_first_letter('LoadEncoding')] = getDocumentDrawingObjectImageDataRequest.load_encoding unless getDocumentDrawingObjectImageDataRequest.load_encoding.nil?
      query_params[downcase_first_letter('Password')] = getDocumentDrawingObjectImageDataRequest.password unless getDocumentDrawingObjectImageDataRequest.password.nil?
      query_params[downcase_first_letter('NodePath')] = getDocumentDrawingObjectImageDataRequest.node_path unless getDocumentDrawingObjectImageDataRequest.node_path.nil?

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
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'File')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WordsApi#get_document_drawing_object_image_data\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get drawing object OLE data.
    # 
    # @param name The document name.
    # @param index Object&#39;s index
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder Original document folder.
    # @option opts [String] :storage File storage, which have to be used.
    # @option opts [String] :load_encoding Encoding that will be used to load an HTML (or TXT) document if the encoding is not specified in HTML.
    # @option opts [String] :password Password for opening an encrypted document.
    # @option opts [String] :node_path Path to node, which contains collection of drawing objects.
    # @return [File]
    def get_document_drawing_object_ole_data(getDocumentDrawingObjectOleDataRequest)
      data, _status_code, _headers = get_document_drawing_object_ole_data_with_http_info(getDocumentDrawingObjectOleDataRequest)
      data
    end

    # Get drawing object OLE data.
    # 
    # @param name The document name.
    # @param index Object&#39;s index
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder Original document folder.
    # @option opts [String] :storage File storage, which have to be used.
    # @option opts [String] :load_encoding Encoding that will be used to load an HTML (or TXT) document if the encoding is not specified in HTML.
    # @option opts [String] :password Password for opening an encrypted document.
    # @option opts [String] :node_path Path to node, which contains collection of drawing objects.
    # @return [Array<(File, Fixnum, Hash)>] File data, response status code and response headers
    def get_document_drawing_object_ole_data_with_http_info(getDocumentDrawingObjectOleDataRequest)
	  if !getDocumentDrawingObjectOleDataRequest.is_a? get_document_drawing_object_ole_dataRequest
	    fail ArgumentError, "Incorrect request type"
	  end
	  
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WordsApi.get_document_drawing_object_ole_data ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && getDocumentDrawingObjectOleDataRequest.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling WordsApi.get_document_drawing_object_ole_data"
      end
      # verify the required parameter 'index' is set
      if @api_client.config.client_side_validation && getDocumentDrawingObjectOleDataRequest.index.nil?
        fail ArgumentError, "Missing the required parameter 'index' when calling WordsApi.get_document_drawing_object_ole_data"
      end
      # resource path
      local_var_path = "/words/{name}/{nodePath}/drawingObjects/{index}/oleData"
	  local_var_path.sub('{' + downcase_first_letter('Name') + '}', getDocumentDrawingObjectOleDataRequest.name.to_s)
	  local_var_path.sub('{' + downcase_first_letter('Index') + '}', getDocumentDrawingObjectOleDataRequest.index.to_s)

      # query parameters
      query_params = {}
      query_params[downcase_first_letter('Folder')] = getDocumentDrawingObjectOleDataRequest.folder unless getDocumentDrawingObjectOleDataRequest.folder.nil?
      query_params[downcase_first_letter('Storage')] = getDocumentDrawingObjectOleDataRequest.storage unless getDocumentDrawingObjectOleDataRequest.storage.nil?
      query_params[downcase_first_letter('LoadEncoding')] = getDocumentDrawingObjectOleDataRequest.load_encoding unless getDocumentDrawingObjectOleDataRequest.load_encoding.nil?
      query_params[downcase_first_letter('Password')] = getDocumentDrawingObjectOleDataRequest.password unless getDocumentDrawingObjectOleDataRequest.password.nil?
      query_params[downcase_first_letter('NodePath')] = getDocumentDrawingObjectOleDataRequest.node_path unless getDocumentDrawingObjectOleDataRequest.node_path.nil?

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
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'File')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WordsApi#get_document_drawing_object_ole_data\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Read document drawing objects common info.
    # 
    # @param name The document name.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder Original document folder.
    # @option opts [String] :storage File storage, which have to be used.
    # @option opts [String] :load_encoding Encoding that will be used to load an HTML (or TXT) document if the encoding is not specified in HTML.
    # @option opts [String] :password Password for opening an encrypted document.
    # @option opts [String] :node_path Path to node, which contains collection of drawing objects.
    # @return [DrawingObjectsResponse]
    def get_document_drawing_objects(getDocumentDrawingObjectsRequest)
      data, _status_code, _headers = get_document_drawing_objects_with_http_info(getDocumentDrawingObjectsRequest)
      data
    end

    # Read document drawing objects common info.
    # 
    # @param name The document name.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder Original document folder.
    # @option opts [String] :storage File storage, which have to be used.
    # @option opts [String] :load_encoding Encoding that will be used to load an HTML (or TXT) document if the encoding is not specified in HTML.
    # @option opts [String] :password Password for opening an encrypted document.
    # @option opts [String] :node_path Path to node, which contains collection of drawing objects.
    # @return [Array<(DrawingObjectsResponse, Fixnum, Hash)>] DrawingObjectsResponse data, response status code and response headers
    def get_document_drawing_objects_with_http_info(getDocumentDrawingObjectsRequest)
	  if !getDocumentDrawingObjectsRequest.is_a? get_document_drawing_objectsRequest
	    fail ArgumentError, "Incorrect request type"
	  end
	  
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WordsApi.get_document_drawing_objects ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && getDocumentDrawingObjectsRequest.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling WordsApi.get_document_drawing_objects"
      end
      # resource path
      local_var_path = "/words/{name}/{nodePath}/drawingObjects"
	  local_var_path.sub('{' + downcase_first_letter('Name') + '}', getDocumentDrawingObjectsRequest.name.to_s)

      # query parameters
      query_params = {}
      query_params[downcase_first_letter('Folder')] = getDocumentDrawingObjectsRequest.folder unless getDocumentDrawingObjectsRequest.folder.nil?
      query_params[downcase_first_letter('Storage')] = getDocumentDrawingObjectsRequest.storage unless getDocumentDrawingObjectsRequest.storage.nil?
      query_params[downcase_first_letter('LoadEncoding')] = getDocumentDrawingObjectsRequest.load_encoding unless getDocumentDrawingObjectsRequest.load_encoding.nil?
      query_params[downcase_first_letter('Password')] = getDocumentDrawingObjectsRequest.password unless getDocumentDrawingObjectsRequest.password.nil?
      query_params[downcase_first_letter('NodePath')] = getDocumentDrawingObjectsRequest.node_path unless getDocumentDrawingObjectsRequest.node_path.nil?

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
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'DrawingObjectsResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WordsApi#get_document_drawing_objects\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Read document field names.
    # 
    # @param name The document name.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder Original document folder.
    # @option opts [String] :storage File storage, which have to be used.
    # @option opts [String] :load_encoding Encoding that will be used to load an HTML (or TXT) document if the encoding is not specified in HTML.
    # @option opts [String] :password Password for opening an encrypted document.
    # @option opts [BOOLEAN] :use_non_merge_fields If true, result includes \&quot;mustache\&quot; field names. (default to false)
    # @return [FieldNamesResponse]
    def get_document_field_names(getDocumentFieldNamesRequest)
      data, _status_code, _headers = get_document_field_names_with_http_info(getDocumentFieldNamesRequest)
      data
    end

    # Read document field names.
    # 
    # @param name The document name.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder Original document folder.
    # @option opts [String] :storage File storage, which have to be used.
    # @option opts [String] :load_encoding Encoding that will be used to load an HTML (or TXT) document if the encoding is not specified in HTML.
    # @option opts [String] :password Password for opening an encrypted document.
    # @option opts [BOOLEAN] :use_non_merge_fields If true, result includes \&quot;mustache\&quot; field names.
    # @return [Array<(FieldNamesResponse, Fixnum, Hash)>] FieldNamesResponse data, response status code and response headers
    def get_document_field_names_with_http_info(getDocumentFieldNamesRequest)
	  if !getDocumentFieldNamesRequest.is_a? get_document_field_namesRequest
	    fail ArgumentError, "Incorrect request type"
	  end
	  
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WordsApi.get_document_field_names ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && getDocumentFieldNamesRequest.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling WordsApi.get_document_field_names"
      end
      # resource path
      local_var_path = "/words/{name}/mailMergeFieldNames"
	  local_var_path.sub('{' + downcase_first_letter('Name') + '}', getDocumentFieldNamesRequest.name.to_s)

      # query parameters
      query_params = {}
      query_params[downcase_first_letter('Folder')] = getDocumentFieldNamesRequest.folder unless getDocumentFieldNamesRequest.folder.nil?
      query_params[downcase_first_letter('Storage')] = getDocumentFieldNamesRequest.storage unless getDocumentFieldNamesRequest.storage.nil?
      query_params[downcase_first_letter('LoadEncoding')] = getDocumentFieldNamesRequest.load_encoding unless getDocumentFieldNamesRequest.load_encoding.nil?
      query_params[downcase_first_letter('Password')] = getDocumentFieldNamesRequest.password unless getDocumentFieldNamesRequest.password.nil?
      query_params[downcase_first_letter('UseNonMergeFields')] = getDocumentFieldNamesRequest.use_non_merge_fields unless getDocumentFieldNamesRequest.use_non_merge_fields.nil?

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
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'FieldNamesResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WordsApi#get_document_field_names\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Read document hyperlink by its index.
    # 
    # @param name The document name.
    # @param hyperlink_index The hyperlink index.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder Original document folder.
    # @option opts [String] :storage File storage, which have to be used.
    # @option opts [String] :load_encoding Encoding that will be used to load an HTML (or TXT) document if the encoding is not specified in HTML.
    # @option opts [String] :password Password for opening an encrypted document.
    # @return [HyperlinkResponse]
    def get_document_hyperlink_by_index(getDocumentHyperlinkByIndexRequest)
      data, _status_code, _headers = get_document_hyperlink_by_index_with_http_info(getDocumentHyperlinkByIndexRequest)
      data
    end

    # Read document hyperlink by its index.
    # 
    # @param name The document name.
    # @param hyperlink_index The hyperlink index.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder Original document folder.
    # @option opts [String] :storage File storage, which have to be used.
    # @option opts [String] :load_encoding Encoding that will be used to load an HTML (or TXT) document if the encoding is not specified in HTML.
    # @option opts [String] :password Password for opening an encrypted document.
    # @return [Array<(HyperlinkResponse, Fixnum, Hash)>] HyperlinkResponse data, response status code and response headers
    def get_document_hyperlink_by_index_with_http_info(getDocumentHyperlinkByIndexRequest)
	  if !getDocumentHyperlinkByIndexRequest.is_a? get_document_hyperlink_by_indexRequest
	    fail ArgumentError, "Incorrect request type"
	  end
	  
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WordsApi.get_document_hyperlink_by_index ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && getDocumentHyperlinkByIndexRequest.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling WordsApi.get_document_hyperlink_by_index"
      end
      # verify the required parameter 'hyperlink_index' is set
      if @api_client.config.client_side_validation && getDocumentHyperlinkByIndexRequest.hyperlink_index.nil?
        fail ArgumentError, "Missing the required parameter 'hyperlink_index' when calling WordsApi.get_document_hyperlink_by_index"
      end
      # resource path
      local_var_path = "/words/{name}/hyperlinks/{hyperlinkIndex}"
	  local_var_path.sub('{' + downcase_first_letter('Name') + '}', getDocumentHyperlinkByIndexRequest.name.to_s)
	  local_var_path.sub('{' + downcase_first_letter('HyperlinkIndex') + '}', getDocumentHyperlinkByIndexRequest.hyperlink_index.to_s)

      # query parameters
      query_params = {}
      query_params[downcase_first_letter('Folder')] = getDocumentHyperlinkByIndexRequest.folder unless getDocumentHyperlinkByIndexRequest.folder.nil?
      query_params[downcase_first_letter('Storage')] = getDocumentHyperlinkByIndexRequest.storage unless getDocumentHyperlinkByIndexRequest.storage.nil?
      query_params[downcase_first_letter('LoadEncoding')] = getDocumentHyperlinkByIndexRequest.load_encoding unless getDocumentHyperlinkByIndexRequest.load_encoding.nil?
      query_params[downcase_first_letter('Password')] = getDocumentHyperlinkByIndexRequest.password unless getDocumentHyperlinkByIndexRequest.password.nil?

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
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'HyperlinkResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WordsApi#get_document_hyperlink_by_index\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Read document hyperlinks common info.
    # 
    # @param name The document name.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder Original document folder.
    # @option opts [String] :storage File storage, which have to be used.
    # @option opts [String] :load_encoding Encoding that will be used to load an HTML (or TXT) document if the encoding is not specified in HTML.
    # @option opts [String] :password Password for opening an encrypted document.
    # @return [HyperlinksResponse]
    def get_document_hyperlinks(getDocumentHyperlinksRequest)
      data, _status_code, _headers = get_document_hyperlinks_with_http_info(getDocumentHyperlinksRequest)
      data
    end

    # Read document hyperlinks common info.
    # 
    # @param name The document name.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder Original document folder.
    # @option opts [String] :storage File storage, which have to be used.
    # @option opts [String] :load_encoding Encoding that will be used to load an HTML (or TXT) document if the encoding is not specified in HTML.
    # @option opts [String] :password Password for opening an encrypted document.
    # @return [Array<(HyperlinksResponse, Fixnum, Hash)>] HyperlinksResponse data, response status code and response headers
    def get_document_hyperlinks_with_http_info(getDocumentHyperlinksRequest)
	  if !getDocumentHyperlinksRequest.is_a? get_document_hyperlinksRequest
	    fail ArgumentError, "Incorrect request type"
	  end
	  
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WordsApi.get_document_hyperlinks ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && getDocumentHyperlinksRequest.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling WordsApi.get_document_hyperlinks"
      end
      # resource path
      local_var_path = "/words/{name}/hyperlinks"
	  local_var_path.sub('{' + downcase_first_letter('Name') + '}', getDocumentHyperlinksRequest.name.to_s)

      # query parameters
      query_params = {}
      query_params[downcase_first_letter('Folder')] = getDocumentHyperlinksRequest.folder unless getDocumentHyperlinksRequest.folder.nil?
      query_params[downcase_first_letter('Storage')] = getDocumentHyperlinksRequest.storage unless getDocumentHyperlinksRequest.storage.nil?
      query_params[downcase_first_letter('LoadEncoding')] = getDocumentHyperlinksRequest.load_encoding unless getDocumentHyperlinksRequest.load_encoding.nil?
      query_params[downcase_first_letter('Password')] = getDocumentHyperlinksRequest.password unless getDocumentHyperlinksRequest.password.nil?

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
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'HyperlinksResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WordsApi#get_document_hyperlinks\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # This resource represents one of the paragraphs contained in the document.
    # 
    # @param name The document name.
    # @param index Object&#39;s index
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder Original document folder.
    # @option opts [String] :storage File storage, which have to be used.
    # @option opts [String] :load_encoding Encoding that will be used to load an HTML (or TXT) document if the encoding is not specified in HTML.
    # @option opts [String] :password Password for opening an encrypted document.
    # @option opts [String] :node_path Path to node which contains paragraphs.
    # @return [ParagraphResponse]
    def get_document_paragraph(getDocumentParagraphRequest)
      data, _status_code, _headers = get_document_paragraph_with_http_info(getDocumentParagraphRequest)
      data
    end

    # This resource represents one of the paragraphs contained in the document.
    # 
    # @param name The document name.
    # @param index Object&#39;s index
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder Original document folder.
    # @option opts [String] :storage File storage, which have to be used.
    # @option opts [String] :load_encoding Encoding that will be used to load an HTML (or TXT) document if the encoding is not specified in HTML.
    # @option opts [String] :password Password for opening an encrypted document.
    # @option opts [String] :node_path Path to node which contains paragraphs.
    # @return [Array<(ParagraphResponse, Fixnum, Hash)>] ParagraphResponse data, response status code and response headers
    def get_document_paragraph_with_http_info(getDocumentParagraphRequest)
	  if !getDocumentParagraphRequest.is_a? get_document_paragraphRequest
	    fail ArgumentError, "Incorrect request type"
	  end
	  
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WordsApi.get_document_paragraph ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && getDocumentParagraphRequest.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling WordsApi.get_document_paragraph"
      end
      # verify the required parameter 'index' is set
      if @api_client.config.client_side_validation && getDocumentParagraphRequest.index.nil?
        fail ArgumentError, "Missing the required parameter 'index' when calling WordsApi.get_document_paragraph"
      end
      # resource path
      local_var_path = "/words/{name}/{nodePath}/paragraphs/{index}"
	  local_var_path.sub('{' + downcase_first_letter('Name') + '}', getDocumentParagraphRequest.name.to_s)
	  local_var_path.sub('{' + downcase_first_letter('Index') + '}', getDocumentParagraphRequest.index.to_s)

      # query parameters
      query_params = {}
      query_params[downcase_first_letter('Folder')] = getDocumentParagraphRequest.folder unless getDocumentParagraphRequest.folder.nil?
      query_params[downcase_first_letter('Storage')] = getDocumentParagraphRequest.storage unless getDocumentParagraphRequest.storage.nil?
      query_params[downcase_first_letter('LoadEncoding')] = getDocumentParagraphRequest.load_encoding unless getDocumentParagraphRequest.load_encoding.nil?
      query_params[downcase_first_letter('Password')] = getDocumentParagraphRequest.password unless getDocumentParagraphRequest.password.nil?
      query_params[downcase_first_letter('NodePath')] = getDocumentParagraphRequest.node_path unless getDocumentParagraphRequest.node_path.nil?

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
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'ParagraphResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WordsApi#get_document_paragraph\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # This resource represents run of text contained in the document.
    # 
    # @param name The document name.
    # @param paragraph_path Path to parent paragraph.
    # @param index Object&#39;s index
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder Original document folder.
    # @option opts [String] :storage File storage, which have to be used.
    # @option opts [String] :load_encoding Encoding that will be used to load an HTML (or TXT) document if the encoding is not specified in HTML.
    # @option opts [String] :password Password for opening an encrypted document.
    # @return [RunResponse]
    def get_document_paragraph_run(getDocumentParagraphRunRequest)
      data, _status_code, _headers = get_document_paragraph_run_with_http_info(getDocumentParagraphRunRequest)
      data
    end

    # This resource represents run of text contained in the document.
    # 
    # @param name The document name.
    # @param paragraph_path Path to parent paragraph.
    # @param index Object&#39;s index
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder Original document folder.
    # @option opts [String] :storage File storage, which have to be used.
    # @option opts [String] :load_encoding Encoding that will be used to load an HTML (or TXT) document if the encoding is not specified in HTML.
    # @option opts [String] :password Password for opening an encrypted document.
    # @return [Array<(RunResponse, Fixnum, Hash)>] RunResponse data, response status code and response headers
    def get_document_paragraph_run_with_http_info(getDocumentParagraphRunRequest)
	  if !getDocumentParagraphRunRequest.is_a? get_document_paragraph_runRequest
	    fail ArgumentError, "Incorrect request type"
	  end
	  
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WordsApi.get_document_paragraph_run ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && getDocumentParagraphRunRequest.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling WordsApi.get_document_paragraph_run"
      end
      # verify the required parameter 'paragraph_path' is set
      if @api_client.config.client_side_validation && getDocumentParagraphRunRequest.paragraph_path.nil?
        fail ArgumentError, "Missing the required parameter 'paragraph_path' when calling WordsApi.get_document_paragraph_run"
      end
      # verify the required parameter 'index' is set
      if @api_client.config.client_side_validation && getDocumentParagraphRunRequest.index.nil?
        fail ArgumentError, "Missing the required parameter 'index' when calling WordsApi.get_document_paragraph_run"
      end
      # resource path
      local_var_path = "/words/{name}/{paragraphPath}/runs/{index}"
	  local_var_path.sub('{' + downcase_first_letter('Name') + '}', getDocumentParagraphRunRequest.name.to_s)
	  local_var_path.sub('{' + downcase_first_letter('ParagraphPath') + '}', getDocumentParagraphRunRequest.paragraph_path.to_s)
	  local_var_path.sub('{' + downcase_first_letter('Index') + '}', getDocumentParagraphRunRequest.index.to_s)

      # query parameters
      query_params = {}
      query_params[downcase_first_letter('Folder')] = getDocumentParagraphRunRequest.folder unless getDocumentParagraphRunRequest.folder.nil?
      query_params[downcase_first_letter('Storage')] = getDocumentParagraphRunRequest.storage unless getDocumentParagraphRunRequest.storage.nil?
      query_params[downcase_first_letter('LoadEncoding')] = getDocumentParagraphRunRequest.load_encoding unless getDocumentParagraphRunRequest.load_encoding.nil?
      query_params[downcase_first_letter('Password')] = getDocumentParagraphRunRequest.password unless getDocumentParagraphRunRequest.password.nil?

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
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'RunResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WordsApi#get_document_paragraph_run\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # This resource represents font of run.
    # 
    # @param name The document name.
    # @param paragraph_path Path to parent paragraph.
    # @param index Object&#39;s index
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder Original document folder.
    # @option opts [String] :storage File storage, which have to be used.
    # @option opts [String] :load_encoding Encoding that will be used to load an HTML (or TXT) document if the encoding is not specified in HTML.
    # @option opts [String] :password Password for opening an encrypted document.
    # @return [FontResponse]
    def get_document_paragraph_run_font(getDocumentParagraphRunFontRequest)
      data, _status_code, _headers = get_document_paragraph_run_font_with_http_info(getDocumentParagraphRunFontRequest)
      data
    end

    # This resource represents font of run.
    # 
    # @param name The document name.
    # @param paragraph_path Path to parent paragraph.
    # @param index Object&#39;s index
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder Original document folder.
    # @option opts [String] :storage File storage, which have to be used.
    # @option opts [String] :load_encoding Encoding that will be used to load an HTML (or TXT) document if the encoding is not specified in HTML.
    # @option opts [String] :password Password for opening an encrypted document.
    # @return [Array<(FontResponse, Fixnum, Hash)>] FontResponse data, response status code and response headers
    def get_document_paragraph_run_font_with_http_info(getDocumentParagraphRunFontRequest)
	  if !getDocumentParagraphRunFontRequest.is_a? get_document_paragraph_run_fontRequest
	    fail ArgumentError, "Incorrect request type"
	  end
	  
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WordsApi.get_document_paragraph_run_font ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && getDocumentParagraphRunFontRequest.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling WordsApi.get_document_paragraph_run_font"
      end
      # verify the required parameter 'paragraph_path' is set
      if @api_client.config.client_side_validation && getDocumentParagraphRunFontRequest.paragraph_path.nil?
        fail ArgumentError, "Missing the required parameter 'paragraph_path' when calling WordsApi.get_document_paragraph_run_font"
      end
      # verify the required parameter 'index' is set
      if @api_client.config.client_side_validation && getDocumentParagraphRunFontRequest.index.nil?
        fail ArgumentError, "Missing the required parameter 'index' when calling WordsApi.get_document_paragraph_run_font"
      end
      # resource path
      local_var_path = "/words/{name}/{paragraphPath}/runs/{index}/font"
	  local_var_path.sub('{' + downcase_first_letter('Name') + '}', getDocumentParagraphRunFontRequest.name.to_s)
	  local_var_path.sub('{' + downcase_first_letter('ParagraphPath') + '}', getDocumentParagraphRunFontRequest.paragraph_path.to_s)
	  local_var_path.sub('{' + downcase_first_letter('Index') + '}', getDocumentParagraphRunFontRequest.index.to_s)

      # query parameters
      query_params = {}
      query_params[downcase_first_letter('Folder')] = getDocumentParagraphRunFontRequest.folder unless getDocumentParagraphRunFontRequest.folder.nil?
      query_params[downcase_first_letter('Storage')] = getDocumentParagraphRunFontRequest.storage unless getDocumentParagraphRunFontRequest.storage.nil?
      query_params[downcase_first_letter('LoadEncoding')] = getDocumentParagraphRunFontRequest.load_encoding unless getDocumentParagraphRunFontRequest.load_encoding.nil?
      query_params[downcase_first_letter('Password')] = getDocumentParagraphRunFontRequest.password unless getDocumentParagraphRunFontRequest.password.nil?

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
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'FontResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WordsApi#get_document_paragraph_run_font\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # This resource represents collection of runs in the paragraph.
    # 
    # @param name The document name.
    # @param paragraph_path Path to parent paragraph.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder Original document folder.
    # @option opts [String] :storage File storage, which have to be used.
    # @option opts [String] :load_encoding Encoding that will be used to load an HTML (or TXT) document if the encoding is not specified in HTML.
    # @option opts [String] :password Password for opening an encrypted document.
    # @return [RunsResponse]
    def get_document_paragraph_runs(getDocumentParagraphRunsRequest)
      data, _status_code, _headers = get_document_paragraph_runs_with_http_info(getDocumentParagraphRunsRequest)
      data
    end

    # This resource represents collection of runs in the paragraph.
    # 
    # @param name The document name.
    # @param paragraph_path Path to parent paragraph.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder Original document folder.
    # @option opts [String] :storage File storage, which have to be used.
    # @option opts [String] :load_encoding Encoding that will be used to load an HTML (or TXT) document if the encoding is not specified in HTML.
    # @option opts [String] :password Password for opening an encrypted document.
    # @return [Array<(RunsResponse, Fixnum, Hash)>] RunsResponse data, response status code and response headers
    def get_document_paragraph_runs_with_http_info(getDocumentParagraphRunsRequest)
	  if !getDocumentParagraphRunsRequest.is_a? get_document_paragraph_runsRequest
	    fail ArgumentError, "Incorrect request type"
	  end
	  
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WordsApi.get_document_paragraph_runs ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && getDocumentParagraphRunsRequest.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling WordsApi.get_document_paragraph_runs"
      end
      # verify the required parameter 'paragraph_path' is set
      if @api_client.config.client_side_validation && getDocumentParagraphRunsRequest.paragraph_path.nil?
        fail ArgumentError, "Missing the required parameter 'paragraph_path' when calling WordsApi.get_document_paragraph_runs"
      end
      # resource path
      local_var_path = "/words/{name}/{paragraphPath}/runs"
	  local_var_path.sub('{' + downcase_first_letter('Name') + '}', getDocumentParagraphRunsRequest.name.to_s)
	  local_var_path.sub('{' + downcase_first_letter('ParagraphPath') + '}', getDocumentParagraphRunsRequest.paragraph_path.to_s)

      # query parameters
      query_params = {}
      query_params[downcase_first_letter('Folder')] = getDocumentParagraphRunsRequest.folder unless getDocumentParagraphRunsRequest.folder.nil?
      query_params[downcase_first_letter('Storage')] = getDocumentParagraphRunsRequest.storage unless getDocumentParagraphRunsRequest.storage.nil?
      query_params[downcase_first_letter('LoadEncoding')] = getDocumentParagraphRunsRequest.load_encoding unless getDocumentParagraphRunsRequest.load_encoding.nil?
      query_params[downcase_first_letter('Password')] = getDocumentParagraphRunsRequest.password unless getDocumentParagraphRunsRequest.password.nil?

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
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'RunsResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WordsApi#get_document_paragraph_runs\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Return a list of paragraphs that are contained in the document.
    # 
    # @param name The document name.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder Original document folder.
    # @option opts [String] :storage File storage, which have to be used.
    # @option opts [String] :load_encoding Encoding that will be used to load an HTML (or TXT) document if the encoding is not specified in HTML.
    # @option opts [String] :password Password for opening an encrypted document.
    # @option opts [String] :node_path Path to node which contains paragraphs.
    # @return [ParagraphLinkCollectionResponse]
    def get_document_paragraphs(getDocumentParagraphsRequest)
      data, _status_code, _headers = get_document_paragraphs_with_http_info(getDocumentParagraphsRequest)
      data
    end

    # Return a list of paragraphs that are contained in the document.
    # 
    # @param name The document name.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder Original document folder.
    # @option opts [String] :storage File storage, which have to be used.
    # @option opts [String] :load_encoding Encoding that will be used to load an HTML (or TXT) document if the encoding is not specified in HTML.
    # @option opts [String] :password Password for opening an encrypted document.
    # @option opts [String] :node_path Path to node which contains paragraphs.
    # @return [Array<(ParagraphLinkCollectionResponse, Fixnum, Hash)>] ParagraphLinkCollectionResponse data, response status code and response headers
    def get_document_paragraphs_with_http_info(getDocumentParagraphsRequest)
	  if !getDocumentParagraphsRequest.is_a? get_document_paragraphsRequest
	    fail ArgumentError, "Incorrect request type"
	  end
	  
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WordsApi.get_document_paragraphs ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && getDocumentParagraphsRequest.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling WordsApi.get_document_paragraphs"
      end
      # resource path
      local_var_path = "/words/{name}/{nodePath}/paragraphs"
	  local_var_path.sub('{' + downcase_first_letter('Name') + '}', getDocumentParagraphsRequest.name.to_s)

      # query parameters
      query_params = {}
      query_params[downcase_first_letter('Folder')] = getDocumentParagraphsRequest.folder unless getDocumentParagraphsRequest.folder.nil?
      query_params[downcase_first_letter('Storage')] = getDocumentParagraphsRequest.storage unless getDocumentParagraphsRequest.storage.nil?
      query_params[downcase_first_letter('LoadEncoding')] = getDocumentParagraphsRequest.load_encoding unless getDocumentParagraphsRequest.load_encoding.nil?
      query_params[downcase_first_letter('Password')] = getDocumentParagraphsRequest.password unless getDocumentParagraphsRequest.password.nil?
      query_params[downcase_first_letter('NodePath')] = getDocumentParagraphsRequest.node_path unless getDocumentParagraphsRequest.node_path.nil?

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
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'ParagraphLinkCollectionResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WordsApi#get_document_paragraphs\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Read document properties info.
    # 
    # @param name The document&#39;s name.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder Original document folder.
    # @option opts [String] :storage File storage, which have to be used.
    # @option opts [String] :load_encoding Encoding that will be used to load an HTML (or TXT) document if the encoding is not specified in HTML.
    # @option opts [String] :password Password for opening an encrypted document.
    # @return [DocumentPropertiesResponse]
    def get_document_properties(getDocumentPropertiesRequest)
      data, _status_code, _headers = get_document_properties_with_http_info(getDocumentPropertiesRequest)
      data
    end

    # Read document properties info.
    # 
    # @param name The document&#39;s name.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder Original document folder.
    # @option opts [String] :storage File storage, which have to be used.
    # @option opts [String] :load_encoding Encoding that will be used to load an HTML (or TXT) document if the encoding is not specified in HTML.
    # @option opts [String] :password Password for opening an encrypted document.
    # @return [Array<(DocumentPropertiesResponse, Fixnum, Hash)>] DocumentPropertiesResponse data, response status code and response headers
    def get_document_properties_with_http_info(getDocumentPropertiesRequest)
	  if !getDocumentPropertiesRequest.is_a? get_document_propertiesRequest
	    fail ArgumentError, "Incorrect request type"
	  end
	  
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WordsApi.get_document_properties ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && getDocumentPropertiesRequest.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling WordsApi.get_document_properties"
      end
      # resource path
      local_var_path = "/words/{name}/documentProperties"
	  local_var_path.sub('{' + downcase_first_letter('Name') + '}', getDocumentPropertiesRequest.name.to_s)

      # query parameters
      query_params = {}
      query_params[downcase_first_letter('Folder')] = getDocumentPropertiesRequest.folder unless getDocumentPropertiesRequest.folder.nil?
      query_params[downcase_first_letter('Storage')] = getDocumentPropertiesRequest.storage unless getDocumentPropertiesRequest.storage.nil?
      query_params[downcase_first_letter('LoadEncoding')] = getDocumentPropertiesRequest.load_encoding unless getDocumentPropertiesRequest.load_encoding.nil?
      query_params[downcase_first_letter('Password')] = getDocumentPropertiesRequest.password unless getDocumentPropertiesRequest.password.nil?

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
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'DocumentPropertiesResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WordsApi#get_document_properties\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Read document property info by the property name.
    # 
    # @param name The document name.
    # @param property_name The property name.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder Original document folder.
    # @option opts [String] :storage File storage, which have to be used.
    # @option opts [String] :load_encoding Encoding that will be used to load an HTML (or TXT) document if the encoding is not specified in HTML.
    # @option opts [String] :password Password for opening an encrypted document.
    # @return [DocumentPropertyResponse]
    def get_document_property(getDocumentPropertyRequest)
      data, _status_code, _headers = get_document_property_with_http_info(getDocumentPropertyRequest)
      data
    end

    # Read document property info by the property name.
    # 
    # @param name The document name.
    # @param property_name The property name.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder Original document folder.
    # @option opts [String] :storage File storage, which have to be used.
    # @option opts [String] :load_encoding Encoding that will be used to load an HTML (or TXT) document if the encoding is not specified in HTML.
    # @option opts [String] :password Password for opening an encrypted document.
    # @return [Array<(DocumentPropertyResponse, Fixnum, Hash)>] DocumentPropertyResponse data, response status code and response headers
    def get_document_property_with_http_info(getDocumentPropertyRequest)
	  if !getDocumentPropertyRequest.is_a? get_document_propertyRequest
	    fail ArgumentError, "Incorrect request type"
	  end
	  
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WordsApi.get_document_property ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && getDocumentPropertyRequest.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling WordsApi.get_document_property"
      end
      # verify the required parameter 'property_name' is set
      if @api_client.config.client_side_validation && getDocumentPropertyRequest.property_name.nil?
        fail ArgumentError, "Missing the required parameter 'property_name' when calling WordsApi.get_document_property"
      end
      # resource path
      local_var_path = "/words/{name}/documentProperties/{propertyName}"
	  local_var_path.sub('{' + downcase_first_letter('Name') + '}', getDocumentPropertyRequest.name.to_s)
	  local_var_path.sub('{' + downcase_first_letter('PropertyName') + '}', getDocumentPropertyRequest.property_name.to_s)

      # query parameters
      query_params = {}
      query_params[downcase_first_letter('Folder')] = getDocumentPropertyRequest.folder unless getDocumentPropertyRequest.folder.nil?
      query_params[downcase_first_letter('Storage')] = getDocumentPropertyRequest.storage unless getDocumentPropertyRequest.storage.nil?
      query_params[downcase_first_letter('LoadEncoding')] = getDocumentPropertyRequest.load_encoding unless getDocumentPropertyRequest.load_encoding.nil?
      query_params[downcase_first_letter('Password')] = getDocumentPropertyRequest.password unless getDocumentPropertyRequest.password.nil?

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
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'DocumentPropertyResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WordsApi#get_document_property\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Read document protection common info.
    # 
    # @param name The document name.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder Original document folder.
    # @option opts [String] :storage File storage, which have to be used.
    # @option opts [String] :load_encoding Encoding that will be used to load an HTML (or TXT) document if the encoding is not specified in HTML.
    # @option opts [String] :password Password for opening an encrypted document.
    # @return [ProtectionDataResponse]
    def get_document_protection(getDocumentProtectionRequest)
      data, _status_code, _headers = get_document_protection_with_http_info(getDocumentProtectionRequest)
      data
    end

    # Read document protection common info.
    # 
    # @param name The document name.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder Original document folder.
    # @option opts [String] :storage File storage, which have to be used.
    # @option opts [String] :load_encoding Encoding that will be used to load an HTML (or TXT) document if the encoding is not specified in HTML.
    # @option opts [String] :password Password for opening an encrypted document.
    # @return [Array<(ProtectionDataResponse, Fixnum, Hash)>] ProtectionDataResponse data, response status code and response headers
    def get_document_protection_with_http_info(getDocumentProtectionRequest)
	  if !getDocumentProtectionRequest.is_a? get_document_protectionRequest
	    fail ArgumentError, "Incorrect request type"
	  end
	  
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WordsApi.get_document_protection ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && getDocumentProtectionRequest.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling WordsApi.get_document_protection"
      end
      # resource path
      local_var_path = "/words/{name}/protection"
	  local_var_path.sub('{' + downcase_first_letter('Name') + '}', getDocumentProtectionRequest.name.to_s)

      # query parameters
      query_params = {}
      query_params[downcase_first_letter('Folder')] = getDocumentProtectionRequest.folder unless getDocumentProtectionRequest.folder.nil?
      query_params[downcase_first_letter('Storage')] = getDocumentProtectionRequest.storage unless getDocumentProtectionRequest.storage.nil?
      query_params[downcase_first_letter('LoadEncoding')] = getDocumentProtectionRequest.load_encoding unless getDocumentProtectionRequest.load_encoding.nil?
      query_params[downcase_first_letter('Password')] = getDocumentProtectionRequest.password unless getDocumentProtectionRequest.password.nil?

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
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'ProtectionDataResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WordsApi#get_document_protection\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Read document statistics.
    # 
    # @param name The document name.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder Original document folder.
    # @option opts [String] :storage File storage, which have to be used.
    # @option opts [String] :load_encoding Encoding that will be used to load an HTML (or TXT) document if the encoding is not specified in HTML.
    # @option opts [String] :password Password for opening an encrypted document.
    # @option opts [BOOLEAN] :include_comments Support including/excluding comments from the WordCount. Default value is \&quot;true\&quot;. (default to false)
    # @option opts [BOOLEAN] :include_footnotes Support including/excluding footnotes from the WordCount. Default value is \&quot;false\&quot;. (default to false)
    # @option opts [BOOLEAN] :include_text_in_shapes Support including/excluding shape&#39;s text from the WordCount. Default value is \&quot;false\&quot; (default to false)
    # @return [StatDataResponse]
    def get_document_statistics(getDocumentStatisticsRequest)
      data, _status_code, _headers = get_document_statistics_with_http_info(getDocumentStatisticsRequest)
      data
    end

    # Read document statistics.
    # 
    # @param name The document name.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder Original document folder.
    # @option opts [String] :storage File storage, which have to be used.
    # @option opts [String] :load_encoding Encoding that will be used to load an HTML (or TXT) document if the encoding is not specified in HTML.
    # @option opts [String] :password Password for opening an encrypted document.
    # @option opts [BOOLEAN] :include_comments Support including/excluding comments from the WordCount. Default value is \&quot;true\&quot;.
    # @option opts [BOOLEAN] :include_footnotes Support including/excluding footnotes from the WordCount. Default value is \&quot;false\&quot;.
    # @option opts [BOOLEAN] :include_text_in_shapes Support including/excluding shape&#39;s text from the WordCount. Default value is \&quot;false\&quot;
    # @return [Array<(StatDataResponse, Fixnum, Hash)>] StatDataResponse data, response status code and response headers
    def get_document_statistics_with_http_info(getDocumentStatisticsRequest)
	  if !getDocumentStatisticsRequest.is_a? get_document_statisticsRequest
	    fail ArgumentError, "Incorrect request type"
	  end
	  
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WordsApi.get_document_statistics ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && getDocumentStatisticsRequest.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling WordsApi.get_document_statistics"
      end
      # resource path
      local_var_path = "/words/{name}/statistics"
	  local_var_path.sub('{' + downcase_first_letter('Name') + '}', getDocumentStatisticsRequest.name.to_s)

      # query parameters
      query_params = {}
      query_params[downcase_first_letter('Folder')] = getDocumentStatisticsRequest.folder unless getDocumentStatisticsRequest.folder.nil?
      query_params[downcase_first_letter('Storage')] = getDocumentStatisticsRequest.storage unless getDocumentStatisticsRequest.storage.nil?
      query_params[downcase_first_letter('LoadEncoding')] = getDocumentStatisticsRequest.load_encoding unless getDocumentStatisticsRequest.load_encoding.nil?
      query_params[downcase_first_letter('Password')] = getDocumentStatisticsRequest.password unless getDocumentStatisticsRequest.password.nil?
      query_params[downcase_first_letter('IncludeComments')] = getDocumentStatisticsRequest.include_comments unless getDocumentStatisticsRequest.include_comments.nil?
      query_params[downcase_first_letter('IncludeFootnotes')] = getDocumentStatisticsRequest.include_footnotes unless getDocumentStatisticsRequest.include_footnotes.nil?
      query_params[downcase_first_letter('IncludeTextInShapes')] = getDocumentStatisticsRequest.include_text_in_shapes unless getDocumentStatisticsRequest.include_text_in_shapes.nil?

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
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'StatDataResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WordsApi#get_document_statistics\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Read document text items.
    # 
    # @param name The document name.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder Original document folder.
    # @option opts [String] :storage File storage, which have to be used.
    # @option opts [String] :load_encoding Encoding that will be used to load an HTML (or TXT) document if the encoding is not specified in HTML.
    # @option opts [String] :password Password for opening an encrypted document.
    # @return [TextItemsResponse]
    def get_document_text_items(getDocumentTextItemsRequest)
      data, _status_code, _headers = get_document_text_items_with_http_info(getDocumentTextItemsRequest)
      data
    end

    # Read document text items.
    # 
    # @param name The document name.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder Original document folder.
    # @option opts [String] :storage File storage, which have to be used.
    # @option opts [String] :load_encoding Encoding that will be used to load an HTML (or TXT) document if the encoding is not specified in HTML.
    # @option opts [String] :password Password for opening an encrypted document.
    # @return [Array<(TextItemsResponse, Fixnum, Hash)>] TextItemsResponse data, response status code and response headers
    def get_document_text_items_with_http_info(getDocumentTextItemsRequest)
	  if !getDocumentTextItemsRequest.is_a? get_document_text_itemsRequest
	    fail ArgumentError, "Incorrect request type"
	  end
	  
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WordsApi.get_document_text_items ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && getDocumentTextItemsRequest.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling WordsApi.get_document_text_items"
      end
      # resource path
      local_var_path = "/words/{name}/textItems"
	  local_var_path.sub('{' + downcase_first_letter('Name') + '}', getDocumentTextItemsRequest.name.to_s)

      # query parameters
      query_params = {}
      query_params[downcase_first_letter('Folder')] = getDocumentTextItemsRequest.folder unless getDocumentTextItemsRequest.folder.nil?
      query_params[downcase_first_letter('Storage')] = getDocumentTextItemsRequest.storage unless getDocumentTextItemsRequest.storage.nil?
      query_params[downcase_first_letter('LoadEncoding')] = getDocumentTextItemsRequest.load_encoding unless getDocumentTextItemsRequest.load_encoding.nil?
      query_params[downcase_first_letter('Password')] = getDocumentTextItemsRequest.password unless getDocumentTextItemsRequest.password.nil?

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
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'TextItemsResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WordsApi#get_document_text_items\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Export the document into the specified format.
    # 
    # @param name The file name.
    # @param format The destination format.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder Original document folder.
    # @option opts [String] :storage File storage, which have to be used.
    # @option opts [String] :load_encoding Encoding that will be used to load an HTML (or TXT) document if the encoding is not specified in HTML.
    # @option opts [String] :password Password for opening an encrypted document.
    # @option opts [String] :out_path Path to save result
    # @option opts [String] :fonts_location Folder in filestorage with custom fonts.
    # @return [File]
    def get_document_with_format(getDocumentWithFormatRequest)
      data, _status_code, _headers = get_document_with_format_with_http_info(getDocumentWithFormatRequest)
      data
    end

    # Export the document into the specified format.
    # 
    # @param name The file name.
    # @param format The destination format.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder Original document folder.
    # @option opts [String] :storage File storage, which have to be used.
    # @option opts [String] :load_encoding Encoding that will be used to load an HTML (or TXT) document if the encoding is not specified in HTML.
    # @option opts [String] :password Password for opening an encrypted document.
    # @option opts [String] :out_path Path to save result
    # @option opts [String] :fonts_location Folder in filestorage with custom fonts.
    # @return [Array<(File, Fixnum, Hash)>] File data, response status code and response headers
    def get_document_with_format_with_http_info(getDocumentWithFormatRequest)
	  if !getDocumentWithFormatRequest.is_a? get_document_with_formatRequest
	    fail ArgumentError, "Incorrect request type"
	  end
	  
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WordsApi.get_document_with_format ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && getDocumentWithFormatRequest.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling WordsApi.get_document_with_format"
      end
      # verify the required parameter 'format' is set
      if @api_client.config.client_side_validation && getDocumentWithFormatRequest.format.nil?
        fail ArgumentError, "Missing the required parameter 'format' when calling WordsApi.get_document_with_format"
      end
      # resource path
      local_var_path = "/words/{name}"
	  local_var_path.sub('{' + downcase_first_letter('Name') + '}', getDocumentWithFormatRequest.name.to_s)

      # query parameters
      query_params = {}
      query_params[downcase_first_letter('Format')] = getDocumentWithFormatRequest.format
      query_params[downcase_first_letter('Folder')] = getDocumentWithFormatRequest.folder unless getDocumentWithFormatRequest.folder.nil?
      query_params[downcase_first_letter('Storage')] = getDocumentWithFormatRequest.storage unless getDocumentWithFormatRequest.storage.nil?
      query_params[downcase_first_letter('LoadEncoding')] = getDocumentWithFormatRequest.load_encoding unless getDocumentWithFormatRequest.load_encoding.nil?
      query_params[downcase_first_letter('Password')] = getDocumentWithFormatRequest.password unless getDocumentWithFormatRequest.password.nil?
      query_params[downcase_first_letter('OutPath')] = getDocumentWithFormatRequest.out_path unless getDocumentWithFormatRequest.out_path.nil?
      query_params[downcase_first_letter('FontsLocation')] = getDocumentWithFormatRequest.fonts_location unless getDocumentWithFormatRequest.fonts_location.nil?

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
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'File')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WordsApi#get_document_with_format\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get field from document.
    # 
    # @param name The file name.
    # @param index Object&#39;s index
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder Original document folder.
    # @option opts [String] :storage File storage, which have to be used.
    # @option opts [String] :load_encoding Encoding that will be used to load an HTML (or TXT) document if the encoding is not specified in HTML.
    # @option opts [String] :password Password for opening an encrypted document.
    # @option opts [String] :node_path Path to node, which contains collection of fields.
    # @return [FieldResponse]
    def get_field(getFieldRequest)
      data, _status_code, _headers = get_field_with_http_info(getFieldRequest)
      data
    end

    # Get field from document.
    # 
    # @param name The file name.
    # @param index Object&#39;s index
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder Original document folder.
    # @option opts [String] :storage File storage, which have to be used.
    # @option opts [String] :load_encoding Encoding that will be used to load an HTML (or TXT) document if the encoding is not specified in HTML.
    # @option opts [String] :password Password for opening an encrypted document.
    # @option opts [String] :node_path Path to node, which contains collection of fields.
    # @return [Array<(FieldResponse, Fixnum, Hash)>] FieldResponse data, response status code and response headers
    def get_field_with_http_info(getFieldRequest)
	  if !getFieldRequest.is_a? get_fieldRequest
	    fail ArgumentError, "Incorrect request type"
	  end
	  
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WordsApi.get_field ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && getFieldRequest.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling WordsApi.get_field"
      end
      # verify the required parameter 'index' is set
      if @api_client.config.client_side_validation && getFieldRequest.index.nil?
        fail ArgumentError, "Missing the required parameter 'index' when calling WordsApi.get_field"
      end
      # resource path
      local_var_path = "/words/{name}/{nodePath}/fields/{index}"
	  local_var_path.sub('{' + downcase_first_letter('Name') + '}', getFieldRequest.name.to_s)
	  local_var_path.sub('{' + downcase_first_letter('Index') + '}', getFieldRequest.index.to_s)

      # query parameters
      query_params = {}
      query_params[downcase_first_letter('Folder')] = getFieldRequest.folder unless getFieldRequest.folder.nil?
      query_params[downcase_first_letter('Storage')] = getFieldRequest.storage unless getFieldRequest.storage.nil?
      query_params[downcase_first_letter('LoadEncoding')] = getFieldRequest.load_encoding unless getFieldRequest.load_encoding.nil?
      query_params[downcase_first_letter('Password')] = getFieldRequest.password unless getFieldRequest.password.nil?
      query_params[downcase_first_letter('NodePath')] = getFieldRequest.node_path unless getFieldRequest.node_path.nil?

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
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'FieldResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WordsApi#get_field\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get fields from document.
    # 
    # @param name The file name.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder Original document folder.
    # @option opts [String] :storage File storage, which have to be used.
    # @option opts [String] :load_encoding Encoding that will be used to load an HTML (or TXT) document if the encoding is not specified in HTML.
    # @option opts [String] :password Password for opening an encrypted document.
    # @option opts [String] :node_path Path to node, which contains collection of fields.
    # @return [FieldsResponse]
    def get_fields(getFieldsRequest)
      data, _status_code, _headers = get_fields_with_http_info(getFieldsRequest)
      data
    end

    # Get fields from document.
    # 
    # @param name The file name.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder Original document folder.
    # @option opts [String] :storage File storage, which have to be used.
    # @option opts [String] :load_encoding Encoding that will be used to load an HTML (or TXT) document if the encoding is not specified in HTML.
    # @option opts [String] :password Password for opening an encrypted document.
    # @option opts [String] :node_path Path to node, which contains collection of fields.
    # @return [Array<(FieldsResponse, Fixnum, Hash)>] FieldsResponse data, response status code and response headers
    def get_fields_with_http_info(getFieldsRequest)
	  if !getFieldsRequest.is_a? get_fieldsRequest
	    fail ArgumentError, "Incorrect request type"
	  end
	  
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WordsApi.get_fields ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && getFieldsRequest.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling WordsApi.get_fields"
      end
      # resource path
      local_var_path = "/words/{name}/{nodePath}/fields"
	  local_var_path.sub('{' + downcase_first_letter('Name') + '}', getFieldsRequest.name.to_s)

      # query parameters
      query_params = {}
      query_params[downcase_first_letter('Folder')] = getFieldsRequest.folder unless getFieldsRequest.folder.nil?
      query_params[downcase_first_letter('Storage')] = getFieldsRequest.storage unless getFieldsRequest.storage.nil?
      query_params[downcase_first_letter('LoadEncoding')] = getFieldsRequest.load_encoding unless getFieldsRequest.load_encoding.nil?
      query_params[downcase_first_letter('Password')] = getFieldsRequest.password unless getFieldsRequest.password.nil?
      query_params[downcase_first_letter('NodePath')] = getFieldsRequest.node_path unless getFieldsRequest.node_path.nil?

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
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'FieldsResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WordsApi#get_fields\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Read footnote by index.
    # 
    # @param name The document name.
    # @param index Object&#39;s index
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder Original document folder.
    # @option opts [String] :storage File storage, which have to be used.
    # @option opts [String] :load_encoding Encoding that will be used to load an HTML (or TXT) document if the encoding is not specified in HTML.
    # @option opts [String] :password Password for opening an encrypted document.
    # @option opts [String] :node_path Path to node, which contains collection of footnotes.
    # @return [FootnoteResponse]
    def get_footnote(getFootnoteRequest)
      data, _status_code, _headers = get_footnote_with_http_info(getFootnoteRequest)
      data
    end

    # Read footnote by index.
    # 
    # @param name The document name.
    # @param index Object&#39;s index
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder Original document folder.
    # @option opts [String] :storage File storage, which have to be used.
    # @option opts [String] :load_encoding Encoding that will be used to load an HTML (or TXT) document if the encoding is not specified in HTML.
    # @option opts [String] :password Password for opening an encrypted document.
    # @option opts [String] :node_path Path to node, which contains collection of footnotes.
    # @return [Array<(FootnoteResponse, Fixnum, Hash)>] FootnoteResponse data, response status code and response headers
    def get_footnote_with_http_info(getFootnoteRequest)
	  if !getFootnoteRequest.is_a? get_footnoteRequest
	    fail ArgumentError, "Incorrect request type"
	  end
	  
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WordsApi.get_footnote ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && getFootnoteRequest.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling WordsApi.get_footnote"
      end
      # verify the required parameter 'index' is set
      if @api_client.config.client_side_validation && getFootnoteRequest.index.nil?
        fail ArgumentError, "Missing the required parameter 'index' when calling WordsApi.get_footnote"
      end
      # resource path
      local_var_path = "/words/{name}/{nodePath}/footnotes/{index}"
	  local_var_path.sub('{' + downcase_first_letter('Name') + '}', getFootnoteRequest.name.to_s)
	  local_var_path.sub('{' + downcase_first_letter('Index') + '}', getFootnoteRequest.index.to_s)

      # query parameters
      query_params = {}
      query_params[downcase_first_letter('Folder')] = getFootnoteRequest.folder unless getFootnoteRequest.folder.nil?
      query_params[downcase_first_letter('Storage')] = getFootnoteRequest.storage unless getFootnoteRequest.storage.nil?
      query_params[downcase_first_letter('LoadEncoding')] = getFootnoteRequest.load_encoding unless getFootnoteRequest.load_encoding.nil?
      query_params[downcase_first_letter('Password')] = getFootnoteRequest.password unless getFootnoteRequest.password.nil?
      query_params[downcase_first_letter('NodePath')] = getFootnoteRequest.node_path unless getFootnoteRequest.node_path.nil?

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
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'FootnoteResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WordsApi#get_footnote\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get footnotes from document.
    # 
    # @param name The file name.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder Original document folder.
    # @option opts [String] :storage File storage, which have to be used.
    # @option opts [String] :load_encoding Encoding that will be used to load an HTML (or TXT) document if the encoding is not specified in HTML.
    # @option opts [String] :password Password for opening an encrypted document.
    # @option opts [String] :node_path Path to node, which contains collection of footnotes.
    # @return [FootnotesResponse]
    def get_footnotes(getFootnotesRequest)
      data, _status_code, _headers = get_footnotes_with_http_info(getFootnotesRequest)
      data
    end

    # Get footnotes from document.
    # 
    # @param name The file name.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder Original document folder.
    # @option opts [String] :storage File storage, which have to be used.
    # @option opts [String] :load_encoding Encoding that will be used to load an HTML (or TXT) document if the encoding is not specified in HTML.
    # @option opts [String] :password Password for opening an encrypted document.
    # @option opts [String] :node_path Path to node, which contains collection of footnotes.
    # @return [Array<(FootnotesResponse, Fixnum, Hash)>] FootnotesResponse data, response status code and response headers
    def get_footnotes_with_http_info(getFootnotesRequest)
	  if !getFootnotesRequest.is_a? get_footnotesRequest
	    fail ArgumentError, "Incorrect request type"
	  end
	  
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WordsApi.get_footnotes ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && getFootnotesRequest.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling WordsApi.get_footnotes"
      end
      # resource path
      local_var_path = "/words/{name}/{nodePath}/footnotes"
	  local_var_path.sub('{' + downcase_first_letter('Name') + '}', getFootnotesRequest.name.to_s)

      # query parameters
      query_params = {}
      query_params[downcase_first_letter('Folder')] = getFootnotesRequest.folder unless getFootnotesRequest.folder.nil?
      query_params[downcase_first_letter('Storage')] = getFootnotesRequest.storage unless getFootnotesRequest.storage.nil?
      query_params[downcase_first_letter('LoadEncoding')] = getFootnotesRequest.load_encoding unless getFootnotesRequest.load_encoding.nil?
      query_params[downcase_first_letter('Password')] = getFootnotesRequest.password unless getFootnotesRequest.password.nil?
      query_params[downcase_first_letter('NodePath')] = getFootnotesRequest.node_path unless getFootnotesRequest.node_path.nil?

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
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'FootnotesResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WordsApi#get_footnotes\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Returns representation of an one of the form field.
    # 
    # @param name The document name.
    # @param index Object&#39;s index
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder Original document folder.
    # @option opts [String] :storage File storage, which have to be used.
    # @option opts [String] :load_encoding Encoding that will be used to load an HTML (or TXT) document if the encoding is not specified in HTML.
    # @option opts [String] :password Password for opening an encrypted document.
    # @option opts [String] :node_path Path to node that contains collection of formfields.
    # @return [FormFieldResponse]
    def get_form_field(getFormFieldRequest)
      data, _status_code, _headers = get_form_field_with_http_info(getFormFieldRequest)
      data
    end

    # Returns representation of an one of the form field.
    # 
    # @param name The document name.
    # @param index Object&#39;s index
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder Original document folder.
    # @option opts [String] :storage File storage, which have to be used.
    # @option opts [String] :load_encoding Encoding that will be used to load an HTML (or TXT) document if the encoding is not specified in HTML.
    # @option opts [String] :password Password for opening an encrypted document.
    # @option opts [String] :node_path Path to node that contains collection of formfields.
    # @return [Array<(FormFieldResponse, Fixnum, Hash)>] FormFieldResponse data, response status code and response headers
    def get_form_field_with_http_info(getFormFieldRequest)
	  if !getFormFieldRequest.is_a? get_form_fieldRequest
	    fail ArgumentError, "Incorrect request type"
	  end
	  
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WordsApi.get_form_field ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && getFormFieldRequest.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling WordsApi.get_form_field"
      end
      # verify the required parameter 'index' is set
      if @api_client.config.client_side_validation && getFormFieldRequest.index.nil?
        fail ArgumentError, "Missing the required parameter 'index' when calling WordsApi.get_form_field"
      end
      # resource path
      local_var_path = "/words/{name}/{nodePath}/formfields/{index}"
	  local_var_path.sub('{' + downcase_first_letter('Name') + '}', getFormFieldRequest.name.to_s)
	  local_var_path.sub('{' + downcase_first_letter('Index') + '}', getFormFieldRequest.index.to_s)

      # query parameters
      query_params = {}
      query_params[downcase_first_letter('Folder')] = getFormFieldRequest.folder unless getFormFieldRequest.folder.nil?
      query_params[downcase_first_letter('Storage')] = getFormFieldRequest.storage unless getFormFieldRequest.storage.nil?
      query_params[downcase_first_letter('LoadEncoding')] = getFormFieldRequest.load_encoding unless getFormFieldRequest.load_encoding.nil?
      query_params[downcase_first_letter('Password')] = getFormFieldRequest.password unless getFormFieldRequest.password.nil?
      query_params[downcase_first_letter('NodePath')] = getFormFieldRequest.node_path unless getFormFieldRequest.node_path.nil?

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
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'FormFieldResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WordsApi#get_form_field\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get form fields from document.
    # 
    # @param name The file name.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder Original document folder.
    # @option opts [String] :storage File storage, which have to be used.
    # @option opts [String] :load_encoding Encoding that will be used to load an HTML (or TXT) document if the encoding is not specified in HTML.
    # @option opts [String] :password Password for opening an encrypted document.
    # @option opts [String] :node_path Path to node containing collection of form fields.
    # @return [FormFieldsResponse]
    def get_form_fields(getFormFieldsRequest)
      data, _status_code, _headers = get_form_fields_with_http_info(getFormFieldsRequest)
      data
    end

    # Get form fields from document.
    # 
    # @param name The file name.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder Original document folder.
    # @option opts [String] :storage File storage, which have to be used.
    # @option opts [String] :load_encoding Encoding that will be used to load an HTML (or TXT) document if the encoding is not specified in HTML.
    # @option opts [String] :password Password for opening an encrypted document.
    # @option opts [String] :node_path Path to node containing collection of form fields.
    # @return [Array<(FormFieldsResponse, Fixnum, Hash)>] FormFieldsResponse data, response status code and response headers
    def get_form_fields_with_http_info(getFormFieldsRequest)
	  if !getFormFieldsRequest.is_a? get_form_fieldsRequest
	    fail ArgumentError, "Incorrect request type"
	  end
	  
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WordsApi.get_form_fields ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && getFormFieldsRequest.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling WordsApi.get_form_fields"
      end
      # resource path
      local_var_path = "/words/{name}/{nodePath}/formfields"
	  local_var_path.sub('{' + downcase_first_letter('Name') + '}', getFormFieldsRequest.name.to_s)

      # query parameters
      query_params = {}
      query_params[downcase_first_letter('Folder')] = getFormFieldsRequest.folder unless getFormFieldsRequest.folder.nil?
      query_params[downcase_first_letter('Storage')] = getFormFieldsRequest.storage unless getFormFieldsRequest.storage.nil?
      query_params[downcase_first_letter('LoadEncoding')] = getFormFieldsRequest.load_encoding unless getFormFieldsRequest.load_encoding.nil?
      query_params[downcase_first_letter('Password')] = getFormFieldsRequest.password unless getFormFieldsRequest.password.nil?
      query_params[downcase_first_letter('NodePath')] = getFormFieldsRequest.node_path unless getFormFieldsRequest.node_path.nil?

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
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'FormFieldsResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WordsApi#get_form_fields\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Return a header/footer that is contained in the document.
    # 
    # @param name The document name.
    # @param header_footer_index Header/footer index.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder Original document folder.
    # @option opts [String] :storage File storage, which have to be used.
    # @option opts [String] :load_encoding Encoding that will be used to load an HTML (or TXT) document if the encoding is not specified in HTML.
    # @option opts [String] :password Password for opening an encrypted document.
    # @option opts [String] :filter_by_type List of types of headers and footers.
    # @return [HeaderFooterResponse]
    def get_header_footer(getHeaderFooterRequest)
      data, _status_code, _headers = get_header_footer_with_http_info(getHeaderFooterRequest)
      data
    end

    # Return a header/footer that is contained in the document.
    # 
    # @param name The document name.
    # @param header_footer_index Header/footer index.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder Original document folder.
    # @option opts [String] :storage File storage, which have to be used.
    # @option opts [String] :load_encoding Encoding that will be used to load an HTML (or TXT) document if the encoding is not specified in HTML.
    # @option opts [String] :password Password for opening an encrypted document.
    # @option opts [String] :filter_by_type List of types of headers and footers.
    # @return [Array<(HeaderFooterResponse, Fixnum, Hash)>] HeaderFooterResponse data, response status code and response headers
    def get_header_footer_with_http_info(getHeaderFooterRequest)
	  if !getHeaderFooterRequest.is_a? get_header_footerRequest
	    fail ArgumentError, "Incorrect request type"
	  end
	  
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WordsApi.get_header_footer ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && getHeaderFooterRequest.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling WordsApi.get_header_footer"
      end
      # verify the required parameter 'header_footer_index' is set
      if @api_client.config.client_side_validation && getHeaderFooterRequest.header_footer_index.nil?
        fail ArgumentError, "Missing the required parameter 'header_footer_index' when calling WordsApi.get_header_footer"
      end
      # resource path
      local_var_path = "/words/{name}/headersfooters/{headerFooterIndex}"
	  local_var_path.sub('{' + downcase_first_letter('Name') + '}', getHeaderFooterRequest.name.to_s)
	  local_var_path.sub('{' + downcase_first_letter('HeaderFooterIndex') + '}', getHeaderFooterRequest.header_footer_index.to_s)

      # query parameters
      query_params = {}
      query_params[downcase_first_letter('Folder')] = getHeaderFooterRequest.folder unless getHeaderFooterRequest.folder.nil?
      query_params[downcase_first_letter('Storage')] = getHeaderFooterRequest.storage unless getHeaderFooterRequest.storage.nil?
      query_params[downcase_first_letter('LoadEncoding')] = getHeaderFooterRequest.load_encoding unless getHeaderFooterRequest.load_encoding.nil?
      query_params[downcase_first_letter('Password')] = getHeaderFooterRequest.password unless getHeaderFooterRequest.password.nil?
      query_params[downcase_first_letter('FilterByType')] = getHeaderFooterRequest.filter_by_type unless getHeaderFooterRequest.filter_by_type.nil?

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
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'HeaderFooterResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WordsApi#get_header_footer\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Return a header/footer that is contained in the document.
    # 
    # @param name The document name.
    # @param header_footer_index Header/footer index.
    # @param section_index Section index.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder Original document folder.
    # @option opts [String] :storage File storage, which have to be used.
    # @option opts [String] :load_encoding Encoding that will be used to load an HTML (or TXT) document if the encoding is not specified in HTML.
    # @option opts [String] :password Password for opening an encrypted document.
    # @option opts [String] :filter_by_type List of types of headers and footers.
    # @return [HeaderFooterResponse]
    def get_header_footer_of_section(getHeaderFooterOfSectionRequest)
      data, _status_code, _headers = get_header_footer_of_section_with_http_info(getHeaderFooterOfSectionRequest)
      data
    end

    # Return a header/footer that is contained in the document.
    # 
    # @param name The document name.
    # @param header_footer_index Header/footer index.
    # @param section_index Section index.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder Original document folder.
    # @option opts [String] :storage File storage, which have to be used.
    # @option opts [String] :load_encoding Encoding that will be used to load an HTML (or TXT) document if the encoding is not specified in HTML.
    # @option opts [String] :password Password for opening an encrypted document.
    # @option opts [String] :filter_by_type List of types of headers and footers.
    # @return [Array<(HeaderFooterResponse, Fixnum, Hash)>] HeaderFooterResponse data, response status code and response headers
    def get_header_footer_of_section_with_http_info(getHeaderFooterOfSectionRequest)
	  if !getHeaderFooterOfSectionRequest.is_a? get_header_footer_of_sectionRequest
	    fail ArgumentError, "Incorrect request type"
	  end
	  
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WordsApi.get_header_footer_of_section ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && getHeaderFooterOfSectionRequest.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling WordsApi.get_header_footer_of_section"
      end
      # verify the required parameter 'header_footer_index' is set
      if @api_client.config.client_side_validation && getHeaderFooterOfSectionRequest.header_footer_index.nil?
        fail ArgumentError, "Missing the required parameter 'header_footer_index' when calling WordsApi.get_header_footer_of_section"
      end
      # verify the required parameter 'section_index' is set
      if @api_client.config.client_side_validation && getHeaderFooterOfSectionRequest.section_index.nil?
        fail ArgumentError, "Missing the required parameter 'section_index' when calling WordsApi.get_header_footer_of_section"
      end
      # resource path
      local_var_path = "/words/{name}/sections/{sectionIndex}/headersfooters/{headerFooterIndex}"
	  local_var_path.sub('{' + downcase_first_letter('Name') + '}', getHeaderFooterOfSectionRequest.name.to_s)
	  local_var_path.sub('{' + downcase_first_letter('HeaderFooterIndex') + '}', getHeaderFooterOfSectionRequest.header_footer_index.to_s)
	  local_var_path.sub('{' + downcase_first_letter('SectionIndex') + '}', getHeaderFooterOfSectionRequest.section_index.to_s)

      # query parameters
      query_params = {}
      query_params[downcase_first_letter('Folder')] = getHeaderFooterOfSectionRequest.folder unless getHeaderFooterOfSectionRequest.folder.nil?
      query_params[downcase_first_letter('Storage')] = getHeaderFooterOfSectionRequest.storage unless getHeaderFooterOfSectionRequest.storage.nil?
      query_params[downcase_first_letter('LoadEncoding')] = getHeaderFooterOfSectionRequest.load_encoding unless getHeaderFooterOfSectionRequest.load_encoding.nil?
      query_params[downcase_first_letter('Password')] = getHeaderFooterOfSectionRequest.password unless getHeaderFooterOfSectionRequest.password.nil?
      query_params[downcase_first_letter('FilterByType')] = getHeaderFooterOfSectionRequest.filter_by_type unless getHeaderFooterOfSectionRequest.filter_by_type.nil?

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
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'HeaderFooterResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WordsApi#get_header_footer_of_section\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Return a list of header/footers that are contained in the document.
    # 
    # @param name The document name.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder Original document folder.
    # @option opts [String] :storage File storage, which have to be used.
    # @option opts [String] :load_encoding Encoding that will be used to load an HTML (or TXT) document if the encoding is not specified in HTML.
    # @option opts [String] :password Password for opening an encrypted document.
    # @option opts [String] :section_path Path to parent section.
    # @option opts [String] :filter_by_type List of types of headers and footers.
    # @return [HeaderFootersResponse]
    def get_header_footers(getHeaderFootersRequest)
      data, _status_code, _headers = get_header_footers_with_http_info(getHeaderFootersRequest)
      data
    end

    # Return a list of header/footers that are contained in the document.
    # 
    # @param name The document name.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder Original document folder.
    # @option opts [String] :storage File storage, which have to be used.
    # @option opts [String] :load_encoding Encoding that will be used to load an HTML (or TXT) document if the encoding is not specified in HTML.
    # @option opts [String] :password Password for opening an encrypted document.
    # @option opts [String] :section_path Path to parent section.
    # @option opts [String] :filter_by_type List of types of headers and footers.
    # @return [Array<(HeaderFootersResponse, Fixnum, Hash)>] HeaderFootersResponse data, response status code and response headers
    def get_header_footers_with_http_info(getHeaderFootersRequest)
	  if !getHeaderFootersRequest.is_a? get_header_footersRequest
	    fail ArgumentError, "Incorrect request type"
	  end
	  
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WordsApi.get_header_footers ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && getHeaderFootersRequest.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling WordsApi.get_header_footers"
      end
      # resource path
      local_var_path = "/words/{name}/{sectionPath}/headersfooters"
	  local_var_path.sub('{' + downcase_first_letter('Name') + '}', getHeaderFootersRequest.name.to_s)

      # query parameters
      query_params = {}
      query_params[downcase_first_letter('Folder')] = getHeaderFootersRequest.folder unless getHeaderFootersRequest.folder.nil?
      query_params[downcase_first_letter('Storage')] = getHeaderFootersRequest.storage unless getHeaderFootersRequest.storage.nil?
      query_params[downcase_first_letter('LoadEncoding')] = getHeaderFootersRequest.load_encoding unless getHeaderFootersRequest.load_encoding.nil?
      query_params[downcase_first_letter('Password')] = getHeaderFootersRequest.password unless getHeaderFootersRequest.password.nil?
      query_params[downcase_first_letter('SectionPath')] = getHeaderFootersRequest.section_path unless getHeaderFootersRequest.section_path.nil?
      query_params[downcase_first_letter('FilterByType')] = getHeaderFootersRequest.filter_by_type unless getHeaderFootersRequest.filter_by_type.nil?

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
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'HeaderFootersResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WordsApi#get_header_footers\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Read OfficeMath object by index.
    # 
    # @param name The document name.
    # @param index Object&#39;s index
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder Original document folder.
    # @option opts [String] :storage File storage, which have to be used.
    # @option opts [String] :load_encoding Encoding that will be used to load an HTML (or TXT) document if the encoding is not specified in HTML.
    # @option opts [String] :password Password for opening an encrypted document.
    # @option opts [String] :node_path Path to node, which contains collection of OfficeMath objects.
    # @return [OfficeMathObjectResponse]
    def get_office_math_object(getOfficeMathObjectRequest)
      data, _status_code, _headers = get_office_math_object_with_http_info(getOfficeMathObjectRequest)
      data
    end

    # Read OfficeMath object by index.
    # 
    # @param name The document name.
    # @param index Object&#39;s index
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder Original document folder.
    # @option opts [String] :storage File storage, which have to be used.
    # @option opts [String] :load_encoding Encoding that will be used to load an HTML (or TXT) document if the encoding is not specified in HTML.
    # @option opts [String] :password Password for opening an encrypted document.
    # @option opts [String] :node_path Path to node, which contains collection of OfficeMath objects.
    # @return [Array<(OfficeMathObjectResponse, Fixnum, Hash)>] OfficeMathObjectResponse data, response status code and response headers
    def get_office_math_object_with_http_info(getOfficeMathObjectRequest)
	  if !getOfficeMathObjectRequest.is_a? get_office_math_objectRequest
	    fail ArgumentError, "Incorrect request type"
	  end
	  
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WordsApi.get_office_math_object ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && getOfficeMathObjectRequest.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling WordsApi.get_office_math_object"
      end
      # verify the required parameter 'index' is set
      if @api_client.config.client_side_validation && getOfficeMathObjectRequest.index.nil?
        fail ArgumentError, "Missing the required parameter 'index' when calling WordsApi.get_office_math_object"
      end
      # resource path
      local_var_path = "/words/{name}/{nodePath}/OfficeMathObjects/{index}"
	  local_var_path.sub('{' + downcase_first_letter('Name') + '}', getOfficeMathObjectRequest.name.to_s)
	  local_var_path.sub('{' + downcase_first_letter('Index') + '}', getOfficeMathObjectRequest.index.to_s)

      # query parameters
      query_params = {}
      query_params[downcase_first_letter('Folder')] = getOfficeMathObjectRequest.folder unless getOfficeMathObjectRequest.folder.nil?
      query_params[downcase_first_letter('Storage')] = getOfficeMathObjectRequest.storage unless getOfficeMathObjectRequest.storage.nil?
      query_params[downcase_first_letter('LoadEncoding')] = getOfficeMathObjectRequest.load_encoding unless getOfficeMathObjectRequest.load_encoding.nil?
      query_params[downcase_first_letter('Password')] = getOfficeMathObjectRequest.password unless getOfficeMathObjectRequest.password.nil?
      query_params[downcase_first_letter('NodePath')] = getOfficeMathObjectRequest.node_path unless getOfficeMathObjectRequest.node_path.nil?

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
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'OfficeMathObjectResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WordsApi#get_office_math_object\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get OfficeMath objects from document.
    # 
    # @param name The file name.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder Original document folder.
    # @option opts [String] :storage File storage, which have to be used.
    # @option opts [String] :load_encoding Encoding that will be used to load an HTML (or TXT) document if the encoding is not specified in HTML.
    # @option opts [String] :password Password for opening an encrypted document.
    # @option opts [String] :node_path Path to node, which contains collection of OfficeMath objects.
    # @return [OfficeMathObjectsResponse]
    def get_office_math_objects(getOfficeMathObjectsRequest)
      data, _status_code, _headers = get_office_math_objects_with_http_info(getOfficeMathObjectsRequest)
      data
    end

    # Get OfficeMath objects from document.
    # 
    # @param name The file name.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder Original document folder.
    # @option opts [String] :storage File storage, which have to be used.
    # @option opts [String] :load_encoding Encoding that will be used to load an HTML (or TXT) document if the encoding is not specified in HTML.
    # @option opts [String] :password Password for opening an encrypted document.
    # @option opts [String] :node_path Path to node, which contains collection of OfficeMath objects.
    # @return [Array<(OfficeMathObjectsResponse, Fixnum, Hash)>] OfficeMathObjectsResponse data, response status code and response headers
    def get_office_math_objects_with_http_info(getOfficeMathObjectsRequest)
	  if !getOfficeMathObjectsRequest.is_a? get_office_math_objectsRequest
	    fail ArgumentError, "Incorrect request type"
	  end
	  
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WordsApi.get_office_math_objects ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && getOfficeMathObjectsRequest.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling WordsApi.get_office_math_objects"
      end
      # resource path
      local_var_path = "/words/{name}/{nodePath}/OfficeMathObjects"
	  local_var_path.sub('{' + downcase_first_letter('Name') + '}', getOfficeMathObjectsRequest.name.to_s)

      # query parameters
      query_params = {}
      query_params[downcase_first_letter('Folder')] = getOfficeMathObjectsRequest.folder unless getOfficeMathObjectsRequest.folder.nil?
      query_params[downcase_first_letter('Storage')] = getOfficeMathObjectsRequest.storage unless getOfficeMathObjectsRequest.storage.nil?
      query_params[downcase_first_letter('LoadEncoding')] = getOfficeMathObjectsRequest.load_encoding unless getOfficeMathObjectsRequest.load_encoding.nil?
      query_params[downcase_first_letter('Password')] = getOfficeMathObjectsRequest.password unless getOfficeMathObjectsRequest.password.nil?
      query_params[downcase_first_letter('NodePath')] = getOfficeMathObjectsRequest.node_path unless getOfficeMathObjectsRequest.node_path.nil?

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
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'OfficeMathObjectsResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WordsApi#get_office_math_objects\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get document section by index.
    # 
    # @param name The document name.
    # @param section_index Section index
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder Original document folder.
    # @option opts [String] :storage File storage, which have to be used.
    # @option opts [String] :load_encoding Encoding that will be used to load an HTML (or TXT) document if the encoding is not specified in HTML.
    # @option opts [String] :password Password for opening an encrypted document.
    # @return [SectionResponse]
    def get_section(getSectionRequest)
      data, _status_code, _headers = get_section_with_http_info(getSectionRequest)
      data
    end

    # Get document section by index.
    # 
    # @param name The document name.
    # @param section_index Section index
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder Original document folder.
    # @option opts [String] :storage File storage, which have to be used.
    # @option opts [String] :load_encoding Encoding that will be used to load an HTML (or TXT) document if the encoding is not specified in HTML.
    # @option opts [String] :password Password for opening an encrypted document.
    # @return [Array<(SectionResponse, Fixnum, Hash)>] SectionResponse data, response status code and response headers
    def get_section_with_http_info(getSectionRequest)
	  if !getSectionRequest.is_a? get_sectionRequest
	    fail ArgumentError, "Incorrect request type"
	  end
	  
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WordsApi.get_section ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && getSectionRequest.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling WordsApi.get_section"
      end
      # verify the required parameter 'section_index' is set
      if @api_client.config.client_side_validation && getSectionRequest.section_index.nil?
        fail ArgumentError, "Missing the required parameter 'section_index' when calling WordsApi.get_section"
      end
      # resource path
      local_var_path = "/words/{name}/sections/{sectionIndex}"
	  local_var_path.sub('{' + downcase_first_letter('Name') + '}', getSectionRequest.name.to_s)
	  local_var_path.sub('{' + downcase_first_letter('SectionIndex') + '}', getSectionRequest.section_index.to_s)

      # query parameters
      query_params = {}
      query_params[downcase_first_letter('Folder')] = getSectionRequest.folder unless getSectionRequest.folder.nil?
      query_params[downcase_first_letter('Storage')] = getSectionRequest.storage unless getSectionRequest.storage.nil?
      query_params[downcase_first_letter('LoadEncoding')] = getSectionRequest.load_encoding unless getSectionRequest.load_encoding.nil?
      query_params[downcase_first_letter('Password')] = getSectionRequest.password unless getSectionRequest.password.nil?

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
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'SectionResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WordsApi#get_section\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get page setup of section.
    # 
    # @param name The document name.
    # @param section_index Section index
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder Original document folder.
    # @option opts [String] :storage File storage, which have to be used.
    # @option opts [String] :load_encoding Encoding that will be used to load an HTML (or TXT) document if the encoding is not specified in HTML.
    # @option opts [String] :password Password for opening an encrypted document.
    # @return [SectionPageSetupResponse]
    def get_section_page_setup(getSectionPageSetupRequest)
      data, _status_code, _headers = get_section_page_setup_with_http_info(getSectionPageSetupRequest)
      data
    end

    # Get page setup of section.
    # 
    # @param name The document name.
    # @param section_index Section index
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder Original document folder.
    # @option opts [String] :storage File storage, which have to be used.
    # @option opts [String] :load_encoding Encoding that will be used to load an HTML (or TXT) document if the encoding is not specified in HTML.
    # @option opts [String] :password Password for opening an encrypted document.
    # @return [Array<(SectionPageSetupResponse, Fixnum, Hash)>] SectionPageSetupResponse data, response status code and response headers
    def get_section_page_setup_with_http_info(getSectionPageSetupRequest)
	  if !getSectionPageSetupRequest.is_a? get_section_page_setupRequest
	    fail ArgumentError, "Incorrect request type"
	  end
	  
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WordsApi.get_section_page_setup ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && getSectionPageSetupRequest.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling WordsApi.get_section_page_setup"
      end
      # verify the required parameter 'section_index' is set
      if @api_client.config.client_side_validation && getSectionPageSetupRequest.section_index.nil?
        fail ArgumentError, "Missing the required parameter 'section_index' when calling WordsApi.get_section_page_setup"
      end
      # resource path
      local_var_path = "/words/{name}/sections/{sectionIndex}/pageSetup"
	  local_var_path.sub('{' + downcase_first_letter('Name') + '}', getSectionPageSetupRequest.name.to_s)
	  local_var_path.sub('{' + downcase_first_letter('SectionIndex') + '}', getSectionPageSetupRequest.section_index.to_s)

      # query parameters
      query_params = {}
      query_params[downcase_first_letter('Folder')] = getSectionPageSetupRequest.folder unless getSectionPageSetupRequest.folder.nil?
      query_params[downcase_first_letter('Storage')] = getSectionPageSetupRequest.storage unless getSectionPageSetupRequest.storage.nil?
      query_params[downcase_first_letter('LoadEncoding')] = getSectionPageSetupRequest.load_encoding unless getSectionPageSetupRequest.load_encoding.nil?
      query_params[downcase_first_letter('Password')] = getSectionPageSetupRequest.password unless getSectionPageSetupRequest.password.nil?

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
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'SectionPageSetupResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WordsApi#get_section_page_setup\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Return a list of sections that are contained in the document.
    # 
    # @param name The document name.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder Original document folder.
    # @option opts [String] :storage File storage, which have to be used.
    # @option opts [String] :load_encoding Encoding that will be used to load an HTML (or TXT) document if the encoding is not specified in HTML.
    # @option opts [String] :password Password for opening an encrypted document.
    # @return [SectionLinkCollectionResponse]
    def get_sections(getSectionsRequest)
      data, _status_code, _headers = get_sections_with_http_info(getSectionsRequest)
      data
    end

    # Return a list of sections that are contained in the document.
    # 
    # @param name The document name.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder Original document folder.
    # @option opts [String] :storage File storage, which have to be used.
    # @option opts [String] :load_encoding Encoding that will be used to load an HTML (or TXT) document if the encoding is not specified in HTML.
    # @option opts [String] :password Password for opening an encrypted document.
    # @return [Array<(SectionLinkCollectionResponse, Fixnum, Hash)>] SectionLinkCollectionResponse data, response status code and response headers
    def get_sections_with_http_info(getSectionsRequest)
	  if !getSectionsRequest.is_a? get_sectionsRequest
	    fail ArgumentError, "Incorrect request type"
	  end
	  
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WordsApi.get_sections ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && getSectionsRequest.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling WordsApi.get_sections"
      end
      # resource path
      local_var_path = "/words/{name}/sections"
	  local_var_path.sub('{' + downcase_first_letter('Name') + '}', getSectionsRequest.name.to_s)

      # query parameters
      query_params = {}
      query_params[downcase_first_letter('Folder')] = getSectionsRequest.folder unless getSectionsRequest.folder.nil?
      query_params[downcase_first_letter('Storage')] = getSectionsRequest.storage unless getSectionsRequest.storage.nil?
      query_params[downcase_first_letter('LoadEncoding')] = getSectionsRequest.load_encoding unless getSectionsRequest.load_encoding.nil?
      query_params[downcase_first_letter('Password')] = getSectionsRequest.password unless getSectionsRequest.password.nil?

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
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'SectionLinkCollectionResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WordsApi#get_sections\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Return a table.
    # 
    # @param name The document name.
    # @param index Object&#39;s index
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder Original document folder.
    # @option opts [String] :storage File storage, which have to be used.
    # @option opts [String] :load_encoding Encoding that will be used to load an HTML (or TXT) document if the encoding is not specified in HTML.
    # @option opts [String] :password Password for opening an encrypted document.
    # @option opts [String] :node_path Path to node, which contains tables.
    # @return [TableResponse]
    def get_table(getTableRequest)
      data, _status_code, _headers = get_table_with_http_info(getTableRequest)
      data
    end

    # Return a table.
    # 
    # @param name The document name.
    # @param index Object&#39;s index
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder Original document folder.
    # @option opts [String] :storage File storage, which have to be used.
    # @option opts [String] :load_encoding Encoding that will be used to load an HTML (or TXT) document if the encoding is not specified in HTML.
    # @option opts [String] :password Password for opening an encrypted document.
    # @option opts [String] :node_path Path to node, which contains tables.
    # @return [Array<(TableResponse, Fixnum, Hash)>] TableResponse data, response status code and response headers
    def get_table_with_http_info(getTableRequest)
	  if !getTableRequest.is_a? get_tableRequest
	    fail ArgumentError, "Incorrect request type"
	  end
	  
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WordsApi.get_table ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && getTableRequest.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling WordsApi.get_table"
      end
      # verify the required parameter 'index' is set
      if @api_client.config.client_side_validation && getTableRequest.index.nil?
        fail ArgumentError, "Missing the required parameter 'index' when calling WordsApi.get_table"
      end
      # resource path
      local_var_path = "/words/{name}/{nodePath}/tables/{index}"
	  local_var_path.sub('{' + downcase_first_letter('Name') + '}', getTableRequest.name.to_s)
	  local_var_path.sub('{' + downcase_first_letter('Index') + '}', getTableRequest.index.to_s)

      # query parameters
      query_params = {}
      query_params[downcase_first_letter('Folder')] = getTableRequest.folder unless getTableRequest.folder.nil?
      query_params[downcase_first_letter('Storage')] = getTableRequest.storage unless getTableRequest.storage.nil?
      query_params[downcase_first_letter('LoadEncoding')] = getTableRequest.load_encoding unless getTableRequest.load_encoding.nil?
      query_params[downcase_first_letter('Password')] = getTableRequest.password unless getTableRequest.password.nil?
      query_params[downcase_first_letter('NodePath')] = getTableRequest.node_path unless getTableRequest.node_path.nil?

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
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'TableResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WordsApi#get_table\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Return a table cell.
    # 
    # @param name The document name.
    # @param table_row_path Path to table row.
    # @param index Object&#39;s index
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder Original document folder.
    # @option opts [String] :storage File storage, which have to be used.
    # @option opts [String] :load_encoding Encoding that will be used to load an HTML (or TXT) document if the encoding is not specified in HTML.
    # @option opts [String] :password Password for opening an encrypted document.
    # @return [TableCellResponse]
    def get_table_cell(getTableCellRequest)
      data, _status_code, _headers = get_table_cell_with_http_info(getTableCellRequest)
      data
    end

    # Return a table cell.
    # 
    # @param name The document name.
    # @param table_row_path Path to table row.
    # @param index Object&#39;s index
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder Original document folder.
    # @option opts [String] :storage File storage, which have to be used.
    # @option opts [String] :load_encoding Encoding that will be used to load an HTML (or TXT) document if the encoding is not specified in HTML.
    # @option opts [String] :password Password for opening an encrypted document.
    # @return [Array<(TableCellResponse, Fixnum, Hash)>] TableCellResponse data, response status code and response headers
    def get_table_cell_with_http_info(getTableCellRequest)
	  if !getTableCellRequest.is_a? get_table_cellRequest
	    fail ArgumentError, "Incorrect request type"
	  end
	  
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WordsApi.get_table_cell ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && getTableCellRequest.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling WordsApi.get_table_cell"
      end
      # verify the required parameter 'table_row_path' is set
      if @api_client.config.client_side_validation && getTableCellRequest.table_row_path.nil?
        fail ArgumentError, "Missing the required parameter 'table_row_path' when calling WordsApi.get_table_cell"
      end
      # verify the required parameter 'index' is set
      if @api_client.config.client_side_validation && getTableCellRequest.index.nil?
        fail ArgumentError, "Missing the required parameter 'index' when calling WordsApi.get_table_cell"
      end
      # resource path
      local_var_path = "/words/{name}/{tableRowPath}/cells/{index}"
	  local_var_path.sub('{' + downcase_first_letter('Name') + '}', getTableCellRequest.name.to_s)
	  local_var_path.sub('{' + downcase_first_letter('TableRowPath') + '}', getTableCellRequest.table_row_path.to_s)
	  local_var_path.sub('{' + downcase_first_letter('Index') + '}', getTableCellRequest.index.to_s)

      # query parameters
      query_params = {}
      query_params[downcase_first_letter('Folder')] = getTableCellRequest.folder unless getTableCellRequest.folder.nil?
      query_params[downcase_first_letter('Storage')] = getTableCellRequest.storage unless getTableCellRequest.storage.nil?
      query_params[downcase_first_letter('LoadEncoding')] = getTableCellRequest.load_encoding unless getTableCellRequest.load_encoding.nil?
      query_params[downcase_first_letter('Password')] = getTableCellRequest.password unless getTableCellRequest.password.nil?

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
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'TableCellResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WordsApi#get_table_cell\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Return a table cell format.
    # 
    # @param name The document name.
    # @param table_row_path Path to table row.
    # @param index Object&#39;s index
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder Original document folder.
    # @option opts [String] :storage File storage, which have to be used.
    # @option opts [String] :load_encoding Encoding that will be used to load an HTML (or TXT) document if the encoding is not specified in HTML.
    # @option opts [String] :password Password for opening an encrypted document.
    # @return [TableCellFormatResponse]
    def get_table_cell_format(getTableCellFormatRequest)
      data, _status_code, _headers = get_table_cell_format_with_http_info(getTableCellFormatRequest)
      data
    end

    # Return a table cell format.
    # 
    # @param name The document name.
    # @param table_row_path Path to table row.
    # @param index Object&#39;s index
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder Original document folder.
    # @option opts [String] :storage File storage, which have to be used.
    # @option opts [String] :load_encoding Encoding that will be used to load an HTML (or TXT) document if the encoding is not specified in HTML.
    # @option opts [String] :password Password for opening an encrypted document.
    # @return [Array<(TableCellFormatResponse, Fixnum, Hash)>] TableCellFormatResponse data, response status code and response headers
    def get_table_cell_format_with_http_info(getTableCellFormatRequest)
	  if !getTableCellFormatRequest.is_a? get_table_cell_formatRequest
	    fail ArgumentError, "Incorrect request type"
	  end
	  
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WordsApi.get_table_cell_format ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && getTableCellFormatRequest.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling WordsApi.get_table_cell_format"
      end
      # verify the required parameter 'table_row_path' is set
      if @api_client.config.client_side_validation && getTableCellFormatRequest.table_row_path.nil?
        fail ArgumentError, "Missing the required parameter 'table_row_path' when calling WordsApi.get_table_cell_format"
      end
      # verify the required parameter 'index' is set
      if @api_client.config.client_side_validation && getTableCellFormatRequest.index.nil?
        fail ArgumentError, "Missing the required parameter 'index' when calling WordsApi.get_table_cell_format"
      end
      # resource path
      local_var_path = "/words/{name}/{tableRowPath}/cells/{index}/cellformat"
	  local_var_path.sub('{' + downcase_first_letter('Name') + '}', getTableCellFormatRequest.name.to_s)
	  local_var_path.sub('{' + downcase_first_letter('TableRowPath') + '}', getTableCellFormatRequest.table_row_path.to_s)
	  local_var_path.sub('{' + downcase_first_letter('Index') + '}', getTableCellFormatRequest.index.to_s)

      # query parameters
      query_params = {}
      query_params[downcase_first_letter('Folder')] = getTableCellFormatRequest.folder unless getTableCellFormatRequest.folder.nil?
      query_params[downcase_first_letter('Storage')] = getTableCellFormatRequest.storage unless getTableCellFormatRequest.storage.nil?
      query_params[downcase_first_letter('LoadEncoding')] = getTableCellFormatRequest.load_encoding unless getTableCellFormatRequest.load_encoding.nil?
      query_params[downcase_first_letter('Password')] = getTableCellFormatRequest.password unless getTableCellFormatRequest.password.nil?

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
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'TableCellFormatResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WordsApi#get_table_cell_format\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Return a table properties.
    # 
    # @param name The document name.
    # @param index Object&#39;s index
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder Original document folder.
    # @option opts [String] :storage File storage, which have to be used.
    # @option opts [String] :load_encoding Encoding that will be used to load an HTML (or TXT) document if the encoding is not specified in HTML.
    # @option opts [String] :password Password for opening an encrypted document.
    # @option opts [String] :node_path Path to node, which contains tables.
    # @return [TablePropertiesResponse]
    def get_table_properties(getTablePropertiesRequest)
      data, _status_code, _headers = get_table_properties_with_http_info(getTablePropertiesRequest)
      data
    end

    # Return a table properties.
    # 
    # @param name The document name.
    # @param index Object&#39;s index
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder Original document folder.
    # @option opts [String] :storage File storage, which have to be used.
    # @option opts [String] :load_encoding Encoding that will be used to load an HTML (or TXT) document if the encoding is not specified in HTML.
    # @option opts [String] :password Password for opening an encrypted document.
    # @option opts [String] :node_path Path to node, which contains tables.
    # @return [Array<(TablePropertiesResponse, Fixnum, Hash)>] TablePropertiesResponse data, response status code and response headers
    def get_table_properties_with_http_info(getTablePropertiesRequest)
	  if !getTablePropertiesRequest.is_a? get_table_propertiesRequest
	    fail ArgumentError, "Incorrect request type"
	  end
	  
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WordsApi.get_table_properties ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && getTablePropertiesRequest.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling WordsApi.get_table_properties"
      end
      # verify the required parameter 'index' is set
      if @api_client.config.client_side_validation && getTablePropertiesRequest.index.nil?
        fail ArgumentError, "Missing the required parameter 'index' when calling WordsApi.get_table_properties"
      end
      # resource path
      local_var_path = "/words/{name}/{nodePath}/tables/{index}/properties"
	  local_var_path.sub('{' + downcase_first_letter('Name') + '}', getTablePropertiesRequest.name.to_s)
	  local_var_path.sub('{' + downcase_first_letter('Index') + '}', getTablePropertiesRequest.index.to_s)

      # query parameters
      query_params = {}
      query_params[downcase_first_letter('Folder')] = getTablePropertiesRequest.folder unless getTablePropertiesRequest.folder.nil?
      query_params[downcase_first_letter('Storage')] = getTablePropertiesRequest.storage unless getTablePropertiesRequest.storage.nil?
      query_params[downcase_first_letter('LoadEncoding')] = getTablePropertiesRequest.load_encoding unless getTablePropertiesRequest.load_encoding.nil?
      query_params[downcase_first_letter('Password')] = getTablePropertiesRequest.password unless getTablePropertiesRequest.password.nil?
      query_params[downcase_first_letter('NodePath')] = getTablePropertiesRequest.node_path unless getTablePropertiesRequest.node_path.nil?

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
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'TablePropertiesResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WordsApi#get_table_properties\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Return a table row.
    # 
    # @param name The document name.
    # @param table_path Path to table.
    # @param index Object&#39;s index
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder Original document folder.
    # @option opts [String] :storage File storage, which have to be used.
    # @option opts [String] :load_encoding Encoding that will be used to load an HTML (or TXT) document if the encoding is not specified in HTML.
    # @option opts [String] :password Password for opening an encrypted document.
    # @return [TableRowResponse]
    def get_table_row(getTableRowRequest)
      data, _status_code, _headers = get_table_row_with_http_info(getTableRowRequest)
      data
    end

    # Return a table row.
    # 
    # @param name The document name.
    # @param table_path Path to table.
    # @param index Object&#39;s index
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder Original document folder.
    # @option opts [String] :storage File storage, which have to be used.
    # @option opts [String] :load_encoding Encoding that will be used to load an HTML (or TXT) document if the encoding is not specified in HTML.
    # @option opts [String] :password Password for opening an encrypted document.
    # @return [Array<(TableRowResponse, Fixnum, Hash)>] TableRowResponse data, response status code and response headers
    def get_table_row_with_http_info(getTableRowRequest)
	  if !getTableRowRequest.is_a? get_table_rowRequest
	    fail ArgumentError, "Incorrect request type"
	  end
	  
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WordsApi.get_table_row ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && getTableRowRequest.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling WordsApi.get_table_row"
      end
      # verify the required parameter 'table_path' is set
      if @api_client.config.client_side_validation && getTableRowRequest.table_path.nil?
        fail ArgumentError, "Missing the required parameter 'table_path' when calling WordsApi.get_table_row"
      end
      # verify the required parameter 'index' is set
      if @api_client.config.client_side_validation && getTableRowRequest.index.nil?
        fail ArgumentError, "Missing the required parameter 'index' when calling WordsApi.get_table_row"
      end
      # resource path
      local_var_path = "/words/{name}/{tablePath}/rows/{index}"
	  local_var_path.sub('{' + downcase_first_letter('Name') + '}', getTableRowRequest.name.to_s)
	  local_var_path.sub('{' + downcase_first_letter('TablePath') + '}', getTableRowRequest.table_path.to_s)
	  local_var_path.sub('{' + downcase_first_letter('Index') + '}', getTableRowRequest.index.to_s)

      # query parameters
      query_params = {}
      query_params[downcase_first_letter('Folder')] = getTableRowRequest.folder unless getTableRowRequest.folder.nil?
      query_params[downcase_first_letter('Storage')] = getTableRowRequest.storage unless getTableRowRequest.storage.nil?
      query_params[downcase_first_letter('LoadEncoding')] = getTableRowRequest.load_encoding unless getTableRowRequest.load_encoding.nil?
      query_params[downcase_first_letter('Password')] = getTableRowRequest.password unless getTableRowRequest.password.nil?

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
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'TableRowResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WordsApi#get_table_row\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Return a table row format.
    # 
    # @param name The document name.
    # @param table_path Path to table.
    # @param index Object&#39;s index
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder Original document folder.
    # @option opts [String] :storage File storage, which have to be used.
    # @option opts [String] :load_encoding Encoding that will be used to load an HTML (or TXT) document if the encoding is not specified in HTML.
    # @option opts [String] :password Password for opening an encrypted document.
    # @return [TableRowFormatResponse]
    def get_table_row_format(getTableRowFormatRequest)
      data, _status_code, _headers = get_table_row_format_with_http_info(getTableRowFormatRequest)
      data
    end

    # Return a table row format.
    # 
    # @param name The document name.
    # @param table_path Path to table.
    # @param index Object&#39;s index
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder Original document folder.
    # @option opts [String] :storage File storage, which have to be used.
    # @option opts [String] :load_encoding Encoding that will be used to load an HTML (or TXT) document if the encoding is not specified in HTML.
    # @option opts [String] :password Password for opening an encrypted document.
    # @return [Array<(TableRowFormatResponse, Fixnum, Hash)>] TableRowFormatResponse data, response status code and response headers
    def get_table_row_format_with_http_info(getTableRowFormatRequest)
	  if !getTableRowFormatRequest.is_a? get_table_row_formatRequest
	    fail ArgumentError, "Incorrect request type"
	  end
	  
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WordsApi.get_table_row_format ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && getTableRowFormatRequest.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling WordsApi.get_table_row_format"
      end
      # verify the required parameter 'table_path' is set
      if @api_client.config.client_side_validation && getTableRowFormatRequest.table_path.nil?
        fail ArgumentError, "Missing the required parameter 'table_path' when calling WordsApi.get_table_row_format"
      end
      # verify the required parameter 'index' is set
      if @api_client.config.client_side_validation && getTableRowFormatRequest.index.nil?
        fail ArgumentError, "Missing the required parameter 'index' when calling WordsApi.get_table_row_format"
      end
      # resource path
      local_var_path = "/words/{name}/{tablePath}/rows/{index}/rowformat"
	  local_var_path.sub('{' + downcase_first_letter('Name') + '}', getTableRowFormatRequest.name.to_s)
	  local_var_path.sub('{' + downcase_first_letter('TablePath') + '}', getTableRowFormatRequest.table_path.to_s)
	  local_var_path.sub('{' + downcase_first_letter('Index') + '}', getTableRowFormatRequest.index.to_s)

      # query parameters
      query_params = {}
      query_params[downcase_first_letter('Folder')] = getTableRowFormatRequest.folder unless getTableRowFormatRequest.folder.nil?
      query_params[downcase_first_letter('Storage')] = getTableRowFormatRequest.storage unless getTableRowFormatRequest.storage.nil?
      query_params[downcase_first_letter('LoadEncoding')] = getTableRowFormatRequest.load_encoding unless getTableRowFormatRequest.load_encoding.nil?
      query_params[downcase_first_letter('Password')] = getTableRowFormatRequest.password unless getTableRowFormatRequest.password.nil?

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
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'TableRowFormatResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WordsApi#get_table_row_format\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Return a list of tables that are contained in the document.
    # 
    # @param name The document name.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder Original document folder.
    # @option opts [String] :storage File storage, which have to be used.
    # @option opts [String] :load_encoding Encoding that will be used to load an HTML (or TXT) document if the encoding is not specified in HTML.
    # @option opts [String] :password Password for opening an encrypted document.
    # @option opts [String] :node_path Path to node, which contains tables.
    # @return [TableLinkCollectionResponse]
    def get_tables(getTablesRequest)
      data, _status_code, _headers = get_tables_with_http_info(getTablesRequest)
      data
    end

    # Return a list of tables that are contained in the document.
    # 
    # @param name The document name.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder Original document folder.
    # @option opts [String] :storage File storage, which have to be used.
    # @option opts [String] :load_encoding Encoding that will be used to load an HTML (or TXT) document if the encoding is not specified in HTML.
    # @option opts [String] :password Password for opening an encrypted document.
    # @option opts [String] :node_path Path to node, which contains tables.
    # @return [Array<(TableLinkCollectionResponse, Fixnum, Hash)>] TableLinkCollectionResponse data, response status code and response headers
    def get_tables_with_http_info(getTablesRequest)
	  if !getTablesRequest.is_a? get_tablesRequest
	    fail ArgumentError, "Incorrect request type"
	  end
	  
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WordsApi.get_tables ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && getTablesRequest.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling WordsApi.get_tables"
      end
      # resource path
      local_var_path = "/words/{name}/{nodePath}/tables"
	  local_var_path.sub('{' + downcase_first_letter('Name') + '}', getTablesRequest.name.to_s)

      # query parameters
      query_params = {}
      query_params[downcase_first_letter('Folder')] = getTablesRequest.folder unless getTablesRequest.folder.nil?
      query_params[downcase_first_letter('Storage')] = getTablesRequest.storage unless getTablesRequest.storage.nil?
      query_params[downcase_first_letter('LoadEncoding')] = getTablesRequest.load_encoding unless getTablesRequest.load_encoding.nil?
      query_params[downcase_first_letter('Password')] = getTablesRequest.password unless getTablesRequest.password.nil?
      query_params[downcase_first_letter('NodePath')] = getTablesRequest.node_path unless getTablesRequest.node_path.nil?

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
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'TableLinkCollectionResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WordsApi#get_tables\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Adds table to document, returns added table's data.             
    # 
    # @param name The document name.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder Original document folder.
    # @option opts [String] :storage File storage, which have to be used.
    # @option opts [String] :load_encoding Encoding that will be used to load an HTML (or TXT) document if the encoding is not specified in HTML.
    # @option opts [String] :password Password for opening an encrypted document.
    # @option opts [String] :dest_file_name Result name of the document after the operation. If this parameter is omitted then result of the operation will be saved as the source document.
    # @option opts [String] :revision_author Initials of the author to use for revisions.If you set this parameter and then make some changes to the document programmatically, save the document and later open the document in MS Word you will see these changes as revisions.
    # @option opts [String] :revision_date_time The date and time to use for revisions.
    # @option opts [TableInsert] :table Table parameters/
    # @option opts [String] :node_path Path to node, which contains tables.
    # @return [TableResponse]
    def insert_table(insertTableRequest)
      data, _status_code, _headers = insert_table_with_http_info(insertTableRequest)
      data
    end

    # Adds table to document, returns added table&#39;s data.             
    # 
    # @param name The document name.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder Original document folder.
    # @option opts [String] :storage File storage, which have to be used.
    # @option opts [String] :load_encoding Encoding that will be used to load an HTML (or TXT) document if the encoding is not specified in HTML.
    # @option opts [String] :password Password for opening an encrypted document.
    # @option opts [String] :dest_file_name Result name of the document after the operation. If this parameter is omitted then result of the operation will be saved as the source document.
    # @option opts [String] :revision_author Initials of the author to use for revisions.If you set this parameter and then make some changes to the document programmatically, save the document and later open the document in MS Word you will see these changes as revisions.
    # @option opts [String] :revision_date_time The date and time to use for revisions.
    # @option opts [TableInsert] :table Table parameters/
    # @option opts [String] :node_path Path to node, which contains tables.
    # @return [Array<(TableResponse, Fixnum, Hash)>] TableResponse data, response status code and response headers
    def insert_table_with_http_info(insertTableRequest)
	  if !insertTableRequest.is_a? insert_tableRequest
	    fail ArgumentError, "Incorrect request type"
	  end
	  
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WordsApi.insert_table ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && insertTableRequest.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling WordsApi.insert_table"
      end
      # resource path
      local_var_path = "/words/{name}/{nodePath}/tables"
	  local_var_path.sub('{' + downcase_first_letter('Name') + '}', insertTableRequest.name.to_s)

      # query parameters
      query_params = {}
      query_params[downcase_first_letter('Folder')] = insertTableRequest.folder unless insertTableRequest.folder.nil?
      query_params[downcase_first_letter('Storage')] = insertTableRequest.storage unless insertTableRequest.storage.nil?
      query_params[downcase_first_letter('LoadEncoding')] = insertTableRequest.load_encoding unless insertTableRequest.load_encoding.nil?
      query_params[downcase_first_letter('Password')] = insertTableRequest.password unless insertTableRequest.password.nil?
      query_params[downcase_first_letter('DestFileName')] = insertTableRequest.dest_file_name unless insertTableRequest.dest_file_name.nil?
      query_params[downcase_first_letter('RevisionAuthor')] = insertTableRequest.revision_author unless insertTableRequest.revision_author.nil?
      query_params[downcase_first_letter('RevisionDateTime')] = insertTableRequest.revision_date_time unless insertTableRequest.revision_date_time.nil?
      query_params[downcase_first_letter('NodePath')] = insertTableRequest.node_path unless insertTableRequest.node_path.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/xml', 'application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/xml', 'application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(insertTableRequest.table)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'TableResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WordsApi#insert_table\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Adds table cell to table, returns added cell's data.             
    # 
    # @param name The document name.
    # @param table_row_path Path to table row.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder Original document folder.
    # @option opts [String] :storage File storage, which have to be used.
    # @option opts [String] :load_encoding Encoding that will be used to load an HTML (or TXT) document if the encoding is not specified in HTML.
    # @option opts [String] :password Password for opening an encrypted document.
    # @option opts [String] :dest_file_name Result name of the document after the operation. If this parameter is omitted then result of the operation will be saved as the source document.
    # @option opts [String] :revision_author Initials of the author to use for revisions.If you set this parameter and then make some changes to the document programmatically, save the document and later open the document in MS Word you will see these changes as revisions.
    # @option opts [String] :revision_date_time The date and time to use for revisions.
    # @option opts [TableCellInsert] :cell Table cell parameters/
    # @return [TableCellResponse]
    def insert_table_cell(insertTableCellRequest)
      data, _status_code, _headers = insert_table_cell_with_http_info(insertTableCellRequest)
      data
    end

    # Adds table cell to table, returns added cell&#39;s data.             
    # 
    # @param name The document name.
    # @param table_row_path Path to table row.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder Original document folder.
    # @option opts [String] :storage File storage, which have to be used.
    # @option opts [String] :load_encoding Encoding that will be used to load an HTML (or TXT) document if the encoding is not specified in HTML.
    # @option opts [String] :password Password for opening an encrypted document.
    # @option opts [String] :dest_file_name Result name of the document after the operation. If this parameter is omitted then result of the operation will be saved as the source document.
    # @option opts [String] :revision_author Initials of the author to use for revisions.If you set this parameter and then make some changes to the document programmatically, save the document and later open the document in MS Word you will see these changes as revisions.
    # @option opts [String] :revision_date_time The date and time to use for revisions.
    # @option opts [TableCellInsert] :cell Table cell parameters/
    # @return [Array<(TableCellResponse, Fixnum, Hash)>] TableCellResponse data, response status code and response headers
    def insert_table_cell_with_http_info(insertTableCellRequest)
	  if !insertTableCellRequest.is_a? insert_table_cellRequest
	    fail ArgumentError, "Incorrect request type"
	  end
	  
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WordsApi.insert_table_cell ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && insertTableCellRequest.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling WordsApi.insert_table_cell"
      end
      # verify the required parameter 'table_row_path' is set
      if @api_client.config.client_side_validation && insertTableCellRequest.table_row_path.nil?
        fail ArgumentError, "Missing the required parameter 'table_row_path' when calling WordsApi.insert_table_cell"
      end
      # resource path
      local_var_path = "/words/{name}/{tableRowPath}/cells"
	  local_var_path.sub('{' + downcase_first_letter('Name') + '}', insertTableCellRequest.name.to_s)
	  local_var_path.sub('{' + downcase_first_letter('TableRowPath') + '}', insertTableCellRequest.table_row_path.to_s)

      # query parameters
      query_params = {}
      query_params[downcase_first_letter('Folder')] = insertTableCellRequest.folder unless insertTableCellRequest.folder.nil?
      query_params[downcase_first_letter('Storage')] = insertTableCellRequest.storage unless insertTableCellRequest.storage.nil?
      query_params[downcase_first_letter('LoadEncoding')] = insertTableCellRequest.load_encoding unless insertTableCellRequest.load_encoding.nil?
      query_params[downcase_first_letter('Password')] = insertTableCellRequest.password unless insertTableCellRequest.password.nil?
      query_params[downcase_first_letter('DestFileName')] = insertTableCellRequest.dest_file_name unless insertTableCellRequest.dest_file_name.nil?
      query_params[downcase_first_letter('RevisionAuthor')] = insertTableCellRequest.revision_author unless insertTableCellRequest.revision_author.nil?
      query_params[downcase_first_letter('RevisionDateTime')] = insertTableCellRequest.revision_date_time unless insertTableCellRequest.revision_date_time.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/xml', 'application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/xml', 'application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(insertTableCellRequest.cell)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'TableCellResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WordsApi#insert_table_cell\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Adds table row to table, returns added row's data.             
    # 
    # @param name The document name.
    # @param table_path Path to table.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder Original document folder.
    # @option opts [String] :storage File storage, which have to be used.
    # @option opts [String] :load_encoding Encoding that will be used to load an HTML (or TXT) document if the encoding is not specified in HTML.
    # @option opts [String] :password Password for opening an encrypted document.
    # @option opts [String] :dest_file_name Result name of the document after the operation. If this parameter is omitted then result of the operation will be saved as the source document.
    # @option opts [String] :revision_author Initials of the author to use for revisions.If you set this parameter and then make some changes to the document programmatically, save the document and later open the document in MS Word you will see these changes as revisions.
    # @option opts [String] :revision_date_time The date and time to use for revisions.
    # @option opts [TableRowInsert] :row Table row parameters/
    # @return [TableRowResponse]
    def insert_table_row(insertTableRowRequest)
      data, _status_code, _headers = insert_table_row_with_http_info(insertTableRowRequest)
      data
    end

    # Adds table row to table, returns added row&#39;s data.             
    # 
    # @param name The document name.
    # @param table_path Path to table.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder Original document folder.
    # @option opts [String] :storage File storage, which have to be used.
    # @option opts [String] :load_encoding Encoding that will be used to load an HTML (or TXT) document if the encoding is not specified in HTML.
    # @option opts [String] :password Password for opening an encrypted document.
    # @option opts [String] :dest_file_name Result name of the document after the operation. If this parameter is omitted then result of the operation will be saved as the source document.
    # @option opts [String] :revision_author Initials of the author to use for revisions.If you set this parameter and then make some changes to the document programmatically, save the document and later open the document in MS Word you will see these changes as revisions.
    # @option opts [String] :revision_date_time The date and time to use for revisions.
    # @option opts [TableRowInsert] :row Table row parameters/
    # @return [Array<(TableRowResponse, Fixnum, Hash)>] TableRowResponse data, response status code and response headers
    def insert_table_row_with_http_info(insertTableRowRequest)
	  if !insertTableRowRequest.is_a? insert_table_rowRequest
	    fail ArgumentError, "Incorrect request type"
	  end
	  
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WordsApi.insert_table_row ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && insertTableRowRequest.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling WordsApi.insert_table_row"
      end
      # verify the required parameter 'table_path' is set
      if @api_client.config.client_side_validation && insertTableRowRequest.table_path.nil?
        fail ArgumentError, "Missing the required parameter 'table_path' when calling WordsApi.insert_table_row"
      end
      # resource path
      local_var_path = "/words/{name}/{tablePath}/rows"
	  local_var_path.sub('{' + downcase_first_letter('Name') + '}', insertTableRowRequest.name.to_s)
	  local_var_path.sub('{' + downcase_first_letter('TablePath') + '}', insertTableRowRequest.table_path.to_s)

      # query parameters
      query_params = {}
      query_params[downcase_first_letter('Folder')] = insertTableRowRequest.folder unless insertTableRowRequest.folder.nil?
      query_params[downcase_first_letter('Storage')] = insertTableRowRequest.storage unless insertTableRowRequest.storage.nil?
      query_params[downcase_first_letter('LoadEncoding')] = insertTableRowRequest.load_encoding unless insertTableRowRequest.load_encoding.nil?
      query_params[downcase_first_letter('Password')] = insertTableRowRequest.password unless insertTableRowRequest.password.nil?
      query_params[downcase_first_letter('DestFileName')] = insertTableRowRequest.dest_file_name unless insertTableRowRequest.dest_file_name.nil?
      query_params[downcase_first_letter('RevisionAuthor')] = insertTableRowRequest.revision_author unless insertTableRowRequest.revision_author.nil?
      query_params[downcase_first_letter('RevisionDateTime')] = insertTableRowRequest.revision_date_time unless insertTableRowRequest.revision_date_time.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/xml', 'application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/xml', 'application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(insertTableRowRequest.row)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'TableRowResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WordsApi#insert_table_row\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Append documents to original document.
    # 
    # @param name Original document name.
    # @param document_list with a list of documents to append.            
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder Original document folder.
    # @option opts [String] :storage File storage, which have to be used.
    # @option opts [String] :load_encoding Encoding that will be used to load an HTML (or TXT) document if the encoding is not specified in HTML.
    # @option opts [String] :password Password for opening an encrypted document.
    # @option opts [String] :dest_file_name Result name of the document after the operation. If this parameter is omitted then result of the operation will be saved as the source document.
    # @option opts [String] :revision_author Initials of the author to use for revisions.If you set this parameter and then make some changes to the document programmatically, save the document and later open the document in MS Word you will see these changes as revisions.
    # @option opts [String] :revision_date_time The date and time to use for revisions.
    # @return [DocumentResponse]
    def post_append_document(postAppendDocumentRequest)
      data, _status_code, _headers = post_append_document_with_http_info(postAppendDocumentRequest)
      data
    end

    # Append documents to original document.
    # 
    # @param name Original document name.
    # @param document_list with a list of documents to append.            
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder Original document folder.
    # @option opts [String] :storage File storage, which have to be used.
    # @option opts [String] :load_encoding Encoding that will be used to load an HTML (or TXT) document if the encoding is not specified in HTML.
    # @option opts [String] :password Password for opening an encrypted document.
    # @option opts [String] :dest_file_name Result name of the document after the operation. If this parameter is omitted then result of the operation will be saved as the source document.
    # @option opts [String] :revision_author Initials of the author to use for revisions.If you set this parameter and then make some changes to the document programmatically, save the document and later open the document in MS Word you will see these changes as revisions.
    # @option opts [String] :revision_date_time The date and time to use for revisions.
    # @return [Array<(DocumentResponse, Fixnum, Hash)>] DocumentResponse data, response status code and response headers
    def post_append_document_with_http_info(postAppendDocumentRequest)
	  if !postAppendDocumentRequest.is_a? post_append_documentRequest
	    fail ArgumentError, "Incorrect request type"
	  end
	  
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WordsApi.post_append_document ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && postAppendDocumentRequest.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling WordsApi.post_append_document"
      end
      # verify the required parameter 'document_list' is set
      if @api_client.config.client_side_validation && postAppendDocumentRequest.document_list.nil?
        fail ArgumentError, "Missing the required parameter 'document_list' when calling WordsApi.post_append_document"
      end
      # resource path
      local_var_path = "/words/{name}/appendDocument"
	  local_var_path.sub('{' + downcase_first_letter('Name') + '}', postAppendDocumentRequest.name.to_s)

      # query parameters
      query_params = {}
      query_params[downcase_first_letter('Folder')] = postAppendDocumentRequest.folder unless postAppendDocumentRequest.folder.nil?
      query_params[downcase_first_letter('Storage')] = postAppendDocumentRequest.storage unless postAppendDocumentRequest.storage.nil?
      query_params[downcase_first_letter('LoadEncoding')] = postAppendDocumentRequest.load_encoding unless postAppendDocumentRequest.load_encoding.nil?
      query_params[downcase_first_letter('Password')] = postAppendDocumentRequest.password unless postAppendDocumentRequest.password.nil?
      query_params[downcase_first_letter('DestFileName')] = postAppendDocumentRequest.dest_file_name unless postAppendDocumentRequest.dest_file_name.nil?
      query_params[downcase_first_letter('RevisionAuthor')] = postAppendDocumentRequest.revision_author unless postAppendDocumentRequest.revision_author.nil?
      query_params[downcase_first_letter('RevisionDateTime')] = postAppendDocumentRequest.revision_date_time unless postAppendDocumentRequest.revision_date_time.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/xml', 'application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/xml', 'application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(postAppendDocumentRequest.document_list)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'DocumentResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WordsApi#post_append_document\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Change document protection.
    # 
    # @param name The document name.
    # @param protection_request with protection settings.            
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder Original document folder.
    # @option opts [String] :storage File storage, which have to be used.
    # @option opts [String] :load_encoding Encoding that will be used to load an HTML (or TXT) document if the encoding is not specified in HTML.
    # @option opts [String] :password Password for opening an encrypted document.
    # @option opts [String] :dest_file_name Result name of the document after the operation. If this parameter is omitted then result of the operation will be saved as the source document.
    # @return [ProtectionDataResponse]
    def post_change_document_protection(postChangeDocumentProtectionRequest)
      data, _status_code, _headers = post_change_document_protection_with_http_info(postChangeDocumentProtectionRequest)
      data
    end

    # Change document protection.
    # 
    # @param name The document name.
    # @param protection_request with protection settings.            
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder Original document folder.
    # @option opts [String] :storage File storage, which have to be used.
    # @option opts [String] :load_encoding Encoding that will be used to load an HTML (or TXT) document if the encoding is not specified in HTML.
    # @option opts [String] :password Password for opening an encrypted document.
    # @option opts [String] :dest_file_name Result name of the document after the operation. If this parameter is omitted then result of the operation will be saved as the source document.
    # @return [Array<(ProtectionDataResponse, Fixnum, Hash)>] ProtectionDataResponse data, response status code and response headers
    def post_change_document_protection_with_http_info(postChangeDocumentProtectionRequest)
	  if !postChangeDocumentProtectionRequest.is_a? post_change_document_protectionRequest
	    fail ArgumentError, "Incorrect request type"
	  end
	  
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WordsApi.post_change_document_protection ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && postChangeDocumentProtectionRequest.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling WordsApi.post_change_document_protection"
      end
      # verify the required parameter 'protection_request' is set
      if @api_client.config.client_side_validation && postChangeDocumentProtectionRequest.protection_request.nil?
        fail ArgumentError, "Missing the required parameter 'protection_request' when calling WordsApi.post_change_document_protection"
      end
      # resource path
      local_var_path = "/words/{name}/protection"
	  local_var_path.sub('{' + downcase_first_letter('Name') + '}', postChangeDocumentProtectionRequest.name.to_s)

      # query parameters
      query_params = {}
      query_params[downcase_first_letter('Folder')] = postChangeDocumentProtectionRequest.folder unless postChangeDocumentProtectionRequest.folder.nil?
      query_params[downcase_first_letter('Storage')] = postChangeDocumentProtectionRequest.storage unless postChangeDocumentProtectionRequest.storage.nil?
      query_params[downcase_first_letter('LoadEncoding')] = postChangeDocumentProtectionRequest.load_encoding unless postChangeDocumentProtectionRequest.load_encoding.nil?
      query_params[downcase_first_letter('Password')] = postChangeDocumentProtectionRequest.password unless postChangeDocumentProtectionRequest.password.nil?
      query_params[downcase_first_letter('DestFileName')] = postChangeDocumentProtectionRequest.dest_file_name unless postChangeDocumentProtectionRequest.dest_file_name.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/xml', 'application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/xml', 'application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(postChangeDocumentProtectionRequest.protection_request)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'ProtectionDataResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WordsApi#post_change_document_protection\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Updates the comment, returns updated comment's data.
    # 
    # @param name The document name.
    # @param comment_index Comment index
    # @param comment Comment data.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder Original document folder.
    # @option opts [String] :storage File storage, which have to be used.
    # @option opts [String] :load_encoding Encoding that will be used to load an HTML (or TXT) document if the encoding is not specified in HTML.
    # @option opts [String] :password Password for opening an encrypted document.
    # @option opts [String] :dest_file_name Result name of the document after the operation. If this parameter is omitted then result of the operation will be saved as the source document.
    # @option opts [String] :revision_author Initials of the author to use for revisions.If you set this parameter and then make some changes to the document programmatically, save the document and later open the document in MS Word you will see these changes as revisions.
    # @option opts [String] :revision_date_time The date and time to use for revisions.
    # @return [CommentResponse]
    def post_comment(postCommentRequest)
      data, _status_code, _headers = post_comment_with_http_info(postCommentRequest)
      data
    end

    # Updates the comment, returns updated comment&#39;s data.
    # 
    # @param name The document name.
    # @param comment_index Comment index
    # @param comment Comment data.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder Original document folder.
    # @option opts [String] :storage File storage, which have to be used.
    # @option opts [String] :load_encoding Encoding that will be used to load an HTML (or TXT) document if the encoding is not specified in HTML.
    # @option opts [String] :password Password for opening an encrypted document.
    # @option opts [String] :dest_file_name Result name of the document after the operation. If this parameter is omitted then result of the operation will be saved as the source document.
    # @option opts [String] :revision_author Initials of the author to use for revisions.If you set this parameter and then make some changes to the document programmatically, save the document and later open the document in MS Word you will see these changes as revisions.
    # @option opts [String] :revision_date_time The date and time to use for revisions.
    # @return [Array<(CommentResponse, Fixnum, Hash)>] CommentResponse data, response status code and response headers
    def post_comment_with_http_info(postCommentRequest)
	  if !postCommentRequest.is_a? post_commentRequest
	    fail ArgumentError, "Incorrect request type"
	  end
	  
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WordsApi.post_comment ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && postCommentRequest.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling WordsApi.post_comment"
      end
      # verify the required parameter 'comment_index' is set
      if @api_client.config.client_side_validation && postCommentRequest.comment_index.nil?
        fail ArgumentError, "Missing the required parameter 'comment_index' when calling WordsApi.post_comment"
      end
      # verify the required parameter 'comment' is set
      if @api_client.config.client_side_validation && postCommentRequest.comment.nil?
        fail ArgumentError, "Missing the required parameter 'comment' when calling WordsApi.post_comment"
      end
      # resource path
      local_var_path = "/words/{name}/comments/{commentIndex}"
	  local_var_path.sub('{' + downcase_first_letter('Name') + '}', postCommentRequest.name.to_s)
	  local_var_path.sub('{' + downcase_first_letter('CommentIndex') + '}', postCommentRequest.comment_index.to_s)

      # query parameters
      query_params = {}
      query_params[downcase_first_letter('Folder')] = postCommentRequest.folder unless postCommentRequest.folder.nil?
      query_params[downcase_first_letter('Storage')] = postCommentRequest.storage unless postCommentRequest.storage.nil?
      query_params[downcase_first_letter('LoadEncoding')] = postCommentRequest.load_encoding unless postCommentRequest.load_encoding.nil?
      query_params[downcase_first_letter('Password')] = postCommentRequest.password unless postCommentRequest.password.nil?
      query_params[downcase_first_letter('DestFileName')] = postCommentRequest.dest_file_name unless postCommentRequest.dest_file_name.nil?
      query_params[downcase_first_letter('RevisionAuthor')] = postCommentRequest.revision_author unless postCommentRequest.revision_author.nil?
      query_params[downcase_first_letter('RevisionDateTime')] = postCommentRequest.revision_date_time unless postCommentRequest.revision_date_time.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/xml', 'application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/xml', 'application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(postCommentRequest.comment)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'CommentResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WordsApi#post_comment\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Compare document with original document.
    # 
    # @param name Original document name.
    # @param compare_data with a document to compare.            
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder Original document folder.
    # @option opts [String] :storage File storage, which have to be used.
    # @option opts [String] :load_encoding Encoding that will be used to load an HTML (or TXT) document if the encoding is not specified in HTML.
    # @option opts [String] :password Password for opening an encrypted document.
    # @option opts [String] :dest_file_name Result name of the document after the operation. If this parameter is omitted then result of the operation will be saved as the source document.
    # @return [DocumentResponse]
    def post_compare_document(postCompareDocumentRequest)
      data, _status_code, _headers = post_compare_document_with_http_info(postCompareDocumentRequest)
      data
    end

    # Compare document with original document.
    # 
    # @param name Original document name.
    # @param compare_data with a document to compare.            
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder Original document folder.
    # @option opts [String] :storage File storage, which have to be used.
    # @option opts [String] :load_encoding Encoding that will be used to load an HTML (or TXT) document if the encoding is not specified in HTML.
    # @option opts [String] :password Password for opening an encrypted document.
    # @option opts [String] :dest_file_name Result name of the document after the operation. If this parameter is omitted then result of the operation will be saved as the source document.
    # @return [Array<(DocumentResponse, Fixnum, Hash)>] DocumentResponse data, response status code and response headers
    def post_compare_document_with_http_info(postCompareDocumentRequest)
	  if !postCompareDocumentRequest.is_a? post_compare_documentRequest
	    fail ArgumentError, "Incorrect request type"
	  end
	  
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WordsApi.post_compare_document ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && postCompareDocumentRequest.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling WordsApi.post_compare_document"
      end
      # verify the required parameter 'compare_data' is set
      if @api_client.config.client_side_validation && postCompareDocumentRequest.compare_data.nil?
        fail ArgumentError, "Missing the required parameter 'compare_data' when calling WordsApi.post_compare_document"
      end
      # resource path
      local_var_path = "/words/{name}/compareDocument"
	  local_var_path.sub('{' + downcase_first_letter('Name') + '}', postCompareDocumentRequest.name.to_s)

      # query parameters
      query_params = {}
      query_params[downcase_first_letter('Folder')] = postCompareDocumentRequest.folder unless postCompareDocumentRequest.folder.nil?
      query_params[downcase_first_letter('Storage')] = postCompareDocumentRequest.storage unless postCompareDocumentRequest.storage.nil?
      query_params[downcase_first_letter('LoadEncoding')] = postCompareDocumentRequest.load_encoding unless postCompareDocumentRequest.load_encoding.nil?
      query_params[downcase_first_letter('Password')] = postCompareDocumentRequest.password unless postCompareDocumentRequest.password.nil?
      query_params[downcase_first_letter('DestFileName')] = postCompareDocumentRequest.dest_file_name unless postCompareDocumentRequest.dest_file_name.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/xml', 'application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/xml', 'application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(postCompareDocumentRequest.compare_data)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'DocumentResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WordsApi#post_compare_document\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Execute document mail merge operation.
    # 
    # @param name The document name.
    # @param with_regions With regions flag.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :data Mail merge data
    # @option opts [String] :folder Original document folder.
    # @option opts [String] :storage File storage, which have to be used.
    # @option opts [String] :load_encoding Encoding that will be used to load an HTML (or TXT) document if the encoding is not specified in HTML.
    # @option opts [String] :password Password for opening an encrypted document.
    # @option opts [String] :mail_merge_data_file Mail merge data.
    # @option opts [String] :cleanup Clean up options.
    # @option opts [BOOLEAN] :use_whole_paragraph_as_region Gets or sets a value indicating whether paragraph with TableStart or              TableEnd field should be fully included into mail merge region or particular range between TableStart and TableEnd fields.              The default value is true. (default to true)
    # @option opts [String] :dest_file_name Result name of the document after the operation. If this parameter is omitted then result of the operation will be saved with autogenerated name.
    # @return [DocumentResponse]
    def post_document_execute_mail_merge(postDocumentExecuteMailMergeRequest)
      data, _status_code, _headers = post_document_execute_mail_merge_with_http_info(postDocumentExecuteMailMergeRequest)
      data
    end

    # Execute document mail merge operation.
    # 
    # @param name The document name.
    # @param with_regions With regions flag.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :data Mail merge data
    # @option opts [String] :folder Original document folder.
    # @option opts [String] :storage File storage, which have to be used.
    # @option opts [String] :load_encoding Encoding that will be used to load an HTML (or TXT) document if the encoding is not specified in HTML.
    # @option opts [String] :password Password for opening an encrypted document.
    # @option opts [String] :mail_merge_data_file Mail merge data.
    # @option opts [String] :cleanup Clean up options.
    # @option opts [BOOLEAN] :use_whole_paragraph_as_region Gets or sets a value indicating whether paragraph with TableStart or              TableEnd field should be fully included into mail merge region or particular range between TableStart and TableEnd fields.              The default value is true.
    # @option opts [String] :dest_file_name Result name of the document after the operation. If this parameter is omitted then result of the operation will be saved with autogenerated name.
    # @return [Array<(DocumentResponse, Fixnum, Hash)>] DocumentResponse data, response status code and response headers
    def post_document_execute_mail_merge_with_http_info(postDocumentExecuteMailMergeRequest)
	  if !postDocumentExecuteMailMergeRequest.is_a? post_document_execute_mail_mergeRequest
	    fail ArgumentError, "Incorrect request type"
	  end
	  
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WordsApi.post_document_execute_mail_merge ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && postDocumentExecuteMailMergeRequest.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling WordsApi.post_document_execute_mail_merge"
      end
      # verify the required parameter 'with_regions' is set
      if @api_client.config.client_side_validation && postDocumentExecuteMailMergeRequest.with_regions.nil?
        fail ArgumentError, "Missing the required parameter 'with_regions' when calling WordsApi.post_document_execute_mail_merge"
      end
      # resource path
      local_var_path = "/words/{name}/executeMailMerge"
	  local_var_path.sub('{' + downcase_first_letter('Name') + '}', postDocumentExecuteMailMergeRequest.name.to_s)

      # query parameters
      query_params = {}
      query_params[downcase_first_letter('WithRegions')] = postDocumentExecuteMailMergeRequest.with_regions
      query_params[downcase_first_letter('Folder')] = postDocumentExecuteMailMergeRequest.folder unless postDocumentExecuteMailMergeRequest.folder.nil?
      query_params[downcase_first_letter('Storage')] = postDocumentExecuteMailMergeRequest.storage unless postDocumentExecuteMailMergeRequest.storage.nil?
      query_params[downcase_first_letter('LoadEncoding')] = postDocumentExecuteMailMergeRequest.load_encoding unless postDocumentExecuteMailMergeRequest.load_encoding.nil?
      query_params[downcase_first_letter('Password')] = postDocumentExecuteMailMergeRequest.password unless postDocumentExecuteMailMergeRequest.password.nil?
      query_params[downcase_first_letter('MailMergeDataFile')] = postDocumentExecuteMailMergeRequest.mail_merge_data_file unless postDocumentExecuteMailMergeRequest.mail_merge_data_file.nil?
      query_params[downcase_first_letter('Cleanup')] = postDocumentExecuteMailMergeRequest.cleanup unless postDocumentExecuteMailMergeRequest.cleanup.nil?
      query_params[downcase_first_letter('UseWholeParagraphAsRegion')] = postDocumentExecuteMailMergeRequest.use_whole_paragraph_as_region unless postDocumentExecuteMailMergeRequest.use_whole_paragraph_as_region.nil?
      query_params[downcase_first_letter('DestFileName')] = postDocumentExecuteMailMergeRequest.dest_file_name unless postDocumentExecuteMailMergeRequest.dest_file_name.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/xml', 'application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['multipart/form-data'])

      # form parameters
      form_params = {}
      form_params[downcase_first_letter('Data')] = postDocumentExecuteMailMergeRequest.data unless postDocumentExecuteMailMergeRequest.data.nil?

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'DocumentResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WordsApi#post_document_execute_mail_merge\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Updates font properties, returns updated font data.
    # 
    # @param name The document name.
    # @param font_dto Font dto object
    # @param paragraph_path Path to parent paragraph.
    # @param index Object&#39;s index
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder Original document folder.
    # @option opts [String] :storage File storage, which have to be used.
    # @option opts [String] :load_encoding Encoding that will be used to load an HTML (or TXT) document if the encoding is not specified in HTML.
    # @option opts [String] :password Password for opening an encrypted document.
    # @option opts [String] :dest_file_name Result name of the document after the operation. If this parameter is omitted then result of the operation will be saved as the source document.
    # @option opts [String] :revision_author Initials of the author to use for revisions.If you set this parameter and then make some changes to the document programmatically, save the document and later open the document in MS Word you will see these changes as revisions.
    # @option opts [String] :revision_date_time The date and time to use for revisions.
    # @return [FontResponse]
    def post_document_paragraph_run_font(postDocumentParagraphRunFontRequest)
      data, _status_code, _headers = post_document_paragraph_run_font_with_http_info(postDocumentParagraphRunFontRequest)
      data
    end

    # Updates font properties, returns updated font data.
    # 
    # @param name The document name.
    # @param font_dto Font dto object
    # @param paragraph_path Path to parent paragraph.
    # @param index Object&#39;s index
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder Original document folder.
    # @option opts [String] :storage File storage, which have to be used.
    # @option opts [String] :load_encoding Encoding that will be used to load an HTML (or TXT) document if the encoding is not specified in HTML.
    # @option opts [String] :password Password for opening an encrypted document.
    # @option opts [String] :dest_file_name Result name of the document after the operation. If this parameter is omitted then result of the operation will be saved as the source document.
    # @option opts [String] :revision_author Initials of the author to use for revisions.If you set this parameter and then make some changes to the document programmatically, save the document and later open the document in MS Word you will see these changes as revisions.
    # @option opts [String] :revision_date_time The date and time to use for revisions.
    # @return [Array<(FontResponse, Fixnum, Hash)>] FontResponse data, response status code and response headers
    def post_document_paragraph_run_font_with_http_info(postDocumentParagraphRunFontRequest)
	  if !postDocumentParagraphRunFontRequest.is_a? post_document_paragraph_run_fontRequest
	    fail ArgumentError, "Incorrect request type"
	  end
	  
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WordsApi.post_document_paragraph_run_font ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && postDocumentParagraphRunFontRequest.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling WordsApi.post_document_paragraph_run_font"
      end
      # verify the required parameter 'font_dto' is set
      if @api_client.config.client_side_validation && postDocumentParagraphRunFontRequest.font_dto.nil?
        fail ArgumentError, "Missing the required parameter 'font_dto' when calling WordsApi.post_document_paragraph_run_font"
      end
      # verify the required parameter 'paragraph_path' is set
      if @api_client.config.client_side_validation && postDocumentParagraphRunFontRequest.paragraph_path.nil?
        fail ArgumentError, "Missing the required parameter 'paragraph_path' when calling WordsApi.post_document_paragraph_run_font"
      end
      # verify the required parameter 'index' is set
      if @api_client.config.client_side_validation && postDocumentParagraphRunFontRequest.index.nil?
        fail ArgumentError, "Missing the required parameter 'index' when calling WordsApi.post_document_paragraph_run_font"
      end
      # resource path
      local_var_path = "/words/{name}/{paragraphPath}/runs/{index}/font"
	  local_var_path.sub('{' + downcase_first_letter('Name') + '}', postDocumentParagraphRunFontRequest.name.to_s)
	  local_var_path.sub('{' + downcase_first_letter('ParagraphPath') + '}', postDocumentParagraphRunFontRequest.paragraph_path.to_s)
	  local_var_path.sub('{' + downcase_first_letter('Index') + '}', postDocumentParagraphRunFontRequest.index.to_s)

      # query parameters
      query_params = {}
      query_params[downcase_first_letter('Folder')] = postDocumentParagraphRunFontRequest.folder unless postDocumentParagraphRunFontRequest.folder.nil?
      query_params[downcase_first_letter('Storage')] = postDocumentParagraphRunFontRequest.storage unless postDocumentParagraphRunFontRequest.storage.nil?
      query_params[downcase_first_letter('LoadEncoding')] = postDocumentParagraphRunFontRequest.load_encoding unless postDocumentParagraphRunFontRequest.load_encoding.nil?
      query_params[downcase_first_letter('Password')] = postDocumentParagraphRunFontRequest.password unless postDocumentParagraphRunFontRequest.password.nil?
      query_params[downcase_first_letter('DestFileName')] = postDocumentParagraphRunFontRequest.dest_file_name unless postDocumentParagraphRunFontRequest.dest_file_name.nil?
      query_params[downcase_first_letter('RevisionAuthor')] = postDocumentParagraphRunFontRequest.revision_author unless postDocumentParagraphRunFontRequest.revision_author.nil?
      query_params[downcase_first_letter('RevisionDateTime')] = postDocumentParagraphRunFontRequest.revision_date_time unless postDocumentParagraphRunFontRequest.revision_date_time.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/xml', 'application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/xml', 'application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(postDocumentParagraphRunFontRequest.font_dto)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'FontResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WordsApi#post_document_paragraph_run_font\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Convert document to destination format with detailed settings and save result to storage.
    # 
    # @param name The document name.
    # @param save_options_data Save options.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder Original document folder.
    # @option opts [String] :storage File storage, which have to be used.
    # @option opts [String] :load_encoding Encoding that will be used to load an HTML (or TXT) document if the encoding is not specified in HTML.
    # @option opts [String] :password Password for opening an encrypted document.
    # @option opts [String] :dest_file_name Result name of the document after the operation. If this parameter is omitted then result of the operation will be saved as the source document.
    # @option opts [String] :fonts_location Folder in filestorage with custom fonts.
    # @return [SaveResponse]
    def post_document_save_as(postDocumentSaveAsRequest)
      data, _status_code, _headers = post_document_save_as_with_http_info(postDocumentSaveAsRequest)
      data
    end

    # Convert document to destination format with detailed settings and save result to storage.
    # 
    # @param name The document name.
    # @param save_options_data Save options.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder Original document folder.
    # @option opts [String] :storage File storage, which have to be used.
    # @option opts [String] :load_encoding Encoding that will be used to load an HTML (or TXT) document if the encoding is not specified in HTML.
    # @option opts [String] :password Password for opening an encrypted document.
    # @option opts [String] :dest_file_name Result name of the document after the operation. If this parameter is omitted then result of the operation will be saved as the source document.
    # @option opts [String] :fonts_location Folder in filestorage with custom fonts.
    # @return [Array<(SaveResponse, Fixnum, Hash)>] SaveResponse data, response status code and response headers
    def post_document_save_as_with_http_info(postDocumentSaveAsRequest)
	  if !postDocumentSaveAsRequest.is_a? post_document_save_asRequest
	    fail ArgumentError, "Incorrect request type"
	  end
	  
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WordsApi.post_document_save_as ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && postDocumentSaveAsRequest.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling WordsApi.post_document_save_as"
      end
      # verify the required parameter 'save_options_data' is set
      if @api_client.config.client_side_validation && postDocumentSaveAsRequest.save_options_data.nil?
        fail ArgumentError, "Missing the required parameter 'save_options_data' when calling WordsApi.post_document_save_as"
      end
      # resource path
      local_var_path = "/words/{name}/saveAs"
	  local_var_path.sub('{' + downcase_first_letter('Name') + '}', postDocumentSaveAsRequest.name.to_s)

      # query parameters
      query_params = {}
      query_params[downcase_first_letter('Folder')] = postDocumentSaveAsRequest.folder unless postDocumentSaveAsRequest.folder.nil?
      query_params[downcase_first_letter('Storage')] = postDocumentSaveAsRequest.storage unless postDocumentSaveAsRequest.storage.nil?
      query_params[downcase_first_letter('LoadEncoding')] = postDocumentSaveAsRequest.load_encoding unless postDocumentSaveAsRequest.load_encoding.nil?
      query_params[downcase_first_letter('Password')] = postDocumentSaveAsRequest.password unless postDocumentSaveAsRequest.password.nil?
      query_params[downcase_first_letter('DestFileName')] = postDocumentSaveAsRequest.dest_file_name unless postDocumentSaveAsRequest.dest_file_name.nil?
      query_params[downcase_first_letter('FontsLocation')] = postDocumentSaveAsRequest.fonts_location unless postDocumentSaveAsRequest.fonts_location.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/xml', 'application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/xml', 'application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(postDocumentSaveAsRequest.save_options_data)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'SaveResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WordsApi#post_document_save_as\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Updates drawing object, returns updated  drawing object's data.
    # 
    # @param name The document name.
    # @param drawing_object Drawing object parameters
    # @param image_file File with image
    # @param index Object&#39;s index
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder Original document folder.
    # @option opts [String] :storage File storage, which have to be used.
    # @option opts [String] :load_encoding Encoding that will be used to load an HTML (or TXT) document if the encoding is not specified in HTML.
    # @option opts [String] :password Password for opening an encrypted document.
    # @option opts [String] :dest_file_name Result name of the document after the operation. If this parameter is omitted then result of the operation will be saved as the source document.
    # @option opts [String] :revision_author Initials of the author to use for revisions.If you set this parameter and then make some changes to the document programmatically, save the document and later open the document in MS Word you will see these changes as revisions.
    # @option opts [String] :revision_date_time The date and time to use for revisions.
    # @option opts [String] :node_path Path to node, which contains collection of drawing objects.
    # @return [DrawingObjectResponse]
    def post_drawing_object(postDrawingObjectRequest)
      data, _status_code, _headers = post_drawing_object_with_http_info(postDrawingObjectRequest)
      data
    end

    # Updates drawing object, returns updated  drawing object&#39;s data.
    # 
    # @param name The document name.
    # @param drawing_object Drawing object parameters
    # @param image_file File with image
    # @param index Object&#39;s index
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder Original document folder.
    # @option opts [String] :storage File storage, which have to be used.
    # @option opts [String] :load_encoding Encoding that will be used to load an HTML (or TXT) document if the encoding is not specified in HTML.
    # @option opts [String] :password Password for opening an encrypted document.
    # @option opts [String] :dest_file_name Result name of the document after the operation. If this parameter is omitted then result of the operation will be saved as the source document.
    # @option opts [String] :revision_author Initials of the author to use for revisions.If you set this parameter and then make some changes to the document programmatically, save the document and later open the document in MS Word you will see these changes as revisions.
    # @option opts [String] :revision_date_time The date and time to use for revisions.
    # @option opts [String] :node_path Path to node, which contains collection of drawing objects.
    # @return [Array<(DrawingObjectResponse, Fixnum, Hash)>] DrawingObjectResponse data, response status code and response headers
    def post_drawing_object_with_http_info(postDrawingObjectRequest)
	  if !postDrawingObjectRequest.is_a? post_drawing_objectRequest
	    fail ArgumentError, "Incorrect request type"
	  end
	  
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WordsApi.post_drawing_object ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && postDrawingObjectRequest.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling WordsApi.post_drawing_object"
      end
      # verify the required parameter 'drawing_object' is set
      if @api_client.config.client_side_validation && postDrawingObjectRequest.drawing_object.nil?
        fail ArgumentError, "Missing the required parameter 'drawing_object' when calling WordsApi.post_drawing_object"
      end
      # verify the required parameter 'image_file' is set
      if @api_client.config.client_side_validation && postDrawingObjectRequest.image_file.nil?
        fail ArgumentError, "Missing the required parameter 'image_file' when calling WordsApi.post_drawing_object"
      end
      # verify the required parameter 'index' is set
      if @api_client.config.client_side_validation && postDrawingObjectRequest.index.nil?
        fail ArgumentError, "Missing the required parameter 'index' when calling WordsApi.post_drawing_object"
      end
      # resource path
      local_var_path = "/words/{name}/{nodePath}/drawingObjects/{index}"
	  local_var_path.sub('{' + downcase_first_letter('Name') + '}', postDrawingObjectRequest.name.to_s)
	  local_var_path.sub('{' + downcase_first_letter('Index') + '}', postDrawingObjectRequest.index.to_s)

      # query parameters
      query_params = {}
      query_params[downcase_first_letter('Folder')] = postDrawingObjectRequest.folder unless postDrawingObjectRequest.folder.nil?
      query_params[downcase_first_letter('Storage')] = postDrawingObjectRequest.storage unless postDrawingObjectRequest.storage.nil?
      query_params[downcase_first_letter('LoadEncoding')] = postDrawingObjectRequest.load_encoding unless postDrawingObjectRequest.load_encoding.nil?
      query_params[downcase_first_letter('Password')] = postDrawingObjectRequest.password unless postDrawingObjectRequest.password.nil?
      query_params[downcase_first_letter('DestFileName')] = postDrawingObjectRequest.dest_file_name unless postDrawingObjectRequest.dest_file_name.nil?
      query_params[downcase_first_letter('RevisionAuthor')] = postDrawingObjectRequest.revision_author unless postDrawingObjectRequest.revision_author.nil?
      query_params[downcase_first_letter('RevisionDateTime')] = postDrawingObjectRequest.revision_date_time unless postDrawingObjectRequest.revision_date_time.nil?
      query_params[downcase_first_letter('NodePath')] = postDrawingObjectRequest.node_path unless postDrawingObjectRequest.node_path.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/xml', 'application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['multipart/form-data'])

      # form parameters
      form_params = {}
      form_params[downcase_first_letter('DrawingObject')] = postDrawingObjectRequest.drawing_object
      form_params[downcase_first_letter('ImageFile')] = postDrawingObjectRequest.image_file

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'DrawingObjectResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WordsApi#post_drawing_object\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Populate document template with data.
    # 
    # @param name The template document name.
    # @param data Mail merge data
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder Original document folder.
    # @option opts [String] :storage File storage, which have to be used.
    # @option opts [String] :load_encoding Encoding that will be used to load an HTML (or TXT) document if the encoding is not specified in HTML.
    # @option opts [String] :password Password for opening an encrypted document.
    # @option opts [String] :cleanup Clean up options.
    # @option opts [BOOLEAN] :use_whole_paragraph_as_region Gets or sets a value indicating whether paragraph with TableStart or  TableEnd field should be fully included into mail merge region or particular range between TableStart and TableEnd fields.   The default value is true. (default to true)
    # @option opts [BOOLEAN] :with_regions Merge with regions or not. True by default (default to true)
    # @option opts [String] :dest_file_name Result name of the document after the operation. If this parameter is omitted then result of the operation will be saved with autogenerated name.
    # @return [DocumentResponse]
    def post_execute_template(postExecuteTemplateRequest)
      data, _status_code, _headers = post_execute_template_with_http_info(postExecuteTemplateRequest)
      data
    end

    # Populate document template with data.
    # 
    # @param name The template document name.
    # @param data Mail merge data
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder Original document folder.
    # @option opts [String] :storage File storage, which have to be used.
    # @option opts [String] :load_encoding Encoding that will be used to load an HTML (or TXT) document if the encoding is not specified in HTML.
    # @option opts [String] :password Password for opening an encrypted document.
    # @option opts [String] :cleanup Clean up options.
    # @option opts [BOOLEAN] :use_whole_paragraph_as_region Gets or sets a value indicating whether paragraph with TableStart or  TableEnd field should be fully included into mail merge region or particular range between TableStart and TableEnd fields.   The default value is true.
    # @option opts [BOOLEAN] :with_regions Merge with regions or not. True by default
    # @option opts [String] :dest_file_name Result name of the document after the operation. If this parameter is omitted then result of the operation will be saved with autogenerated name.
    # @return [Array<(DocumentResponse, Fixnum, Hash)>] DocumentResponse data, response status code and response headers
    def post_execute_template_with_http_info(postExecuteTemplateRequest)
	  if !postExecuteTemplateRequest.is_a? post_execute_templateRequest
	    fail ArgumentError, "Incorrect request type"
	  end
	  
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WordsApi.post_execute_template ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && postExecuteTemplateRequest.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling WordsApi.post_execute_template"
      end
      # verify the required parameter 'data' is set
      if @api_client.config.client_side_validation && postExecuteTemplateRequest.data.nil?
        fail ArgumentError, "Missing the required parameter 'data' when calling WordsApi.post_execute_template"
      end
      # resource path
      local_var_path = "/words/{name}/executeTemplate"
	  local_var_path.sub('{' + downcase_first_letter('Name') + '}', postExecuteTemplateRequest.name.to_s)

      # query parameters
      query_params = {}
      query_params[downcase_first_letter('Folder')] = postExecuteTemplateRequest.folder unless postExecuteTemplateRequest.folder.nil?
      query_params[downcase_first_letter('Storage')] = postExecuteTemplateRequest.storage unless postExecuteTemplateRequest.storage.nil?
      query_params[downcase_first_letter('LoadEncoding')] = postExecuteTemplateRequest.load_encoding unless postExecuteTemplateRequest.load_encoding.nil?
      query_params[downcase_first_letter('Password')] = postExecuteTemplateRequest.password unless postExecuteTemplateRequest.password.nil?
      query_params[downcase_first_letter('Cleanup')] = postExecuteTemplateRequest.cleanup unless postExecuteTemplateRequest.cleanup.nil?
      query_params[downcase_first_letter('UseWholeParagraphAsRegion')] = postExecuteTemplateRequest.use_whole_paragraph_as_region unless postExecuteTemplateRequest.use_whole_paragraph_as_region.nil?
      query_params[downcase_first_letter('WithRegions')] = postExecuteTemplateRequest.with_regions unless postExecuteTemplateRequest.with_regions.nil?
      query_params[downcase_first_letter('DestFileName')] = postExecuteTemplateRequest.dest_file_name unless postExecuteTemplateRequest.dest_file_name.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/xml', 'application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['multipart/form-data'])

      # form parameters
      form_params = {}
      form_params[downcase_first_letter('Data')] = postExecuteTemplateRequest.data

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'DocumentResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WordsApi#post_execute_template\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Updates field's properties, returns updated field's data.
    # 
    # @param name The document name.
    # @param field Field data.
    # @param index Object&#39;s index
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder Original document folder.
    # @option opts [String] :storage File storage, which have to be used.
    # @option opts [String] :load_encoding Encoding that will be used to load an HTML (or TXT) document if the encoding is not specified in HTML.
    # @option opts [String] :password Password for opening an encrypted document.
    # @option opts [String] :dest_file_name Result name of the document after the operation. If this parameter is omitted then result of the operation will be saved as the source document.
    # @option opts [String] :revision_author Initials of the author to use for revisions.If you set this parameter and then make some changes to the document programmatically, save the document and later open the document in MS Word you will see these changes as revisions.
    # @option opts [String] :revision_date_time The date and time to use for revisions.
    # @option opts [String] :node_path Path to node, which contains collection of fields.
    # @return [FieldResponse]
    def post_field(postFieldRequest)
      data, _status_code, _headers = post_field_with_http_info(postFieldRequest)
      data
    end

    # Updates field&#39;s properties, returns updated field&#39;s data.
    # 
    # @param name The document name.
    # @param field Field data.
    # @param index Object&#39;s index
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder Original document folder.
    # @option opts [String] :storage File storage, which have to be used.
    # @option opts [String] :load_encoding Encoding that will be used to load an HTML (or TXT) document if the encoding is not specified in HTML.
    # @option opts [String] :password Password for opening an encrypted document.
    # @option opts [String] :dest_file_name Result name of the document after the operation. If this parameter is omitted then result of the operation will be saved as the source document.
    # @option opts [String] :revision_author Initials of the author to use for revisions.If you set this parameter and then make some changes to the document programmatically, save the document and later open the document in MS Word you will see these changes as revisions.
    # @option opts [String] :revision_date_time The date and time to use for revisions.
    # @option opts [String] :node_path Path to node, which contains collection of fields.
    # @return [Array<(FieldResponse, Fixnum, Hash)>] FieldResponse data, response status code and response headers
    def post_field_with_http_info(postFieldRequest)
	  if !postFieldRequest.is_a? post_fieldRequest
	    fail ArgumentError, "Incorrect request type"
	  end
	  
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WordsApi.post_field ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && postFieldRequest.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling WordsApi.post_field"
      end
      # verify the required parameter 'field' is set
      if @api_client.config.client_side_validation && postFieldRequest.field.nil?
        fail ArgumentError, "Missing the required parameter 'field' when calling WordsApi.post_field"
      end
      # verify the required parameter 'index' is set
      if @api_client.config.client_side_validation && postFieldRequest.index.nil?
        fail ArgumentError, "Missing the required parameter 'index' when calling WordsApi.post_field"
      end
      # resource path
      local_var_path = "/words/{name}/{nodePath}/fields/{index}"
	  local_var_path.sub('{' + downcase_first_letter('Name') + '}', postFieldRequest.name.to_s)
	  local_var_path.sub('{' + downcase_first_letter('Index') + '}', postFieldRequest.index.to_s)

      # query parameters
      query_params = {}
      query_params[downcase_first_letter('Folder')] = postFieldRequest.folder unless postFieldRequest.folder.nil?
      query_params[downcase_first_letter('Storage')] = postFieldRequest.storage unless postFieldRequest.storage.nil?
      query_params[downcase_first_letter('LoadEncoding')] = postFieldRequest.load_encoding unless postFieldRequest.load_encoding.nil?
      query_params[downcase_first_letter('Password')] = postFieldRequest.password unless postFieldRequest.password.nil?
      query_params[downcase_first_letter('DestFileName')] = postFieldRequest.dest_file_name unless postFieldRequest.dest_file_name.nil?
      query_params[downcase_first_letter('RevisionAuthor')] = postFieldRequest.revision_author unless postFieldRequest.revision_author.nil?
      query_params[downcase_first_letter('RevisionDateTime')] = postFieldRequest.revision_date_time unless postFieldRequest.revision_date_time.nil?
      query_params[downcase_first_letter('NodePath')] = postFieldRequest.node_path unless postFieldRequest.node_path.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/xml', 'application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/xml', 'application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(postFieldRequest.field)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'FieldResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WordsApi#post_field\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Updates footnote's properties, returns updated run's data.
    # 
    # @param name The document name.
    # @param footnote_dto Footnote data.
    # @param index Object&#39;s index
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder Original document folder.
    # @option opts [String] :storage File storage, which have to be used.
    # @option opts [String] :load_encoding Encoding that will be used to load an HTML (or TXT) document if the encoding is not specified in HTML.
    # @option opts [String] :password Password for opening an encrypted document.
    # @option opts [String] :dest_file_name Result name of the document after the operation. If this parameter is omitted then result of the operation will be saved as the source document.
    # @option opts [String] :revision_author Initials of the author to use for revisions.If you set this parameter and then make some changes to the document programmatically, save the document and later open the document in MS Word you will see these changes as revisions.
    # @option opts [String] :revision_date_time The date and time to use for revisions.
    # @option opts [String] :node_path Path to node, which contains collection of footnotes.
    # @return [FootnoteResponse]
    def post_footnote(postFootnoteRequest)
      data, _status_code, _headers = post_footnote_with_http_info(postFootnoteRequest)
      data
    end

    # Updates footnote&#39;s properties, returns updated run&#39;s data.
    # 
    # @param name The document name.
    # @param footnote_dto Footnote data.
    # @param index Object&#39;s index
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder Original document folder.
    # @option opts [String] :storage File storage, which have to be used.
    # @option opts [String] :load_encoding Encoding that will be used to load an HTML (or TXT) document if the encoding is not specified in HTML.
    # @option opts [String] :password Password for opening an encrypted document.
    # @option opts [String] :dest_file_name Result name of the document after the operation. If this parameter is omitted then result of the operation will be saved as the source document.
    # @option opts [String] :revision_author Initials of the author to use for revisions.If you set this parameter and then make some changes to the document programmatically, save the document and later open the document in MS Word you will see these changes as revisions.
    # @option opts [String] :revision_date_time The date and time to use for revisions.
    # @option opts [String] :node_path Path to node, which contains collection of footnotes.
    # @return [Array<(FootnoteResponse, Fixnum, Hash)>] FootnoteResponse data, response status code and response headers
    def post_footnote_with_http_info(postFootnoteRequest)
	  if !postFootnoteRequest.is_a? post_footnoteRequest
	    fail ArgumentError, "Incorrect request type"
	  end
	  
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WordsApi.post_footnote ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && postFootnoteRequest.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling WordsApi.post_footnote"
      end
      # verify the required parameter 'footnote_dto' is set
      if @api_client.config.client_side_validation && postFootnoteRequest.footnote_dto.nil?
        fail ArgumentError, "Missing the required parameter 'footnote_dto' when calling WordsApi.post_footnote"
      end
      # verify the required parameter 'index' is set
      if @api_client.config.client_side_validation && postFootnoteRequest.index.nil?
        fail ArgumentError, "Missing the required parameter 'index' when calling WordsApi.post_footnote"
      end
      # resource path
      local_var_path = "/words/{name}/{nodePath}/footnotes/{index}"
	  local_var_path.sub('{' + downcase_first_letter('Name') + '}', postFootnoteRequest.name.to_s)
	  local_var_path.sub('{' + downcase_first_letter('Index') + '}', postFootnoteRequest.index.to_s)

      # query parameters
      query_params = {}
      query_params[downcase_first_letter('Folder')] = postFootnoteRequest.folder unless postFootnoteRequest.folder.nil?
      query_params[downcase_first_letter('Storage')] = postFootnoteRequest.storage unless postFootnoteRequest.storage.nil?
      query_params[downcase_first_letter('LoadEncoding')] = postFootnoteRequest.load_encoding unless postFootnoteRequest.load_encoding.nil?
      query_params[downcase_first_letter('Password')] = postFootnoteRequest.password unless postFootnoteRequest.password.nil?
      query_params[downcase_first_letter('DestFileName')] = postFootnoteRequest.dest_file_name unless postFootnoteRequest.dest_file_name.nil?
      query_params[downcase_first_letter('RevisionAuthor')] = postFootnoteRequest.revision_author unless postFootnoteRequest.revision_author.nil?
      query_params[downcase_first_letter('RevisionDateTime')] = postFootnoteRequest.revision_date_time unless postFootnoteRequest.revision_date_time.nil?
      query_params[downcase_first_letter('NodePath')] = postFootnoteRequest.node_path unless postFootnoteRequest.node_path.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/xml', 'application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/xml', 'application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(postFootnoteRequest.footnote_dto)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'FootnoteResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WordsApi#post_footnote\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Updates properties of form field, returns updated form field.
    # 
    # @param name The document name.
    # @param form_field From field data.
    # @param index Object&#39;s index
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder Original document folder.
    # @option opts [String] :storage File storage, which have to be used.
    # @option opts [String] :load_encoding Encoding that will be used to load an HTML (or TXT) document if the encoding is not specified in HTML.
    # @option opts [String] :password Password for opening an encrypted document.
    # @option opts [String] :dest_file_name Result name of the document after the operation. If this parameter is omitted then result of the operation will be saved as the source document.
    # @option opts [String] :revision_author Initials of the author to use for revisions.If you set this parameter and then make some changes to the document programmatically, save the document and later open the document in MS Word you will see these changes as revisions.
    # @option opts [String] :revision_date_time The date and time to use for revisions.
    # @option opts [String] :node_path Path to node that contains collection of formfields.
    # @return [FormFieldResponse]
    def post_form_field(postFormFieldRequest)
      data, _status_code, _headers = post_form_field_with_http_info(postFormFieldRequest)
      data
    end

    # Updates properties of form field, returns updated form field.
    # 
    # @param name The document name.
    # @param form_field From field data.
    # @param index Object&#39;s index
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder Original document folder.
    # @option opts [String] :storage File storage, which have to be used.
    # @option opts [String] :load_encoding Encoding that will be used to load an HTML (or TXT) document if the encoding is not specified in HTML.
    # @option opts [String] :password Password for opening an encrypted document.
    # @option opts [String] :dest_file_name Result name of the document after the operation. If this parameter is omitted then result of the operation will be saved as the source document.
    # @option opts [String] :revision_author Initials of the author to use for revisions.If you set this parameter and then make some changes to the document programmatically, save the document and later open the document in MS Word you will see these changes as revisions.
    # @option opts [String] :revision_date_time The date and time to use for revisions.
    # @option opts [String] :node_path Path to node that contains collection of formfields.
    # @return [Array<(FormFieldResponse, Fixnum, Hash)>] FormFieldResponse data, response status code and response headers
    def post_form_field_with_http_info(postFormFieldRequest)
	  if !postFormFieldRequest.is_a? post_form_fieldRequest
	    fail ArgumentError, "Incorrect request type"
	  end
	  
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WordsApi.post_form_field ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && postFormFieldRequest.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling WordsApi.post_form_field"
      end
      # verify the required parameter 'form_field' is set
      if @api_client.config.client_side_validation && postFormFieldRequest.form_field.nil?
        fail ArgumentError, "Missing the required parameter 'form_field' when calling WordsApi.post_form_field"
      end
      # verify the required parameter 'index' is set
      if @api_client.config.client_side_validation && postFormFieldRequest.index.nil?
        fail ArgumentError, "Missing the required parameter 'index' when calling WordsApi.post_form_field"
      end
      # resource path
      local_var_path = "/words/{name}/{nodePath}/formfields/{index}"
	  local_var_path.sub('{' + downcase_first_letter('Name') + '}', postFormFieldRequest.name.to_s)
	  local_var_path.sub('{' + downcase_first_letter('Index') + '}', postFormFieldRequest.index.to_s)

      # query parameters
      query_params = {}
      query_params[downcase_first_letter('Folder')] = postFormFieldRequest.folder unless postFormFieldRequest.folder.nil?
      query_params[downcase_first_letter('Storage')] = postFormFieldRequest.storage unless postFormFieldRequest.storage.nil?
      query_params[downcase_first_letter('LoadEncoding')] = postFormFieldRequest.load_encoding unless postFormFieldRequest.load_encoding.nil?
      query_params[downcase_first_letter('Password')] = postFormFieldRequest.password unless postFormFieldRequest.password.nil?
      query_params[downcase_first_letter('DestFileName')] = postFormFieldRequest.dest_file_name unless postFormFieldRequest.dest_file_name.nil?
      query_params[downcase_first_letter('RevisionAuthor')] = postFormFieldRequest.revision_author unless postFormFieldRequest.revision_author.nil?
      query_params[downcase_first_letter('RevisionDateTime')] = postFormFieldRequest.revision_date_time unless postFormFieldRequest.revision_date_time.nil?
      query_params[downcase_first_letter('NodePath')] = postFormFieldRequest.node_path unless postFormFieldRequest.node_path.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/xml', 'application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/xml', 'application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(postFormFieldRequest.form_field)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'FormFieldResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WordsApi#post_form_field\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Insert document watermark image.
    # 
    # @param name The document name.
    # @param [Hash] opts the optional parameters
    # @option opts [File] :image_file File with image
    # @option opts [String] :folder Original document folder.
    # @option opts [String] :storage File storage, which have to be used.
    # @option opts [String] :load_encoding Encoding that will be used to load an HTML (or TXT) document if the encoding is not specified in HTML.
    # @option opts [String] :password Password for opening an encrypted document.
    # @option opts [String] :dest_file_name Result name of the document after the operation. If this parameter is omitted then result of the operation will be saved as the source document.
    # @option opts [String] :revision_author Initials of the author to use for revisions.If you set this parameter and then make some changes to the document programmatically, save the document and later open the document in MS Word you will see these changes as revisions.
    # @option opts [String] :revision_date_time The date and time to use for revisions.
    # @option opts [Float] :rotation_angle The watermark rotation angle. (default to 0.0)
    # @option opts [String] :image The image file server full name. If the name is empty the image is expected in request content.
    # @return [DocumentResponse]
    def post_insert_document_watermark_image(postInsertDocumentWatermarkImageRequest)
      data, _status_code, _headers = post_insert_document_watermark_image_with_http_info(postInsertDocumentWatermarkImageRequest)
      data
    end

    # Insert document watermark image.
    # 
    # @param name The document name.
    # @param [Hash] opts the optional parameters
    # @option opts [File] :image_file File with image
    # @option opts [String] :folder Original document folder.
    # @option opts [String] :storage File storage, which have to be used.
    # @option opts [String] :load_encoding Encoding that will be used to load an HTML (or TXT) document if the encoding is not specified in HTML.
    # @option opts [String] :password Password for opening an encrypted document.
    # @option opts [String] :dest_file_name Result name of the document after the operation. If this parameter is omitted then result of the operation will be saved as the source document.
    # @option opts [String] :revision_author Initials of the author to use for revisions.If you set this parameter and then make some changes to the document programmatically, save the document and later open the document in MS Word you will see these changes as revisions.
    # @option opts [String] :revision_date_time The date and time to use for revisions.
    # @option opts [Float] :rotation_angle The watermark rotation angle.
    # @option opts [String] :image The image file server full name. If the name is empty the image is expected in request content.
    # @return [Array<(DocumentResponse, Fixnum, Hash)>] DocumentResponse data, response status code and response headers
    def post_insert_document_watermark_image_with_http_info(postInsertDocumentWatermarkImageRequest)
	  if !postInsertDocumentWatermarkImageRequest.is_a? post_insert_document_watermark_imageRequest
	    fail ArgumentError, "Incorrect request type"
	  end
	  
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WordsApi.post_insert_document_watermark_image ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && postInsertDocumentWatermarkImageRequest.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling WordsApi.post_insert_document_watermark_image"
      end
      # resource path
      local_var_path = "/words/{name}/watermark/insertImage"
	  local_var_path.sub('{' + downcase_first_letter('Name') + '}', postInsertDocumentWatermarkImageRequest.name.to_s)

      # query parameters
      query_params = {}
      query_params[downcase_first_letter('Folder')] = postInsertDocumentWatermarkImageRequest.folder unless postInsertDocumentWatermarkImageRequest.folder.nil?
      query_params[downcase_first_letter('Storage')] = postInsertDocumentWatermarkImageRequest.storage unless postInsertDocumentWatermarkImageRequest.storage.nil?
      query_params[downcase_first_letter('LoadEncoding')] = postInsertDocumentWatermarkImageRequest.load_encoding unless postInsertDocumentWatermarkImageRequest.load_encoding.nil?
      query_params[downcase_first_letter('Password')] = postInsertDocumentWatermarkImageRequest.password unless postInsertDocumentWatermarkImageRequest.password.nil?
      query_params[downcase_first_letter('DestFileName')] = postInsertDocumentWatermarkImageRequest.dest_file_name unless postInsertDocumentWatermarkImageRequest.dest_file_name.nil?
      query_params[downcase_first_letter('RevisionAuthor')] = postInsertDocumentWatermarkImageRequest.revision_author unless postInsertDocumentWatermarkImageRequest.revision_author.nil?
      query_params[downcase_first_letter('RevisionDateTime')] = postInsertDocumentWatermarkImageRequest.revision_date_time unless postInsertDocumentWatermarkImageRequest.revision_date_time.nil?
      query_params[downcase_first_letter('RotationAngle')] = postInsertDocumentWatermarkImageRequest.rotation_angle unless postInsertDocumentWatermarkImageRequest.rotation_angle.nil?
      query_params[downcase_first_letter('Image')] = postInsertDocumentWatermarkImageRequest.image unless postInsertDocumentWatermarkImageRequest.image.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/xml', 'application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['multipart/form-data'])

      # form parameters
      form_params = {}
      form_params[downcase_first_letter('ImageFile')] = postInsertDocumentWatermarkImageRequest.image_file unless postInsertDocumentWatermarkImageRequest.image_file.nil?

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'DocumentResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WordsApi#post_insert_document_watermark_image\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Insert document watermark text.
    # 
    # @param name The document name.
    # @param watermark_text with the watermark data.            
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder Original document folder.
    # @option opts [String] :storage File storage, which have to be used.
    # @option opts [String] :load_encoding Encoding that will be used to load an HTML (or TXT) document if the encoding is not specified in HTML.
    # @option opts [String] :password Password for opening an encrypted document.
    # @option opts [String] :dest_file_name Result name of the document after the operation. If this parameter is omitted then result of the operation will be saved as the source document.
    # @option opts [String] :revision_author Initials of the author to use for revisions.If you set this parameter and then make some changes to the document programmatically, save the document and later open the document in MS Word you will see these changes as revisions.
    # @option opts [String] :revision_date_time The date and time to use for revisions.
    # @return [DocumentResponse]
    def post_insert_document_watermark_text(postInsertDocumentWatermarkTextRequest)
      data, _status_code, _headers = post_insert_document_watermark_text_with_http_info(postInsertDocumentWatermarkTextRequest)
      data
    end

    # Insert document watermark text.
    # 
    # @param name The document name.
    # @param watermark_text with the watermark data.            
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder Original document folder.
    # @option opts [String] :storage File storage, which have to be used.
    # @option opts [String] :load_encoding Encoding that will be used to load an HTML (or TXT) document if the encoding is not specified in HTML.
    # @option opts [String] :password Password for opening an encrypted document.
    # @option opts [String] :dest_file_name Result name of the document after the operation. If this parameter is omitted then result of the operation will be saved as the source document.
    # @option opts [String] :revision_author Initials of the author to use for revisions.If you set this parameter and then make some changes to the document programmatically, save the document and later open the document in MS Word you will see these changes as revisions.
    # @option opts [String] :revision_date_time The date and time to use for revisions.
    # @return [Array<(DocumentResponse, Fixnum, Hash)>] DocumentResponse data, response status code and response headers
    def post_insert_document_watermark_text_with_http_info(postInsertDocumentWatermarkTextRequest)
	  if !postInsertDocumentWatermarkTextRequest.is_a? post_insert_document_watermark_textRequest
	    fail ArgumentError, "Incorrect request type"
	  end
	  
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WordsApi.post_insert_document_watermark_text ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && postInsertDocumentWatermarkTextRequest.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling WordsApi.post_insert_document_watermark_text"
      end
      # verify the required parameter 'watermark_text' is set
      if @api_client.config.client_side_validation && postInsertDocumentWatermarkTextRequest.watermark_text.nil?
        fail ArgumentError, "Missing the required parameter 'watermark_text' when calling WordsApi.post_insert_document_watermark_text"
      end
      # resource path
      local_var_path = "/words/{name}/watermark/insertText"
	  local_var_path.sub('{' + downcase_first_letter('Name') + '}', postInsertDocumentWatermarkTextRequest.name.to_s)

      # query parameters
      query_params = {}
      query_params[downcase_first_letter('Folder')] = postInsertDocumentWatermarkTextRequest.folder unless postInsertDocumentWatermarkTextRequest.folder.nil?
      query_params[downcase_first_letter('Storage')] = postInsertDocumentWatermarkTextRequest.storage unless postInsertDocumentWatermarkTextRequest.storage.nil?
      query_params[downcase_first_letter('LoadEncoding')] = postInsertDocumentWatermarkTextRequest.load_encoding unless postInsertDocumentWatermarkTextRequest.load_encoding.nil?
      query_params[downcase_first_letter('Password')] = postInsertDocumentWatermarkTextRequest.password unless postInsertDocumentWatermarkTextRequest.password.nil?
      query_params[downcase_first_letter('DestFileName')] = postInsertDocumentWatermarkTextRequest.dest_file_name unless postInsertDocumentWatermarkTextRequest.dest_file_name.nil?
      query_params[downcase_first_letter('RevisionAuthor')] = postInsertDocumentWatermarkTextRequest.revision_author unless postInsertDocumentWatermarkTextRequest.revision_author.nil?
      query_params[downcase_first_letter('RevisionDateTime')] = postInsertDocumentWatermarkTextRequest.revision_date_time unless postInsertDocumentWatermarkTextRequest.revision_date_time.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/xml', 'application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/xml', 'application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(postInsertDocumentWatermarkTextRequest.watermark_text)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'DocumentResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WordsApi#post_insert_document_watermark_text\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Insert document page numbers.
    # 
    # @param name A document name.
    # @param page_number with the page numbers settings.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder Original document folder.
    # @option opts [String] :storage File storage, which have to be used.
    # @option opts [String] :load_encoding Encoding that will be used to load an HTML (or TXT) document if the encoding is not specified in HTML.
    # @option opts [String] :password Password for opening an encrypted document.
    # @option opts [String] :dest_file_name Result name of the document after the operation. If this parameter is omitted then result of the operation will be saved as the source document.
    # @option opts [String] :revision_author Initials of the author to use for revisions.If you set this parameter and then make some changes to the document programmatically, save the document and later open the document in MS Word you will see these changes as revisions.
    # @option opts [String] :revision_date_time The date and time to use for revisions.
    # @return [DocumentResponse]
    def post_insert_page_numbers(postInsertPageNumbersRequest)
      data, _status_code, _headers = post_insert_page_numbers_with_http_info(postInsertPageNumbersRequest)
      data
    end

    # Insert document page numbers.
    # 
    # @param name A document name.
    # @param page_number with the page numbers settings.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder Original document folder.
    # @option opts [String] :storage File storage, which have to be used.
    # @option opts [String] :load_encoding Encoding that will be used to load an HTML (or TXT) document if the encoding is not specified in HTML.
    # @option opts [String] :password Password for opening an encrypted document.
    # @option opts [String] :dest_file_name Result name of the document after the operation. If this parameter is omitted then result of the operation will be saved as the source document.
    # @option opts [String] :revision_author Initials of the author to use for revisions.If you set this parameter and then make some changes to the document programmatically, save the document and later open the document in MS Word you will see these changes as revisions.
    # @option opts [String] :revision_date_time The date and time to use for revisions.
    # @return [Array<(DocumentResponse, Fixnum, Hash)>] DocumentResponse data, response status code and response headers
    def post_insert_page_numbers_with_http_info(postInsertPageNumbersRequest)
	  if !postInsertPageNumbersRequest.is_a? post_insert_page_numbersRequest
	    fail ArgumentError, "Incorrect request type"
	  end
	  
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WordsApi.post_insert_page_numbers ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && postInsertPageNumbersRequest.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling WordsApi.post_insert_page_numbers"
      end
      # verify the required parameter 'page_number' is set
      if @api_client.config.client_side_validation && postInsertPageNumbersRequest.page_number.nil?
        fail ArgumentError, "Missing the required parameter 'page_number' when calling WordsApi.post_insert_page_numbers"
      end
      # resource path
      local_var_path = "/words/{name}/insertPageNumbers"
	  local_var_path.sub('{' + downcase_first_letter('Name') + '}', postInsertPageNumbersRequest.name.to_s)

      # query parameters
      query_params = {}
      query_params[downcase_first_letter('Folder')] = postInsertPageNumbersRequest.folder unless postInsertPageNumbersRequest.folder.nil?
      query_params[downcase_first_letter('Storage')] = postInsertPageNumbersRequest.storage unless postInsertPageNumbersRequest.storage.nil?
      query_params[downcase_first_letter('LoadEncoding')] = postInsertPageNumbersRequest.load_encoding unless postInsertPageNumbersRequest.load_encoding.nil?
      query_params[downcase_first_letter('Password')] = postInsertPageNumbersRequest.password unless postInsertPageNumbersRequest.password.nil?
      query_params[downcase_first_letter('DestFileName')] = postInsertPageNumbersRequest.dest_file_name unless postInsertPageNumbersRequest.dest_file_name.nil?
      query_params[downcase_first_letter('RevisionAuthor')] = postInsertPageNumbersRequest.revision_author unless postInsertPageNumbersRequest.revision_author.nil?
      query_params[downcase_first_letter('RevisionDateTime')] = postInsertPageNumbersRequest.revision_date_time unless postInsertPageNumbersRequest.revision_date_time.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/xml', 'application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/xml', 'application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(postInsertPageNumbersRequest.page_number)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'DocumentResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WordsApi#post_insert_page_numbers\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Loads new document from web into the file with any supported format of data.
    # 
    # @param data Parameters of loading.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :storage File storage, which have to be used.
    # @return [SaveResponse]
    def post_load_web_document(postLoadWebDocumentRequest)
      data, _status_code, _headers = post_load_web_document_with_http_info(postLoadWebDocumentRequest)
      data
    end

    # Loads new document from web into the file with any supported format of data.
    # 
    # @param data Parameters of loading.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :storage File storage, which have to be used.
    # @return [Array<(SaveResponse, Fixnum, Hash)>] SaveResponse data, response status code and response headers
    def post_load_web_document_with_http_info(postLoadWebDocumentRequest)
	  if !postLoadWebDocumentRequest.is_a? post_load_web_documentRequest
	    fail ArgumentError, "Incorrect request type"
	  end
	  
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WordsApi.post_load_web_document ..."
      end
      # verify the required parameter 'data' is set
      if @api_client.config.client_side_validation && postLoadWebDocumentRequest.data.nil?
        fail ArgumentError, "Missing the required parameter 'data' when calling WordsApi.post_load_web_document"
      end
      # resource path
      local_var_path = "/words/loadWebDocument"

      # query parameters
      query_params = {}
      query_params[downcase_first_letter('Storage')] = postLoadWebDocumentRequest.storage unless postLoadWebDocumentRequest.storage.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/xml', 'application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/xml', 'application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(postLoadWebDocumentRequest.data)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'SaveResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WordsApi#post_load_web_document\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Replace document text.
    # 
    # @param name The document name.
    # @param replace_text with the replace operation settings.            
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder Original document folder.
    # @option opts [String] :storage File storage, which have to be used.
    # @option opts [String] :load_encoding Encoding that will be used to load an HTML (or TXT) document if the encoding is not specified in HTML.
    # @option opts [String] :password Password for opening an encrypted document.
    # @option opts [String] :dest_file_name Result name of the document after the operation. If this parameter is omitted then result of the operation will be saved as the source document.
    # @option opts [String] :revision_author Initials of the author to use for revisions.If you set this parameter and then make some changes to the document programmatically, save the document and later open the document in MS Word you will see these changes as revisions.
    # @option opts [String] :revision_date_time The date and time to use for revisions.
    # @return [ReplaceTextResponse]
    def post_replace_text(postReplaceTextRequest)
      data, _status_code, _headers = post_replace_text_with_http_info(postReplaceTextRequest)
      data
    end

    # Replace document text.
    # 
    # @param name The document name.
    # @param replace_text with the replace operation settings.            
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder Original document folder.
    # @option opts [String] :storage File storage, which have to be used.
    # @option opts [String] :load_encoding Encoding that will be used to load an HTML (or TXT) document if the encoding is not specified in HTML.
    # @option opts [String] :password Password for opening an encrypted document.
    # @option opts [String] :dest_file_name Result name of the document after the operation. If this parameter is omitted then result of the operation will be saved as the source document.
    # @option opts [String] :revision_author Initials of the author to use for revisions.If you set this parameter and then make some changes to the document programmatically, save the document and later open the document in MS Word you will see these changes as revisions.
    # @option opts [String] :revision_date_time The date and time to use for revisions.
    # @return [Array<(ReplaceTextResponse, Fixnum, Hash)>] ReplaceTextResponse data, response status code and response headers
    def post_replace_text_with_http_info(postReplaceTextRequest)
	  if !postReplaceTextRequest.is_a? post_replace_textRequest
	    fail ArgumentError, "Incorrect request type"
	  end
	  
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WordsApi.post_replace_text ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && postReplaceTextRequest.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling WordsApi.post_replace_text"
      end
      # verify the required parameter 'replace_text' is set
      if @api_client.config.client_side_validation && postReplaceTextRequest.replace_text.nil?
        fail ArgumentError, "Missing the required parameter 'replace_text' when calling WordsApi.post_replace_text"
      end
      # resource path
      local_var_path = "/words/{name}/replaceText"
	  local_var_path.sub('{' + downcase_first_letter('Name') + '}', postReplaceTextRequest.name.to_s)

      # query parameters
      query_params = {}
      query_params[downcase_first_letter('Folder')] = postReplaceTextRequest.folder unless postReplaceTextRequest.folder.nil?
      query_params[downcase_first_letter('Storage')] = postReplaceTextRequest.storage unless postReplaceTextRequest.storage.nil?
      query_params[downcase_first_letter('LoadEncoding')] = postReplaceTextRequest.load_encoding unless postReplaceTextRequest.load_encoding.nil?
      query_params[downcase_first_letter('Password')] = postReplaceTextRequest.password unless postReplaceTextRequest.password.nil?
      query_params[downcase_first_letter('DestFileName')] = postReplaceTextRequest.dest_file_name unless postReplaceTextRequest.dest_file_name.nil?
      query_params[downcase_first_letter('RevisionAuthor')] = postReplaceTextRequest.revision_author unless postReplaceTextRequest.revision_author.nil?
      query_params[downcase_first_letter('RevisionDateTime')] = postReplaceTextRequest.revision_date_time unless postReplaceTextRequest.revision_date_time.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/xml', 'application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/xml', 'application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(postReplaceTextRequest.replace_text)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'ReplaceTextResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WordsApi#post_replace_text\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Updates run's properties, returns updated run's data.
    # 
    # @param name The document name.
    # @param run Run data.
    # @param paragraph_path Path to parent paragraph.
    # @param index Object&#39;s index
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder Original document folder.
    # @option opts [String] :storage File storage, which have to be used.
    # @option opts [String] :load_encoding Encoding that will be used to load an HTML (or TXT) document if the encoding is not specified in HTML.
    # @option opts [String] :password Password for opening an encrypted document.
    # @option opts [String] :dest_file_name Result name of the document after the operation. If this parameter is omitted then result of the operation will be saved as the source document.
    # @option opts [String] :revision_author Initials of the author to use for revisions.If you set this parameter and then make some changes to the document programmatically, save the document and later open the document in MS Word you will see these changes as revisions.
    # @option opts [String] :revision_date_time The date and time to use for revisions.
    # @return [RunResponse]
    def post_run(postRunRequest)
      data, _status_code, _headers = post_run_with_http_info(postRunRequest)
      data
    end

    # Updates run&#39;s properties, returns updated run&#39;s data.
    # 
    # @param name The document name.
    # @param run Run data.
    # @param paragraph_path Path to parent paragraph.
    # @param index Object&#39;s index
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder Original document folder.
    # @option opts [String] :storage File storage, which have to be used.
    # @option opts [String] :load_encoding Encoding that will be used to load an HTML (or TXT) document if the encoding is not specified in HTML.
    # @option opts [String] :password Password for opening an encrypted document.
    # @option opts [String] :dest_file_name Result name of the document after the operation. If this parameter is omitted then result of the operation will be saved as the source document.
    # @option opts [String] :revision_author Initials of the author to use for revisions.If you set this parameter and then make some changes to the document programmatically, save the document and later open the document in MS Word you will see these changes as revisions.
    # @option opts [String] :revision_date_time The date and time to use for revisions.
    # @return [Array<(RunResponse, Fixnum, Hash)>] RunResponse data, response status code and response headers
    def post_run_with_http_info(postRunRequest)
	  if !postRunRequest.is_a? post_runRequest
	    fail ArgumentError, "Incorrect request type"
	  end
	  
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WordsApi.post_run ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && postRunRequest.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling WordsApi.post_run"
      end
      # verify the required parameter 'run' is set
      if @api_client.config.client_side_validation && postRunRequest.run.nil?
        fail ArgumentError, "Missing the required parameter 'run' when calling WordsApi.post_run"
      end
      # verify the required parameter 'paragraph_path' is set
      if @api_client.config.client_side_validation && postRunRequest.paragraph_path.nil?
        fail ArgumentError, "Missing the required parameter 'paragraph_path' when calling WordsApi.post_run"
      end
      # verify the required parameter 'index' is set
      if @api_client.config.client_side_validation && postRunRequest.index.nil?
        fail ArgumentError, "Missing the required parameter 'index' when calling WordsApi.post_run"
      end
      # resource path
      local_var_path = "/words/{name}/{paragraphPath}/runs/{index}"
	  local_var_path.sub('{' + downcase_first_letter('Name') + '}', postRunRequest.name.to_s)
	  local_var_path.sub('{' + downcase_first_letter('ParagraphPath') + '}', postRunRequest.paragraph_path.to_s)
	  local_var_path.sub('{' + downcase_first_letter('Index') + '}', postRunRequest.index.to_s)

      # query parameters
      query_params = {}
      query_params[downcase_first_letter('Folder')] = postRunRequest.folder unless postRunRequest.folder.nil?
      query_params[downcase_first_letter('Storage')] = postRunRequest.storage unless postRunRequest.storage.nil?
      query_params[downcase_first_letter('LoadEncoding')] = postRunRequest.load_encoding unless postRunRequest.load_encoding.nil?
      query_params[downcase_first_letter('Password')] = postRunRequest.password unless postRunRequest.password.nil?
      query_params[downcase_first_letter('DestFileName')] = postRunRequest.dest_file_name unless postRunRequest.dest_file_name.nil?
      query_params[downcase_first_letter('RevisionAuthor')] = postRunRequest.revision_author unless postRunRequest.revision_author.nil?
      query_params[downcase_first_letter('RevisionDateTime')] = postRunRequest.revision_date_time unless postRunRequest.revision_date_time.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/xml', 'application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/xml', 'application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(postRunRequest.run)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'RunResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WordsApi#post_run\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Split document.
    # 
    # @param name Original document name.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder Original document folder.
    # @option opts [String] :storage File storage, which have to be used.
    # @option opts [String] :load_encoding Encoding that will be used to load an HTML (or TXT) document if the encoding is not specified in HTML.
    # @option opts [String] :password Password for opening an encrypted document.
    # @option opts [String] :dest_file_name Result name of the document after the operation. If this parameter is omitted then result of the operation will be saved as the source document.
    # @option opts [String] :format Format to split.
    # @option opts [Integer] :from Start page.
    # @option opts [Integer] :to End page.
    # @option opts [BOOLEAN] :zip_output ZipOutput or not. (default to false)
    # @option opts [String] :fonts_location Folder in filestorage with custom fonts.
    # @return [SplitDocumentResponse]
    def post_split_document(postSplitDocumentRequest)
      data, _status_code, _headers = post_split_document_with_http_info(postSplitDocumentRequest)
      data
    end

    # Split document.
    # 
    # @param name Original document name.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder Original document folder.
    # @option opts [String] :storage File storage, which have to be used.
    # @option opts [String] :load_encoding Encoding that will be used to load an HTML (or TXT) document if the encoding is not specified in HTML.
    # @option opts [String] :password Password for opening an encrypted document.
    # @option opts [String] :dest_file_name Result name of the document after the operation. If this parameter is omitted then result of the operation will be saved as the source document.
    # @option opts [String] :format Format to split.
    # @option opts [Integer] :from Start page.
    # @option opts [Integer] :to End page.
    # @option opts [BOOLEAN] :zip_output ZipOutput or not.
    # @option opts [String] :fonts_location Folder in filestorage with custom fonts.
    # @return [Array<(SplitDocumentResponse, Fixnum, Hash)>] SplitDocumentResponse data, response status code and response headers
    def post_split_document_with_http_info(postSplitDocumentRequest)
	  if !postSplitDocumentRequest.is_a? post_split_documentRequest
	    fail ArgumentError, "Incorrect request type"
	  end
	  
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WordsApi.post_split_document ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && postSplitDocumentRequest.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling WordsApi.post_split_document"
      end
      # resource path
      local_var_path = "/words/{name}/split"
	  local_var_path.sub('{' + downcase_first_letter('Name') + '}', postSplitDocumentRequest.name.to_s)

      # query parameters
      query_params = {}
      query_params[downcase_first_letter('Folder')] = postSplitDocumentRequest.folder unless postSplitDocumentRequest.folder.nil?
      query_params[downcase_first_letter('Storage')] = postSplitDocumentRequest.storage unless postSplitDocumentRequest.storage.nil?
      query_params[downcase_first_letter('LoadEncoding')] = postSplitDocumentRequest.load_encoding unless postSplitDocumentRequest.load_encoding.nil?
      query_params[downcase_first_letter('Password')] = postSplitDocumentRequest.password unless postSplitDocumentRequest.password.nil?
      query_params[downcase_first_letter('DestFileName')] = postSplitDocumentRequest.dest_file_name unless postSplitDocumentRequest.dest_file_name.nil?
      query_params[downcase_first_letter('Format')] = postSplitDocumentRequest.format unless postSplitDocumentRequest.format.nil?
      query_params[downcase_first_letter('From')] = postSplitDocumentRequest.from unless postSplitDocumentRequest.from.nil?
      query_params[downcase_first_letter('To')] = postSplitDocumentRequest.to unless postSplitDocumentRequest.to.nil?
      query_params[downcase_first_letter('ZipOutput')] = postSplitDocumentRequest.zip_output unless postSplitDocumentRequest.zip_output.nil?
      query_params[downcase_first_letter('FontsLocation')] = postSplitDocumentRequest.fonts_location unless postSplitDocumentRequest.fonts_location.nil?

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
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'SplitDocumentResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WordsApi#post_split_document\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update document bookmark.
    # 
    # @param name The document name.
    # @param bookmark_data with new bookmark data.            
    # @param bookmark_name The bookmark name.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder Original document folder.
    # @option opts [String] :storage File storage, which have to be used.
    # @option opts [String] :load_encoding Encoding that will be used to load an HTML (or TXT) document if the encoding is not specified in HTML.
    # @option opts [String] :password Password for opening an encrypted document.
    # @option opts [String] :dest_file_name Result name of the document after the operation. If this parameter is omitted then result of the operation will be saved as the source document.
    # @option opts [String] :revision_author Initials of the author to use for revisions.If you set this parameter and then make some changes to the document programmatically, save the document and later open the document in MS Word you will see these changes as revisions.
    # @option opts [String] :revision_date_time The date and time to use for revisions.
    # @return [BookmarkResponse]
    def post_update_document_bookmark(postUpdateDocumentBookmarkRequest)
      data, _status_code, _headers = post_update_document_bookmark_with_http_info(postUpdateDocumentBookmarkRequest)
      data
    end

    # Update document bookmark.
    # 
    # @param name The document name.
    # @param bookmark_data with new bookmark data.            
    # @param bookmark_name The bookmark name.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder Original document folder.
    # @option opts [String] :storage File storage, which have to be used.
    # @option opts [String] :load_encoding Encoding that will be used to load an HTML (or TXT) document if the encoding is not specified in HTML.
    # @option opts [String] :password Password for opening an encrypted document.
    # @option opts [String] :dest_file_name Result name of the document after the operation. If this parameter is omitted then result of the operation will be saved as the source document.
    # @option opts [String] :revision_author Initials of the author to use for revisions.If you set this parameter and then make some changes to the document programmatically, save the document and later open the document in MS Word you will see these changes as revisions.
    # @option opts [String] :revision_date_time The date and time to use for revisions.
    # @return [Array<(BookmarkResponse, Fixnum, Hash)>] BookmarkResponse data, response status code and response headers
    def post_update_document_bookmark_with_http_info(postUpdateDocumentBookmarkRequest)
	  if !postUpdateDocumentBookmarkRequest.is_a? post_update_document_bookmarkRequest
	    fail ArgumentError, "Incorrect request type"
	  end
	  
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WordsApi.post_update_document_bookmark ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && postUpdateDocumentBookmarkRequest.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling WordsApi.post_update_document_bookmark"
      end
      # verify the required parameter 'bookmark_data' is set
      if @api_client.config.client_side_validation && postUpdateDocumentBookmarkRequest.bookmark_data.nil?
        fail ArgumentError, "Missing the required parameter 'bookmark_data' when calling WordsApi.post_update_document_bookmark"
      end
      # verify the required parameter 'bookmark_name' is set
      if @api_client.config.client_side_validation && postUpdateDocumentBookmarkRequest.bookmark_name.nil?
        fail ArgumentError, "Missing the required parameter 'bookmark_name' when calling WordsApi.post_update_document_bookmark"
      end
      # resource path
      local_var_path = "/words/{name}/bookmarks/{bookmarkName}"
	  local_var_path.sub('{' + downcase_first_letter('Name') + '}', postUpdateDocumentBookmarkRequest.name.to_s)
	  local_var_path.sub('{' + downcase_first_letter('BookmarkName') + '}', postUpdateDocumentBookmarkRequest.bookmark_name.to_s)

      # query parameters
      query_params = {}
      query_params[downcase_first_letter('Folder')] = postUpdateDocumentBookmarkRequest.folder unless postUpdateDocumentBookmarkRequest.folder.nil?
      query_params[downcase_first_letter('Storage')] = postUpdateDocumentBookmarkRequest.storage unless postUpdateDocumentBookmarkRequest.storage.nil?
      query_params[downcase_first_letter('LoadEncoding')] = postUpdateDocumentBookmarkRequest.load_encoding unless postUpdateDocumentBookmarkRequest.load_encoding.nil?
      query_params[downcase_first_letter('Password')] = postUpdateDocumentBookmarkRequest.password unless postUpdateDocumentBookmarkRequest.password.nil?
      query_params[downcase_first_letter('DestFileName')] = postUpdateDocumentBookmarkRequest.dest_file_name unless postUpdateDocumentBookmarkRequest.dest_file_name.nil?
      query_params[downcase_first_letter('RevisionAuthor')] = postUpdateDocumentBookmarkRequest.revision_author unless postUpdateDocumentBookmarkRequest.revision_author.nil?
      query_params[downcase_first_letter('RevisionDateTime')] = postUpdateDocumentBookmarkRequest.revision_date_time unless postUpdateDocumentBookmarkRequest.revision_date_time.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/xml', 'application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/xml', 'application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(postUpdateDocumentBookmarkRequest.bookmark_data)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'BookmarkResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WordsApi#post_update_document_bookmark\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update (reevaluate) fields in document.
    # 
    # @param name The document name.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder Original document folder.
    # @option opts [String] :storage File storage, which have to be used.
    # @option opts [String] :load_encoding Encoding that will be used to load an HTML (or TXT) document if the encoding is not specified in HTML.
    # @option opts [String] :password Password for opening an encrypted document.
    # @option opts [String] :dest_file_name Result name of the document after the operation. If this parameter is omitted then result of the operation will be saved as the source document.
    # @return [DocumentResponse]
    def post_update_document_fields(postUpdateDocumentFieldsRequest)
      data, _status_code, _headers = post_update_document_fields_with_http_info(postUpdateDocumentFieldsRequest)
      data
    end

    # Update (reevaluate) fields in document.
    # 
    # @param name The document name.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder Original document folder.
    # @option opts [String] :storage File storage, which have to be used.
    # @option opts [String] :load_encoding Encoding that will be used to load an HTML (or TXT) document if the encoding is not specified in HTML.
    # @option opts [String] :password Password for opening an encrypted document.
    # @option opts [String] :dest_file_name Result name of the document after the operation. If this parameter is omitted then result of the operation will be saved as the source document.
    # @return [Array<(DocumentResponse, Fixnum, Hash)>] DocumentResponse data, response status code and response headers
    def post_update_document_fields_with_http_info(postUpdateDocumentFieldsRequest)
	  if !postUpdateDocumentFieldsRequest.is_a? post_update_document_fieldsRequest
	    fail ArgumentError, "Incorrect request type"
	  end
	  
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WordsApi.post_update_document_fields ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && postUpdateDocumentFieldsRequest.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling WordsApi.post_update_document_fields"
      end
      # resource path
      local_var_path = "/words/{name}/updateFields"
	  local_var_path.sub('{' + downcase_first_letter('Name') + '}', postUpdateDocumentFieldsRequest.name.to_s)

      # query parameters
      query_params = {}
      query_params[downcase_first_letter('Folder')] = postUpdateDocumentFieldsRequest.folder unless postUpdateDocumentFieldsRequest.folder.nil?
      query_params[downcase_first_letter('Storage')] = postUpdateDocumentFieldsRequest.storage unless postUpdateDocumentFieldsRequest.storage.nil?
      query_params[downcase_first_letter('LoadEncoding')] = postUpdateDocumentFieldsRequest.load_encoding unless postUpdateDocumentFieldsRequest.load_encoding.nil?
      query_params[downcase_first_letter('Password')] = postUpdateDocumentFieldsRequest.password unless postUpdateDocumentFieldsRequest.password.nil?
      query_params[downcase_first_letter('DestFileName')] = postUpdateDocumentFieldsRequest.dest_file_name unless postUpdateDocumentFieldsRequest.dest_file_name.nil?

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
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'DocumentResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WordsApi#post_update_document_fields\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Adds comment to document, returns inserted comment's data.
    # 
    # @param name The document name.
    # @param comment Comment data.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder Original document folder.
    # @option opts [String] :storage File storage, which have to be used.
    # @option opts [String] :load_encoding Encoding that will be used to load an HTML (or TXT) document if the encoding is not specified in HTML.
    # @option opts [String] :password Password for opening an encrypted document.
    # @option opts [String] :dest_file_name Result name of the document after the operation. If this parameter is omitted then result of the operation will be saved as the source document.
    # @option opts [String] :revision_author Initials of the author to use for revisions.If you set this parameter and then make some changes to the document programmatically, save the document and later open the document in MS Word you will see these changes as revisions.
    # @option opts [String] :revision_date_time The date and time to use for revisions.
    # @return [CommentResponse]
    def put_comment(putCommentRequest)
      data, _status_code, _headers = put_comment_with_http_info(putCommentRequest)
      data
    end

    # Adds comment to document, returns inserted comment&#39;s data.
    # 
    # @param name The document name.
    # @param comment Comment data.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder Original document folder.
    # @option opts [String] :storage File storage, which have to be used.
    # @option opts [String] :load_encoding Encoding that will be used to load an HTML (or TXT) document if the encoding is not specified in HTML.
    # @option opts [String] :password Password for opening an encrypted document.
    # @option opts [String] :dest_file_name Result name of the document after the operation. If this parameter is omitted then result of the operation will be saved as the source document.
    # @option opts [String] :revision_author Initials of the author to use for revisions.If you set this parameter and then make some changes to the document programmatically, save the document and later open the document in MS Word you will see these changes as revisions.
    # @option opts [String] :revision_date_time The date and time to use for revisions.
    # @return [Array<(CommentResponse, Fixnum, Hash)>] CommentResponse data, response status code and response headers
    def put_comment_with_http_info(putCommentRequest)
	  if !putCommentRequest.is_a? put_commentRequest
	    fail ArgumentError, "Incorrect request type"
	  end
	  
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WordsApi.put_comment ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && putCommentRequest.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling WordsApi.put_comment"
      end
      # verify the required parameter 'comment' is set
      if @api_client.config.client_side_validation && putCommentRequest.comment.nil?
        fail ArgumentError, "Missing the required parameter 'comment' when calling WordsApi.put_comment"
      end
      # resource path
      local_var_path = "/words/{name}/comments"
	  local_var_path.sub('{' + downcase_first_letter('Name') + '}', putCommentRequest.name.to_s)

      # query parameters
      query_params = {}
      query_params[downcase_first_letter('Folder')] = putCommentRequest.folder unless putCommentRequest.folder.nil?
      query_params[downcase_first_letter('Storage')] = putCommentRequest.storage unless putCommentRequest.storage.nil?
      query_params[downcase_first_letter('LoadEncoding')] = putCommentRequest.load_encoding unless putCommentRequest.load_encoding.nil?
      query_params[downcase_first_letter('Password')] = putCommentRequest.password unless putCommentRequest.password.nil?
      query_params[downcase_first_letter('DestFileName')] = putCommentRequest.dest_file_name unless putCommentRequest.dest_file_name.nil?
      query_params[downcase_first_letter('RevisionAuthor')] = putCommentRequest.revision_author unless putCommentRequest.revision_author.nil?
      query_params[downcase_first_letter('RevisionDateTime')] = putCommentRequest.revision_date_time unless putCommentRequest.revision_date_time.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/xml', 'application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/xml', 'application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(putCommentRequest.comment)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'CommentResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WordsApi#put_comment\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Convert document from request content to format specified.
    # 
    # @param document Converting document
    # @param format Format to convert.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :storage File storage, which have to be used.
    # @option opts [String] :out_path Path for saving operation result to the local storage.
    # @option opts [String] :fonts_location Folder in filestorage with custom fonts.
    # @return [File]
    def put_convert_document(putConvertDocumentRequest)
      data, _status_code, _headers = put_convert_document_with_http_info(putConvertDocumentRequest)
      data
    end

    # Convert document from request content to format specified.
    # 
    # @param document Converting document
    # @param format Format to convert.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :storage File storage, which have to be used.
    # @option opts [String] :out_path Path for saving operation result to the local storage.
    # @option opts [String] :fonts_location Folder in filestorage with custom fonts.
    # @return [Array<(File, Fixnum, Hash)>] File data, response status code and response headers
    def put_convert_document_with_http_info(putConvertDocumentRequest)
	  if !putConvertDocumentRequest.is_a? put_convert_documentRequest
	    fail ArgumentError, "Incorrect request type"
	  end
	  
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WordsApi.put_convert_document ..."
      end
      # verify the required parameter 'document' is set
      if @api_client.config.client_side_validation && putConvertDocumentRequest.document.nil?
        fail ArgumentError, "Missing the required parameter 'document' when calling WordsApi.put_convert_document"
      end
      # verify the required parameter 'format' is set
      if @api_client.config.client_side_validation && putConvertDocumentRequest.format.nil?
        fail ArgumentError, "Missing the required parameter 'format' when calling WordsApi.put_convert_document"
      end
      # resource path
      local_var_path = "/words/convert"

      # query parameters
      query_params = {}
      query_params[downcase_first_letter('Format')] = putConvertDocumentRequest.format
      query_params[downcase_first_letter('Storage')] = putConvertDocumentRequest.storage unless putConvertDocumentRequest.storage.nil?
      query_params[downcase_first_letter('OutPath')] = putConvertDocumentRequest.out_path unless putConvertDocumentRequest.out_path.nil?
      query_params[downcase_first_letter('FontsLocation')] = putConvertDocumentRequest.fonts_location unless putConvertDocumentRequest.fonts_location.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/xml', 'application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['multipart/form-data'])

      # form parameters
      form_params = {}
      form_params[downcase_first_letter('Document')] = putConvertDocumentRequest.document

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'File')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WordsApi#put_convert_document\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Creates new document. Document is created with format which is recognized from file extensions.  Supported extentions: \".doc\", \".docx\", \".docm\", \".dot\", \".dotm\", \".dotx\", \".flatopc\", \".fopc\", \".flatopc_macro\", \".fopc_macro\", \".flatopc_template\", \".fopc_template\", \".flatopc_template_macro\", \".fopc_template_macro\", \".wordml\", \".wml\", \".rtf\"
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :storage File storage, which have to be used.
    # @option opts [String] :file_name The file name.
    # @option opts [String] :folder The document folder.
    # @return [DocumentResponse]
    def put_create_document(putCreateDocumentRequest)
      data, _status_code, _headers = put_create_document_with_http_info(putCreateDocumentRequest)
      data
    end

    # Creates new document. Document is created with format which is recognized from file extensions.  Supported extentions: \&quot;.doc\&quot;, \&quot;.docx\&quot;, \&quot;.docm\&quot;, \&quot;.dot\&quot;, \&quot;.dotm\&quot;, \&quot;.dotx\&quot;, \&quot;.flatopc\&quot;, \&quot;.fopc\&quot;, \&quot;.flatopc_macro\&quot;, \&quot;.fopc_macro\&quot;, \&quot;.flatopc_template\&quot;, \&quot;.fopc_template\&quot;, \&quot;.flatopc_template_macro\&quot;, \&quot;.fopc_template_macro\&quot;, \&quot;.wordml\&quot;, \&quot;.wml\&quot;, \&quot;.rtf\&quot;
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :storage File storage, which have to be used.
    # @option opts [String] :file_name The file name.
    # @option opts [String] :folder The document folder.
    # @return [Array<(DocumentResponse, Fixnum, Hash)>] DocumentResponse data, response status code and response headers
    def put_create_document_with_http_info(putCreateDocumentRequest)
	  if !putCreateDocumentRequest.is_a? put_create_documentRequest
	    fail ArgumentError, "Incorrect request type"
	  end
	  
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WordsApi.put_create_document ..."
      end
      # resource path
      local_var_path = "/words/create"

      # query parameters
      query_params = {}
      query_params[downcase_first_letter('Storage')] = putCreateDocumentRequest.storage unless putCreateDocumentRequest.storage.nil?
      query_params[downcase_first_letter('FileName')] = putCreateDocumentRequest.file_name unless putCreateDocumentRequest.file_name.nil?
      query_params[downcase_first_letter('Folder')] = putCreateDocumentRequest.folder unless putCreateDocumentRequest.folder.nil?

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
      auth_names = []
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'DocumentResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WordsApi#put_create_document\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Read document field names.
    # 
    # @param template File with template
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :use_non_merge_fields Use non merge fields or not. (default to false)
    # @return [FieldNamesResponse]
    def put_document_field_names(putDocumentFieldNamesRequest)
      data, _status_code, _headers = put_document_field_names_with_http_info(putDocumentFieldNamesRequest)
      data
    end

    # Read document field names.
    # 
    # @param template File with template
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :use_non_merge_fields Use non merge fields or not.
    # @return [Array<(FieldNamesResponse, Fixnum, Hash)>] FieldNamesResponse data, response status code and response headers
    def put_document_field_names_with_http_info(putDocumentFieldNamesRequest)
	  if !putDocumentFieldNamesRequest.is_a? put_document_field_namesRequest
	    fail ArgumentError, "Incorrect request type"
	  end
	  
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WordsApi.put_document_field_names ..."
      end
      # verify the required parameter 'template' is set
      if @api_client.config.client_side_validation && putDocumentFieldNamesRequest.template.nil?
        fail ArgumentError, "Missing the required parameter 'template' when calling WordsApi.put_document_field_names"
      end
      # resource path
      local_var_path = "/words/mailMergeFieldNames"

      # query parameters
      query_params = {}
      query_params[downcase_first_letter('UseNonMergeFields')] = putDocumentFieldNamesRequest.use_non_merge_fields unless putDocumentFieldNamesRequest.use_non_merge_fields.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/xml', 'application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['multipart/form-data'])

      # form parameters
      form_params = {}
      form_params[downcase_first_letter('Template')] = putDocumentFieldNamesRequest.template

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'FieldNamesResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WordsApi#put_document_field_names\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Convert document to tiff with detailed settings and save result to storage.
    # 
    # @param name The document name.
    # @param save_options Tiff save options.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder Original document folder.
    # @option opts [String] :storage File storage, which have to be used.
    # @option opts [String] :load_encoding Encoding that will be used to load an HTML (or TXT) document if the encoding is not specified in HTML.
    # @option opts [String] :password Password for opening an encrypted document.
    # @option opts [String] :dest_file_name Result name of the document after the operation. If this parameter is omitted then result of the operation will be saved as the source document.
    # @option opts [String] :result_file The resulting file name.
    # @option opts [BOOLEAN] :use_anti_aliasing Use antialiasing flag.
    # @option opts [BOOLEAN] :use_high_quality_rendering Use high quality flag.
    # @option opts [Float] :image_brightness Brightness for the generated images.
    # @option opts [String] :image_color_mode Color mode for the generated images.
    # @option opts [Float] :image_contrast The contrast for the generated images.
    # @option opts [String] :numeral_format The images numeral format.
    # @option opts [Integer] :page_count Number of pages to render.
    # @option opts [Integer] :page_index Page index to start rendering.
    # @option opts [String] :paper_color Background image color.
    # @option opts [String] :pixel_format The pixel format of generated images.
    # @option opts [Float] :resolution The resolution of generated images.
    # @option opts [Float] :scale Zoom factor for generated images.
    # @option opts [String] :tiff_compression The compression tipe.
    # @option opts [String] :dml_rendering_mode Optional, default is Fallback.
    # @option opts [String] :dml_effects_rendering_mode Optional, default is Simplified.
    # @option opts [String] :tiff_binarization_method Optional, Tiff binarization method, possible values are: FloydSteinbergDithering, Threshold.
    # @option opts [BOOLEAN] :zip_output Optional. A value determining zip output or not.
    # @option opts [String] :fonts_location Folder in filestorage with custom fonts.
    # @return [SaveResponse]
    def put_document_save_as_tiff(putDocumentSaveAsTiffRequest)
      data, _status_code, _headers = put_document_save_as_tiff_with_http_info(putDocumentSaveAsTiffRequest)
      data
    end

    # Convert document to tiff with detailed settings and save result to storage.
    # 
    # @param name The document name.
    # @param save_options Tiff save options.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder Original document folder.
    # @option opts [String] :storage File storage, which have to be used.
    # @option opts [String] :load_encoding Encoding that will be used to load an HTML (or TXT) document if the encoding is not specified in HTML.
    # @option opts [String] :password Password for opening an encrypted document.
    # @option opts [String] :dest_file_name Result name of the document after the operation. If this parameter is omitted then result of the operation will be saved as the source document.
    # @option opts [String] :result_file The resulting file name.
    # @option opts [BOOLEAN] :use_anti_aliasing Use antialiasing flag.
    # @option opts [BOOLEAN] :use_high_quality_rendering Use high quality flag.
    # @option opts [Float] :image_brightness Brightness for the generated images.
    # @option opts [String] :image_color_mode Color mode for the generated images.
    # @option opts [Float] :image_contrast The contrast for the generated images.
    # @option opts [String] :numeral_format The images numeral format.
    # @option opts [Integer] :page_count Number of pages to render.
    # @option opts [Integer] :page_index Page index to start rendering.
    # @option opts [String] :paper_color Background image color.
    # @option opts [String] :pixel_format The pixel format of generated images.
    # @option opts [Float] :resolution The resolution of generated images.
    # @option opts [Float] :scale Zoom factor for generated images.
    # @option opts [String] :tiff_compression The compression tipe.
    # @option opts [String] :dml_rendering_mode Optional, default is Fallback.
    # @option opts [String] :dml_effects_rendering_mode Optional, default is Simplified.
    # @option opts [String] :tiff_binarization_method Optional, Tiff binarization method, possible values are: FloydSteinbergDithering, Threshold.
    # @option opts [BOOLEAN] :zip_output Optional. A value determining zip output or not.
    # @option opts [String] :fonts_location Folder in filestorage with custom fonts.
    # @return [Array<(SaveResponse, Fixnum, Hash)>] SaveResponse data, response status code and response headers
    def put_document_save_as_tiff_with_http_info(putDocumentSaveAsTiffRequest)
	  if !putDocumentSaveAsTiffRequest.is_a? put_document_save_as_tiffRequest
	    fail ArgumentError, "Incorrect request type"
	  end
	  
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WordsApi.put_document_save_as_tiff ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && putDocumentSaveAsTiffRequest.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling WordsApi.put_document_save_as_tiff"
      end
      # verify the required parameter 'save_options' is set
      if @api_client.config.client_side_validation && putDocumentSaveAsTiffRequest.save_options.nil?
        fail ArgumentError, "Missing the required parameter 'save_options' when calling WordsApi.put_document_save_as_tiff"
      end
      # resource path
      local_var_path = "/words/{name}/saveAs/tiff"
	  local_var_path.sub('{' + downcase_first_letter('Name') + '}', putDocumentSaveAsTiffRequest.name.to_s)

      # query parameters
      query_params = {}
      query_params[downcase_first_letter('Folder')] = putDocumentSaveAsTiffRequest.folder unless putDocumentSaveAsTiffRequest.folder.nil?
      query_params[downcase_first_letter('Storage')] = putDocumentSaveAsTiffRequest.storage unless putDocumentSaveAsTiffRequest.storage.nil?
      query_params[downcase_first_letter('LoadEncoding')] = putDocumentSaveAsTiffRequest.load_encoding unless putDocumentSaveAsTiffRequest.load_encoding.nil?
      query_params[downcase_first_letter('Password')] = putDocumentSaveAsTiffRequest.password unless putDocumentSaveAsTiffRequest.password.nil?
      query_params[downcase_first_letter('DestFileName')] = putDocumentSaveAsTiffRequest.dest_file_name unless putDocumentSaveAsTiffRequest.dest_file_name.nil?
      query_params[downcase_first_letter('ResultFile')] = putDocumentSaveAsTiffRequest.result_file unless putDocumentSaveAsTiffRequest.result_file.nil?
      query_params[downcase_first_letter('UseAntiAliasing')] = putDocumentSaveAsTiffRequest.use_anti_aliasing unless putDocumentSaveAsTiffRequest.use_anti_aliasing.nil?
      query_params[downcase_first_letter('UseHighQualityRendering')] = putDocumentSaveAsTiffRequest.use_high_quality_rendering unless putDocumentSaveAsTiffRequest.use_high_quality_rendering.nil?
      query_params[downcase_first_letter('ImageBrightness')] = putDocumentSaveAsTiffRequest.image_brightness unless putDocumentSaveAsTiffRequest.image_brightness.nil?
      query_params[downcase_first_letter('ImageColorMode')] = putDocumentSaveAsTiffRequest.image_color_mode unless putDocumentSaveAsTiffRequest.image_color_mode.nil?
      query_params[downcase_first_letter('ImageContrast')] = putDocumentSaveAsTiffRequest.image_contrast unless putDocumentSaveAsTiffRequest.image_contrast.nil?
      query_params[downcase_first_letter('NumeralFormat')] = putDocumentSaveAsTiffRequest.numeral_format unless putDocumentSaveAsTiffRequest.numeral_format.nil?
      query_params[downcase_first_letter('PageCount')] = putDocumentSaveAsTiffRequest.page_count unless putDocumentSaveAsTiffRequest.page_count.nil?
      query_params[downcase_first_letter('PageIndex')] = putDocumentSaveAsTiffRequest.page_index unless putDocumentSaveAsTiffRequest.page_index.nil?
      query_params[downcase_first_letter('PaperColor')] = putDocumentSaveAsTiffRequest.paper_color unless putDocumentSaveAsTiffRequest.paper_color.nil?
      query_params[downcase_first_letter('PixelFormat')] = putDocumentSaveAsTiffRequest.pixel_format unless putDocumentSaveAsTiffRequest.pixel_format.nil?
      query_params[downcase_first_letter('Resolution')] = putDocumentSaveAsTiffRequest.resolution unless putDocumentSaveAsTiffRequest.resolution.nil?
      query_params[downcase_first_letter('Scale')] = putDocumentSaveAsTiffRequest.scale unless putDocumentSaveAsTiffRequest.scale.nil?
      query_params[downcase_first_letter('TiffCompression')] = putDocumentSaveAsTiffRequest.tiff_compression unless putDocumentSaveAsTiffRequest.tiff_compression.nil?
      query_params[downcase_first_letter('DmlRenderingMode')] = putDocumentSaveAsTiffRequest.dml_rendering_mode unless putDocumentSaveAsTiffRequest.dml_rendering_mode.nil?
      query_params[downcase_first_letter('DmlEffectsRenderingMode')] = putDocumentSaveAsTiffRequest.dml_effects_rendering_mode unless putDocumentSaveAsTiffRequest.dml_effects_rendering_mode.nil?
      query_params[downcase_first_letter('TiffBinarizationMethod')] = putDocumentSaveAsTiffRequest.tiff_binarization_method unless putDocumentSaveAsTiffRequest.tiff_binarization_method.nil?
      query_params[downcase_first_letter('ZipOutput')] = putDocumentSaveAsTiffRequest.zip_output unless putDocumentSaveAsTiffRequest.zip_output.nil?
      query_params[downcase_first_letter('FontsLocation')] = putDocumentSaveAsTiffRequest.fonts_location unless putDocumentSaveAsTiffRequest.fonts_location.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/xml', 'application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/xml', 'application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(putDocumentSaveAsTiffRequest.save_options)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'SaveResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WordsApi#put_document_save_as_tiff\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Adds  drawing object to document, returns added  drawing object's data.
    # 
    # @param name The document name.
    # @param drawing_object Drawing object parameters
    # @param image_file File with image
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder Original document folder.
    # @option opts [String] :storage File storage, which have to be used.
    # @option opts [String] :load_encoding Encoding that will be used to load an HTML (or TXT) document if the encoding is not specified in HTML.
    # @option opts [String] :password Password for opening an encrypted document.
    # @option opts [String] :dest_file_name Result name of the document after the operation. If this parameter is omitted then result of the operation will be saved as the source document.
    # @option opts [String] :revision_author Initials of the author to use for revisions.If you set this parameter and then make some changes to the document programmatically, save the document and later open the document in MS Word you will see these changes as revisions.
    # @option opts [String] :revision_date_time The date and time to use for revisions.
    # @option opts [String] :node_path Path to node, which contains collection of drawing objects.
    # @return [DrawingObjectResponse]
    def put_drawing_object(putDrawingObjectRequest)
      data, _status_code, _headers = put_drawing_object_with_http_info(putDrawingObjectRequest)
      data
    end

    # Adds  drawing object to document, returns added  drawing object&#39;s data.
    # 
    # @param name The document name.
    # @param drawing_object Drawing object parameters
    # @param image_file File with image
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder Original document folder.
    # @option opts [String] :storage File storage, which have to be used.
    # @option opts [String] :load_encoding Encoding that will be used to load an HTML (or TXT) document if the encoding is not specified in HTML.
    # @option opts [String] :password Password for opening an encrypted document.
    # @option opts [String] :dest_file_name Result name of the document after the operation. If this parameter is omitted then result of the operation will be saved as the source document.
    # @option opts [String] :revision_author Initials of the author to use for revisions.If you set this parameter and then make some changes to the document programmatically, save the document and later open the document in MS Word you will see these changes as revisions.
    # @option opts [String] :revision_date_time The date and time to use for revisions.
    # @option opts [String] :node_path Path to node, which contains collection of drawing objects.
    # @return [Array<(DrawingObjectResponse, Fixnum, Hash)>] DrawingObjectResponse data, response status code and response headers
    def put_drawing_object_with_http_info(putDrawingObjectRequest)
	  if !putDrawingObjectRequest.is_a? put_drawing_objectRequest
	    fail ArgumentError, "Incorrect request type"
	  end
	  
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WordsApi.put_drawing_object ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && putDrawingObjectRequest.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling WordsApi.put_drawing_object"
      end
      # verify the required parameter 'drawing_object' is set
      if @api_client.config.client_side_validation && putDrawingObjectRequest.drawing_object.nil?
        fail ArgumentError, "Missing the required parameter 'drawing_object' when calling WordsApi.put_drawing_object"
      end
      # verify the required parameter 'image_file' is set
      if @api_client.config.client_side_validation && putDrawingObjectRequest.image_file.nil?
        fail ArgumentError, "Missing the required parameter 'image_file' when calling WordsApi.put_drawing_object"
      end
      # resource path
      local_var_path = "/words/{name}/{nodePath}/drawingObjects"
	  local_var_path.sub('{' + downcase_first_letter('Name') + '}', putDrawingObjectRequest.name.to_s)

      # query parameters
      query_params = {}
      query_params[downcase_first_letter('Folder')] = putDrawingObjectRequest.folder unless putDrawingObjectRequest.folder.nil?
      query_params[downcase_first_letter('Storage')] = putDrawingObjectRequest.storage unless putDrawingObjectRequest.storage.nil?
      query_params[downcase_first_letter('LoadEncoding')] = putDrawingObjectRequest.load_encoding unless putDrawingObjectRequest.load_encoding.nil?
      query_params[downcase_first_letter('Password')] = putDrawingObjectRequest.password unless putDrawingObjectRequest.password.nil?
      query_params[downcase_first_letter('DestFileName')] = putDrawingObjectRequest.dest_file_name unless putDrawingObjectRequest.dest_file_name.nil?
      query_params[downcase_first_letter('RevisionAuthor')] = putDrawingObjectRequest.revision_author unless putDrawingObjectRequest.revision_author.nil?
      query_params[downcase_first_letter('RevisionDateTime')] = putDrawingObjectRequest.revision_date_time unless putDrawingObjectRequest.revision_date_time.nil?
      query_params[downcase_first_letter('NodePath')] = putDrawingObjectRequest.node_path unless putDrawingObjectRequest.node_path.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/xml', 'application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['multipart/form-data'])

      # form parameters
      form_params = {}
      form_params[downcase_first_letter('DrawingObject')] = putDrawingObjectRequest.drawing_object
      form_params[downcase_first_letter('ImageFile')] = putDrawingObjectRequest.image_file

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'DrawingObjectResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WordsApi#put_drawing_object\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Execute document mail merge online.
    # 
    # @param template File with template
    # @param data File with mailmerge data
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :with_regions With regions flag.
    # @option opts [String] :cleanup Clean up options.
    # @return [File]
    def put_execute_mail_merge_online(putExecuteMailMergeOnlineRequest)
      data, _status_code, _headers = put_execute_mail_merge_online_with_http_info(putExecuteMailMergeOnlineRequest)
      data
    end

    # Execute document mail merge online.
    # 
    # @param template File with template
    # @param data File with mailmerge data
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :with_regions With regions flag.
    # @option opts [String] :cleanup Clean up options.
    # @return [Array<(File, Fixnum, Hash)>] File data, response status code and response headers
    def put_execute_mail_merge_online_with_http_info(putExecuteMailMergeOnlineRequest)
	  if !putExecuteMailMergeOnlineRequest.is_a? put_execute_mail_merge_onlineRequest
	    fail ArgumentError, "Incorrect request type"
	  end
	  
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WordsApi.put_execute_mail_merge_online ..."
      end
      # verify the required parameter 'template' is set
      if @api_client.config.client_side_validation && putExecuteMailMergeOnlineRequest.template.nil?
        fail ArgumentError, "Missing the required parameter 'template' when calling WordsApi.put_execute_mail_merge_online"
      end
      # verify the required parameter 'data' is set
      if @api_client.config.client_side_validation && putExecuteMailMergeOnlineRequest.data.nil?
        fail ArgumentError, "Missing the required parameter 'data' when calling WordsApi.put_execute_mail_merge_online"
      end
      # resource path
      local_var_path = "/words/executeMailMerge"

      # query parameters
      query_params = {}
      query_params[downcase_first_letter('WithRegions')] = putExecuteMailMergeOnlineRequest.with_regions unless putExecuteMailMergeOnlineRequest.with_regions.nil?
      query_params[downcase_first_letter('Cleanup')] = putExecuteMailMergeOnlineRequest.cleanup unless putExecuteMailMergeOnlineRequest.cleanup.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/xml', 'application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['multipart/form-data'])

      # form parameters
      form_params = {}
      form_params[downcase_first_letter('Template')] = putExecuteMailMergeOnlineRequest.template
      form_params[downcase_first_letter('Data')] = putExecuteMailMergeOnlineRequest.data

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'File')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WordsApi#put_execute_mail_merge_online\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Populate document template with data online.
    # 
    # @param template File with template
    # @param data File with mailmerge data
    # @param [Hash] opts the optional parameters
    # @option opts [String] :cleanup Clean up options.
    # @option opts [BOOLEAN] :use_whole_paragraph_as_region Gets or sets a value indicating whether paragraph with TableStart or              TableEnd field should be fully included into mail merge region or particular range between TableStart and TableEnd fields.              The default value is true. (default to true)
    # @option opts [BOOLEAN] :with_regions Merge with regions or not. True by default (default to true)
    # @return [File]
    def put_execute_template_online(putExecuteTemplateOnlineRequest)
      data, _status_code, _headers = put_execute_template_online_with_http_info(putExecuteTemplateOnlineRequest)
      data
    end

    # Populate document template with data online.
    # 
    # @param template File with template
    # @param data File with mailmerge data
    # @param [Hash] opts the optional parameters
    # @option opts [String] :cleanup Clean up options.
    # @option opts [BOOLEAN] :use_whole_paragraph_as_region Gets or sets a value indicating whether paragraph with TableStart or              TableEnd field should be fully included into mail merge region or particular range between TableStart and TableEnd fields.              The default value is true.
    # @option opts [BOOLEAN] :with_regions Merge with regions or not. True by default
    # @return [Array<(File, Fixnum, Hash)>] File data, response status code and response headers
    def put_execute_template_online_with_http_info(putExecuteTemplateOnlineRequest)
	  if !putExecuteTemplateOnlineRequest.is_a? put_execute_template_onlineRequest
	    fail ArgumentError, "Incorrect request type"
	  end
	  
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WordsApi.put_execute_template_online ..."
      end
      # verify the required parameter 'template' is set
      if @api_client.config.client_side_validation && putExecuteTemplateOnlineRequest.template.nil?
        fail ArgumentError, "Missing the required parameter 'template' when calling WordsApi.put_execute_template_online"
      end
      # verify the required parameter 'data' is set
      if @api_client.config.client_side_validation && putExecuteTemplateOnlineRequest.data.nil?
        fail ArgumentError, "Missing the required parameter 'data' when calling WordsApi.put_execute_template_online"
      end
      # resource path
      local_var_path = "/words/executeTemplate"

      # query parameters
      query_params = {}
      query_params[downcase_first_letter('Cleanup')] = putExecuteTemplateOnlineRequest.cleanup unless putExecuteTemplateOnlineRequest.cleanup.nil?
      query_params[downcase_first_letter('UseWholeParagraphAsRegion')] = putExecuteTemplateOnlineRequest.use_whole_paragraph_as_region unless putExecuteTemplateOnlineRequest.use_whole_paragraph_as_region.nil?
      query_params[downcase_first_letter('WithRegions')] = putExecuteTemplateOnlineRequest.with_regions unless putExecuteTemplateOnlineRequest.with_regions.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/xml', 'application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['multipart/form-data'])

      # form parameters
      form_params = {}
      form_params[downcase_first_letter('Template')] = putExecuteTemplateOnlineRequest.template
      form_params[downcase_first_letter('Data')] = putExecuteTemplateOnlineRequest.data

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'File')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WordsApi#put_execute_template_online\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Adds field to document, returns inserted field's data.
    # 
    # @param name The document name.
    # @param field Field data.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder Original document folder.
    # @option opts [String] :storage File storage, which have to be used.
    # @option opts [String] :load_encoding Encoding that will be used to load an HTML (or TXT) document if the encoding is not specified in HTML.
    # @option opts [String] :password Password for opening an encrypted document.
    # @option opts [String] :dest_file_name Result name of the document after the operation. If this parameter is omitted then result of the operation will be saved as the source document.
    # @option opts [String] :revision_author Initials of the author to use for revisions.If you set this parameter and then make some changes to the document programmatically, save the document and later open the document in MS Word you will see these changes as revisions.
    # @option opts [String] :revision_date_time The date and time to use for revisions.
    # @option opts [String] :node_path Path to node, which contains collection of fields.
    # @option opts [String] :insert_before_node Field will be inserted before node with id&#x3D;\&quot;nodeId\&quot;.
    # @return [FieldResponse]
    def put_field(putFieldRequest)
      data, _status_code, _headers = put_field_with_http_info(putFieldRequest)
      data
    end

    # Adds field to document, returns inserted field&#39;s data.
    # 
    # @param name The document name.
    # @param field Field data.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder Original document folder.
    # @option opts [String] :storage File storage, which have to be used.
    # @option opts [String] :load_encoding Encoding that will be used to load an HTML (or TXT) document if the encoding is not specified in HTML.
    # @option opts [String] :password Password for opening an encrypted document.
    # @option opts [String] :dest_file_name Result name of the document after the operation. If this parameter is omitted then result of the operation will be saved as the source document.
    # @option opts [String] :revision_author Initials of the author to use for revisions.If you set this parameter and then make some changes to the document programmatically, save the document and later open the document in MS Word you will see these changes as revisions.
    # @option opts [String] :revision_date_time The date and time to use for revisions.
    # @option opts [String] :node_path Path to node, which contains collection of fields.
    # @option opts [String] :insert_before_node Field will be inserted before node with id&#x3D;\&quot;nodeId\&quot;.
    # @return [Array<(FieldResponse, Fixnum, Hash)>] FieldResponse data, response status code and response headers
    def put_field_with_http_info(putFieldRequest)
	  if !putFieldRequest.is_a? put_fieldRequest
	    fail ArgumentError, "Incorrect request type"
	  end
	  
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WordsApi.put_field ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && putFieldRequest.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling WordsApi.put_field"
      end
      # verify the required parameter 'field' is set
      if @api_client.config.client_side_validation && putFieldRequest.field.nil?
        fail ArgumentError, "Missing the required parameter 'field' when calling WordsApi.put_field"
      end
      # resource path
      local_var_path = "/words/{name}/{nodePath}/fields"
	  local_var_path.sub('{' + downcase_first_letter('Name') + '}', putFieldRequest.name.to_s)

      # query parameters
      query_params = {}
      query_params[downcase_first_letter('Folder')] = putFieldRequest.folder unless putFieldRequest.folder.nil?
      query_params[downcase_first_letter('Storage')] = putFieldRequest.storage unless putFieldRequest.storage.nil?
      query_params[downcase_first_letter('LoadEncoding')] = putFieldRequest.load_encoding unless putFieldRequest.load_encoding.nil?
      query_params[downcase_first_letter('Password')] = putFieldRequest.password unless putFieldRequest.password.nil?
      query_params[downcase_first_letter('DestFileName')] = putFieldRequest.dest_file_name unless putFieldRequest.dest_file_name.nil?
      query_params[downcase_first_letter('RevisionAuthor')] = putFieldRequest.revision_author unless putFieldRequest.revision_author.nil?
      query_params[downcase_first_letter('RevisionDateTime')] = putFieldRequest.revision_date_time unless putFieldRequest.revision_date_time.nil?
      query_params[downcase_first_letter('NodePath')] = putFieldRequest.node_path unless putFieldRequest.node_path.nil?
      query_params[downcase_first_letter('InsertBeforeNode')] = putFieldRequest.insert_before_node unless putFieldRequest.insert_before_node.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/xml', 'application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/xml', 'application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(putFieldRequest.field)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'FieldResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WordsApi#put_field\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Adds footnote to document, returns added footnote's data.
    # 
    # @param name The document name.
    # @param footnote_dto Footnote data.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder Original document folder.
    # @option opts [String] :storage File storage, which have to be used.
    # @option opts [String] :load_encoding Encoding that will be used to load an HTML (or TXT) document if the encoding is not specified in HTML.
    # @option opts [String] :password Password for opening an encrypted document.
    # @option opts [String] :dest_file_name Result name of the document after the operation. If this parameter is omitted then result of the operation will be saved as the source document.
    # @option opts [String] :revision_author Initials of the author to use for revisions.If you set this parameter and then make some changes to the document programmatically, save the document and later open the document in MS Word you will see these changes as revisions.
    # @option opts [String] :revision_date_time The date and time to use for revisions.
    # @option opts [String] :node_path Path to node, which contains collection of footnotes.
    # @return [FootnoteResponse]
    def put_footnote(putFootnoteRequest)
      data, _status_code, _headers = put_footnote_with_http_info(putFootnoteRequest)
      data
    end

    # Adds footnote to document, returns added footnote&#39;s data.
    # 
    # @param name The document name.
    # @param footnote_dto Footnote data.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder Original document folder.
    # @option opts [String] :storage File storage, which have to be used.
    # @option opts [String] :load_encoding Encoding that will be used to load an HTML (or TXT) document if the encoding is not specified in HTML.
    # @option opts [String] :password Password for opening an encrypted document.
    # @option opts [String] :dest_file_name Result name of the document after the operation. If this parameter is omitted then result of the operation will be saved as the source document.
    # @option opts [String] :revision_author Initials of the author to use for revisions.If you set this parameter and then make some changes to the document programmatically, save the document and later open the document in MS Word you will see these changes as revisions.
    # @option opts [String] :revision_date_time The date and time to use for revisions.
    # @option opts [String] :node_path Path to node, which contains collection of footnotes.
    # @return [Array<(FootnoteResponse, Fixnum, Hash)>] FootnoteResponse data, response status code and response headers
    def put_footnote_with_http_info(putFootnoteRequest)
	  if !putFootnoteRequest.is_a? put_footnoteRequest
	    fail ArgumentError, "Incorrect request type"
	  end
	  
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WordsApi.put_footnote ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && putFootnoteRequest.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling WordsApi.put_footnote"
      end
      # verify the required parameter 'footnote_dto' is set
      if @api_client.config.client_side_validation && putFootnoteRequest.footnote_dto.nil?
        fail ArgumentError, "Missing the required parameter 'footnote_dto' when calling WordsApi.put_footnote"
      end
      # resource path
      local_var_path = "/words/{name}/{nodePath}/footnotes"
	  local_var_path.sub('{' + downcase_first_letter('Name') + '}', putFootnoteRequest.name.to_s)

      # query parameters
      query_params = {}
      query_params[downcase_first_letter('Folder')] = putFootnoteRequest.folder unless putFootnoteRequest.folder.nil?
      query_params[downcase_first_letter('Storage')] = putFootnoteRequest.storage unless putFootnoteRequest.storage.nil?
      query_params[downcase_first_letter('LoadEncoding')] = putFootnoteRequest.load_encoding unless putFootnoteRequest.load_encoding.nil?
      query_params[downcase_first_letter('Password')] = putFootnoteRequest.password unless putFootnoteRequest.password.nil?
      query_params[downcase_first_letter('DestFileName')] = putFootnoteRequest.dest_file_name unless putFootnoteRequest.dest_file_name.nil?
      query_params[downcase_first_letter('RevisionAuthor')] = putFootnoteRequest.revision_author unless putFootnoteRequest.revision_author.nil?
      query_params[downcase_first_letter('RevisionDateTime')] = putFootnoteRequest.revision_date_time unless putFootnoteRequest.revision_date_time.nil?
      query_params[downcase_first_letter('NodePath')] = putFootnoteRequest.node_path unless putFootnoteRequest.node_path.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/xml', 'application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/xml', 'application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(putFootnoteRequest.footnote_dto)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'FootnoteResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WordsApi#put_footnote\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Adds form field to paragraph, returns added form field's data.
    # 
    # @param name The document name.
    # @param form_field From field data.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder Original document folder.
    # @option opts [String] :storage File storage, which have to be used.
    # @option opts [String] :load_encoding Encoding that will be used to load an HTML (or TXT) document if the encoding is not specified in HTML.
    # @option opts [String] :password Password for opening an encrypted document.
    # @option opts [String] :dest_file_name Result name of the document after the operation. If this parameter is omitted then result of the operation will be saved as the source document.
    # @option opts [String] :revision_author Initials of the author to use for revisions.If you set this parameter and then make some changes to the document programmatically, save the document and later open the document in MS Word you will see these changes as revisions.
    # @option opts [String] :revision_date_time The date and time to use for revisions.
    # @option opts [String] :node_path Path to node that contains collection of formfields.
    # @option opts [String] :insert_before_node Form field will be inserted before node with index.
    # @return [FormFieldResponse]
    def put_form_field(putFormFieldRequest)
      data, _status_code, _headers = put_form_field_with_http_info(putFormFieldRequest)
      data
    end

    # Adds form field to paragraph, returns added form field&#39;s data.
    # 
    # @param name The document name.
    # @param form_field From field data.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder Original document folder.
    # @option opts [String] :storage File storage, which have to be used.
    # @option opts [String] :load_encoding Encoding that will be used to load an HTML (or TXT) document if the encoding is not specified in HTML.
    # @option opts [String] :password Password for opening an encrypted document.
    # @option opts [String] :dest_file_name Result name of the document after the operation. If this parameter is omitted then result of the operation will be saved as the source document.
    # @option opts [String] :revision_author Initials of the author to use for revisions.If you set this parameter and then make some changes to the document programmatically, save the document and later open the document in MS Word you will see these changes as revisions.
    # @option opts [String] :revision_date_time The date and time to use for revisions.
    # @option opts [String] :node_path Path to node that contains collection of formfields.
    # @option opts [String] :insert_before_node Form field will be inserted before node with index.
    # @return [Array<(FormFieldResponse, Fixnum, Hash)>] FormFieldResponse data, response status code and response headers
    def put_form_field_with_http_info(putFormFieldRequest)
	  if !putFormFieldRequest.is_a? put_form_fieldRequest
	    fail ArgumentError, "Incorrect request type"
	  end
	  
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WordsApi.put_form_field ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && putFormFieldRequest.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling WordsApi.put_form_field"
      end
      # verify the required parameter 'form_field' is set
      if @api_client.config.client_side_validation && putFormFieldRequest.form_field.nil?
        fail ArgumentError, "Missing the required parameter 'form_field' when calling WordsApi.put_form_field"
      end
      # resource path
      local_var_path = "/words/{name}/{nodePath}/formfields"
	  local_var_path.sub('{' + downcase_first_letter('Name') + '}', putFormFieldRequest.name.to_s)

      # query parameters
      query_params = {}
      query_params[downcase_first_letter('Folder')] = putFormFieldRequest.folder unless putFormFieldRequest.folder.nil?
      query_params[downcase_first_letter('Storage')] = putFormFieldRequest.storage unless putFormFieldRequest.storage.nil?
      query_params[downcase_first_letter('LoadEncoding')] = putFormFieldRequest.load_encoding unless putFormFieldRequest.load_encoding.nil?
      query_params[downcase_first_letter('Password')] = putFormFieldRequest.password unless putFormFieldRequest.password.nil?
      query_params[downcase_first_letter('DestFileName')] = putFormFieldRequest.dest_file_name unless putFormFieldRequest.dest_file_name.nil?
      query_params[downcase_first_letter('RevisionAuthor')] = putFormFieldRequest.revision_author unless putFormFieldRequest.revision_author.nil?
      query_params[downcase_first_letter('RevisionDateTime')] = putFormFieldRequest.revision_date_time unless putFormFieldRequest.revision_date_time.nil?
      query_params[downcase_first_letter('NodePath')] = putFormFieldRequest.node_path unless putFormFieldRequest.node_path.nil?
      query_params[downcase_first_letter('InsertBeforeNode')] = putFormFieldRequest.insert_before_node unless putFormFieldRequest.insert_before_node.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/xml', 'application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/xml', 'application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(putFormFieldRequest.form_field)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'FormFieldResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WordsApi#put_form_field\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Insert to document header or footer.
    # 
    # @param name The document name.
    # @param header_footer_type Type of header/footer.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder Original document folder.
    # @option opts [String] :storage File storage, which have to be used.
    # @option opts [String] :load_encoding Encoding that will be used to load an HTML (or TXT) document if the encoding is not specified in HTML.
    # @option opts [String] :password Password for opening an encrypted document.
    # @option opts [String] :dest_file_name Result name of the document after the operation. If this parameter is omitted then result of the operation will be saved as the source document.
    # @option opts [String] :revision_author Initials of the author to use for revisions.If you set this parameter and then make some changes to the document programmatically, save the document and later open the document in MS Word you will see these changes as revisions.
    # @option opts [String] :revision_date_time The date and time to use for revisions.
    # @option opts [String] :section_path Path to parent section.
    # @return [HeaderFooterResponse]
    def put_header_footer(putHeaderFooterRequest)
      data, _status_code, _headers = put_header_footer_with_http_info(putHeaderFooterRequest)
      data
    end

    # Insert to document header or footer.
    # 
    # @param name The document name.
    # @param header_footer_type Type of header/footer.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder Original document folder.
    # @option opts [String] :storage File storage, which have to be used.
    # @option opts [String] :load_encoding Encoding that will be used to load an HTML (or TXT) document if the encoding is not specified in HTML.
    # @option opts [String] :password Password for opening an encrypted document.
    # @option opts [String] :dest_file_name Result name of the document after the operation. If this parameter is omitted then result of the operation will be saved as the source document.
    # @option opts [String] :revision_author Initials of the author to use for revisions.If you set this parameter and then make some changes to the document programmatically, save the document and later open the document in MS Word you will see these changes as revisions.
    # @option opts [String] :revision_date_time The date and time to use for revisions.
    # @option opts [String] :section_path Path to parent section.
    # @return [Array<(HeaderFooterResponse, Fixnum, Hash)>] HeaderFooterResponse data, response status code and response headers
    def put_header_footer_with_http_info(putHeaderFooterRequest)
	  if !putHeaderFooterRequest.is_a? put_header_footerRequest
	    fail ArgumentError, "Incorrect request type"
	  end
	  
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WordsApi.put_header_footer ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && putHeaderFooterRequest.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling WordsApi.put_header_footer"
      end
      # verify the required parameter 'header_footer_type' is set
      if @api_client.config.client_side_validation && putHeaderFooterRequest.header_footer_type.nil?
        fail ArgumentError, "Missing the required parameter 'header_footer_type' when calling WordsApi.put_header_footer"
      end
      # resource path
      local_var_path = "/words/{name}/{sectionPath}/headersfooters"
	  local_var_path.sub('{' + downcase_first_letter('Name') + '}', putHeaderFooterRequest.name.to_s)

      # query parameters
      query_params = {}
      query_params[downcase_first_letter('Folder')] = putHeaderFooterRequest.folder unless putHeaderFooterRequest.folder.nil?
      query_params[downcase_first_letter('Storage')] = putHeaderFooterRequest.storage unless putHeaderFooterRequest.storage.nil?
      query_params[downcase_first_letter('LoadEncoding')] = putHeaderFooterRequest.load_encoding unless putHeaderFooterRequest.load_encoding.nil?
      query_params[downcase_first_letter('Password')] = putHeaderFooterRequest.password unless putHeaderFooterRequest.password.nil?
      query_params[downcase_first_letter('DestFileName')] = putHeaderFooterRequest.dest_file_name unless putHeaderFooterRequest.dest_file_name.nil?
      query_params[downcase_first_letter('RevisionAuthor')] = putHeaderFooterRequest.revision_author unless putHeaderFooterRequest.revision_author.nil?
      query_params[downcase_first_letter('RevisionDateTime')] = putHeaderFooterRequest.revision_date_time unless putHeaderFooterRequest.revision_date_time.nil?
      query_params[downcase_first_letter('SectionPath')] = putHeaderFooterRequest.section_path unless putHeaderFooterRequest.section_path.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/xml', 'application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/xml', 'application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(putHeaderFooterRequest.header_footer_type)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'HeaderFooterResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WordsApi#put_header_footer\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Adds paragraph to document, returns added paragraph's data.
    # 
    # @param name The document name.
    # @param paragraph Paragraph data.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder Original document folder.
    # @option opts [String] :storage File storage, which have to be used.
    # @option opts [String] :load_encoding Encoding that will be used to load an HTML (or TXT) document if the encoding is not specified in HTML.
    # @option opts [String] :password Password for opening an encrypted document.
    # @option opts [String] :dest_file_name Result name of the document after the operation. If this parameter is omitted then result of the operation will be saved as the source document.
    # @option opts [String] :revision_author Initials of the author to use for revisions.If you set this parameter and then make some changes to the document programmatically, save the document and later open the document in MS Word you will see these changes as revisions.
    # @option opts [String] :revision_date_time The date and time to use for revisions.
    # @option opts [String] :node_path Path to node which contains paragraphs.
    # @option opts [String] :insert_before_node Paragraph will be inserted before node with index.
    # @return [ParagraphResponse]
    def put_paragraph(putParagraphRequest)
      data, _status_code, _headers = put_paragraph_with_http_info(putParagraphRequest)
      data
    end

    # Adds paragraph to document, returns added paragraph&#39;s data.
    # 
    # @param name The document name.
    # @param paragraph Paragraph data.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder Original document folder.
    # @option opts [String] :storage File storage, which have to be used.
    # @option opts [String] :load_encoding Encoding that will be used to load an HTML (or TXT) document if the encoding is not specified in HTML.
    # @option opts [String] :password Password for opening an encrypted document.
    # @option opts [String] :dest_file_name Result name of the document after the operation. If this parameter is omitted then result of the operation will be saved as the source document.
    # @option opts [String] :revision_author Initials of the author to use for revisions.If you set this parameter and then make some changes to the document programmatically, save the document and later open the document in MS Word you will see these changes as revisions.
    # @option opts [String] :revision_date_time The date and time to use for revisions.
    # @option opts [String] :node_path Path to node which contains paragraphs.
    # @option opts [String] :insert_before_node Paragraph will be inserted before node with index.
    # @return [Array<(ParagraphResponse, Fixnum, Hash)>] ParagraphResponse data, response status code and response headers
    def put_paragraph_with_http_info(putParagraphRequest)
	  if !putParagraphRequest.is_a? put_paragraphRequest
	    fail ArgumentError, "Incorrect request type"
	  end
	  
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WordsApi.put_paragraph ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && putParagraphRequest.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling WordsApi.put_paragraph"
      end
      # verify the required parameter 'paragraph' is set
      if @api_client.config.client_side_validation && putParagraphRequest.paragraph.nil?
        fail ArgumentError, "Missing the required parameter 'paragraph' when calling WordsApi.put_paragraph"
      end
      # resource path
      local_var_path = "/words/{name}/{nodePath}/paragraphs"
	  local_var_path.sub('{' + downcase_first_letter('Name') + '}', putParagraphRequest.name.to_s)

      # query parameters
      query_params = {}
      query_params[downcase_first_letter('Folder')] = putParagraphRequest.folder unless putParagraphRequest.folder.nil?
      query_params[downcase_first_letter('Storage')] = putParagraphRequest.storage unless putParagraphRequest.storage.nil?
      query_params[downcase_first_letter('LoadEncoding')] = putParagraphRequest.load_encoding unless putParagraphRequest.load_encoding.nil?
      query_params[downcase_first_letter('Password')] = putParagraphRequest.password unless putParagraphRequest.password.nil?
      query_params[downcase_first_letter('DestFileName')] = putParagraphRequest.dest_file_name unless putParagraphRequest.dest_file_name.nil?
      query_params[downcase_first_letter('RevisionAuthor')] = putParagraphRequest.revision_author unless putParagraphRequest.revision_author.nil?
      query_params[downcase_first_letter('RevisionDateTime')] = putParagraphRequest.revision_date_time unless putParagraphRequest.revision_date_time.nil?
      query_params[downcase_first_letter('NodePath')] = putParagraphRequest.node_path unless putParagraphRequest.node_path.nil?
      query_params[downcase_first_letter('InsertBeforeNode')] = putParagraphRequest.insert_before_node unless putParagraphRequest.insert_before_node.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/xml', 'application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/xml', 'application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(putParagraphRequest.paragraph)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'ParagraphResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WordsApi#put_paragraph\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Protect document.
    # 
    # @param name The document name.
    # @param protection_request with protection settings.            
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder Original document folder.
    # @option opts [String] :storage File storage, which have to be used.
    # @option opts [String] :load_encoding Encoding that will be used to load an HTML (or TXT) document if the encoding is not specified in HTML.
    # @option opts [String] :password Password for opening an encrypted document.
    # @option opts [String] :dest_file_name Result name of the document after the operation. If this parameter is omitted then result of the operation will be saved as the source document.
    # @return [ProtectionDataResponse]
    def put_protect_document(putProtectDocumentRequest)
      data, _status_code, _headers = put_protect_document_with_http_info(putProtectDocumentRequest)
      data
    end

    # Protect document.
    # 
    # @param name The document name.
    # @param protection_request with protection settings.            
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder Original document folder.
    # @option opts [String] :storage File storage, which have to be used.
    # @option opts [String] :load_encoding Encoding that will be used to load an HTML (or TXT) document if the encoding is not specified in HTML.
    # @option opts [String] :password Password for opening an encrypted document.
    # @option opts [String] :dest_file_name Result name of the document after the operation. If this parameter is omitted then result of the operation will be saved as the source document.
    # @return [Array<(ProtectionDataResponse, Fixnum, Hash)>] ProtectionDataResponse data, response status code and response headers
    def put_protect_document_with_http_info(putProtectDocumentRequest)
	  if !putProtectDocumentRequest.is_a? put_protect_documentRequest
	    fail ArgumentError, "Incorrect request type"
	  end
	  
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WordsApi.put_protect_document ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && putProtectDocumentRequest.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling WordsApi.put_protect_document"
      end
      # verify the required parameter 'protection_request' is set
      if @api_client.config.client_side_validation && putProtectDocumentRequest.protection_request.nil?
        fail ArgumentError, "Missing the required parameter 'protection_request' when calling WordsApi.put_protect_document"
      end
      # resource path
      local_var_path = "/words/{name}/protection"
	  local_var_path.sub('{' + downcase_first_letter('Name') + '}', putProtectDocumentRequest.name.to_s)

      # query parameters
      query_params = {}
      query_params[downcase_first_letter('Folder')] = putProtectDocumentRequest.folder unless putProtectDocumentRequest.folder.nil?
      query_params[downcase_first_letter('Storage')] = putProtectDocumentRequest.storage unless putProtectDocumentRequest.storage.nil?
      query_params[downcase_first_letter('LoadEncoding')] = putProtectDocumentRequest.load_encoding unless putProtectDocumentRequest.load_encoding.nil?
      query_params[downcase_first_letter('Password')] = putProtectDocumentRequest.password unless putProtectDocumentRequest.password.nil?
      query_params[downcase_first_letter('DestFileName')] = putProtectDocumentRequest.dest_file_name unless putProtectDocumentRequest.dest_file_name.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/xml', 'application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/xml', 'application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(putProtectDocumentRequest.protection_request)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'ProtectionDataResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WordsApi#put_protect_document\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Adds run to document, returns added paragraph's data.
    # 
    # @param name The document name.
    # @param paragraph_path Path to parent paragraph.
    # @param run Run data.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder Original document folder.
    # @option opts [String] :storage File storage, which have to be used.
    # @option opts [String] :load_encoding Encoding that will be used to load an HTML (or TXT) document if the encoding is not specified in HTML.
    # @option opts [String] :password Password for opening an encrypted document.
    # @option opts [String] :dest_file_name Result name of the document after the operation. If this parameter is omitted then result of the operation will be saved as the source document.
    # @option opts [String] :revision_author Initials of the author to use for revisions.If you set this parameter and then make some changes to the document programmatically, save the document and later open the document in MS Word you will see these changes as revisions.
    # @option opts [String] :revision_date_time The date and time to use for revisions.
    # @option opts [String] :insert_before_node Paragraph will be inserted before node with index.
    # @return [RunResponse]
    def put_run(putRunRequest)
      data, _status_code, _headers = put_run_with_http_info(putRunRequest)
      data
    end

    # Adds run to document, returns added paragraph&#39;s data.
    # 
    # @param name The document name.
    # @param paragraph_path Path to parent paragraph.
    # @param run Run data.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder Original document folder.
    # @option opts [String] :storage File storage, which have to be used.
    # @option opts [String] :load_encoding Encoding that will be used to load an HTML (or TXT) document if the encoding is not specified in HTML.
    # @option opts [String] :password Password for opening an encrypted document.
    # @option opts [String] :dest_file_name Result name of the document after the operation. If this parameter is omitted then result of the operation will be saved as the source document.
    # @option opts [String] :revision_author Initials of the author to use for revisions.If you set this parameter and then make some changes to the document programmatically, save the document and later open the document in MS Word you will see these changes as revisions.
    # @option opts [String] :revision_date_time The date and time to use for revisions.
    # @option opts [String] :insert_before_node Paragraph will be inserted before node with index.
    # @return [Array<(RunResponse, Fixnum, Hash)>] RunResponse data, response status code and response headers
    def put_run_with_http_info(putRunRequest)
	  if !putRunRequest.is_a? put_runRequest
	    fail ArgumentError, "Incorrect request type"
	  end
	  
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WordsApi.put_run ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && putRunRequest.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling WordsApi.put_run"
      end
      # verify the required parameter 'paragraph_path' is set
      if @api_client.config.client_side_validation && putRunRequest.paragraph_path.nil?
        fail ArgumentError, "Missing the required parameter 'paragraph_path' when calling WordsApi.put_run"
      end
      # verify the required parameter 'run' is set
      if @api_client.config.client_side_validation && putRunRequest.run.nil?
        fail ArgumentError, "Missing the required parameter 'run' when calling WordsApi.put_run"
      end
      # resource path
      local_var_path = "/words/{name}/{paragraphPath}/runs"
	  local_var_path.sub('{' + downcase_first_letter('Name') + '}', putRunRequest.name.to_s)
	  local_var_path.sub('{' + downcase_first_letter('ParagraphPath') + '}', putRunRequest.paragraph_path.to_s)

      # query parameters
      query_params = {}
      query_params[downcase_first_letter('Folder')] = putRunRequest.folder unless putRunRequest.folder.nil?
      query_params[downcase_first_letter('Storage')] = putRunRequest.storage unless putRunRequest.storage.nil?
      query_params[downcase_first_letter('LoadEncoding')] = putRunRequest.load_encoding unless putRunRequest.load_encoding.nil?
      query_params[downcase_first_letter('Password')] = putRunRequest.password unless putRunRequest.password.nil?
      query_params[downcase_first_letter('DestFileName')] = putRunRequest.dest_file_name unless putRunRequest.dest_file_name.nil?
      query_params[downcase_first_letter('RevisionAuthor')] = putRunRequest.revision_author unless putRunRequest.revision_author.nil?
      query_params[downcase_first_letter('RevisionDateTime')] = putRunRequest.revision_date_time unless putRunRequest.revision_date_time.nil?
      query_params[downcase_first_letter('InsertBeforeNode')] = putRunRequest.insert_before_node unless putRunRequest.insert_before_node.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/xml', 'application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/xml', 'application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(putRunRequest.run)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'RunResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WordsApi#put_run\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Reject all revisions in document
    # 
    # @param name The document name.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder Original document folder.
    # @option opts [String] :storage File storage, which have to be used.
    # @option opts [String] :load_encoding Encoding that will be used to load an HTML (or TXT) document if the encoding is not specified in HTML.
    # @option opts [String] :password Password for opening an encrypted document.
    # @option opts [String] :dest_file_name Result name of the document after the operation. If this parameter is omitted then result of the operation will be saved as the source document.
    # @return [RevisionsModificationResponse]
    def reject_all_revisions(rejectAllRevisionsRequest)
      data, _status_code, _headers = reject_all_revisions_with_http_info(rejectAllRevisionsRequest)
      data
    end

    # Reject all revisions in document
    # 
    # @param name The document name.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder Original document folder.
    # @option opts [String] :storage File storage, which have to be used.
    # @option opts [String] :load_encoding Encoding that will be used to load an HTML (or TXT) document if the encoding is not specified in HTML.
    # @option opts [String] :password Password for opening an encrypted document.
    # @option opts [String] :dest_file_name Result name of the document after the operation. If this parameter is omitted then result of the operation will be saved as the source document.
    # @return [Array<(RevisionsModificationResponse, Fixnum, Hash)>] RevisionsModificationResponse data, response status code and response headers
    def reject_all_revisions_with_http_info(rejectAllRevisionsRequest)
	  if !rejectAllRevisionsRequest.is_a? reject_all_revisionsRequest
	    fail ArgumentError, "Incorrect request type"
	  end
	  
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WordsApi.reject_all_revisions ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && rejectAllRevisionsRequest.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling WordsApi.reject_all_revisions"
      end
      # resource path
      local_var_path = "/words/{name}/revisions/rejectAll"
	  local_var_path.sub('{' + downcase_first_letter('Name') + '}', rejectAllRevisionsRequest.name.to_s)

      # query parameters
      query_params = {}
      query_params[downcase_first_letter('Folder')] = rejectAllRevisionsRequest.folder unless rejectAllRevisionsRequest.folder.nil?
      query_params[downcase_first_letter('Storage')] = rejectAllRevisionsRequest.storage unless rejectAllRevisionsRequest.storage.nil?
      query_params[downcase_first_letter('LoadEncoding')] = rejectAllRevisionsRequest.load_encoding unless rejectAllRevisionsRequest.load_encoding.nil?
      query_params[downcase_first_letter('Password')] = rejectAllRevisionsRequest.password unless rejectAllRevisionsRequest.password.nil?
      query_params[downcase_first_letter('DestFileName')] = rejectAllRevisionsRequest.dest_file_name unless rejectAllRevisionsRequest.dest_file_name.nil?

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
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'RevisionsModificationResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WordsApi#reject_all_revisions\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Renders drawing object to specified format.
    # 
    # @param name The file name.
    # @param format The destination format.
    # @param index Object&#39;s index
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder Original document folder.
    # @option opts [String] :storage File storage, which have to be used.
    # @option opts [String] :load_encoding Encoding that will be used to load an HTML (or TXT) document if the encoding is not specified in HTML.
    # @option opts [String] :password Password for opening an encrypted document.
    # @option opts [String] :node_path Path to node, which contains drawing objects.
    # @option opts [String] :fonts_location Folder in filestorage with custom fonts.
    # @return [File]
    def render_drawing_object(renderDrawingObjectRequest)
      data, _status_code, _headers = render_drawing_object_with_http_info(renderDrawingObjectRequest)
      data
    end

    # Renders drawing object to specified format.
    # 
    # @param name The file name.
    # @param format The destination format.
    # @param index Object&#39;s index
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder Original document folder.
    # @option opts [String] :storage File storage, which have to be used.
    # @option opts [String] :load_encoding Encoding that will be used to load an HTML (or TXT) document if the encoding is not specified in HTML.
    # @option opts [String] :password Password for opening an encrypted document.
    # @option opts [String] :node_path Path to node, which contains drawing objects.
    # @option opts [String] :fonts_location Folder in filestorage with custom fonts.
    # @return [Array<(File, Fixnum, Hash)>] File data, response status code and response headers
    def render_drawing_object_with_http_info(renderDrawingObjectRequest)
	  if !renderDrawingObjectRequest.is_a? render_drawing_objectRequest
	    fail ArgumentError, "Incorrect request type"
	  end
	  
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WordsApi.render_drawing_object ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && renderDrawingObjectRequest.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling WordsApi.render_drawing_object"
      end
      # verify the required parameter 'format' is set
      if @api_client.config.client_side_validation && renderDrawingObjectRequest.format.nil?
        fail ArgumentError, "Missing the required parameter 'format' when calling WordsApi.render_drawing_object"
      end
      # verify the required parameter 'index' is set
      if @api_client.config.client_side_validation && renderDrawingObjectRequest.index.nil?
        fail ArgumentError, "Missing the required parameter 'index' when calling WordsApi.render_drawing_object"
      end
      # resource path
      local_var_path = "/words/{name}/{nodePath}/drawingObjects/{index}/render"
	  local_var_path.sub('{' + downcase_first_letter('Name') + '}', renderDrawingObjectRequest.name.to_s)
	  local_var_path.sub('{' + downcase_first_letter('Index') + '}', renderDrawingObjectRequest.index.to_s)

      # query parameters
      query_params = {}
      query_params[downcase_first_letter('Format')] = renderDrawingObjectRequest.format
      query_params[downcase_first_letter('Folder')] = renderDrawingObjectRequest.folder unless renderDrawingObjectRequest.folder.nil?
      query_params[downcase_first_letter('Storage')] = renderDrawingObjectRequest.storage unless renderDrawingObjectRequest.storage.nil?
      query_params[downcase_first_letter('LoadEncoding')] = renderDrawingObjectRequest.load_encoding unless renderDrawingObjectRequest.load_encoding.nil?
      query_params[downcase_first_letter('Password')] = renderDrawingObjectRequest.password unless renderDrawingObjectRequest.password.nil?
      query_params[downcase_first_letter('NodePath')] = renderDrawingObjectRequest.node_path unless renderDrawingObjectRequest.node_path.nil?
      query_params[downcase_first_letter('FontsLocation')] = renderDrawingObjectRequest.fonts_location unless renderDrawingObjectRequest.fonts_location.nil?

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
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'File')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WordsApi#render_drawing_object\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Renders math object to specified format.
    # 
    # @param name The file name.
    # @param format The destination format.
    # @param index Object&#39;s index
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder Original document folder.
    # @option opts [String] :storage File storage, which have to be used.
    # @option opts [String] :load_encoding Encoding that will be used to load an HTML (or TXT) document if the encoding is not specified in HTML.
    # @option opts [String] :password Password for opening an encrypted document.
    # @option opts [String] :node_path Path to node, which contains office math objects.
    # @option opts [String] :fonts_location Folder in filestorage with custom fonts.
    # @return [File]
    def render_math_object(renderMathObjectRequest)
      data, _status_code, _headers = render_math_object_with_http_info(renderMathObjectRequest)
      data
    end

    # Renders math object to specified format.
    # 
    # @param name The file name.
    # @param format The destination format.
    # @param index Object&#39;s index
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder Original document folder.
    # @option opts [String] :storage File storage, which have to be used.
    # @option opts [String] :load_encoding Encoding that will be used to load an HTML (or TXT) document if the encoding is not specified in HTML.
    # @option opts [String] :password Password for opening an encrypted document.
    # @option opts [String] :node_path Path to node, which contains office math objects.
    # @option opts [String] :fonts_location Folder in filestorage with custom fonts.
    # @return [Array<(File, Fixnum, Hash)>] File data, response status code and response headers
    def render_math_object_with_http_info(renderMathObjectRequest)
	  if !renderMathObjectRequest.is_a? render_math_objectRequest
	    fail ArgumentError, "Incorrect request type"
	  end
	  
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WordsApi.render_math_object ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && renderMathObjectRequest.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling WordsApi.render_math_object"
      end
      # verify the required parameter 'format' is set
      if @api_client.config.client_side_validation && renderMathObjectRequest.format.nil?
        fail ArgumentError, "Missing the required parameter 'format' when calling WordsApi.render_math_object"
      end
      # verify the required parameter 'index' is set
      if @api_client.config.client_side_validation && renderMathObjectRequest.index.nil?
        fail ArgumentError, "Missing the required parameter 'index' when calling WordsApi.render_math_object"
      end
      # resource path
      local_var_path = "/words/{name}/{nodePath}/OfficeMathObjects/{index}/render"
	  local_var_path.sub('{' + downcase_first_letter('Name') + '}', renderMathObjectRequest.name.to_s)
	  local_var_path.sub('{' + downcase_first_letter('Index') + '}', renderMathObjectRequest.index.to_s)

      # query parameters
      query_params = {}
      query_params[downcase_first_letter('Format')] = renderMathObjectRequest.format
      query_params[downcase_first_letter('Folder')] = renderMathObjectRequest.folder unless renderMathObjectRequest.folder.nil?
      query_params[downcase_first_letter('Storage')] = renderMathObjectRequest.storage unless renderMathObjectRequest.storage.nil?
      query_params[downcase_first_letter('LoadEncoding')] = renderMathObjectRequest.load_encoding unless renderMathObjectRequest.load_encoding.nil?
      query_params[downcase_first_letter('Password')] = renderMathObjectRequest.password unless renderMathObjectRequest.password.nil?
      query_params[downcase_first_letter('NodePath')] = renderMathObjectRequest.node_path unless renderMathObjectRequest.node_path.nil?
      query_params[downcase_first_letter('FontsLocation')] = renderMathObjectRequest.fonts_location unless renderMathObjectRequest.fonts_location.nil?

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
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'File')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WordsApi#render_math_object\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Renders page to specified format.
    # 
    # @param name The file name.
    # @param page_index Comment index
    # @param format The destination format.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder Original document folder.
    # @option opts [String] :storage File storage, which have to be used.
    # @option opts [String] :load_encoding Encoding that will be used to load an HTML (or TXT) document if the encoding is not specified in HTML.
    # @option opts [String] :password Password for opening an encrypted document.
    # @option opts [String] :fonts_location Folder in filestorage with custom fonts.
    # @return [File]
    def render_page(renderPageRequest)
      data, _status_code, _headers = render_page_with_http_info(renderPageRequest)
      data
    end

    # Renders page to specified format.
    # 
    # @param name The file name.
    # @param page_index Comment index
    # @param format The destination format.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder Original document folder.
    # @option opts [String] :storage File storage, which have to be used.
    # @option opts [String] :load_encoding Encoding that will be used to load an HTML (or TXT) document if the encoding is not specified in HTML.
    # @option opts [String] :password Password for opening an encrypted document.
    # @option opts [String] :fonts_location Folder in filestorage with custom fonts.
    # @return [Array<(File, Fixnum, Hash)>] File data, response status code and response headers
    def render_page_with_http_info(renderPageRequest)
	  if !renderPageRequest.is_a? render_pageRequest
	    fail ArgumentError, "Incorrect request type"
	  end
	  
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WordsApi.render_page ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && renderPageRequest.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling WordsApi.render_page"
      end
      # verify the required parameter 'page_index' is set
      if @api_client.config.client_side_validation && renderPageRequest.page_index.nil?
        fail ArgumentError, "Missing the required parameter 'page_index' when calling WordsApi.render_page"
      end
      # verify the required parameter 'format' is set
      if @api_client.config.client_side_validation && renderPageRequest.format.nil?
        fail ArgumentError, "Missing the required parameter 'format' when calling WordsApi.render_page"
      end
      # resource path
      local_var_path = "/words/{name}/pages/{pageIndex}/render"
	  local_var_path.sub('{' + downcase_first_letter('Name') + '}', renderPageRequest.name.to_s)
	  local_var_path.sub('{' + downcase_first_letter('PageIndex') + '}', renderPageRequest.page_index.to_s)

      # query parameters
      query_params = {}
      query_params[downcase_first_letter('Format')] = renderPageRequest.format
      query_params[downcase_first_letter('Folder')] = renderPageRequest.folder unless renderPageRequest.folder.nil?
      query_params[downcase_first_letter('Storage')] = renderPageRequest.storage unless renderPageRequest.storage.nil?
      query_params[downcase_first_letter('LoadEncoding')] = renderPageRequest.load_encoding unless renderPageRequest.load_encoding.nil?
      query_params[downcase_first_letter('Password')] = renderPageRequest.password unless renderPageRequest.password.nil?
      query_params[downcase_first_letter('FontsLocation')] = renderPageRequest.fonts_location unless renderPageRequest.fonts_location.nil?

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
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'File')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WordsApi#render_page\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Renders paragraph to specified format.
    # 
    # @param name The file name.
    # @param format The destination format.
    # @param index Object&#39;s index
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder Original document folder.
    # @option opts [String] :storage File storage, which have to be used.
    # @option opts [String] :load_encoding Encoding that will be used to load an HTML (or TXT) document if the encoding is not specified in HTML.
    # @option opts [String] :password Password for opening an encrypted document.
    # @option opts [String] :node_path Path to node, which contains paragraphs.
    # @option opts [String] :fonts_location Folder in filestorage with custom fonts.
    # @return [File]
    def render_paragraph(renderParagraphRequest)
      data, _status_code, _headers = render_paragraph_with_http_info(renderParagraphRequest)
      data
    end

    # Renders paragraph to specified format.
    # 
    # @param name The file name.
    # @param format The destination format.
    # @param index Object&#39;s index
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder Original document folder.
    # @option opts [String] :storage File storage, which have to be used.
    # @option opts [String] :load_encoding Encoding that will be used to load an HTML (or TXT) document if the encoding is not specified in HTML.
    # @option opts [String] :password Password for opening an encrypted document.
    # @option opts [String] :node_path Path to node, which contains paragraphs.
    # @option opts [String] :fonts_location Folder in filestorage with custom fonts.
    # @return [Array<(File, Fixnum, Hash)>] File data, response status code and response headers
    def render_paragraph_with_http_info(renderParagraphRequest)
	  if !renderParagraphRequest.is_a? render_paragraphRequest
	    fail ArgumentError, "Incorrect request type"
	  end
	  
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WordsApi.render_paragraph ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && renderParagraphRequest.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling WordsApi.render_paragraph"
      end
      # verify the required parameter 'format' is set
      if @api_client.config.client_side_validation && renderParagraphRequest.format.nil?
        fail ArgumentError, "Missing the required parameter 'format' when calling WordsApi.render_paragraph"
      end
      # verify the required parameter 'index' is set
      if @api_client.config.client_side_validation && renderParagraphRequest.index.nil?
        fail ArgumentError, "Missing the required parameter 'index' when calling WordsApi.render_paragraph"
      end
      # resource path
      local_var_path = "/words/{name}/{nodePath}/paragraphs/{index}/render"
	  local_var_path.sub('{' + downcase_first_letter('Name') + '}', renderParagraphRequest.name.to_s)
	  local_var_path.sub('{' + downcase_first_letter('Index') + '}', renderParagraphRequest.index.to_s)

      # query parameters
      query_params = {}
      query_params[downcase_first_letter('Format')] = renderParagraphRequest.format
      query_params[downcase_first_letter('Folder')] = renderParagraphRequest.folder unless renderParagraphRequest.folder.nil?
      query_params[downcase_first_letter('Storage')] = renderParagraphRequest.storage unless renderParagraphRequest.storage.nil?
      query_params[downcase_first_letter('LoadEncoding')] = renderParagraphRequest.load_encoding unless renderParagraphRequest.load_encoding.nil?
      query_params[downcase_first_letter('Password')] = renderParagraphRequest.password unless renderParagraphRequest.password.nil?
      query_params[downcase_first_letter('NodePath')] = renderParagraphRequest.node_path unless renderParagraphRequest.node_path.nil?
      query_params[downcase_first_letter('FontsLocation')] = renderParagraphRequest.fonts_location unless renderParagraphRequest.fonts_location.nil?

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
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'File')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WordsApi#render_paragraph\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Renders table to specified format.
    # 
    # @param name The file name.
    # @param format The destination format.
    # @param index Object&#39;s index
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder Original document folder.
    # @option opts [String] :storage File storage, which have to be used.
    # @option opts [String] :load_encoding Encoding that will be used to load an HTML (or TXT) document if the encoding is not specified in HTML.
    # @option opts [String] :password Password for opening an encrypted document.
    # @option opts [String] :node_path Path to node, which contains tables.
    # @option opts [String] :fonts_location Folder in filestorage with custom fonts.
    # @return [File]
    def render_table(renderTableRequest)
      data, _status_code, _headers = render_table_with_http_info(renderTableRequest)
      data
    end

    # Renders table to specified format.
    # 
    # @param name The file name.
    # @param format The destination format.
    # @param index Object&#39;s index
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder Original document folder.
    # @option opts [String] :storage File storage, which have to be used.
    # @option opts [String] :load_encoding Encoding that will be used to load an HTML (or TXT) document if the encoding is not specified in HTML.
    # @option opts [String] :password Password for opening an encrypted document.
    # @option opts [String] :node_path Path to node, which contains tables.
    # @option opts [String] :fonts_location Folder in filestorage with custom fonts.
    # @return [Array<(File, Fixnum, Hash)>] File data, response status code and response headers
    def render_table_with_http_info(renderTableRequest)
	  if !renderTableRequest.is_a? render_tableRequest
	    fail ArgumentError, "Incorrect request type"
	  end
	  
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WordsApi.render_table ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && renderTableRequest.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling WordsApi.render_table"
      end
      # verify the required parameter 'format' is set
      if @api_client.config.client_side_validation && renderTableRequest.format.nil?
        fail ArgumentError, "Missing the required parameter 'format' when calling WordsApi.render_table"
      end
      # verify the required parameter 'index' is set
      if @api_client.config.client_side_validation && renderTableRequest.index.nil?
        fail ArgumentError, "Missing the required parameter 'index' when calling WordsApi.render_table"
      end
      # resource path
      local_var_path = "/words/{name}/{nodePath}/tables/{index}/render"
	  local_var_path.sub('{' + downcase_first_letter('Name') + '}', renderTableRequest.name.to_s)
	  local_var_path.sub('{' + downcase_first_letter('Index') + '}', renderTableRequest.index.to_s)

      # query parameters
      query_params = {}
      query_params[downcase_first_letter('Format')] = renderTableRequest.format
      query_params[downcase_first_letter('Folder')] = renderTableRequest.folder unless renderTableRequest.folder.nil?
      query_params[downcase_first_letter('Storage')] = renderTableRequest.storage unless renderTableRequest.storage.nil?
      query_params[downcase_first_letter('LoadEncoding')] = renderTableRequest.load_encoding unless renderTableRequest.load_encoding.nil?
      query_params[downcase_first_letter('Password')] = renderTableRequest.password unless renderTableRequest.password.nil?
      query_params[downcase_first_letter('NodePath')] = renderTableRequest.node_path unless renderTableRequest.node_path.nil?
      query_params[downcase_first_letter('FontsLocation')] = renderTableRequest.fonts_location unless renderTableRequest.fonts_location.nil?

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
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'File')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WordsApi#render_table\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Resets font's cache.
    # 
    # @param [Hash] opts the optional parameters
    # @return [AsposeResponse]
    def reset_cache(resetCacheRequest)
      data, _status_code, _headers = reset_cache_with_http_info(resetCacheRequest)
      data
    end

    # Resets font&#39;s cache.
    # 
    # @param [Hash] opts the optional parameters
    # @return [Array<(AsposeResponse, Fixnum, Hash)>] AsposeResponse data, response status code and response headers
    def reset_cache_with_http_info(resetCacheRequest)
	  if !resetCacheRequest.is_a? reset_cacheRequest
	    fail ArgumentError, "Incorrect request type"
	  end
	  
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WordsApi.reset_cache ..."
      end
      # resource path
      local_var_path = "/words/fonts/cache"

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
      auth_names = []
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'AsposeResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WordsApi#reset_cache\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Search text in document.
    # 
    # @param name The document name.
    # @param pattern The regular expression used to find matches.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder Original document folder.
    # @option opts [String] :storage File storage, which have to be used.
    # @option opts [String] :load_encoding Encoding that will be used to load an HTML (or TXT) document if the encoding is not specified in HTML.
    # @option opts [String] :password Password for opening an encrypted document.
    # @return [SearchResponse]
    def search(searchRequest)
      data, _status_code, _headers = search_with_http_info(searchRequest)
      data
    end

    # Search text in document.
    # 
    # @param name The document name.
    # @param pattern The regular expression used to find matches.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder Original document folder.
    # @option opts [String] :storage File storage, which have to be used.
    # @option opts [String] :load_encoding Encoding that will be used to load an HTML (or TXT) document if the encoding is not specified in HTML.
    # @option opts [String] :password Password for opening an encrypted document.
    # @return [Array<(SearchResponse, Fixnum, Hash)>] SearchResponse data, response status code and response headers
    def search_with_http_info(searchRequest)
	  if !searchRequest.is_a? searchRequest
	    fail ArgumentError, "Incorrect request type"
	  end
	  
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WordsApi.search ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && searchRequest.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling WordsApi.search"
      end
      # verify the required parameter 'pattern' is set
      if @api_client.config.client_side_validation && searchRequest.pattern.nil?
        fail ArgumentError, "Missing the required parameter 'pattern' when calling WordsApi.search"
      end
      # resource path
      local_var_path = "/words/{name}/search"
	  local_var_path.sub('{' + downcase_first_letter('Name') + '}', searchRequest.name.to_s)

      # query parameters
      query_params = {}
      query_params[downcase_first_letter('Pattern')] = searchRequest.pattern
      query_params[downcase_first_letter('Folder')] = searchRequest.folder unless searchRequest.folder.nil?
      query_params[downcase_first_letter('Storage')] = searchRequest.storage unless searchRequest.storage.nil?
      query_params[downcase_first_letter('LoadEncoding')] = searchRequest.load_encoding unless searchRequest.load_encoding.nil?
      query_params[downcase_first_letter('Password')] = searchRequest.password unless searchRequest.password.nil?

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
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'SearchResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WordsApi#search\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Updates border properties.             
    # 'nodePath' should refer to node with cell or row
    # @param name The document name.
    # @param border_properties Border properties
    # @param node_path Path to node with border(node should be cell or row).
    # @param index Object&#39;s index
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder Original document folder.
    # @option opts [String] :storage File storage, which have to be used.
    # @option opts [String] :load_encoding Encoding that will be used to load an HTML (or TXT) document if the encoding is not specified in HTML.
    # @option opts [String] :password Password for opening an encrypted document.
    # @option opts [String] :dest_file_name Result name of the document after the operation. If this parameter is omitted then result of the operation will be saved as the source document.
    # @option opts [String] :revision_author Initials of the author to use for revisions.If you set this parameter and then make some changes to the document programmatically, save the document and later open the document in MS Word you will see these changes as revisions.
    # @option opts [String] :revision_date_time The date and time to use for revisions.
    # @return [BorderResponse]
    def update_border(updateBorderRequest)
      data, _status_code, _headers = update_border_with_http_info(updateBorderRequest)
      data
    end

    # Updates border properties.             
    # &#39;nodePath&#39; should refer to node with cell or row
    # @param name The document name.
    # @param border_properties Border properties
    # @param node_path Path to node with border(node should be cell or row).
    # @param index Object&#39;s index
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder Original document folder.
    # @option opts [String] :storage File storage, which have to be used.
    # @option opts [String] :load_encoding Encoding that will be used to load an HTML (or TXT) document if the encoding is not specified in HTML.
    # @option opts [String] :password Password for opening an encrypted document.
    # @option opts [String] :dest_file_name Result name of the document after the operation. If this parameter is omitted then result of the operation will be saved as the source document.
    # @option opts [String] :revision_author Initials of the author to use for revisions.If you set this parameter and then make some changes to the document programmatically, save the document and later open the document in MS Word you will see these changes as revisions.
    # @option opts [String] :revision_date_time The date and time to use for revisions.
    # @return [Array<(BorderResponse, Fixnum, Hash)>] BorderResponse data, response status code and response headers
    def update_border_with_http_info(updateBorderRequest)
	  if !updateBorderRequest.is_a? update_borderRequest
	    fail ArgumentError, "Incorrect request type"
	  end
	  
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WordsApi.update_border ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && updateBorderRequest.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling WordsApi.update_border"
      end
      # verify the required parameter 'border_properties' is set
      if @api_client.config.client_side_validation && updateBorderRequest.border_properties.nil?
        fail ArgumentError, "Missing the required parameter 'border_properties' when calling WordsApi.update_border"
      end
      # verify the required parameter 'node_path' is set
      if @api_client.config.client_side_validation && updateBorderRequest.node_path.nil?
        fail ArgumentError, "Missing the required parameter 'node_path' when calling WordsApi.update_border"
      end
      # verify the required parameter 'index' is set
      if @api_client.config.client_side_validation && updateBorderRequest.index.nil?
        fail ArgumentError, "Missing the required parameter 'index' when calling WordsApi.update_border"
      end
      # resource path
      local_var_path = "/words/{name}/{nodePath}/borders/{index}"
	  local_var_path.sub('{' + downcase_first_letter('Name') + '}', updateBorderRequest.name.to_s)
	  local_var_path.sub('{' + downcase_first_letter('NodePath') + '}', updateBorderRequest.node_path.to_s)
	  local_var_path.sub('{' + downcase_first_letter('Index') + '}', updateBorderRequest.index.to_s)

      # query parameters
      query_params = {}
      query_params[downcase_first_letter('Folder')] = updateBorderRequest.folder unless updateBorderRequest.folder.nil?
      query_params[downcase_first_letter('Storage')] = updateBorderRequest.storage unless updateBorderRequest.storage.nil?
      query_params[downcase_first_letter('LoadEncoding')] = updateBorderRequest.load_encoding unless updateBorderRequest.load_encoding.nil?
      query_params[downcase_first_letter('Password')] = updateBorderRequest.password unless updateBorderRequest.password.nil?
      query_params[downcase_first_letter('DestFileName')] = updateBorderRequest.dest_file_name unless updateBorderRequest.dest_file_name.nil?
      query_params[downcase_first_letter('RevisionAuthor')] = updateBorderRequest.revision_author unless updateBorderRequest.revision_author.nil?
      query_params[downcase_first_letter('RevisionDateTime')] = updateBorderRequest.revision_date_time unless updateBorderRequest.revision_date_time.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/xml', 'application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/xml', 'application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(updateBorderRequest.border_properties)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'BorderResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WordsApi#update_border\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update page setup of section.
    # 
    # @param name The document name.
    # @param section_index Section index
    # @param page_setup Page setup properties dto
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder Original document folder.
    # @option opts [String] :storage File storage, which have to be used.
    # @option opts [String] :load_encoding Encoding that will be used to load an HTML (or TXT) document if the encoding is not specified in HTML.
    # @option opts [String] :password Password for opening an encrypted document.
    # @option opts [String] :dest_file_name Result name of the document after the operation. If this parameter is omitted then result of the operation will be saved as the source document.
    # @option opts [String] :revision_author Initials of the author to use for revisions.If you set this parameter and then make some changes to the document programmatically, save the document and later open the document in MS Word you will see these changes as revisions.
    # @option opts [String] :revision_date_time The date and time to use for revisions.
    # @return [SectionPageSetupResponse]
    def update_section_page_setup(updateSectionPageSetupRequest)
      data, _status_code, _headers = update_section_page_setup_with_http_info(updateSectionPageSetupRequest)
      data
    end

    # Update page setup of section.
    # 
    # @param name The document name.
    # @param section_index Section index
    # @param page_setup Page setup properties dto
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder Original document folder.
    # @option opts [String] :storage File storage, which have to be used.
    # @option opts [String] :load_encoding Encoding that will be used to load an HTML (or TXT) document if the encoding is not specified in HTML.
    # @option opts [String] :password Password for opening an encrypted document.
    # @option opts [String] :dest_file_name Result name of the document after the operation. If this parameter is omitted then result of the operation will be saved as the source document.
    # @option opts [String] :revision_author Initials of the author to use for revisions.If you set this parameter and then make some changes to the document programmatically, save the document and later open the document in MS Word you will see these changes as revisions.
    # @option opts [String] :revision_date_time The date and time to use for revisions.
    # @return [Array<(SectionPageSetupResponse, Fixnum, Hash)>] SectionPageSetupResponse data, response status code and response headers
    def update_section_page_setup_with_http_info(updateSectionPageSetupRequest)
	  if !updateSectionPageSetupRequest.is_a? update_section_page_setupRequest
	    fail ArgumentError, "Incorrect request type"
	  end
	  
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WordsApi.update_section_page_setup ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && updateSectionPageSetupRequest.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling WordsApi.update_section_page_setup"
      end
      # verify the required parameter 'section_index' is set
      if @api_client.config.client_side_validation && updateSectionPageSetupRequest.section_index.nil?
        fail ArgumentError, "Missing the required parameter 'section_index' when calling WordsApi.update_section_page_setup"
      end
      # verify the required parameter 'page_setup' is set
      if @api_client.config.client_side_validation && updateSectionPageSetupRequest.page_setup.nil?
        fail ArgumentError, "Missing the required parameter 'page_setup' when calling WordsApi.update_section_page_setup"
      end
      # resource path
      local_var_path = "/words/{name}/sections/{sectionIndex}/pageSetup"
	  local_var_path.sub('{' + downcase_first_letter('Name') + '}', updateSectionPageSetupRequest.name.to_s)
	  local_var_path.sub('{' + downcase_first_letter('SectionIndex') + '}', updateSectionPageSetupRequest.section_index.to_s)

      # query parameters
      query_params = {}
      query_params[downcase_first_letter('Folder')] = updateSectionPageSetupRequest.folder unless updateSectionPageSetupRequest.folder.nil?
      query_params[downcase_first_letter('Storage')] = updateSectionPageSetupRequest.storage unless updateSectionPageSetupRequest.storage.nil?
      query_params[downcase_first_letter('LoadEncoding')] = updateSectionPageSetupRequest.load_encoding unless updateSectionPageSetupRequest.load_encoding.nil?
      query_params[downcase_first_letter('Password')] = updateSectionPageSetupRequest.password unless updateSectionPageSetupRequest.password.nil?
      query_params[downcase_first_letter('DestFileName')] = updateSectionPageSetupRequest.dest_file_name unless updateSectionPageSetupRequest.dest_file_name.nil?
      query_params[downcase_first_letter('RevisionAuthor')] = updateSectionPageSetupRequest.revision_author unless updateSectionPageSetupRequest.revision_author.nil?
      query_params[downcase_first_letter('RevisionDateTime')] = updateSectionPageSetupRequest.revision_date_time unless updateSectionPageSetupRequest.revision_date_time.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/xml', 'application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/xml', 'application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(updateSectionPageSetupRequest.page_setup)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'SectionPageSetupResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WordsApi#update_section_page_setup\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Updates a table cell format.
    # 
    # @param name The document name.
    # @param table_row_path Path to table row.
    # @param index Object&#39;s index
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder Original document folder.
    # @option opts [String] :storage File storage, which have to be used.
    # @option opts [String] :load_encoding Encoding that will be used to load an HTML (or TXT) document if the encoding is not specified in HTML.
    # @option opts [String] :password Password for opening an encrypted document.
    # @option opts [String] :dest_file_name Result name of the document after the operation. If this parameter is omitted then result of the operation will be saved as the source document.
    # @option opts [String] :revision_author Initials of the author to use for revisions.If you set this parameter and then make some changes to the document programmatically, save the document and later open the document in MS Word you will see these changes as revisions.
    # @option opts [String] :revision_date_time The date and time to use for revisions.
    # @option opts [TableCellFormat] :format The properties.
    # @return [TableCellFormatResponse]
    def update_table_cell_format(updateTableCellFormatRequest)
      data, _status_code, _headers = update_table_cell_format_with_http_info(updateTableCellFormatRequest)
      data
    end

    # Updates a table cell format.
    # 
    # @param name The document name.
    # @param table_row_path Path to table row.
    # @param index Object&#39;s index
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder Original document folder.
    # @option opts [String] :storage File storage, which have to be used.
    # @option opts [String] :load_encoding Encoding that will be used to load an HTML (or TXT) document if the encoding is not specified in HTML.
    # @option opts [String] :password Password for opening an encrypted document.
    # @option opts [String] :dest_file_name Result name of the document after the operation. If this parameter is omitted then result of the operation will be saved as the source document.
    # @option opts [String] :revision_author Initials of the author to use for revisions.If you set this parameter and then make some changes to the document programmatically, save the document and later open the document in MS Word you will see these changes as revisions.
    # @option opts [String] :revision_date_time The date and time to use for revisions.
    # @option opts [TableCellFormat] :format The properties.
    # @return [Array<(TableCellFormatResponse, Fixnum, Hash)>] TableCellFormatResponse data, response status code and response headers
    def update_table_cell_format_with_http_info(updateTableCellFormatRequest)
	  if !updateTableCellFormatRequest.is_a? update_table_cell_formatRequest
	    fail ArgumentError, "Incorrect request type"
	  end
	  
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WordsApi.update_table_cell_format ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && updateTableCellFormatRequest.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling WordsApi.update_table_cell_format"
      end
      # verify the required parameter 'table_row_path' is set
      if @api_client.config.client_side_validation && updateTableCellFormatRequest.table_row_path.nil?
        fail ArgumentError, "Missing the required parameter 'table_row_path' when calling WordsApi.update_table_cell_format"
      end
      # verify the required parameter 'index' is set
      if @api_client.config.client_side_validation && updateTableCellFormatRequest.index.nil?
        fail ArgumentError, "Missing the required parameter 'index' when calling WordsApi.update_table_cell_format"
      end
      # resource path
      local_var_path = "/words/{name}/{tableRowPath}/cells/{index}/cellformat"
	  local_var_path.sub('{' + downcase_first_letter('Name') + '}', updateTableCellFormatRequest.name.to_s)
	  local_var_path.sub('{' + downcase_first_letter('TableRowPath') + '}', updateTableCellFormatRequest.table_row_path.to_s)
	  local_var_path.sub('{' + downcase_first_letter('Index') + '}', updateTableCellFormatRequest.index.to_s)

      # query parameters
      query_params = {}
      query_params[downcase_first_letter('Folder')] = updateTableCellFormatRequest.folder unless updateTableCellFormatRequest.folder.nil?
      query_params[downcase_first_letter('Storage')] = updateTableCellFormatRequest.storage unless updateTableCellFormatRequest.storage.nil?
      query_params[downcase_first_letter('LoadEncoding')] = updateTableCellFormatRequest.load_encoding unless updateTableCellFormatRequest.load_encoding.nil?
      query_params[downcase_first_letter('Password')] = updateTableCellFormatRequest.password unless updateTableCellFormatRequest.password.nil?
      query_params[downcase_first_letter('DestFileName')] = updateTableCellFormatRequest.dest_file_name unless updateTableCellFormatRequest.dest_file_name.nil?
      query_params[downcase_first_letter('RevisionAuthor')] = updateTableCellFormatRequest.revision_author unless updateTableCellFormatRequest.revision_author.nil?
      query_params[downcase_first_letter('RevisionDateTime')] = updateTableCellFormatRequest.revision_date_time unless updateTableCellFormatRequest.revision_date_time.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/xml', 'application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/xml', 'application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(updateTableCellFormatRequest.format)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'TableCellFormatResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WordsApi#update_table_cell_format\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Updates a table properties.
    # 
    # @param name The document name.
    # @param index Object&#39;s index
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder Original document folder.
    # @option opts [String] :storage File storage, which have to be used.
    # @option opts [String] :load_encoding Encoding that will be used to load an HTML (or TXT) document if the encoding is not specified in HTML.
    # @option opts [String] :password Password for opening an encrypted document.
    # @option opts [String] :dest_file_name Result name of the document after the operation. If this parameter is omitted then result of the operation will be saved as the source document.
    # @option opts [String] :revision_author Initials of the author to use for revisions.If you set this parameter and then make some changes to the document programmatically, save the document and later open the document in MS Word you will see these changes as revisions.
    # @option opts [String] :revision_date_time The date and time to use for revisions.
    # @option opts [TableProperties] :properties The properties.
    # @option opts [String] :node_path Path to node, which contains tables.
    # @return [TablePropertiesResponse]
    def update_table_properties(updateTablePropertiesRequest)
      data, _status_code, _headers = update_table_properties_with_http_info(updateTablePropertiesRequest)
      data
    end

    # Updates a table properties.
    # 
    # @param name The document name.
    # @param index Object&#39;s index
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder Original document folder.
    # @option opts [String] :storage File storage, which have to be used.
    # @option opts [String] :load_encoding Encoding that will be used to load an HTML (or TXT) document if the encoding is not specified in HTML.
    # @option opts [String] :password Password for opening an encrypted document.
    # @option opts [String] :dest_file_name Result name of the document after the operation. If this parameter is omitted then result of the operation will be saved as the source document.
    # @option opts [String] :revision_author Initials of the author to use for revisions.If you set this parameter and then make some changes to the document programmatically, save the document and later open the document in MS Word you will see these changes as revisions.
    # @option opts [String] :revision_date_time The date and time to use for revisions.
    # @option opts [TableProperties] :properties The properties.
    # @option opts [String] :node_path Path to node, which contains tables.
    # @return [Array<(TablePropertiesResponse, Fixnum, Hash)>] TablePropertiesResponse data, response status code and response headers
    def update_table_properties_with_http_info(updateTablePropertiesRequest)
	  if !updateTablePropertiesRequest.is_a? update_table_propertiesRequest
	    fail ArgumentError, "Incorrect request type"
	  end
	  
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WordsApi.update_table_properties ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && updateTablePropertiesRequest.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling WordsApi.update_table_properties"
      end
      # verify the required parameter 'index' is set
      if @api_client.config.client_side_validation && updateTablePropertiesRequest.index.nil?
        fail ArgumentError, "Missing the required parameter 'index' when calling WordsApi.update_table_properties"
      end
      # resource path
      local_var_path = "/words/{name}/{nodePath}/tables/{index}/properties"
	  local_var_path.sub('{' + downcase_first_letter('Name') + '}', updateTablePropertiesRequest.name.to_s)
	  local_var_path.sub('{' + downcase_first_letter('Index') + '}', updateTablePropertiesRequest.index.to_s)

      # query parameters
      query_params = {}
      query_params[downcase_first_letter('Folder')] = updateTablePropertiesRequest.folder unless updateTablePropertiesRequest.folder.nil?
      query_params[downcase_first_letter('Storage')] = updateTablePropertiesRequest.storage unless updateTablePropertiesRequest.storage.nil?
      query_params[downcase_first_letter('LoadEncoding')] = updateTablePropertiesRequest.load_encoding unless updateTablePropertiesRequest.load_encoding.nil?
      query_params[downcase_first_letter('Password')] = updateTablePropertiesRequest.password unless updateTablePropertiesRequest.password.nil?
      query_params[downcase_first_letter('DestFileName')] = updateTablePropertiesRequest.dest_file_name unless updateTablePropertiesRequest.dest_file_name.nil?
      query_params[downcase_first_letter('RevisionAuthor')] = updateTablePropertiesRequest.revision_author unless updateTablePropertiesRequest.revision_author.nil?
      query_params[downcase_first_letter('RevisionDateTime')] = updateTablePropertiesRequest.revision_date_time unless updateTablePropertiesRequest.revision_date_time.nil?
      query_params[downcase_first_letter('NodePath')] = updateTablePropertiesRequest.node_path unless updateTablePropertiesRequest.node_path.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/xml', 'application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/xml', 'application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(updateTablePropertiesRequest.properties)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'TablePropertiesResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WordsApi#update_table_properties\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Updates a table row format.
    # 
    # @param name The document name.
    # @param table_path Path to table.
    # @param index Object&#39;s index
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder Original document folder.
    # @option opts [String] :storage File storage, which have to be used.
    # @option opts [String] :load_encoding Encoding that will be used to load an HTML (or TXT) document if the encoding is not specified in HTML.
    # @option opts [String] :password Password for opening an encrypted document.
    # @option opts [String] :dest_file_name Result name of the document after the operation. If this parameter is omitted then result of the operation will be saved as the source document.
    # @option opts [String] :revision_author Initials of the author to use for revisions.If you set this parameter and then make some changes to the document programmatically, save the document and later open the document in MS Word you will see these changes as revisions.
    # @option opts [String] :revision_date_time The date and time to use for revisions.
    # @option opts [TableRowFormat] :format Table row format.
    # @return [TableRowFormatResponse]
    def update_table_row_format(updateTableRowFormatRequest)
      data, _status_code, _headers = update_table_row_format_with_http_info(updateTableRowFormatRequest)
      data
    end

    # Updates a table row format.
    # 
    # @param name The document name.
    # @param table_path Path to table.
    # @param index Object&#39;s index
    # @param [Hash] opts the optional parameters
    # @option opts [String] :folder Original document folder.
    # @option opts [String] :storage File storage, which have to be used.
    # @option opts [String] :load_encoding Encoding that will be used to load an HTML (or TXT) document if the encoding is not specified in HTML.
    # @option opts [String] :password Password for opening an encrypted document.
    # @option opts [String] :dest_file_name Result name of the document after the operation. If this parameter is omitted then result of the operation will be saved as the source document.
    # @option opts [String] :revision_author Initials of the author to use for revisions.If you set this parameter and then make some changes to the document programmatically, save the document and later open the document in MS Word you will see these changes as revisions.
    # @option opts [String] :revision_date_time The date and time to use for revisions.
    # @option opts [TableRowFormat] :format Table row format.
    # @return [Array<(TableRowFormatResponse, Fixnum, Hash)>] TableRowFormatResponse data, response status code and response headers
    def update_table_row_format_with_http_info(updateTableRowFormatRequest)
	  if !updateTableRowFormatRequest.is_a? update_table_row_formatRequest
	    fail ArgumentError, "Incorrect request type"
	  end
	  
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WordsApi.update_table_row_format ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && updateTableRowFormatRequest.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling WordsApi.update_table_row_format"
      end
      # verify the required parameter 'table_path' is set
      if @api_client.config.client_side_validation && updateTableRowFormatRequest.table_path.nil?
        fail ArgumentError, "Missing the required parameter 'table_path' when calling WordsApi.update_table_row_format"
      end
      # verify the required parameter 'index' is set
      if @api_client.config.client_side_validation && updateTableRowFormatRequest.index.nil?
        fail ArgumentError, "Missing the required parameter 'index' when calling WordsApi.update_table_row_format"
      end
      # resource path
      local_var_path = "/words/{name}/{tablePath}/rows/{index}/rowformat"
	  local_var_path.sub('{' + downcase_first_letter('Name') + '}', updateTableRowFormatRequest.name.to_s)
	  local_var_path.sub('{' + downcase_first_letter('TablePath') + '}', updateTableRowFormatRequest.table_path.to_s)
	  local_var_path.sub('{' + downcase_first_letter('Index') + '}', updateTableRowFormatRequest.index.to_s)

      # query parameters
      query_params = {}
      query_params[downcase_first_letter('Folder')] = updateTableRowFormatRequest.folder unless updateTableRowFormatRequest.folder.nil?
      query_params[downcase_first_letter('Storage')] = updateTableRowFormatRequest.storage unless updateTableRowFormatRequest.storage.nil?
      query_params[downcase_first_letter('LoadEncoding')] = updateTableRowFormatRequest.load_encoding unless updateTableRowFormatRequest.load_encoding.nil?
      query_params[downcase_first_letter('Password')] = updateTableRowFormatRequest.password unless updateTableRowFormatRequest.password.nil?
      query_params[downcase_first_letter('DestFileName')] = updateTableRowFormatRequest.dest_file_name unless updateTableRowFormatRequest.dest_file_name.nil?
      query_params[downcase_first_letter('RevisionAuthor')] = updateTableRowFormatRequest.revision_author unless updateTableRowFormatRequest.revision_author.nil?
      query_params[downcase_first_letter('RevisionDateTime')] = updateTableRowFormatRequest.revision_date_time unless updateTableRowFormatRequest.revision_date_time.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/xml', 'application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/xml', 'application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(updateTableRowFormatRequest.format)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'TableRowFormatResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WordsApi#update_table_row_format\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
  
 #
 # Helper method to convert first letter to downcase
 #
def downcase_first_letter(str)
  str[0].downcase + str[1..-1]
end

end
 #
 # ----------------------------------------