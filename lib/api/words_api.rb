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
    def accept_all_revisions(request)
      data, _status_code, _headers = accept_all_revisions_with_http_info(request)
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
    def accept_all_revisions_with_http_info(request)
	  unless request.is_a? AcceptAllRevisionsRequest
	    fail ArgumentError, "Incorrect request type"
	  end
	  
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WordsApi.accept_all_revisions ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && request.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling WordsApi.accept_all_revisions"
      end
      # resource path
      local_var_path = "/words/{name}/revisions/acceptAll"
	  local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.to_s)

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
    def create_or_update_document_property(request)
      data, _status_code, _headers = create_or_update_document_property_with_http_info(request)
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
    def create_or_update_document_property_with_http_info(request)
	  unless request.is_a? CreateOrUpdateDocumentPropertyRequest
	    fail ArgumentError, "Incorrect request type"
	  end
	  
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WordsApi.create_or_update_document_property ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && request.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling WordsApi.create_or_update_document_property"
      end
      # verify the required parameter 'property_name' is set
      if @api_client.config.client_side_validation && request.property_name.nil?
        fail ArgumentError, "Missing the required parameter 'property_name' when calling WordsApi.create_or_update_document_property"
      end
      # verify the required parameter 'property' is set
      if @api_client.config.client_side_validation && request.property.nil?
        fail ArgumentError, "Missing the required parameter 'property' when calling WordsApi.create_or_update_document_property"
      end
      # resource path
      local_var_path = "/words/{name}/documentProperties/{propertyName}"
	  local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.to_s)
	  local_var_path.sub('{' + downcase_first_letter('PropertyName') + '}', request.property_name.to_s)

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
    def delete_border(request)
      data, _status_code, _headers = delete_border_with_http_info(request)
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
    def delete_border_with_http_info(request)
	  unless request.is_a? DeleteBorderRequest
	    fail ArgumentError, "Incorrect request type"
	  end
	  
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WordsApi.delete_border ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && request.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling WordsApi.delete_border"
      end
      # verify the required parameter 'node_path' is set
      if @api_client.config.client_side_validation && request.node_path.nil?
        fail ArgumentError, "Missing the required parameter 'node_path' when calling WordsApi.delete_border"
      end
      # verify the required parameter 'index' is set
      if @api_client.config.client_side_validation && request.index.nil?
        fail ArgumentError, "Missing the required parameter 'index' when calling WordsApi.delete_border"
      end
      # resource path
      local_var_path = "/words/{name}/{nodePath}/borders/{index}"
	  local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.to_s)
	  local_var_path.sub('{' + downcase_first_letter('NodePath') + '}', request.node_path.to_s)
	  local_var_path.sub('{' + downcase_first_letter('Index') + '}', request.index.to_s)

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
    def delete_borders(request)
      data, _status_code, _headers = delete_borders_with_http_info(request)
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
    def delete_borders_with_http_info(request)
	  unless request.is_a? DeleteBordersRequest
	    fail ArgumentError, "Incorrect request type"
	  end
	  
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WordsApi.delete_borders ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && request.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling WordsApi.delete_borders"
      end
      # verify the required parameter 'node_path' is set
      if @api_client.config.client_side_validation && request.node_path.nil?
        fail ArgumentError, "Missing the required parameter 'node_path' when calling WordsApi.delete_borders"
      end
      # resource path
      local_var_path = "/words/{name}/{nodePath}/borders"
	  local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.to_s)
	  local_var_path.sub('{' + downcase_first_letter('NodePath') + '}', request.node_path.to_s)

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
    def delete_comment(request)
      data, _status_code, _headers = delete_comment_with_http_info(request)
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
    def delete_comment_with_http_info(request)
	  unless request.is_a? DeleteCommentRequest
	    fail ArgumentError, "Incorrect request type"
	  end
	  
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WordsApi.delete_comment ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && request.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling WordsApi.delete_comment"
      end
      # verify the required parameter 'comment_index' is set
      if @api_client.config.client_side_validation && request.comment_index.nil?
        fail ArgumentError, "Missing the required parameter 'comment_index' when calling WordsApi.delete_comment"
      end
      # resource path
      local_var_path = "/words/{name}/comments/{commentIndex}"
	  local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.to_s)
	  local_var_path.sub('{' + downcase_first_letter('CommentIndex') + '}', request.comment_index.to_s)

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
    def delete_document_macros(request)
      data, _status_code, _headers = delete_document_macros_with_http_info(request)
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
    def delete_document_macros_with_http_info(request)
	  unless request.is_a? DeleteDocumentMacrosRequest
	    fail ArgumentError, "Incorrect request type"
	  end
	  
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WordsApi.delete_document_macros ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && request.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling WordsApi.delete_document_macros"
      end
      # resource path
      local_var_path = "/words/{name}/macros"
	  local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.to_s)

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
    def delete_document_property(request)
      data, _status_code, _headers = delete_document_property_with_http_info(request)
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
    def delete_document_property_with_http_info(request)
	  unless request.is_a? DeleteDocumentPropertyRequest
	    fail ArgumentError, "Incorrect request type"
	  end
	  
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WordsApi.delete_document_property ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && request.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling WordsApi.delete_document_property"
      end
      # verify the required parameter 'property_name' is set
      if @api_client.config.client_side_validation && request.property_name.nil?
        fail ArgumentError, "Missing the required parameter 'property_name' when calling WordsApi.delete_document_property"
      end
      # resource path
      local_var_path = "/words/{name}/documentProperties/{propertyName}"
	  local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.to_s)
	  local_var_path.sub('{' + downcase_first_letter('PropertyName') + '}', request.property_name.to_s)

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
    def delete_document_watermark(request)
      data, _status_code, _headers = delete_document_watermark_with_http_info(request)
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
    def delete_document_watermark_with_http_info(request)
	  unless request.is_a? DeleteDocumentWatermarkRequest
	    fail ArgumentError, "Incorrect request type"
	  end
	  
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WordsApi.delete_document_watermark ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && request.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling WordsApi.delete_document_watermark"
      end
      # resource path
      local_var_path = "/words/{name}/watermark"
	  local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.to_s)

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
    def delete_drawing_object(request)
      data, _status_code, _headers = delete_drawing_object_with_http_info(request)
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
    def delete_drawing_object_with_http_info(request)
	  unless request.is_a? DeleteDrawingObjectRequest
	    fail ArgumentError, "Incorrect request type"
	  end
	  
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WordsApi.delete_drawing_object ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && request.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling WordsApi.delete_drawing_object"
      end
      # verify the required parameter 'index' is set
      if @api_client.config.client_side_validation && request.index.nil?
        fail ArgumentError, "Missing the required parameter 'index' when calling WordsApi.delete_drawing_object"
      end
      # resource path
      local_var_path = "/words/{name}/{nodePath}/drawingObjects/{index}"
	  local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.to_s)
	  local_var_path.sub('{' + downcase_first_letter('Index') + '}', request.index.to_s)

      # query parameters
      query_params = {}
      query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
      query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
      query_params[downcase_first_letter('LoadEncoding')] = request.load_encoding unless request.load_encoding.nil?
      query_params[downcase_first_letter('Password')] = request.password unless request.password.nil?
      query_params[downcase_first_letter('DestFileName')] = request.dest_file_name unless request.dest_file_name.nil?
      query_params[downcase_first_letter('RevisionAuthor')] = request.revision_author unless request.revision_author.nil?
      query_params[downcase_first_letter('RevisionDateTime')] = request.revision_date_time unless request.revision_date_time.nil?
      query_params[downcase_first_letter('NodePath')] = request.node_path unless request.node_path.nil?

      # header parameters
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
    def delete_field(request)
      data, _status_code, _headers = delete_field_with_http_info(request)
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
    def delete_field_with_http_info(request)
	  unless request.is_a? DeleteFieldRequest
	    fail ArgumentError, "Incorrect request type"
	  end
	  
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WordsApi.delete_field ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && request.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling WordsApi.delete_field"
      end
      # verify the required parameter 'index' is set
      if @api_client.config.client_side_validation && request.index.nil?
        fail ArgumentError, "Missing the required parameter 'index' when calling WordsApi.delete_field"
      end
      # resource path
      local_var_path = "/words/{name}/{nodePath}/fields/{index}"
	  local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.to_s)
	  local_var_path.sub('{' + downcase_first_letter('Index') + '}', request.index.to_s)

      # query parameters
      query_params = {}
      query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
      query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
      query_params[downcase_first_letter('LoadEncoding')] = request.load_encoding unless request.load_encoding.nil?
      query_params[downcase_first_letter('Password')] = request.password unless request.password.nil?
      query_params[downcase_first_letter('DestFileName')] = request.dest_file_name unless request.dest_file_name.nil?
      query_params[downcase_first_letter('RevisionAuthor')] = request.revision_author unless request.revision_author.nil?
      query_params[downcase_first_letter('RevisionDateTime')] = request.revision_date_time unless request.revision_date_time.nil?
      query_params[downcase_first_letter('NodePath')] = request.node_path unless request.node_path.nil?

      # header parameters
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
    def delete_fields(request)
      data, _status_code, _headers = delete_fields_with_http_info(request)
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
    def delete_fields_with_http_info(request)
	  unless request.is_a? DeleteFieldsRequest
	    fail ArgumentError, "Incorrect request type"
	  end
	  
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WordsApi.delete_fields ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && request.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling WordsApi.delete_fields"
      end
      # resource path
      local_var_path = "/words/{name}/{nodePath}/fields"
	  local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.to_s)

      # query parameters
      query_params = {}
      query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
      query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
      query_params[downcase_first_letter('LoadEncoding')] = request.load_encoding unless request.load_encoding.nil?
      query_params[downcase_first_letter('Password')] = request.password unless request.password.nil?
      query_params[downcase_first_letter('DestFileName')] = request.dest_file_name unless request.dest_file_name.nil?
      query_params[downcase_first_letter('RevisionAuthor')] = request.revision_author unless request.revision_author.nil?
      query_params[downcase_first_letter('RevisionDateTime')] = request.revision_date_time unless request.revision_date_time.nil?
      query_params[downcase_first_letter('NodePath')] = request.node_path unless request.node_path.nil?

      # header parameters
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
    def delete_footnote(request)
      data, _status_code, _headers = delete_footnote_with_http_info(request)
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
    def delete_footnote_with_http_info(request)
	  unless request.is_a? DeleteFootnoteRequest
	    fail ArgumentError, "Incorrect request type"
	  end
	  
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WordsApi.delete_footnote ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && request.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling WordsApi.delete_footnote"
      end
      # verify the required parameter 'index' is set
      if @api_client.config.client_side_validation && request.index.nil?
        fail ArgumentError, "Missing the required parameter 'index' when calling WordsApi.delete_footnote"
      end
      # resource path
      local_var_path = "/words/{name}/{nodePath}/footnotes/{index}"
	  local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.to_s)
	  local_var_path.sub('{' + downcase_first_letter('Index') + '}', request.index.to_s)

      # query parameters
      query_params = {}
      query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
      query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
      query_params[downcase_first_letter('LoadEncoding')] = request.load_encoding unless request.load_encoding.nil?
      query_params[downcase_first_letter('Password')] = request.password unless request.password.nil?
      query_params[downcase_first_letter('DestFileName')] = request.dest_file_name unless request.dest_file_name.nil?
      query_params[downcase_first_letter('RevisionAuthor')] = request.revision_author unless request.revision_author.nil?
      query_params[downcase_first_letter('RevisionDateTime')] = request.revision_date_time unless request.revision_date_time.nil?
      query_params[downcase_first_letter('NodePath')] = request.node_path unless request.node_path.nil?

      # header parameters
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
    def delete_form_field(request)
      data, _status_code, _headers = delete_form_field_with_http_info(request)
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
    def delete_form_field_with_http_info(request)
	  unless request.is_a? DeleteFormFieldRequest
	    fail ArgumentError, "Incorrect request type"
	  end
	  
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WordsApi.delete_form_field ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && request.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling WordsApi.delete_form_field"
      end
      # verify the required parameter 'index' is set
      if @api_client.config.client_side_validation && request.index.nil?
        fail ArgumentError, "Missing the required parameter 'index' when calling WordsApi.delete_form_field"
      end
      # resource path
      local_var_path = "/words/{name}/{nodePath}/formfields/{index}"
	  local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.to_s)
	  local_var_path.sub('{' + downcase_first_letter('Index') + '}', request.index.to_s)

      # query parameters
      query_params = {}
      query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
      query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
      query_params[downcase_first_letter('LoadEncoding')] = request.load_encoding unless request.load_encoding.nil?
      query_params[downcase_first_letter('Password')] = request.password unless request.password.nil?
      query_params[downcase_first_letter('DestFileName')] = request.dest_file_name unless request.dest_file_name.nil?
      query_params[downcase_first_letter('RevisionAuthor')] = request.revision_author unless request.revision_author.nil?
      query_params[downcase_first_letter('RevisionDateTime')] = request.revision_date_time unless request.revision_date_time.nil?
      query_params[downcase_first_letter('NodePath')] = request.node_path unless request.node_path.nil?

      # header parameters
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
    def delete_header_footer(request)
      data, _status_code, _headers = delete_header_footer_with_http_info(request)
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
    def delete_header_footer_with_http_info(request)
	  unless request.is_a? DeleteHeaderFooterRequest
	    fail ArgumentError, "Incorrect request type"
	  end
	  
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WordsApi.delete_header_footer ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && request.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling WordsApi.delete_header_footer"
      end
      # verify the required parameter 'index' is set
      if @api_client.config.client_side_validation && request.index.nil?
        fail ArgumentError, "Missing the required parameter 'index' when calling WordsApi.delete_header_footer"
      end
      # resource path
      local_var_path = "/words/{name}/{sectionPath}/headersfooters/{index}"
	  local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.to_s)
	  local_var_path.sub('{' + downcase_first_letter('Index') + '}', request.index.to_s)

      # query parameters
      query_params = {}
      query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
      query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
      query_params[downcase_first_letter('LoadEncoding')] = request.load_encoding unless request.load_encoding.nil?
      query_params[downcase_first_letter('Password')] = request.password unless request.password.nil?
      query_params[downcase_first_letter('DestFileName')] = request.dest_file_name unless request.dest_file_name.nil?
      query_params[downcase_first_letter('RevisionAuthor')] = request.revision_author unless request.revision_author.nil?
      query_params[downcase_first_letter('RevisionDateTime')] = request.revision_date_time unless request.revision_date_time.nil?
      query_params[downcase_first_letter('SectionPath')] = request.section_path unless request.section_path.nil?

      # header parameters
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
    def delete_headers_footers(request)
      data, _status_code, _headers = delete_headers_footers_with_http_info(request)
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
    def delete_headers_footers_with_http_info(request)
	  unless request.is_a? DeleteHeadersFootersRequest
	    fail ArgumentError, "Incorrect request type"
	  end
	  
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WordsApi.delete_headers_footers ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && request.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling WordsApi.delete_headers_footers"
      end
      # resource path
      local_var_path = "/words/{name}/{sectionPath}/headersfooters"
	  local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.to_s)

      # query parameters
      query_params = {}
      query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
      query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
      query_params[downcase_first_letter('LoadEncoding')] = request.load_encoding unless request.load_encoding.nil?
      query_params[downcase_first_letter('Password')] = request.password unless request.password.nil?
      query_params[downcase_first_letter('DestFileName')] = request.dest_file_name unless request.dest_file_name.nil?
      query_params[downcase_first_letter('RevisionAuthor')] = request.revision_author unless request.revision_author.nil?
      query_params[downcase_first_letter('RevisionDateTime')] = request.revision_date_time unless request.revision_date_time.nil?
      query_params[downcase_first_letter('SectionPath')] = request.section_path unless request.section_path.nil?
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
    def delete_office_math_object(request)
      data, _status_code, _headers = delete_office_math_object_with_http_info(request)
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
    def delete_office_math_object_with_http_info(request)
	  unless request.is_a? DeleteOfficeMathObjectRequest
	    fail ArgumentError, "Incorrect request type"
	  end
	  
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WordsApi.delete_office_math_object ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && request.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling WordsApi.delete_office_math_object"
      end
      # verify the required parameter 'index' is set
      if @api_client.config.client_side_validation && request.index.nil?
        fail ArgumentError, "Missing the required parameter 'index' when calling WordsApi.delete_office_math_object"
      end
      # resource path
      local_var_path = "/words/{name}/{nodePath}/OfficeMathObjects/{index}"
	  local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.to_s)
	  local_var_path.sub('{' + downcase_first_letter('Index') + '}', request.index.to_s)

      # query parameters
      query_params = {}
      query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
      query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
      query_params[downcase_first_letter('LoadEncoding')] = request.load_encoding unless request.load_encoding.nil?
      query_params[downcase_first_letter('Password')] = request.password unless request.password.nil?
      query_params[downcase_first_letter('DestFileName')] = request.dest_file_name unless request.dest_file_name.nil?
      query_params[downcase_first_letter('RevisionAuthor')] = request.revision_author unless request.revision_author.nil?
      query_params[downcase_first_letter('RevisionDateTime')] = request.revision_date_time unless request.revision_date_time.nil?
      query_params[downcase_first_letter('NodePath')] = request.node_path unless request.node_path.nil?

      # header parameters
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
    def delete_paragraph(request)
      data, _status_code, _headers = delete_paragraph_with_http_info(request)
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
    def delete_paragraph_with_http_info(request)
	  unless request.is_a? DeleteParagraphRequest
	    fail ArgumentError, "Incorrect request type"
	  end
	  
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WordsApi.delete_paragraph ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && request.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling WordsApi.delete_paragraph"
      end
      # verify the required parameter 'index' is set
      if @api_client.config.client_side_validation && request.index.nil?
        fail ArgumentError, "Missing the required parameter 'index' when calling WordsApi.delete_paragraph"
      end
      # resource path
      local_var_path = "/words/{name}/{nodePath}/paragraphs/{index}"
	  local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.to_s)
	  local_var_path.sub('{' + downcase_first_letter('Index') + '}', request.index.to_s)

      # query parameters
      query_params = {}
      query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
      query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
      query_params[downcase_first_letter('LoadEncoding')] = request.load_encoding unless request.load_encoding.nil?
      query_params[downcase_first_letter('Password')] = request.password unless request.password.nil?
      query_params[downcase_first_letter('DestFileName')] = request.dest_file_name unless request.dest_file_name.nil?
      query_params[downcase_first_letter('RevisionAuthor')] = request.revision_author unless request.revision_author.nil?
      query_params[downcase_first_letter('RevisionDateTime')] = request.revision_date_time unless request.revision_date_time.nil?
      query_params[downcase_first_letter('NodePath')] = request.node_path unless request.node_path.nil?

      # header parameters
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
    def delete_run(request)
      data, _status_code, _headers = delete_run_with_http_info(request)
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
    def delete_run_with_http_info(request)
	  unless request.is_a? DeleteRunRequest
	    fail ArgumentError, "Incorrect request type"
	  end
	  
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WordsApi.delete_run ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && request.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling WordsApi.delete_run"
      end
      # verify the required parameter 'paragraph_path' is set
      if @api_client.config.client_side_validation && request.paragraph_path.nil?
        fail ArgumentError, "Missing the required parameter 'paragraph_path' when calling WordsApi.delete_run"
      end
      # verify the required parameter 'index' is set
      if @api_client.config.client_side_validation && request.index.nil?
        fail ArgumentError, "Missing the required parameter 'index' when calling WordsApi.delete_run"
      end
      # resource path
      local_var_path = "/words/{name}/{paragraphPath}/runs/{index}"
	  local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.to_s)
	  local_var_path.sub('{' + downcase_first_letter('ParagraphPath') + '}', request.paragraph_path.to_s)
	  local_var_path.sub('{' + downcase_first_letter('Index') + '}', request.index.to_s)

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
    def delete_table(request)
      data, _status_code, _headers = delete_table_with_http_info(request)
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
    def delete_table_with_http_info(request)
	  unless request.is_a? DeleteTableRequest
	    fail ArgumentError, "Incorrect request type"
	  end
	  
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WordsApi.delete_table ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && request.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling WordsApi.delete_table"
      end
      # verify the required parameter 'index' is set
      if @api_client.config.client_side_validation && request.index.nil?
        fail ArgumentError, "Missing the required parameter 'index' when calling WordsApi.delete_table"
      end
      # resource path
      local_var_path = "/words/{name}/{nodePath}/tables/{index}"
	  local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.to_s)
	  local_var_path.sub('{' + downcase_first_letter('Index') + '}', request.index.to_s)

      # query parameters
      query_params = {}
      query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
      query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
      query_params[downcase_first_letter('LoadEncoding')] = request.load_encoding unless request.load_encoding.nil?
      query_params[downcase_first_letter('Password')] = request.password unless request.password.nil?
      query_params[downcase_first_letter('DestFileName')] = request.dest_file_name unless request.dest_file_name.nil?
      query_params[downcase_first_letter('RevisionAuthor')] = request.revision_author unless request.revision_author.nil?
      query_params[downcase_first_letter('RevisionDateTime')] = request.revision_date_time unless request.revision_date_time.nil?
      query_params[downcase_first_letter('NodePath')] = request.node_path unless request.node_path.nil?

      # header parameters
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
    def delete_table_cell(request)
      data, _status_code, _headers = delete_table_cell_with_http_info(request)
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
    def delete_table_cell_with_http_info(request)
	  unless request.is_a? DeleteTableCellRequest
	    fail ArgumentError, "Incorrect request type"
	  end
	  
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WordsApi.delete_table_cell ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && request.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling WordsApi.delete_table_cell"
      end
      # verify the required parameter 'table_row_path' is set
      if @api_client.config.client_side_validation && request.table_row_path.nil?
        fail ArgumentError, "Missing the required parameter 'table_row_path' when calling WordsApi.delete_table_cell"
      end
      # verify the required parameter 'index' is set
      if @api_client.config.client_side_validation && request.index.nil?
        fail ArgumentError, "Missing the required parameter 'index' when calling WordsApi.delete_table_cell"
      end
      # resource path
      local_var_path = "/words/{name}/{tableRowPath}/cells/{index}"
	  local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.to_s)
	  local_var_path.sub('{' + downcase_first_letter('TableRowPath') + '}', request.table_row_path.to_s)
	  local_var_path.sub('{' + downcase_first_letter('Index') + '}', request.index.to_s)

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
    def delete_table_row(request)
      data, _status_code, _headers = delete_table_row_with_http_info(request)
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
    def delete_table_row_with_http_info(request)
	  unless request.is_a? DeleteTableRowRequest
	    fail ArgumentError, "Incorrect request type"
	  end
	  
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WordsApi.delete_table_row ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && request.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling WordsApi.delete_table_row"
      end
      # verify the required parameter 'table_path' is set
      if @api_client.config.client_side_validation && request.table_path.nil?
        fail ArgumentError, "Missing the required parameter 'table_path' when calling WordsApi.delete_table_row"
      end
      # verify the required parameter 'index' is set
      if @api_client.config.client_side_validation && request.index.nil?
        fail ArgumentError, "Missing the required parameter 'index' when calling WordsApi.delete_table_row"
      end
      # resource path
      local_var_path = "/words/{name}/{tablePath}/rows/{index}"
	  local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.to_s)
	  local_var_path.sub('{' + downcase_first_letter('TablePath') + '}', request.table_path.to_s)
	  local_var_path.sub('{' + downcase_first_letter('Index') + '}', request.index.to_s)

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
    def delete_unprotect_document(request)
      data, _status_code, _headers = delete_unprotect_document_with_http_info(request)
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
    def delete_unprotect_document_with_http_info(request)
	  unless request.is_a? DeleteUnprotectDocumentRequest
	    fail ArgumentError, "Incorrect request type"
	  end
	  
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WordsApi.delete_unprotect_document ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && request.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling WordsApi.delete_unprotect_document"
      end
      # verify the required parameter 'protection_request' is set
      if @api_client.config.client_side_validation && request.protection_request.nil?
        fail ArgumentError, "Missing the required parameter 'protection_request' when calling WordsApi.delete_unprotect_document"
      end
      # resource path
      local_var_path = "/words/{name}/protection"
	  local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.to_s)

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
    def get_border(request)
      data, _status_code, _headers = get_border_with_http_info(request)
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
    def get_border_with_http_info(request)
	  unless request.is_a? GetBorderRequest
	    fail ArgumentError, "Incorrect request type"
	  end
	  
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WordsApi.get_border ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && request.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling WordsApi.get_border"
      end
      # verify the required parameter 'node_path' is set
      if @api_client.config.client_side_validation && request.node_path.nil?
        fail ArgumentError, "Missing the required parameter 'node_path' when calling WordsApi.get_border"
      end
      # verify the required parameter 'index' is set
      if @api_client.config.client_side_validation && request.index.nil?
        fail ArgumentError, "Missing the required parameter 'index' when calling WordsApi.get_border"
      end
      # resource path
      local_var_path = "/words/{name}/{nodePath}/borders/{index}"
	  local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.to_s)
	  local_var_path.sub('{' + downcase_first_letter('NodePath') + '}', request.node_path.to_s)
	  local_var_path.sub('{' + downcase_first_letter('Index') + '}', request.index.to_s)

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
    def get_borders(request)
      data, _status_code, _headers = get_borders_with_http_info(request)
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
    def get_borders_with_http_info(request)
	  unless request.is_a? GetBordersRequest
	    fail ArgumentError, "Incorrect request type"
	  end
	  
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WordsApi.get_borders ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && request.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling WordsApi.get_borders"
      end
      # verify the required parameter 'node_path' is set
      if @api_client.config.client_side_validation && request.node_path.nil?
        fail ArgumentError, "Missing the required parameter 'node_path' when calling WordsApi.get_borders"
      end
      # resource path
      local_var_path = "/words/{name}/{nodePath}/borders"
	  local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.to_s)
	  local_var_path.sub('{' + downcase_first_letter('NodePath') + '}', request.node_path.to_s)

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
    def get_comment(request)
      data, _status_code, _headers = get_comment_with_http_info(request)
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
    def get_comment_with_http_info(request)
	  unless request.is_a? GetCommentRequest
	    fail ArgumentError, "Incorrect request type"
	  end
	  
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WordsApi.get_comment ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && request.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling WordsApi.get_comment"
      end
      # verify the required parameter 'comment_index' is set
      if @api_client.config.client_side_validation && request.comment_index.nil?
        fail ArgumentError, "Missing the required parameter 'comment_index' when calling WordsApi.get_comment"
      end
      # resource path
      local_var_path = "/words/{name}/comments/{commentIndex}"
	  local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.to_s)
	  local_var_path.sub('{' + downcase_first_letter('CommentIndex') + '}', request.comment_index.to_s)

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
    def get_comments(request)
      data, _status_code, _headers = get_comments_with_http_info(request)
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
    def get_comments_with_http_info(request)
	  unless request.is_a? GetCommentsRequest
	    fail ArgumentError, "Incorrect request type"
	  end
	  
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WordsApi.get_comments ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && request.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling WordsApi.get_comments"
      end
      # resource path
      local_var_path = "/words/{name}/comments"
	  local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.to_s)

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
    def get_document(request)
      data, _status_code, _headers = get_document_with_http_info(request)
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
    def get_document_with_http_info(request)
	  unless request.is_a? GetDocumentRequest
	    fail ArgumentError, "Incorrect request type"
	  end
	  
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WordsApi.get_document ..."
      end
      # verify the required parameter 'document_name' is set
      if @api_client.config.client_side_validation && request.document_name.nil?
        fail ArgumentError, "Missing the required parameter 'document_name' when calling WordsApi.get_document"
      end
      # resource path
      local_var_path = "/words/{documentName}"
	  local_var_path.sub('{' + downcase_first_letter('DocumentName') + '}', request.document_name.to_s)

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
    def get_document_bookmark_by_name(request)
      data, _status_code, _headers = get_document_bookmark_by_name_with_http_info(request)
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
    def get_document_bookmark_by_name_with_http_info(request)
	  unless request.is_a? GetDocumentBookmarkByNameRequest
	    fail ArgumentError, "Incorrect request type"
	  end
	  
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WordsApi.get_document_bookmark_by_name ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && request.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling WordsApi.get_document_bookmark_by_name"
      end
      # verify the required parameter 'bookmark_name' is set
      if @api_client.config.client_side_validation && request.bookmark_name.nil?
        fail ArgumentError, "Missing the required parameter 'bookmark_name' when calling WordsApi.get_document_bookmark_by_name"
      end
      # resource path
      local_var_path = "/words/{name}/bookmarks/{bookmarkName}"
	  local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.to_s)
	  local_var_path.sub('{' + downcase_first_letter('BookmarkName') + '}', request.bookmark_name.to_s)

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
    def get_document_bookmarks(request)
      data, _status_code, _headers = get_document_bookmarks_with_http_info(request)
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
    def get_document_bookmarks_with_http_info(request)
	  unless request.is_a? GetDocumentBookmarksRequest
	    fail ArgumentError, "Incorrect request type"
	  end
	  
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WordsApi.get_document_bookmarks ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && request.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling WordsApi.get_document_bookmarks"
      end
      # resource path
      local_var_path = "/words/{name}/bookmarks"
	  local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.to_s)

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
    def get_document_drawing_object_by_index(request)
      data, _status_code, _headers = get_document_drawing_object_by_index_with_http_info(request)
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
    def get_document_drawing_object_by_index_with_http_info(request)
	  unless request.is_a? GetDocumentDrawingObjectByIndexRequest
	    fail ArgumentError, "Incorrect request type"
	  end
	  
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WordsApi.get_document_drawing_object_by_index ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && request.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling WordsApi.get_document_drawing_object_by_index"
      end
      # verify the required parameter 'index' is set
      if @api_client.config.client_side_validation && request.index.nil?
        fail ArgumentError, "Missing the required parameter 'index' when calling WordsApi.get_document_drawing_object_by_index"
      end
      # resource path
      local_var_path = "/words/{name}/{nodePath}/drawingObjects/{index}"
	  local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.to_s)
	  local_var_path.sub('{' + downcase_first_letter('Index') + '}', request.index.to_s)

      # query parameters
      query_params = {}
      query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
      query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
      query_params[downcase_first_letter('LoadEncoding')] = request.load_encoding unless request.load_encoding.nil?
      query_params[downcase_first_letter('Password')] = request.password unless request.password.nil?
      query_params[downcase_first_letter('NodePath')] = request.node_path unless request.node_path.nil?

      # header parameters
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
    def get_document_drawing_object_image_data(request)
      data, _status_code, _headers = get_document_drawing_object_image_data_with_http_info(request)
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
    def get_document_drawing_object_image_data_with_http_info(request)
	  unless request.is_a? GetDocumentDrawingObjectImageDataRequest
	    fail ArgumentError, "Incorrect request type"
	  end
	  
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WordsApi.get_document_drawing_object_image_data ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && request.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling WordsApi.get_document_drawing_object_image_data"
      end
      # verify the required parameter 'index' is set
      if @api_client.config.client_side_validation && request.index.nil?
        fail ArgumentError, "Missing the required parameter 'index' when calling WordsApi.get_document_drawing_object_image_data"
      end
      # resource path
      local_var_path = "/words/{name}/{nodePath}/drawingObjects/{index}/imageData"
	  local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.to_s)
	  local_var_path.sub('{' + downcase_first_letter('Index') + '}', request.index.to_s)

      # query parameters
      query_params = {}
      query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
      query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
      query_params[downcase_first_letter('LoadEncoding')] = request.load_encoding unless request.load_encoding.nil?
      query_params[downcase_first_letter('Password')] = request.password unless request.password.nil?
      query_params[downcase_first_letter('NodePath')] = request.node_path unless request.node_path.nil?

      # header parameters
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
    def get_document_drawing_object_ole_data(request)
      data, _status_code, _headers = get_document_drawing_object_ole_data_with_http_info(request)
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
    def get_document_drawing_object_ole_data_with_http_info(request)
	  unless request.is_a? GetDocumentDrawingObjectOleDataRequest
	    fail ArgumentError, "Incorrect request type"
	  end
	  
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WordsApi.get_document_drawing_object_ole_data ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && request.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling WordsApi.get_document_drawing_object_ole_data"
      end
      # verify the required parameter 'index' is set
      if @api_client.config.client_side_validation && request.index.nil?
        fail ArgumentError, "Missing the required parameter 'index' when calling WordsApi.get_document_drawing_object_ole_data"
      end
      # resource path
      local_var_path = "/words/{name}/{nodePath}/drawingObjects/{index}/oleData"
	  local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.to_s)
	  local_var_path.sub('{' + downcase_first_letter('Index') + '}', request.index.to_s)

      # query parameters
      query_params = {}
      query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
      query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
      query_params[downcase_first_letter('LoadEncoding')] = request.load_encoding unless request.load_encoding.nil?
      query_params[downcase_first_letter('Password')] = request.password unless request.password.nil?
      query_params[downcase_first_letter('NodePath')] = request.node_path unless request.node_path.nil?

      # header parameters
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
    def get_document_drawing_objects(request)
      data, _status_code, _headers = get_document_drawing_objects_with_http_info(request)
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
    def get_document_drawing_objects_with_http_info(request)
	  unless request.is_a? GetDocumentDrawingObjectsRequest
	    fail ArgumentError, "Incorrect request type"
	  end
	  
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WordsApi.get_document_drawing_objects ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && request.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling WordsApi.get_document_drawing_objects"
      end
      # resource path
      local_var_path = "/words/{name}/{nodePath}/drawingObjects"
	  local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.to_s)

      # query parameters
      query_params = {}
      query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
      query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
      query_params[downcase_first_letter('LoadEncoding')] = request.load_encoding unless request.load_encoding.nil?
      query_params[downcase_first_letter('Password')] = request.password unless request.password.nil?
      query_params[downcase_first_letter('NodePath')] = request.node_path unless request.node_path.nil?

      # header parameters
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
    def get_document_field_names(request)
      data, _status_code, _headers = get_document_field_names_with_http_info(request)
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
    def get_document_field_names_with_http_info(request)
	  unless request.is_a? GetDocumentFieldNamesRequest
	    fail ArgumentError, "Incorrect request type"
	  end
	  
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WordsApi.get_document_field_names ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && request.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling WordsApi.get_document_field_names"
      end
      # resource path
      local_var_path = "/words/{name}/mailMergeFieldNames"
	  local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.to_s)

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
    def get_document_hyperlink_by_index(request)
      data, _status_code, _headers = get_document_hyperlink_by_index_with_http_info(request)
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
    def get_document_hyperlink_by_index_with_http_info(request)
	  unless request.is_a? GetDocumentHyperlinkByIndexRequest
	    fail ArgumentError, "Incorrect request type"
	  end
	  
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WordsApi.get_document_hyperlink_by_index ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && request.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling WordsApi.get_document_hyperlink_by_index"
      end
      # verify the required parameter 'hyperlink_index' is set
      if @api_client.config.client_side_validation && request.hyperlink_index.nil?
        fail ArgumentError, "Missing the required parameter 'hyperlink_index' when calling WordsApi.get_document_hyperlink_by_index"
      end
      # resource path
      local_var_path = "/words/{name}/hyperlinks/{hyperlinkIndex}"
	  local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.to_s)
	  local_var_path.sub('{' + downcase_first_letter('HyperlinkIndex') + '}', request.hyperlink_index.to_s)

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
    def get_document_hyperlinks(request)
      data, _status_code, _headers = get_document_hyperlinks_with_http_info(request)
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
    def get_document_hyperlinks_with_http_info(request)
	  unless request.is_a? GetDocumentHyperlinksRequest
	    fail ArgumentError, "Incorrect request type"
	  end
	  
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WordsApi.get_document_hyperlinks ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && request.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling WordsApi.get_document_hyperlinks"
      end
      # resource path
      local_var_path = "/words/{name}/hyperlinks"
	  local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.to_s)

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
    def get_document_paragraph(request)
      data, _status_code, _headers = get_document_paragraph_with_http_info(request)
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
    def get_document_paragraph_with_http_info(request)
	  unless request.is_a? GetDocumentParagraphRequest
	    fail ArgumentError, "Incorrect request type"
	  end
	  
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WordsApi.get_document_paragraph ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && request.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling WordsApi.get_document_paragraph"
      end
      # verify the required parameter 'index' is set
      if @api_client.config.client_side_validation && request.index.nil?
        fail ArgumentError, "Missing the required parameter 'index' when calling WordsApi.get_document_paragraph"
      end
      # resource path
      local_var_path = "/words/{name}/{nodePath}/paragraphs/{index}"
	  local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.to_s)
	  local_var_path.sub('{' + downcase_first_letter('Index') + '}', request.index.to_s)

      # query parameters
      query_params = {}
      query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
      query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
      query_params[downcase_first_letter('LoadEncoding')] = request.load_encoding unless request.load_encoding.nil?
      query_params[downcase_first_letter('Password')] = request.password unless request.password.nil?
      query_params[downcase_first_letter('NodePath')] = request.node_path unless request.node_path.nil?

      # header parameters
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
    def get_document_paragraph_run(request)
      data, _status_code, _headers = get_document_paragraph_run_with_http_info(request)
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
    def get_document_paragraph_run_with_http_info(request)
	  unless request.is_a? GetDocumentParagraphRunRequest
	    fail ArgumentError, "Incorrect request type"
	  end
	  
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WordsApi.get_document_paragraph_run ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && request.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling WordsApi.get_document_paragraph_run"
      end
      # verify the required parameter 'paragraph_path' is set
      if @api_client.config.client_side_validation && request.paragraph_path.nil?
        fail ArgumentError, "Missing the required parameter 'paragraph_path' when calling WordsApi.get_document_paragraph_run"
      end
      # verify the required parameter 'index' is set
      if @api_client.config.client_side_validation && request.index.nil?
        fail ArgumentError, "Missing the required parameter 'index' when calling WordsApi.get_document_paragraph_run"
      end
      # resource path
      local_var_path = "/words/{name}/{paragraphPath}/runs/{index}"
	  local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.to_s)
	  local_var_path.sub('{' + downcase_first_letter('ParagraphPath') + '}', request.paragraph_path.to_s)
	  local_var_path.sub('{' + downcase_first_letter('Index') + '}', request.index.to_s)

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
    def get_document_paragraph_run_font(request)
      data, _status_code, _headers = get_document_paragraph_run_font_with_http_info(request)
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
    def get_document_paragraph_run_font_with_http_info(request)
	  unless request.is_a? GetDocumentParagraphRunFontRequest
	    fail ArgumentError, "Incorrect request type"
	  end
	  
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WordsApi.get_document_paragraph_run_font ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && request.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling WordsApi.get_document_paragraph_run_font"
      end
      # verify the required parameter 'paragraph_path' is set
      if @api_client.config.client_side_validation && request.paragraph_path.nil?
        fail ArgumentError, "Missing the required parameter 'paragraph_path' when calling WordsApi.get_document_paragraph_run_font"
      end
      # verify the required parameter 'index' is set
      if @api_client.config.client_side_validation && request.index.nil?
        fail ArgumentError, "Missing the required parameter 'index' when calling WordsApi.get_document_paragraph_run_font"
      end
      # resource path
      local_var_path = "/words/{name}/{paragraphPath}/runs/{index}/font"
	  local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.to_s)
	  local_var_path.sub('{' + downcase_first_letter('ParagraphPath') + '}', request.paragraph_path.to_s)
	  local_var_path.sub('{' + downcase_first_letter('Index') + '}', request.index.to_s)

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
    def get_document_paragraph_runs(request)
      data, _status_code, _headers = get_document_paragraph_runs_with_http_info(request)
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
    def get_document_paragraph_runs_with_http_info(request)
	  unless request.is_a? GetDocumentParagraphRunsRequest
	    fail ArgumentError, "Incorrect request type"
	  end
	  
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WordsApi.get_document_paragraph_runs ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && request.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling WordsApi.get_document_paragraph_runs"
      end
      # verify the required parameter 'paragraph_path' is set
      if @api_client.config.client_side_validation && request.paragraph_path.nil?
        fail ArgumentError, "Missing the required parameter 'paragraph_path' when calling WordsApi.get_document_paragraph_runs"
      end
      # resource path
      local_var_path = "/words/{name}/{paragraphPath}/runs"
	  local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.to_s)
	  local_var_path.sub('{' + downcase_first_letter('ParagraphPath') + '}', request.paragraph_path.to_s)

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
    def get_document_paragraphs(request)
      data, _status_code, _headers = get_document_paragraphs_with_http_info(request)
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
    def get_document_paragraphs_with_http_info(request)
	  unless request.is_a? GetDocumentParagraphsRequest
	    fail ArgumentError, "Incorrect request type"
	  end
	  
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WordsApi.get_document_paragraphs ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && request.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling WordsApi.get_document_paragraphs"
      end
      # resource path
      local_var_path = "/words/{name}/{nodePath}/paragraphs"
	  local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.to_s)

      # query parameters
      query_params = {}
      query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
      query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
      query_params[downcase_first_letter('LoadEncoding')] = request.load_encoding unless request.load_encoding.nil?
      query_params[downcase_first_letter('Password')] = request.password unless request.password.nil?
      query_params[downcase_first_letter('NodePath')] = request.node_path unless request.node_path.nil?

      # header parameters
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
    def get_document_properties(request)
      data, _status_code, _headers = get_document_properties_with_http_info(request)
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
    def get_document_properties_with_http_info(request)
	  unless request.is_a? GetDocumentPropertiesRequest
	    fail ArgumentError, "Incorrect request type"
	  end
	  
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WordsApi.get_document_properties ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && request.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling WordsApi.get_document_properties"
      end
      # resource path
      local_var_path = "/words/{name}/documentProperties"
	  local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.to_s)

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
    def get_document_property(request)
      data, _status_code, _headers = get_document_property_with_http_info(request)
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
    def get_document_property_with_http_info(request)
	  unless request.is_a? GetDocumentPropertyRequest
	    fail ArgumentError, "Incorrect request type"
	  end
	  
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WordsApi.get_document_property ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && request.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling WordsApi.get_document_property"
      end
      # verify the required parameter 'property_name' is set
      if @api_client.config.client_side_validation && request.property_name.nil?
        fail ArgumentError, "Missing the required parameter 'property_name' when calling WordsApi.get_document_property"
      end
      # resource path
      local_var_path = "/words/{name}/documentProperties/{propertyName}"
	  local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.to_s)
	  local_var_path.sub('{' + downcase_first_letter('PropertyName') + '}', request.property_name.to_s)

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
    def get_document_protection(request)
      data, _status_code, _headers = get_document_protection_with_http_info(request)
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
    def get_document_protection_with_http_info(request)
	  unless request.is_a? GetDocumentProtectionRequest
	    fail ArgumentError, "Incorrect request type"
	  end
	  
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WordsApi.get_document_protection ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && request.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling WordsApi.get_document_protection"
      end
      # resource path
      local_var_path = "/words/{name}/protection"
	  local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.to_s)

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
    def get_document_statistics(request)
      data, _status_code, _headers = get_document_statistics_with_http_info(request)
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
    def get_document_statistics_with_http_info(request)
	  unless request.is_a? GetDocumentStatisticsRequest
	    fail ArgumentError, "Incorrect request type"
	  end
	  
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WordsApi.get_document_statistics ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && request.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling WordsApi.get_document_statistics"
      end
      # resource path
      local_var_path = "/words/{name}/statistics"
	  local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.to_s)

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
    def get_document_text_items(request)
      data, _status_code, _headers = get_document_text_items_with_http_info(request)
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
    def get_document_text_items_with_http_info(request)
	  unless request.is_a? GetDocumentTextItemsRequest
	    fail ArgumentError, "Incorrect request type"
	  end
	  
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WordsApi.get_document_text_items ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && request.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling WordsApi.get_document_text_items"
      end
      # resource path
      local_var_path = "/words/{name}/textItems"
	  local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.to_s)

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
    def get_document_with_format(request)
      data, _status_code, _headers = get_document_with_format_with_http_info(request)
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
    def get_document_with_format_with_http_info(request)
	  unless request.is_a? GetDocumentWithFormatRequest
	    fail ArgumentError, "Incorrect request type"
	  end
	  
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WordsApi.get_document_with_format ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && request.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling WordsApi.get_document_with_format"
      end
      # verify the required parameter 'format' is set
      if @api_client.config.client_side_validation && request.format.nil?
        fail ArgumentError, "Missing the required parameter 'format' when calling WordsApi.get_document_with_format"
      end
      # resource path
      local_var_path = "/words/{name}"
	  local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.to_s)

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
    def get_field(request)
      data, _status_code, _headers = get_field_with_http_info(request)
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
    def get_field_with_http_info(request)
	  unless request.is_a? GetFieldRequest
	    fail ArgumentError, "Incorrect request type"
	  end
	  
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WordsApi.get_field ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && request.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling WordsApi.get_field"
      end
      # verify the required parameter 'index' is set
      if @api_client.config.client_side_validation && request.index.nil?
        fail ArgumentError, "Missing the required parameter 'index' when calling WordsApi.get_field"
      end
      # resource path
      local_var_path = "/words/{name}/{nodePath}/fields/{index}"
	  local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.to_s)
	  local_var_path.sub('{' + downcase_first_letter('Index') + '}', request.index.to_s)

      # query parameters
      query_params = {}
      query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
      query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
      query_params[downcase_first_letter('LoadEncoding')] = request.load_encoding unless request.load_encoding.nil?
      query_params[downcase_first_letter('Password')] = request.password unless request.password.nil?
      query_params[downcase_first_letter('NodePath')] = request.node_path unless request.node_path.nil?

      # header parameters
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
    def get_fields(request)
      data, _status_code, _headers = get_fields_with_http_info(request)
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
    def get_fields_with_http_info(request)
	  unless request.is_a? GetFieldsRequest
	    fail ArgumentError, "Incorrect request type"
	  end
	  
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WordsApi.get_fields ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && request.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling WordsApi.get_fields"
      end
      # resource path
      local_var_path = "/words/{name}/{nodePath}/fields"
	  local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.to_s)

      # query parameters
      query_params = {}
      query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
      query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
      query_params[downcase_first_letter('LoadEncoding')] = request.load_encoding unless request.load_encoding.nil?
      query_params[downcase_first_letter('Password')] = request.password unless request.password.nil?
      query_params[downcase_first_letter('NodePath')] = request.node_path unless request.node_path.nil?

      # header parameters
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
    def get_footnote(request)
      data, _status_code, _headers = get_footnote_with_http_info(request)
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
    def get_footnote_with_http_info(request)
	  unless request.is_a? GetFootnoteRequest
	    fail ArgumentError, "Incorrect request type"
	  end
	  
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WordsApi.get_footnote ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && request.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling WordsApi.get_footnote"
      end
      # verify the required parameter 'index' is set
      if @api_client.config.client_side_validation && request.index.nil?
        fail ArgumentError, "Missing the required parameter 'index' when calling WordsApi.get_footnote"
      end
      # resource path
      local_var_path = "/words/{name}/{nodePath}/footnotes/{index}"
	  local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.to_s)
	  local_var_path.sub('{' + downcase_first_letter('Index') + '}', request.index.to_s)

      # query parameters
      query_params = {}
      query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
      query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
      query_params[downcase_first_letter('LoadEncoding')] = request.load_encoding unless request.load_encoding.nil?
      query_params[downcase_first_letter('Password')] = request.password unless request.password.nil?
      query_params[downcase_first_letter('NodePath')] = request.node_path unless request.node_path.nil?

      # header parameters
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
    def get_footnotes(request)
      data, _status_code, _headers = get_footnotes_with_http_info(request)
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
    def get_footnotes_with_http_info(request)
	  unless request.is_a? GetFootnotesRequest
	    fail ArgumentError, "Incorrect request type"
	  end
	  
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WordsApi.get_footnotes ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && request.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling WordsApi.get_footnotes"
      end
      # resource path
      local_var_path = "/words/{name}/{nodePath}/footnotes"
	  local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.to_s)

      # query parameters
      query_params = {}
      query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
      query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
      query_params[downcase_first_letter('LoadEncoding')] = request.load_encoding unless request.load_encoding.nil?
      query_params[downcase_first_letter('Password')] = request.password unless request.password.nil?
      query_params[downcase_first_letter('NodePath')] = request.node_path unless request.node_path.nil?

      # header parameters
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
    def get_form_field(request)
      data, _status_code, _headers = get_form_field_with_http_info(request)
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
    def get_form_field_with_http_info(request)
	  unless request.is_a? GetFormFieldRequest
	    fail ArgumentError, "Incorrect request type"
	  end
	  
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WordsApi.get_form_field ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && request.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling WordsApi.get_form_field"
      end
      # verify the required parameter 'index' is set
      if @api_client.config.client_side_validation && request.index.nil?
        fail ArgumentError, "Missing the required parameter 'index' when calling WordsApi.get_form_field"
      end
      # resource path
      local_var_path = "/words/{name}/{nodePath}/formfields/{index}"
	  local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.to_s)
	  local_var_path.sub('{' + downcase_first_letter('Index') + '}', request.index.to_s)

      # query parameters
      query_params = {}
      query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
      query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
      query_params[downcase_first_letter('LoadEncoding')] = request.load_encoding unless request.load_encoding.nil?
      query_params[downcase_first_letter('Password')] = request.password unless request.password.nil?
      query_params[downcase_first_letter('NodePath')] = request.node_path unless request.node_path.nil?

      # header parameters
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
    def get_form_fields(request)
      data, _status_code, _headers = get_form_fields_with_http_info(request)
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
    def get_form_fields_with_http_info(request)
	  unless request.is_a? GetFormFieldsRequest
	    fail ArgumentError, "Incorrect request type"
	  end
	  
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WordsApi.get_form_fields ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && request.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling WordsApi.get_form_fields"
      end
      # resource path
      local_var_path = "/words/{name}/{nodePath}/formfields"
	  local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.to_s)

      # query parameters
      query_params = {}
      query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
      query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
      query_params[downcase_first_letter('LoadEncoding')] = request.load_encoding unless request.load_encoding.nil?
      query_params[downcase_first_letter('Password')] = request.password unless request.password.nil?
      query_params[downcase_first_letter('NodePath')] = request.node_path unless request.node_path.nil?

      # header parameters
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
    def get_header_footer(request)
      data, _status_code, _headers = get_header_footer_with_http_info(request)
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
    def get_header_footer_with_http_info(request)
	  unless request.is_a? GetHeaderFooterRequest
	    fail ArgumentError, "Incorrect request type"
	  end
	  
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WordsApi.get_header_footer ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && request.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling WordsApi.get_header_footer"
      end
      # verify the required parameter 'header_footer_index' is set
      if @api_client.config.client_side_validation && request.header_footer_index.nil?
        fail ArgumentError, "Missing the required parameter 'header_footer_index' when calling WordsApi.get_header_footer"
      end
      # resource path
      local_var_path = "/words/{name}/headersfooters/{headerFooterIndex}"
	  local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.to_s)
	  local_var_path.sub('{' + downcase_first_letter('HeaderFooterIndex') + '}', request.header_footer_index.to_s)

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
    def get_header_footer_of_section(request)
      data, _status_code, _headers = get_header_footer_of_section_with_http_info(request)
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
    def get_header_footer_of_section_with_http_info(request)
	  unless request.is_a? GetHeaderFooterOfSectionRequest
	    fail ArgumentError, "Incorrect request type"
	  end
	  
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WordsApi.get_header_footer_of_section ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && request.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling WordsApi.get_header_footer_of_section"
      end
      # verify the required parameter 'header_footer_index' is set
      if @api_client.config.client_side_validation && request.header_footer_index.nil?
        fail ArgumentError, "Missing the required parameter 'header_footer_index' when calling WordsApi.get_header_footer_of_section"
      end
      # verify the required parameter 'section_index' is set
      if @api_client.config.client_side_validation && request.section_index.nil?
        fail ArgumentError, "Missing the required parameter 'section_index' when calling WordsApi.get_header_footer_of_section"
      end
      # resource path
      local_var_path = "/words/{name}/sections/{sectionIndex}/headersfooters/{headerFooterIndex}"
	  local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.to_s)
	  local_var_path.sub('{' + downcase_first_letter('HeaderFooterIndex') + '}', request.header_footer_index.to_s)
	  local_var_path.sub('{' + downcase_first_letter('SectionIndex') + '}', request.section_index.to_s)

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
    def get_header_footers(request)
      data, _status_code, _headers = get_header_footers_with_http_info(request)
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
    def get_header_footers_with_http_info(request)
	  unless request.is_a? GetHeaderFootersRequest
	    fail ArgumentError, "Incorrect request type"
	  end
	  
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WordsApi.get_header_footers ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && request.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling WordsApi.get_header_footers"
      end
      # resource path
      local_var_path = "/words/{name}/{sectionPath}/headersfooters"
	  local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.to_s)

      # query parameters
      query_params = {}
      query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
      query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
      query_params[downcase_first_letter('LoadEncoding')] = request.load_encoding unless request.load_encoding.nil?
      query_params[downcase_first_letter('Password')] = request.password unless request.password.nil?
      query_params[downcase_first_letter('SectionPath')] = request.section_path unless request.section_path.nil?
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
    def get_office_math_object(request)
      data, _status_code, _headers = get_office_math_object_with_http_info(request)
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
    def get_office_math_object_with_http_info(request)
	  unless request.is_a? GetOfficeMathObjectRequest
	    fail ArgumentError, "Incorrect request type"
	  end
	  
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WordsApi.get_office_math_object ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && request.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling WordsApi.get_office_math_object"
      end
      # verify the required parameter 'index' is set
      if @api_client.config.client_side_validation && request.index.nil?
        fail ArgumentError, "Missing the required parameter 'index' when calling WordsApi.get_office_math_object"
      end
      # resource path
      local_var_path = "/words/{name}/{nodePath}/OfficeMathObjects/{index}"
	  local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.to_s)
	  local_var_path.sub('{' + downcase_first_letter('Index') + '}', request.index.to_s)

      # query parameters
      query_params = {}
      query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
      query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
      query_params[downcase_first_letter('LoadEncoding')] = request.load_encoding unless request.load_encoding.nil?
      query_params[downcase_first_letter('Password')] = request.password unless request.password.nil?
      query_params[downcase_first_letter('NodePath')] = request.node_path unless request.node_path.nil?

      # header parameters
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
    def get_office_math_objects(request)
      data, _status_code, _headers = get_office_math_objects_with_http_info(request)
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
    def get_office_math_objects_with_http_info(request)
	  unless request.is_a? GetOfficeMathObjectsRequest
	    fail ArgumentError, "Incorrect request type"
	  end
	  
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WordsApi.get_office_math_objects ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && request.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling WordsApi.get_office_math_objects"
      end
      # resource path
      local_var_path = "/words/{name}/{nodePath}/OfficeMathObjects"
	  local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.to_s)

      # query parameters
      query_params = {}
      query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
      query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
      query_params[downcase_first_letter('LoadEncoding')] = request.load_encoding unless request.load_encoding.nil?
      query_params[downcase_first_letter('Password')] = request.password unless request.password.nil?
      query_params[downcase_first_letter('NodePath')] = request.node_path unless request.node_path.nil?

      # header parameters
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
    def get_section(request)
      data, _status_code, _headers = get_section_with_http_info(request)
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
    def get_section_with_http_info(request)
	  unless request.is_a? GetSectionRequest
	    fail ArgumentError, "Incorrect request type"
	  end
	  
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WordsApi.get_section ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && request.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling WordsApi.get_section"
      end
      # verify the required parameter 'section_index' is set
      if @api_client.config.client_side_validation && request.section_index.nil?
        fail ArgumentError, "Missing the required parameter 'section_index' when calling WordsApi.get_section"
      end
      # resource path
      local_var_path = "/words/{name}/sections/{sectionIndex}"
	  local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.to_s)
	  local_var_path.sub('{' + downcase_first_letter('SectionIndex') + '}', request.section_index.to_s)

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
    def get_section_page_setup(request)
      data, _status_code, _headers = get_section_page_setup_with_http_info(request)
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
    def get_section_page_setup_with_http_info(request)
	  unless request.is_a? GetSectionPageSetupRequest
	    fail ArgumentError, "Incorrect request type"
	  end
	  
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WordsApi.get_section_page_setup ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && request.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling WordsApi.get_section_page_setup"
      end
      # verify the required parameter 'section_index' is set
      if @api_client.config.client_side_validation && request.section_index.nil?
        fail ArgumentError, "Missing the required parameter 'section_index' when calling WordsApi.get_section_page_setup"
      end
      # resource path
      local_var_path = "/words/{name}/sections/{sectionIndex}/pageSetup"
	  local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.to_s)
	  local_var_path.sub('{' + downcase_first_letter('SectionIndex') + '}', request.section_index.to_s)

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
    def get_sections(request)
      data, _status_code, _headers = get_sections_with_http_info(request)
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
    def get_sections_with_http_info(request)
	  unless request.is_a? GetSectionsRequest
	    fail ArgumentError, "Incorrect request type"
	  end
	  
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WordsApi.get_sections ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && request.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling WordsApi.get_sections"
      end
      # resource path
      local_var_path = "/words/{name}/sections"
	  local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.to_s)

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
    def get_table(request)
      data, _status_code, _headers = get_table_with_http_info(request)
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
    def get_table_with_http_info(request)
	  unless request.is_a? GetTableRequest
	    fail ArgumentError, "Incorrect request type"
	  end
	  
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WordsApi.get_table ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && request.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling WordsApi.get_table"
      end
      # verify the required parameter 'index' is set
      if @api_client.config.client_side_validation && request.index.nil?
        fail ArgumentError, "Missing the required parameter 'index' when calling WordsApi.get_table"
      end
      # resource path
      local_var_path = "/words/{name}/{nodePath}/tables/{index}"
	  local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.to_s)
	  local_var_path.sub('{' + downcase_first_letter('Index') + '}', request.index.to_s)

      # query parameters
      query_params = {}
      query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
      query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
      query_params[downcase_first_letter('LoadEncoding')] = request.load_encoding unless request.load_encoding.nil?
      query_params[downcase_first_letter('Password')] = request.password unless request.password.nil?
      query_params[downcase_first_letter('NodePath')] = request.node_path unless request.node_path.nil?

      # header parameters
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
    def get_table_cell(request)
      data, _status_code, _headers = get_table_cell_with_http_info(request)
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
    def get_table_cell_with_http_info(request)
	  unless request.is_a? GetTableCellRequest
	    fail ArgumentError, "Incorrect request type"
	  end
	  
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WordsApi.get_table_cell ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && request.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling WordsApi.get_table_cell"
      end
      # verify the required parameter 'table_row_path' is set
      if @api_client.config.client_side_validation && request.table_row_path.nil?
        fail ArgumentError, "Missing the required parameter 'table_row_path' when calling WordsApi.get_table_cell"
      end
      # verify the required parameter 'index' is set
      if @api_client.config.client_side_validation && request.index.nil?
        fail ArgumentError, "Missing the required parameter 'index' when calling WordsApi.get_table_cell"
      end
      # resource path
      local_var_path = "/words/{name}/{tableRowPath}/cells/{index}"
	  local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.to_s)
	  local_var_path.sub('{' + downcase_first_letter('TableRowPath') + '}', request.table_row_path.to_s)
	  local_var_path.sub('{' + downcase_first_letter('Index') + '}', request.index.to_s)

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
    def get_table_cell_format(request)
      data, _status_code, _headers = get_table_cell_format_with_http_info(request)
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
    def get_table_cell_format_with_http_info(request)
	  unless request.is_a? GetTableCellFormatRequest
	    fail ArgumentError, "Incorrect request type"
	  end
	  
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WordsApi.get_table_cell_format ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && request.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling WordsApi.get_table_cell_format"
      end
      # verify the required parameter 'table_row_path' is set
      if @api_client.config.client_side_validation && request.table_row_path.nil?
        fail ArgumentError, "Missing the required parameter 'table_row_path' when calling WordsApi.get_table_cell_format"
      end
      # verify the required parameter 'index' is set
      if @api_client.config.client_side_validation && request.index.nil?
        fail ArgumentError, "Missing the required parameter 'index' when calling WordsApi.get_table_cell_format"
      end
      # resource path
      local_var_path = "/words/{name}/{tableRowPath}/cells/{index}/cellformat"
	  local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.to_s)
	  local_var_path.sub('{' + downcase_first_letter('TableRowPath') + '}', request.table_row_path.to_s)
	  local_var_path.sub('{' + downcase_first_letter('Index') + '}', request.index.to_s)

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
    def get_table_properties(request)
      data, _status_code, _headers = get_table_properties_with_http_info(request)
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
    def get_table_properties_with_http_info(request)
	  unless request.is_a? GetTablePropertiesRequest
	    fail ArgumentError, "Incorrect request type"
	  end
	  
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WordsApi.get_table_properties ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && request.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling WordsApi.get_table_properties"
      end
      # verify the required parameter 'index' is set
      if @api_client.config.client_side_validation && request.index.nil?
        fail ArgumentError, "Missing the required parameter 'index' when calling WordsApi.get_table_properties"
      end
      # resource path
      local_var_path = "/words/{name}/{nodePath}/tables/{index}/properties"
	  local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.to_s)
	  local_var_path.sub('{' + downcase_first_letter('Index') + '}', request.index.to_s)

      # query parameters
      query_params = {}
      query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
      query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
      query_params[downcase_first_letter('LoadEncoding')] = request.load_encoding unless request.load_encoding.nil?
      query_params[downcase_first_letter('Password')] = request.password unless request.password.nil?
      query_params[downcase_first_letter('NodePath')] = request.node_path unless request.node_path.nil?

      # header parameters
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
    def get_table_row(request)
      data, _status_code, _headers = get_table_row_with_http_info(request)
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
    def get_table_row_with_http_info(request)
	  unless request.is_a? GetTableRowRequest
	    fail ArgumentError, "Incorrect request type"
	  end
	  
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WordsApi.get_table_row ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && request.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling WordsApi.get_table_row"
      end
      # verify the required parameter 'table_path' is set
      if @api_client.config.client_side_validation && request.table_path.nil?
        fail ArgumentError, "Missing the required parameter 'table_path' when calling WordsApi.get_table_row"
      end
      # verify the required parameter 'index' is set
      if @api_client.config.client_side_validation && request.index.nil?
        fail ArgumentError, "Missing the required parameter 'index' when calling WordsApi.get_table_row"
      end
      # resource path
      local_var_path = "/words/{name}/{tablePath}/rows/{index}"
	  local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.to_s)
	  local_var_path.sub('{' + downcase_first_letter('TablePath') + '}', request.table_path.to_s)
	  local_var_path.sub('{' + downcase_first_letter('Index') + '}', request.index.to_s)

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
    def get_table_row_format(request)
      data, _status_code, _headers = get_table_row_format_with_http_info(request)
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
    def get_table_row_format_with_http_info(request)
	  unless request.is_a? GetTableRowFormatRequest
	    fail ArgumentError, "Incorrect request type"
	  end
	  
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WordsApi.get_table_row_format ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && request.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling WordsApi.get_table_row_format"
      end
      # verify the required parameter 'table_path' is set
      if @api_client.config.client_side_validation && request.table_path.nil?
        fail ArgumentError, "Missing the required parameter 'table_path' when calling WordsApi.get_table_row_format"
      end
      # verify the required parameter 'index' is set
      if @api_client.config.client_side_validation && request.index.nil?
        fail ArgumentError, "Missing the required parameter 'index' when calling WordsApi.get_table_row_format"
      end
      # resource path
      local_var_path = "/words/{name}/{tablePath}/rows/{index}/rowformat"
	  local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.to_s)
	  local_var_path.sub('{' + downcase_first_letter('TablePath') + '}', request.table_path.to_s)
	  local_var_path.sub('{' + downcase_first_letter('Index') + '}', request.index.to_s)

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
    def get_tables(request)
      data, _status_code, _headers = get_tables_with_http_info(request)
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
    def get_tables_with_http_info(request)
	  unless request.is_a? GetTablesRequest
	    fail ArgumentError, "Incorrect request type"
	  end
	  
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WordsApi.get_tables ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && request.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling WordsApi.get_tables"
      end
      # resource path
      local_var_path = "/words/{name}/{nodePath}/tables"
	  local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.to_s)

      # query parameters
      query_params = {}
      query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
      query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
      query_params[downcase_first_letter('LoadEncoding')] = request.load_encoding unless request.load_encoding.nil?
      query_params[downcase_first_letter('Password')] = request.password unless request.password.nil?
      query_params[downcase_first_letter('NodePath')] = request.node_path unless request.node_path.nil?

      # header parameters
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
    def insert_table(request)
      data, _status_code, _headers = insert_table_with_http_info(request)
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
    def insert_table_with_http_info(request)
	  unless request.is_a? InsertTableRequest
	    fail ArgumentError, "Incorrect request type"
	  end
	  
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WordsApi.insert_table ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && request.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling WordsApi.insert_table"
      end
      # resource path
      local_var_path = "/words/{name}/{nodePath}/tables"
	  local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.to_s)

      # query parameters
      query_params = {}
      query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
      query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
      query_params[downcase_first_letter('LoadEncoding')] = request.load_encoding unless request.load_encoding.nil?
      query_params[downcase_first_letter('Password')] = request.password unless request.password.nil?
      query_params[downcase_first_letter('DestFileName')] = request.dest_file_name unless request.dest_file_name.nil?
      query_params[downcase_first_letter('RevisionAuthor')] = request.revision_author unless request.revision_author.nil?
      query_params[downcase_first_letter('RevisionDateTime')] = request.revision_date_time unless request.revision_date_time.nil?
      query_params[downcase_first_letter('NodePath')] = request.node_path unless request.node_path.nil?

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
    def insert_table_cell(request)
      data, _status_code, _headers = insert_table_cell_with_http_info(request)
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
    def insert_table_cell_with_http_info(request)
	  unless request.is_a? InsertTableCellRequest
	    fail ArgumentError, "Incorrect request type"
	  end
	  
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WordsApi.insert_table_cell ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && request.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling WordsApi.insert_table_cell"
      end
      # verify the required parameter 'table_row_path' is set
      if @api_client.config.client_side_validation && request.table_row_path.nil?
        fail ArgumentError, "Missing the required parameter 'table_row_path' when calling WordsApi.insert_table_cell"
      end
      # resource path
      local_var_path = "/words/{name}/{tableRowPath}/cells"
	  local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.to_s)
	  local_var_path.sub('{' + downcase_first_letter('TableRowPath') + '}', request.table_row_path.to_s)

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
    def insert_table_row(request)
      data, _status_code, _headers = insert_table_row_with_http_info(request)
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
    def insert_table_row_with_http_info(request)
	  unless request.is_a? InsertTableRowRequest
	    fail ArgumentError, "Incorrect request type"
	  end
	  
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WordsApi.insert_table_row ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && request.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling WordsApi.insert_table_row"
      end
      # verify the required parameter 'table_path' is set
      if @api_client.config.client_side_validation && request.table_path.nil?
        fail ArgumentError, "Missing the required parameter 'table_path' when calling WordsApi.insert_table_row"
      end
      # resource path
      local_var_path = "/words/{name}/{tablePath}/rows"
	  local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.to_s)
	  local_var_path.sub('{' + downcase_first_letter('TablePath') + '}', request.table_path.to_s)

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
    def post_append_document(request)
      data, _status_code, _headers = post_append_document_with_http_info(request)
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
    def post_append_document_with_http_info(request)
	  unless request.is_a? PostAppendDocumentRequest
	    fail ArgumentError, "Incorrect request type"
	  end
	  
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WordsApi.post_append_document ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && request.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling WordsApi.post_append_document"
      end
      # verify the required parameter 'document_list' is set
      if @api_client.config.client_side_validation && request.document_list.nil?
        fail ArgumentError, "Missing the required parameter 'document_list' when calling WordsApi.post_append_document"
      end
      # resource path
      local_var_path = "/words/{name}/appendDocument"
	  local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.to_s)

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
    def post_change_document_protection(request)
      data, _status_code, _headers = post_change_document_protection_with_http_info(request)
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
    def post_change_document_protection_with_http_info(request)
	  unless request.is_a? PostChangeDocumentProtectionRequest
	    fail ArgumentError, "Incorrect request type"
	  end
	  
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WordsApi.post_change_document_protection ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && request.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling WordsApi.post_change_document_protection"
      end
      # verify the required parameter 'protection_request' is set
      if @api_client.config.client_side_validation && request.protection_request.nil?
        fail ArgumentError, "Missing the required parameter 'protection_request' when calling WordsApi.post_change_document_protection"
      end
      # resource path
      local_var_path = "/words/{name}/protection"
	  local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.to_s)

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
    def post_comment(request)
      data, _status_code, _headers = post_comment_with_http_info(request)
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
    def post_comment_with_http_info(request)
	  unless request.is_a? PostCommentRequest
	    fail ArgumentError, "Incorrect request type"
	  end
	  
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WordsApi.post_comment ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && request.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling WordsApi.post_comment"
      end
      # verify the required parameter 'comment_index' is set
      if @api_client.config.client_side_validation && request.comment_index.nil?
        fail ArgumentError, "Missing the required parameter 'comment_index' when calling WordsApi.post_comment"
      end
      # verify the required parameter 'comment' is set
      if @api_client.config.client_side_validation && request.comment.nil?
        fail ArgumentError, "Missing the required parameter 'comment' when calling WordsApi.post_comment"
      end
      # resource path
      local_var_path = "/words/{name}/comments/{commentIndex}"
	  local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.to_s)
	  local_var_path.sub('{' + downcase_first_letter('CommentIndex') + '}', request.comment_index.to_s)

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
    def post_compare_document(request)
      data, _status_code, _headers = post_compare_document_with_http_info(request)
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
    def post_compare_document_with_http_info(request)
	  unless request.is_a? PostCompareDocumentRequest
	    fail ArgumentError, "Incorrect request type"
	  end
	  
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WordsApi.post_compare_document ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && request.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling WordsApi.post_compare_document"
      end
      # verify the required parameter 'compare_data' is set
      if @api_client.config.client_side_validation && request.compare_data.nil?
        fail ArgumentError, "Missing the required parameter 'compare_data' when calling WordsApi.post_compare_document"
      end
      # resource path
      local_var_path = "/words/{name}/compareDocument"
	  local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.to_s)

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
    def post_document_execute_mail_merge(request)
      data, _status_code, _headers = post_document_execute_mail_merge_with_http_info(request)
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
    def post_document_execute_mail_merge_with_http_info(request)
	  unless request.is_a? PostDocumentExecuteMailMergeRequest
	    fail ArgumentError, "Incorrect request type"
	  end
	  
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WordsApi.post_document_execute_mail_merge ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && request.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling WordsApi.post_document_execute_mail_merge"
      end
      # verify the required parameter 'with_regions' is set
      if @api_client.config.client_side_validation && request.with_regions.nil?
        fail ArgumentError, "Missing the required parameter 'with_regions' when calling WordsApi.post_document_execute_mail_merge"
      end
      # resource path
      local_var_path = "/words/{name}/executeMailMerge"
	  local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.to_s)

      # query parameters
      query_params = {}
      query_params[downcase_first_letter('WithRegions')] = request.with_regions
      query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
      query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
      query_params[downcase_first_letter('LoadEncoding')] = request.load_encoding unless request.load_encoding.nil?
      query_params[downcase_first_letter('Password')] = request.password unless request.password.nil?
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
      form_params[downcase_first_letter('Data')] = request.data unless request.data.nil?

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
    def post_document_paragraph_run_font(request)
      data, _status_code, _headers = post_document_paragraph_run_font_with_http_info(request)
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
    def post_document_paragraph_run_font_with_http_info(request)
	  unless request.is_a? PostDocumentParagraphRunFontRequest
	    fail ArgumentError, "Incorrect request type"
	  end
	  
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WordsApi.post_document_paragraph_run_font ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && request.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling WordsApi.post_document_paragraph_run_font"
      end
      # verify the required parameter 'font_dto' is set
      if @api_client.config.client_side_validation && request.font_dto.nil?
        fail ArgumentError, "Missing the required parameter 'font_dto' when calling WordsApi.post_document_paragraph_run_font"
      end
      # verify the required parameter 'paragraph_path' is set
      if @api_client.config.client_side_validation && request.paragraph_path.nil?
        fail ArgumentError, "Missing the required parameter 'paragraph_path' when calling WordsApi.post_document_paragraph_run_font"
      end
      # verify the required parameter 'index' is set
      if @api_client.config.client_side_validation && request.index.nil?
        fail ArgumentError, "Missing the required parameter 'index' when calling WordsApi.post_document_paragraph_run_font"
      end
      # resource path
      local_var_path = "/words/{name}/{paragraphPath}/runs/{index}/font"
	  local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.to_s)
	  local_var_path.sub('{' + downcase_first_letter('ParagraphPath') + '}', request.paragraph_path.to_s)
	  local_var_path.sub('{' + downcase_first_letter('Index') + '}', request.index.to_s)

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
    def post_document_save_as(request)
      data, _status_code, _headers = post_document_save_as_with_http_info(request)
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
    def post_document_save_as_with_http_info(request)
	  unless request.is_a? PostDocumentSaveAsRequest
	    fail ArgumentError, "Incorrect request type"
	  end
	  
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WordsApi.post_document_save_as ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && request.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling WordsApi.post_document_save_as"
      end
      # verify the required parameter 'save_options_data' is set
      if @api_client.config.client_side_validation && request.save_options_data.nil?
        fail ArgumentError, "Missing the required parameter 'save_options_data' when calling WordsApi.post_document_save_as"
      end
      # resource path
      local_var_path = "/words/{name}/saveAs"
	  local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.to_s)

      # query parameters
      query_params = {}
      query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
      query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
      query_params[downcase_first_letter('LoadEncoding')] = request.load_encoding unless request.load_encoding.nil?
      query_params[downcase_first_letter('Password')] = request.password unless request.password.nil?
      query_params[downcase_first_letter('DestFileName')] = request.dest_file_name unless request.dest_file_name.nil?
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
    def post_drawing_object(request)
      data, _status_code, _headers = post_drawing_object_with_http_info(request)
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
    def post_drawing_object_with_http_info(request)
	  unless request.is_a? PostDrawingObjectRequest
	    fail ArgumentError, "Incorrect request type"
	  end
	  
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WordsApi.post_drawing_object ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && request.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling WordsApi.post_drawing_object"
      end
      # verify the required parameter 'drawing_object' is set
      if @api_client.config.client_side_validation && request.drawing_object.nil?
        fail ArgumentError, "Missing the required parameter 'drawing_object' when calling WordsApi.post_drawing_object"
      end
      # verify the required parameter 'image_file' is set
      if @api_client.config.client_side_validation && request.image_file.nil?
        fail ArgumentError, "Missing the required parameter 'image_file' when calling WordsApi.post_drawing_object"
      end
      # verify the required parameter 'index' is set
      if @api_client.config.client_side_validation && request.index.nil?
        fail ArgumentError, "Missing the required parameter 'index' when calling WordsApi.post_drawing_object"
      end
      # resource path
      local_var_path = "/words/{name}/{nodePath}/drawingObjects/{index}"
	  local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.to_s)
	  local_var_path.sub('{' + downcase_first_letter('Index') + '}', request.index.to_s)

      # query parameters
      query_params = {}
      query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
      query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
      query_params[downcase_first_letter('LoadEncoding')] = request.load_encoding unless request.load_encoding.nil?
      query_params[downcase_first_letter('Password')] = request.password unless request.password.nil?
      query_params[downcase_first_letter('DestFileName')] = request.dest_file_name unless request.dest_file_name.nil?
      query_params[downcase_first_letter('RevisionAuthor')] = request.revision_author unless request.revision_author.nil?
      query_params[downcase_first_letter('RevisionDateTime')] = request.revision_date_time unless request.revision_date_time.nil?
      query_params[downcase_first_letter('NodePath')] = request.node_path unless request.node_path.nil?

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
    def post_execute_template(request)
      data, _status_code, _headers = post_execute_template_with_http_info(request)
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
    def post_execute_template_with_http_info(request)
	  unless request.is_a? PostExecuteTemplateRequest
	    fail ArgumentError, "Incorrect request type"
	  end
	  
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WordsApi.post_execute_template ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && request.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling WordsApi.post_execute_template"
      end
      # verify the required parameter 'data' is set
      if @api_client.config.client_side_validation && request.data.nil?
        fail ArgumentError, "Missing the required parameter 'data' when calling WordsApi.post_execute_template"
      end
      # resource path
      local_var_path = "/words/{name}/executeTemplate"
	  local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.to_s)

      # query parameters
      query_params = {}
      query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
      query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
      query_params[downcase_first_letter('LoadEncoding')] = request.load_encoding unless request.load_encoding.nil?
      query_params[downcase_first_letter('Password')] = request.password unless request.password.nil?
      query_params[downcase_first_letter('Cleanup')] = request.cleanup unless request.cleanup.nil?
      query_params[downcase_first_letter('UseWholeParagraphAsRegion')] = request.use_whole_paragraph_as_region unless request.use_whole_paragraph_as_region.nil?
      query_params[downcase_first_letter('WithRegions')] = request.with_regions unless request.with_regions.nil?
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
    def post_field(request)
      data, _status_code, _headers = post_field_with_http_info(request)
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
    def post_field_with_http_info(request)
	  unless request.is_a? PostFieldRequest
	    fail ArgumentError, "Incorrect request type"
	  end
	  
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WordsApi.post_field ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && request.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling WordsApi.post_field"
      end
      # verify the required parameter 'field' is set
      if @api_client.config.client_side_validation && request.field.nil?
        fail ArgumentError, "Missing the required parameter 'field' when calling WordsApi.post_field"
      end
      # verify the required parameter 'index' is set
      if @api_client.config.client_side_validation && request.index.nil?
        fail ArgumentError, "Missing the required parameter 'index' when calling WordsApi.post_field"
      end
      # resource path
      local_var_path = "/words/{name}/{nodePath}/fields/{index}"
	  local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.to_s)
	  local_var_path.sub('{' + downcase_first_letter('Index') + '}', request.index.to_s)

      # query parameters
      query_params = {}
      query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
      query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
      query_params[downcase_first_letter('LoadEncoding')] = request.load_encoding unless request.load_encoding.nil?
      query_params[downcase_first_letter('Password')] = request.password unless request.password.nil?
      query_params[downcase_first_letter('DestFileName')] = request.dest_file_name unless request.dest_file_name.nil?
      query_params[downcase_first_letter('RevisionAuthor')] = request.revision_author unless request.revision_author.nil?
      query_params[downcase_first_letter('RevisionDateTime')] = request.revision_date_time unless request.revision_date_time.nil?
      query_params[downcase_first_letter('NodePath')] = request.node_path unless request.node_path.nil?

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
    def post_footnote(request)
      data, _status_code, _headers = post_footnote_with_http_info(request)
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
    def post_footnote_with_http_info(request)
	  unless request.is_a? PostFootnoteRequest
	    fail ArgumentError, "Incorrect request type"
	  end
	  
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WordsApi.post_footnote ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && request.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling WordsApi.post_footnote"
      end
      # verify the required parameter 'footnote_dto' is set
      if @api_client.config.client_side_validation && request.footnote_dto.nil?
        fail ArgumentError, "Missing the required parameter 'footnote_dto' when calling WordsApi.post_footnote"
      end
      # verify the required parameter 'index' is set
      if @api_client.config.client_side_validation && request.index.nil?
        fail ArgumentError, "Missing the required parameter 'index' when calling WordsApi.post_footnote"
      end
      # resource path
      local_var_path = "/words/{name}/{nodePath}/footnotes/{index}"
	  local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.to_s)
	  local_var_path.sub('{' + downcase_first_letter('Index') + '}', request.index.to_s)

      # query parameters
      query_params = {}
      query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
      query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
      query_params[downcase_first_letter('LoadEncoding')] = request.load_encoding unless request.load_encoding.nil?
      query_params[downcase_first_letter('Password')] = request.password unless request.password.nil?
      query_params[downcase_first_letter('DestFileName')] = request.dest_file_name unless request.dest_file_name.nil?
      query_params[downcase_first_letter('RevisionAuthor')] = request.revision_author unless request.revision_author.nil?
      query_params[downcase_first_letter('RevisionDateTime')] = request.revision_date_time unless request.revision_date_time.nil?
      query_params[downcase_first_letter('NodePath')] = request.node_path unless request.node_path.nil?

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
    def post_form_field(request)
      data, _status_code, _headers = post_form_field_with_http_info(request)
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
    def post_form_field_with_http_info(request)
	  unless request.is_a? PostFormFieldRequest
	    fail ArgumentError, "Incorrect request type"
	  end
	  
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WordsApi.post_form_field ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && request.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling WordsApi.post_form_field"
      end
      # verify the required parameter 'form_field' is set
      if @api_client.config.client_side_validation && request.form_field.nil?
        fail ArgumentError, "Missing the required parameter 'form_field' when calling WordsApi.post_form_field"
      end
      # verify the required parameter 'index' is set
      if @api_client.config.client_side_validation && request.index.nil?
        fail ArgumentError, "Missing the required parameter 'index' when calling WordsApi.post_form_field"
      end
      # resource path
      local_var_path = "/words/{name}/{nodePath}/formfields/{index}"
	  local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.to_s)
	  local_var_path.sub('{' + downcase_first_letter('Index') + '}', request.index.to_s)

      # query parameters
      query_params = {}
      query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
      query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
      query_params[downcase_first_letter('LoadEncoding')] = request.load_encoding unless request.load_encoding.nil?
      query_params[downcase_first_letter('Password')] = request.password unless request.password.nil?
      query_params[downcase_first_letter('DestFileName')] = request.dest_file_name unless request.dest_file_name.nil?
      query_params[downcase_first_letter('RevisionAuthor')] = request.revision_author unless request.revision_author.nil?
      query_params[downcase_first_letter('RevisionDateTime')] = request.revision_date_time unless request.revision_date_time.nil?
      query_params[downcase_first_letter('NodePath')] = request.node_path unless request.node_path.nil?

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
    def post_insert_document_watermark_image(request)
      data, _status_code, _headers = post_insert_document_watermark_image_with_http_info(request)
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
    def post_insert_document_watermark_image_with_http_info(request)
	  unless request.is_a? PostInsertDocumentWatermarkImageRequest
	    fail ArgumentError, "Incorrect request type"
	  end
	  
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WordsApi.post_insert_document_watermark_image ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && request.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling WordsApi.post_insert_document_watermark_image"
      end
      # resource path
      local_var_path = "/words/{name}/watermark/insertImage"
	  local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.to_s)

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
      form_params[downcase_first_letter('ImageFile')] = request.image_file unless request.image_file.nil?

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
    def post_insert_document_watermark_text(request)
      data, _status_code, _headers = post_insert_document_watermark_text_with_http_info(request)
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
    def post_insert_document_watermark_text_with_http_info(request)
	  unless request.is_a? PostInsertDocumentWatermarkTextRequest
	    fail ArgumentError, "Incorrect request type"
	  end
	  
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WordsApi.post_insert_document_watermark_text ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && request.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling WordsApi.post_insert_document_watermark_text"
      end
      # verify the required parameter 'watermark_text' is set
      if @api_client.config.client_side_validation && request.watermark_text.nil?
        fail ArgumentError, "Missing the required parameter 'watermark_text' when calling WordsApi.post_insert_document_watermark_text"
      end
      # resource path
      local_var_path = "/words/{name}/watermark/insertText"
	  local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.to_s)

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
    def post_insert_page_numbers(request)
      data, _status_code, _headers = post_insert_page_numbers_with_http_info(request)
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
    def post_insert_page_numbers_with_http_info(request)
	  unless request.is_a? PostInsertPageNumbersRequest
	    fail ArgumentError, "Incorrect request type"
	  end
	  
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WordsApi.post_insert_page_numbers ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && request.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling WordsApi.post_insert_page_numbers"
      end
      # verify the required parameter 'page_number' is set
      if @api_client.config.client_side_validation && request.page_number.nil?
        fail ArgumentError, "Missing the required parameter 'page_number' when calling WordsApi.post_insert_page_numbers"
      end
      # resource path
      local_var_path = "/words/{name}/insertPageNumbers"
	  local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.to_s)

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
    def post_load_web_document(request)
      data, _status_code, _headers = post_load_web_document_with_http_info(request)
      data
    end

    # Loads new document from web into the file with any supported format of data.
    # 
    # @param data Parameters of loading.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :storage File storage, which have to be used.
    # @return [Array<(SaveResponse, Fixnum, Hash)>] SaveResponse data, response status code and response headers
    def post_load_web_document_with_http_info(request)
	  unless request.is_a? PostLoadWebDocumentRequest
	    fail ArgumentError, "Incorrect request type"
	  end
	  
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WordsApi.post_load_web_document ..."
      end
      # verify the required parameter 'data' is set
      if @api_client.config.client_side_validation && request.data.nil?
        fail ArgumentError, "Missing the required parameter 'data' when calling WordsApi.post_load_web_document"
      end
      # resource path
      local_var_path = "/words/loadWebDocument"

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
    def post_replace_text(request)
      data, _status_code, _headers = post_replace_text_with_http_info(request)
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
    def post_replace_text_with_http_info(request)
	  unless request.is_a? PostReplaceTextRequest
	    fail ArgumentError, "Incorrect request type"
	  end
	  
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WordsApi.post_replace_text ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && request.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling WordsApi.post_replace_text"
      end
      # verify the required parameter 'replace_text' is set
      if @api_client.config.client_side_validation && request.replace_text.nil?
        fail ArgumentError, "Missing the required parameter 'replace_text' when calling WordsApi.post_replace_text"
      end
      # resource path
      local_var_path = "/words/{name}/replaceText"
	  local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.to_s)

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
    def post_run(request)
      data, _status_code, _headers = post_run_with_http_info(request)
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
    def post_run_with_http_info(request)
	  unless request.is_a? PostRunRequest
	    fail ArgumentError, "Incorrect request type"
	  end
	  
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WordsApi.post_run ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && request.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling WordsApi.post_run"
      end
      # verify the required parameter 'run' is set
      if @api_client.config.client_side_validation && request.run.nil?
        fail ArgumentError, "Missing the required parameter 'run' when calling WordsApi.post_run"
      end
      # verify the required parameter 'paragraph_path' is set
      if @api_client.config.client_side_validation && request.paragraph_path.nil?
        fail ArgumentError, "Missing the required parameter 'paragraph_path' when calling WordsApi.post_run"
      end
      # verify the required parameter 'index' is set
      if @api_client.config.client_side_validation && request.index.nil?
        fail ArgumentError, "Missing the required parameter 'index' when calling WordsApi.post_run"
      end
      # resource path
      local_var_path = "/words/{name}/{paragraphPath}/runs/{index}"
	  local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.to_s)
	  local_var_path.sub('{' + downcase_first_letter('ParagraphPath') + '}', request.paragraph_path.to_s)
	  local_var_path.sub('{' + downcase_first_letter('Index') + '}', request.index.to_s)

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
    def post_split_document(request)
      data, _status_code, _headers = post_split_document_with_http_info(request)
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
    def post_split_document_with_http_info(request)
	  unless request.is_a? PostSplitDocumentRequest
	    fail ArgumentError, "Incorrect request type"
	  end
	  
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WordsApi.post_split_document ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && request.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling WordsApi.post_split_document"
      end
      # resource path
      local_var_path = "/words/{name}/split"
	  local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.to_s)

      # query parameters
      query_params = {}
      query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
      query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
      query_params[downcase_first_letter('LoadEncoding')] = request.load_encoding unless request.load_encoding.nil?
      query_params[downcase_first_letter('Password')] = request.password unless request.password.nil?
      query_params[downcase_first_letter('DestFileName')] = request.dest_file_name unless request.dest_file_name.nil?
      query_params[downcase_first_letter('Format')] = request.format unless request.format.nil?
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
    def post_update_document_bookmark(request)
      data, _status_code, _headers = post_update_document_bookmark_with_http_info(request)
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
    def post_update_document_bookmark_with_http_info(request)
	  unless request.is_a? PostUpdateDocumentBookmarkRequest
	    fail ArgumentError, "Incorrect request type"
	  end
	  
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WordsApi.post_update_document_bookmark ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && request.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling WordsApi.post_update_document_bookmark"
      end
      # verify the required parameter 'bookmark_data' is set
      if @api_client.config.client_side_validation && request.bookmark_data.nil?
        fail ArgumentError, "Missing the required parameter 'bookmark_data' when calling WordsApi.post_update_document_bookmark"
      end
      # verify the required parameter 'bookmark_name' is set
      if @api_client.config.client_side_validation && request.bookmark_name.nil?
        fail ArgumentError, "Missing the required parameter 'bookmark_name' when calling WordsApi.post_update_document_bookmark"
      end
      # resource path
      local_var_path = "/words/{name}/bookmarks/{bookmarkName}"
	  local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.to_s)
	  local_var_path.sub('{' + downcase_first_letter('BookmarkName') + '}', request.bookmark_name.to_s)

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
    def post_update_document_fields(request)
      data, _status_code, _headers = post_update_document_fields_with_http_info(request)
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
    def post_update_document_fields_with_http_info(request)
	  unless request.is_a? PostUpdateDocumentFieldsRequest
	    fail ArgumentError, "Incorrect request type"
	  end
	  
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WordsApi.post_update_document_fields ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && request.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling WordsApi.post_update_document_fields"
      end
      # resource path
      local_var_path = "/words/{name}/updateFields"
	  local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.to_s)

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
    def put_comment(request)
      data, _status_code, _headers = put_comment_with_http_info(request)
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
    def put_comment_with_http_info(request)
	  unless request.is_a? PutCommentRequest
	    fail ArgumentError, "Incorrect request type"
	  end
	  
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WordsApi.put_comment ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && request.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling WordsApi.put_comment"
      end
      # verify the required parameter 'comment' is set
      if @api_client.config.client_side_validation && request.comment.nil?
        fail ArgumentError, "Missing the required parameter 'comment' when calling WordsApi.put_comment"
      end
      # resource path
      local_var_path = "/words/{name}/comments"
	  local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.to_s)

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
    def put_convert_document(request)
      data, _status_code, _headers = put_convert_document_with_http_info(request)
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
    def put_convert_document_with_http_info(request)
	  unless request.is_a? PutConvertDocumentRequest
	    fail ArgumentError, "Incorrect request type"
	  end
	  
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WordsApi.put_convert_document ..."
      end
      # verify the required parameter 'document' is set
      if @api_client.config.client_side_validation && request.document.nil?
        fail ArgumentError, "Missing the required parameter 'document' when calling WordsApi.put_convert_document"
      end
      # verify the required parameter 'format' is set
      if @api_client.config.client_side_validation && request.format.nil?
        fail ArgumentError, "Missing the required parameter 'format' when calling WordsApi.put_convert_document"
      end
      # resource path
      local_var_path = "/words/convert"

      # query parameters
      query_params = {}
      query_params[downcase_first_letter('Format')] = request.format
      query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
      query_params[downcase_first_letter('OutPath')] = request.out_path unless request.out_path.nil?
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
    def put_create_document(request)
      data, _status_code, _headers = put_create_document_with_http_info(request)
      data
    end

    # Creates new document. Document is created with format which is recognized from file extensions.  Supported extentions: \&quot;.doc\&quot;, \&quot;.docx\&quot;, \&quot;.docm\&quot;, \&quot;.dot\&quot;, \&quot;.dotm\&quot;, \&quot;.dotx\&quot;, \&quot;.flatopc\&quot;, \&quot;.fopc\&quot;, \&quot;.flatopc_macro\&quot;, \&quot;.fopc_macro\&quot;, \&quot;.flatopc_template\&quot;, \&quot;.fopc_template\&quot;, \&quot;.flatopc_template_macro\&quot;, \&quot;.fopc_template_macro\&quot;, \&quot;.wordml\&quot;, \&quot;.wml\&quot;, \&quot;.rtf\&quot;
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :storage File storage, which have to be used.
    # @option opts [String] :file_name The file name.
    # @option opts [String] :folder The document folder.
    # @return [Array<(DocumentResponse, Fixnum, Hash)>] DocumentResponse data, response status code and response headers
    def put_create_document_with_http_info(request)
	  unless request.is_a? PutCreateDocumentRequest
	    fail ArgumentError, "Incorrect request type"
	  end
	  
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WordsApi.put_create_document ..."
      end
      # resource path
      local_var_path = "/words/create"

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
    def put_document_field_names(request)
      data, _status_code, _headers = put_document_field_names_with_http_info(request)
      data
    end

    # Read document field names.
    # 
    # @param template File with template
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :use_non_merge_fields Use non merge fields or not.
    # @return [Array<(FieldNamesResponse, Fixnum, Hash)>] FieldNamesResponse data, response status code and response headers
    def put_document_field_names_with_http_info(request)
	  unless request.is_a? PutDocumentFieldNamesRequest
	    fail ArgumentError, "Incorrect request type"
	  end
	  
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WordsApi.put_document_field_names ..."
      end
      # verify the required parameter 'template' is set
      if @api_client.config.client_side_validation && request.template.nil?
        fail ArgumentError, "Missing the required parameter 'template' when calling WordsApi.put_document_field_names"
      end
      # resource path
      local_var_path = "/words/mailMergeFieldNames"

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
    def put_document_save_as_tiff(request)
      data, _status_code, _headers = put_document_save_as_tiff_with_http_info(request)
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
    def put_document_save_as_tiff_with_http_info(request)
	  unless request.is_a? PutDocumentSaveAsTiffRequest
	    fail ArgumentError, "Incorrect request type"
	  end
	  
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WordsApi.put_document_save_as_tiff ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && request.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling WordsApi.put_document_save_as_tiff"
      end
      # verify the required parameter 'save_options' is set
      if @api_client.config.client_side_validation && request.save_options.nil?
        fail ArgumentError, "Missing the required parameter 'save_options' when calling WordsApi.put_document_save_as_tiff"
      end
      # resource path
      local_var_path = "/words/{name}/saveAs/tiff"
	  local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.to_s)

      # query parameters
      query_params = {}
      query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
      query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
      query_params[downcase_first_letter('LoadEncoding')] = request.load_encoding unless request.load_encoding.nil?
      query_params[downcase_first_letter('Password')] = request.password unless request.password.nil?
      query_params[downcase_first_letter('DestFileName')] = request.dest_file_name unless request.dest_file_name.nil?
      query_params[downcase_first_letter('ResultFile')] = request.result_file unless request.result_file.nil?
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
    def put_drawing_object(request)
      data, _status_code, _headers = put_drawing_object_with_http_info(request)
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
    def put_drawing_object_with_http_info(request)
	  unless request.is_a? PutDrawingObjectRequest
	    fail ArgumentError, "Incorrect request type"
	  end
	  
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WordsApi.put_drawing_object ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && request.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling WordsApi.put_drawing_object"
      end
      # verify the required parameter 'drawing_object' is set
      if @api_client.config.client_side_validation && request.drawing_object.nil?
        fail ArgumentError, "Missing the required parameter 'drawing_object' when calling WordsApi.put_drawing_object"
      end
      # verify the required parameter 'image_file' is set
      if @api_client.config.client_side_validation && request.image_file.nil?
        fail ArgumentError, "Missing the required parameter 'image_file' when calling WordsApi.put_drawing_object"
      end
      # resource path
      local_var_path = "/words/{name}/{nodePath}/drawingObjects"
	  local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.to_s)

      # query parameters
      query_params = {}
      query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
      query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
      query_params[downcase_first_letter('LoadEncoding')] = request.load_encoding unless request.load_encoding.nil?
      query_params[downcase_first_letter('Password')] = request.password unless request.password.nil?
      query_params[downcase_first_letter('DestFileName')] = request.dest_file_name unless request.dest_file_name.nil?
      query_params[downcase_first_letter('RevisionAuthor')] = request.revision_author unless request.revision_author.nil?
      query_params[downcase_first_letter('RevisionDateTime')] = request.revision_date_time unless request.revision_date_time.nil?
      query_params[downcase_first_letter('NodePath')] = request.node_path unless request.node_path.nil?

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
    def put_execute_mail_merge_online(request)
      data, _status_code, _headers = put_execute_mail_merge_online_with_http_info(request)
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
    def put_execute_mail_merge_online_with_http_info(request)
	  unless request.is_a? PutExecuteMailMergeOnlineRequest
	    fail ArgumentError, "Incorrect request type"
	  end
	  
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WordsApi.put_execute_mail_merge_online ..."
      end
      # verify the required parameter 'template' is set
      if @api_client.config.client_side_validation && request.template.nil?
        fail ArgumentError, "Missing the required parameter 'template' when calling WordsApi.put_execute_mail_merge_online"
      end
      # verify the required parameter 'data' is set
      if @api_client.config.client_side_validation && request.data.nil?
        fail ArgumentError, "Missing the required parameter 'data' when calling WordsApi.put_execute_mail_merge_online"
      end
      # resource path
      local_var_path = "/words/executeMailMerge"

      # query parameters
      query_params = {}
      query_params[downcase_first_letter('WithRegions')] = request.with_regions unless request.with_regions.nil?
      query_params[downcase_first_letter('Cleanup')] = request.cleanup unless request.cleanup.nil?

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
    def put_execute_template_online(request)
      data, _status_code, _headers = put_execute_template_online_with_http_info(request)
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
    def put_execute_template_online_with_http_info(request)
	  unless request.is_a? PutExecuteTemplateOnlineRequest
	    fail ArgumentError, "Incorrect request type"
	  end
	  
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WordsApi.put_execute_template_online ..."
      end
      # verify the required parameter 'template' is set
      if @api_client.config.client_side_validation && request.template.nil?
        fail ArgumentError, "Missing the required parameter 'template' when calling WordsApi.put_execute_template_online"
      end
      # verify the required parameter 'data' is set
      if @api_client.config.client_side_validation && request.data.nil?
        fail ArgumentError, "Missing the required parameter 'data' when calling WordsApi.put_execute_template_online"
      end
      # resource path
      local_var_path = "/words/executeTemplate"

      # query parameters
      query_params = {}
      query_params[downcase_first_letter('Cleanup')] = request.cleanup unless request.cleanup.nil?
      query_params[downcase_first_letter('UseWholeParagraphAsRegion')] = request.use_whole_paragraph_as_region unless request.use_whole_paragraph_as_region.nil?
      query_params[downcase_first_letter('WithRegions')] = request.with_regions unless request.with_regions.nil?

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
    def put_field(request)
      data, _status_code, _headers = put_field_with_http_info(request)
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
    def put_field_with_http_info(request)
	  unless request.is_a? PutFieldRequest
	    fail ArgumentError, "Incorrect request type"
	  end
	  
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WordsApi.put_field ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && request.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling WordsApi.put_field"
      end
      # verify the required parameter 'field' is set
      if @api_client.config.client_side_validation && request.field.nil?
        fail ArgumentError, "Missing the required parameter 'field' when calling WordsApi.put_field"
      end
      # resource path
      local_var_path = "/words/{name}/{nodePath}/fields"
	  local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.to_s)

      # query parameters
      query_params = {}
      query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
      query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
      query_params[downcase_first_letter('LoadEncoding')] = request.load_encoding unless request.load_encoding.nil?
      query_params[downcase_first_letter('Password')] = request.password unless request.password.nil?
      query_params[downcase_first_letter('DestFileName')] = request.dest_file_name unless request.dest_file_name.nil?
      query_params[downcase_first_letter('RevisionAuthor')] = request.revision_author unless request.revision_author.nil?
      query_params[downcase_first_letter('RevisionDateTime')] = request.revision_date_time unless request.revision_date_time.nil?
      query_params[downcase_first_letter('NodePath')] = request.node_path unless request.node_path.nil?
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
    def put_footnote(request)
      data, _status_code, _headers = put_footnote_with_http_info(request)
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
    def put_footnote_with_http_info(request)
	  unless request.is_a? PutFootnoteRequest
	    fail ArgumentError, "Incorrect request type"
	  end
	  
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WordsApi.put_footnote ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && request.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling WordsApi.put_footnote"
      end
      # verify the required parameter 'footnote_dto' is set
      if @api_client.config.client_side_validation && request.footnote_dto.nil?
        fail ArgumentError, "Missing the required parameter 'footnote_dto' when calling WordsApi.put_footnote"
      end
      # resource path
      local_var_path = "/words/{name}/{nodePath}/footnotes"
	  local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.to_s)

      # query parameters
      query_params = {}
      query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
      query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
      query_params[downcase_first_letter('LoadEncoding')] = request.load_encoding unless request.load_encoding.nil?
      query_params[downcase_first_letter('Password')] = request.password unless request.password.nil?
      query_params[downcase_first_letter('DestFileName')] = request.dest_file_name unless request.dest_file_name.nil?
      query_params[downcase_first_letter('RevisionAuthor')] = request.revision_author unless request.revision_author.nil?
      query_params[downcase_first_letter('RevisionDateTime')] = request.revision_date_time unless request.revision_date_time.nil?
      query_params[downcase_first_letter('NodePath')] = request.node_path unless request.node_path.nil?

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
    def put_form_field(request)
      data, _status_code, _headers = put_form_field_with_http_info(request)
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
    def put_form_field_with_http_info(request)
	  unless request.is_a? PutFormFieldRequest
	    fail ArgumentError, "Incorrect request type"
	  end
	  
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WordsApi.put_form_field ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && request.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling WordsApi.put_form_field"
      end
      # verify the required parameter 'form_field' is set
      if @api_client.config.client_side_validation && request.form_field.nil?
        fail ArgumentError, "Missing the required parameter 'form_field' when calling WordsApi.put_form_field"
      end
      # resource path
      local_var_path = "/words/{name}/{nodePath}/formfields"
	  local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.to_s)

      # query parameters
      query_params = {}
      query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
      query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
      query_params[downcase_first_letter('LoadEncoding')] = request.load_encoding unless request.load_encoding.nil?
      query_params[downcase_first_letter('Password')] = request.password unless request.password.nil?
      query_params[downcase_first_letter('DestFileName')] = request.dest_file_name unless request.dest_file_name.nil?
      query_params[downcase_first_letter('RevisionAuthor')] = request.revision_author unless request.revision_author.nil?
      query_params[downcase_first_letter('RevisionDateTime')] = request.revision_date_time unless request.revision_date_time.nil?
      query_params[downcase_first_letter('NodePath')] = request.node_path unless request.node_path.nil?
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
    def put_header_footer(request)
      data, _status_code, _headers = put_header_footer_with_http_info(request)
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
    def put_header_footer_with_http_info(request)
	  unless request.is_a? PutHeaderFooterRequest
	    fail ArgumentError, "Incorrect request type"
	  end
	  
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WordsApi.put_header_footer ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && request.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling WordsApi.put_header_footer"
      end
      # verify the required parameter 'header_footer_type' is set
      if @api_client.config.client_side_validation && request.header_footer_type.nil?
        fail ArgumentError, "Missing the required parameter 'header_footer_type' when calling WordsApi.put_header_footer"
      end
      # resource path
      local_var_path = "/words/{name}/{sectionPath}/headersfooters"
	  local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.to_s)

      # query parameters
      query_params = {}
      query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
      query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
      query_params[downcase_first_letter('LoadEncoding')] = request.load_encoding unless request.load_encoding.nil?
      query_params[downcase_first_letter('Password')] = request.password unless request.password.nil?
      query_params[downcase_first_letter('DestFileName')] = request.dest_file_name unless request.dest_file_name.nil?
      query_params[downcase_first_letter('RevisionAuthor')] = request.revision_author unless request.revision_author.nil?
      query_params[downcase_first_letter('RevisionDateTime')] = request.revision_date_time unless request.revision_date_time.nil?
      query_params[downcase_first_letter('SectionPath')] = request.section_path unless request.section_path.nil?

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
    def put_paragraph(request)
      data, _status_code, _headers = put_paragraph_with_http_info(request)
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
    def put_paragraph_with_http_info(request)
	  unless request.is_a? PutParagraphRequest
	    fail ArgumentError, "Incorrect request type"
	  end
	  
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WordsApi.put_paragraph ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && request.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling WordsApi.put_paragraph"
      end
      # verify the required parameter 'paragraph' is set
      if @api_client.config.client_side_validation && request.paragraph.nil?
        fail ArgumentError, "Missing the required parameter 'paragraph' when calling WordsApi.put_paragraph"
      end
      # resource path
      local_var_path = "/words/{name}/{nodePath}/paragraphs"
	  local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.to_s)

      # query parameters
      query_params = {}
      query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
      query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
      query_params[downcase_first_letter('LoadEncoding')] = request.load_encoding unless request.load_encoding.nil?
      query_params[downcase_first_letter('Password')] = request.password unless request.password.nil?
      query_params[downcase_first_letter('DestFileName')] = request.dest_file_name unless request.dest_file_name.nil?
      query_params[downcase_first_letter('RevisionAuthor')] = request.revision_author unless request.revision_author.nil?
      query_params[downcase_first_letter('RevisionDateTime')] = request.revision_date_time unless request.revision_date_time.nil?
      query_params[downcase_first_letter('NodePath')] = request.node_path unless request.node_path.nil?
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
    def put_protect_document(request)
      data, _status_code, _headers = put_protect_document_with_http_info(request)
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
    def put_protect_document_with_http_info(request)
	  unless request.is_a? PutProtectDocumentRequest
	    fail ArgumentError, "Incorrect request type"
	  end
	  
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WordsApi.put_protect_document ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && request.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling WordsApi.put_protect_document"
      end
      # verify the required parameter 'protection_request' is set
      if @api_client.config.client_side_validation && request.protection_request.nil?
        fail ArgumentError, "Missing the required parameter 'protection_request' when calling WordsApi.put_protect_document"
      end
      # resource path
      local_var_path = "/words/{name}/protection"
	  local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.to_s)

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
    def put_run(request)
      data, _status_code, _headers = put_run_with_http_info(request)
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
    def put_run_with_http_info(request)
	  unless request.is_a? PutRunRequest
	    fail ArgumentError, "Incorrect request type"
	  end
	  
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WordsApi.put_run ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && request.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling WordsApi.put_run"
      end
      # verify the required parameter 'paragraph_path' is set
      if @api_client.config.client_side_validation && request.paragraph_path.nil?
        fail ArgumentError, "Missing the required parameter 'paragraph_path' when calling WordsApi.put_run"
      end
      # verify the required parameter 'run' is set
      if @api_client.config.client_side_validation && request.run.nil?
        fail ArgumentError, "Missing the required parameter 'run' when calling WordsApi.put_run"
      end
      # resource path
      local_var_path = "/words/{name}/{paragraphPath}/runs"
	  local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.to_s)
	  local_var_path.sub('{' + downcase_first_letter('ParagraphPath') + '}', request.paragraph_path.to_s)

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
    def reject_all_revisions(request)
      data, _status_code, _headers = reject_all_revisions_with_http_info(request)
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
    def reject_all_revisions_with_http_info(request)
	  unless request.is_a? RejectAllRevisionsRequest
	    fail ArgumentError, "Incorrect request type"
	  end
	  
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WordsApi.reject_all_revisions ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && request.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling WordsApi.reject_all_revisions"
      end
      # resource path
      local_var_path = "/words/{name}/revisions/rejectAll"
	  local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.to_s)

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
    def render_drawing_object(request)
      data, _status_code, _headers = render_drawing_object_with_http_info(request)
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
    def render_drawing_object_with_http_info(request)
	  unless request.is_a? RenderDrawingObjectRequest
	    fail ArgumentError, "Incorrect request type"
	  end
	  
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WordsApi.render_drawing_object ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && request.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling WordsApi.render_drawing_object"
      end
      # verify the required parameter 'format' is set
      if @api_client.config.client_side_validation && request.format.nil?
        fail ArgumentError, "Missing the required parameter 'format' when calling WordsApi.render_drawing_object"
      end
      # verify the required parameter 'index' is set
      if @api_client.config.client_side_validation && request.index.nil?
        fail ArgumentError, "Missing the required parameter 'index' when calling WordsApi.render_drawing_object"
      end
      # resource path
      local_var_path = "/words/{name}/{nodePath}/drawingObjects/{index}/render"
	  local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.to_s)
	  local_var_path.sub('{' + downcase_first_letter('Index') + '}', request.index.to_s)

      # query parameters
      query_params = {}
      query_params[downcase_first_letter('Format')] = request.format
      query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
      query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
      query_params[downcase_first_letter('LoadEncoding')] = request.load_encoding unless request.load_encoding.nil?
      query_params[downcase_first_letter('Password')] = request.password unless request.password.nil?
      query_params[downcase_first_letter('NodePath')] = request.node_path unless request.node_path.nil?
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
    def render_math_object(request)
      data, _status_code, _headers = render_math_object_with_http_info(request)
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
    def render_math_object_with_http_info(request)
	  unless request.is_a? RenderMathObjectRequest
	    fail ArgumentError, "Incorrect request type"
	  end
	  
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WordsApi.render_math_object ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && request.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling WordsApi.render_math_object"
      end
      # verify the required parameter 'format' is set
      if @api_client.config.client_side_validation && request.format.nil?
        fail ArgumentError, "Missing the required parameter 'format' when calling WordsApi.render_math_object"
      end
      # verify the required parameter 'index' is set
      if @api_client.config.client_side_validation && request.index.nil?
        fail ArgumentError, "Missing the required parameter 'index' when calling WordsApi.render_math_object"
      end
      # resource path
      local_var_path = "/words/{name}/{nodePath}/OfficeMathObjects/{index}/render"
	  local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.to_s)
	  local_var_path.sub('{' + downcase_first_letter('Index') + '}', request.index.to_s)

      # query parameters
      query_params = {}
      query_params[downcase_first_letter('Format')] = request.format
      query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
      query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
      query_params[downcase_first_letter('LoadEncoding')] = request.load_encoding unless request.load_encoding.nil?
      query_params[downcase_first_letter('Password')] = request.password unless request.password.nil?
      query_params[downcase_first_letter('NodePath')] = request.node_path unless request.node_path.nil?
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
    def render_page(request)
      data, _status_code, _headers = render_page_with_http_info(request)
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
    def render_page_with_http_info(request)
	  unless request.is_a? RenderPageRequest
	    fail ArgumentError, "Incorrect request type"
	  end
	  
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WordsApi.render_page ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && request.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling WordsApi.render_page"
      end
      # verify the required parameter 'page_index' is set
      if @api_client.config.client_side_validation && request.page_index.nil?
        fail ArgumentError, "Missing the required parameter 'page_index' when calling WordsApi.render_page"
      end
      # verify the required parameter 'format' is set
      if @api_client.config.client_side_validation && request.format.nil?
        fail ArgumentError, "Missing the required parameter 'format' when calling WordsApi.render_page"
      end
      # resource path
      local_var_path = "/words/{name}/pages/{pageIndex}/render"
	  local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.to_s)
	  local_var_path.sub('{' + downcase_first_letter('PageIndex') + '}', request.page_index.to_s)

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
    def render_paragraph(request)
      data, _status_code, _headers = render_paragraph_with_http_info(request)
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
    def render_paragraph_with_http_info(request)
	  unless request.is_a? RenderParagraphRequest
	    fail ArgumentError, "Incorrect request type"
	  end
	  
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WordsApi.render_paragraph ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && request.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling WordsApi.render_paragraph"
      end
      # verify the required parameter 'format' is set
      if @api_client.config.client_side_validation && request.format.nil?
        fail ArgumentError, "Missing the required parameter 'format' when calling WordsApi.render_paragraph"
      end
      # verify the required parameter 'index' is set
      if @api_client.config.client_side_validation && request.index.nil?
        fail ArgumentError, "Missing the required parameter 'index' when calling WordsApi.render_paragraph"
      end
      # resource path
      local_var_path = "/words/{name}/{nodePath}/paragraphs/{index}/render"
	  local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.to_s)
	  local_var_path.sub('{' + downcase_first_letter('Index') + '}', request.index.to_s)

      # query parameters
      query_params = {}
      query_params[downcase_first_letter('Format')] = request.format
      query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
      query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
      query_params[downcase_first_letter('LoadEncoding')] = request.load_encoding unless request.load_encoding.nil?
      query_params[downcase_first_letter('Password')] = request.password unless request.password.nil?
      query_params[downcase_first_letter('NodePath')] = request.node_path unless request.node_path.nil?
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
    def render_table(request)
      data, _status_code, _headers = render_table_with_http_info(request)
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
    def render_table_with_http_info(request)
	  unless request.is_a? RenderTableRequest
	    fail ArgumentError, "Incorrect request type"
	  end
	  
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WordsApi.render_table ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && request.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling WordsApi.render_table"
      end
      # verify the required parameter 'format' is set
      if @api_client.config.client_side_validation && request.format.nil?
        fail ArgumentError, "Missing the required parameter 'format' when calling WordsApi.render_table"
      end
      # verify the required parameter 'index' is set
      if @api_client.config.client_side_validation && request.index.nil?
        fail ArgumentError, "Missing the required parameter 'index' when calling WordsApi.render_table"
      end
      # resource path
      local_var_path = "/words/{name}/{nodePath}/tables/{index}/render"
	  local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.to_s)
	  local_var_path.sub('{' + downcase_first_letter('Index') + '}', request.index.to_s)

      # query parameters
      query_params = {}
      query_params[downcase_first_letter('Format')] = request.format
      query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
      query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
      query_params[downcase_first_letter('LoadEncoding')] = request.load_encoding unless request.load_encoding.nil?
      query_params[downcase_first_letter('Password')] = request.password unless request.password.nil?
      query_params[downcase_first_letter('NodePath')] = request.node_path unless request.node_path.nil?
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
    def reset_cache(request)
      data, _status_code, _headers = reset_cache_with_http_info(request)
      data
    end

    # Resets font&#39;s cache.
    # 
    # @param [Hash] opts the optional parameters
    # @return [Array<(AsposeResponse, Fixnum, Hash)>] AsposeResponse data, response status code and response headers
    def reset_cache_with_http_info(request)
	  unless request.is_a? ResetCacheRequest
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
    def search(request)
      data, _status_code, _headers = search_with_http_info(request)
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
    def search_with_http_info(request)
	  unless request.is_a? SearchRequest
	    fail ArgumentError, "Incorrect request type"
	  end
	  
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WordsApi.search ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && request.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling WordsApi.search"
      end
      # verify the required parameter 'pattern' is set
      if @api_client.config.client_side_validation && request.pattern.nil?
        fail ArgumentError, "Missing the required parameter 'pattern' when calling WordsApi.search"
      end
      # resource path
      local_var_path = "/words/{name}/search"
	  local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.to_s)

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
    def update_border(request)
      data, _status_code, _headers = update_border_with_http_info(request)
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
    def update_border_with_http_info(request)
	  unless request.is_a? UpdateBorderRequest
	    fail ArgumentError, "Incorrect request type"
	  end
	  
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WordsApi.update_border ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && request.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling WordsApi.update_border"
      end
      # verify the required parameter 'border_properties' is set
      if @api_client.config.client_side_validation && request.border_properties.nil?
        fail ArgumentError, "Missing the required parameter 'border_properties' when calling WordsApi.update_border"
      end
      # verify the required parameter 'node_path' is set
      if @api_client.config.client_side_validation && request.node_path.nil?
        fail ArgumentError, "Missing the required parameter 'node_path' when calling WordsApi.update_border"
      end
      # verify the required parameter 'index' is set
      if @api_client.config.client_side_validation && request.index.nil?
        fail ArgumentError, "Missing the required parameter 'index' when calling WordsApi.update_border"
      end
      # resource path
      local_var_path = "/words/{name}/{nodePath}/borders/{index}"
	  local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.to_s)
	  local_var_path.sub('{' + downcase_first_letter('NodePath') + '}', request.node_path.to_s)
	  local_var_path.sub('{' + downcase_first_letter('Index') + '}', request.index.to_s)

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
    def update_section_page_setup(request)
      data, _status_code, _headers = update_section_page_setup_with_http_info(request)
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
    def update_section_page_setup_with_http_info(request)
	  unless request.is_a? UpdateSectionPageSetupRequest
	    fail ArgumentError, "Incorrect request type"
	  end
	  
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WordsApi.update_section_page_setup ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && request.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling WordsApi.update_section_page_setup"
      end
      # verify the required parameter 'section_index' is set
      if @api_client.config.client_side_validation && request.section_index.nil?
        fail ArgumentError, "Missing the required parameter 'section_index' when calling WordsApi.update_section_page_setup"
      end
      # verify the required parameter 'page_setup' is set
      if @api_client.config.client_side_validation && request.page_setup.nil?
        fail ArgumentError, "Missing the required parameter 'page_setup' when calling WordsApi.update_section_page_setup"
      end
      # resource path
      local_var_path = "/words/{name}/sections/{sectionIndex}/pageSetup"
	  local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.to_s)
	  local_var_path.sub('{' + downcase_first_letter('SectionIndex') + '}', request.section_index.to_s)

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
    def update_table_cell_format(request)
      data, _status_code, _headers = update_table_cell_format_with_http_info(request)
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
    def update_table_cell_format_with_http_info(request)
	  unless request.is_a? UpdateTableCellFormatRequest
	    fail ArgumentError, "Incorrect request type"
	  end
	  
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WordsApi.update_table_cell_format ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && request.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling WordsApi.update_table_cell_format"
      end
      # verify the required parameter 'table_row_path' is set
      if @api_client.config.client_side_validation && request.table_row_path.nil?
        fail ArgumentError, "Missing the required parameter 'table_row_path' when calling WordsApi.update_table_cell_format"
      end
      # verify the required parameter 'index' is set
      if @api_client.config.client_side_validation && request.index.nil?
        fail ArgumentError, "Missing the required parameter 'index' when calling WordsApi.update_table_cell_format"
      end
      # resource path
      local_var_path = "/words/{name}/{tableRowPath}/cells/{index}/cellformat"
	  local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.to_s)
	  local_var_path.sub('{' + downcase_first_letter('TableRowPath') + '}', request.table_row_path.to_s)
	  local_var_path.sub('{' + downcase_first_letter('Index') + '}', request.index.to_s)

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
    def update_table_properties(request)
      data, _status_code, _headers = update_table_properties_with_http_info(request)
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
    def update_table_properties_with_http_info(request)
	  unless request.is_a? UpdateTablePropertiesRequest
	    fail ArgumentError, "Incorrect request type"
	  end
	  
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WordsApi.update_table_properties ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && request.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling WordsApi.update_table_properties"
      end
      # verify the required parameter 'index' is set
      if @api_client.config.client_side_validation && request.index.nil?
        fail ArgumentError, "Missing the required parameter 'index' when calling WordsApi.update_table_properties"
      end
      # resource path
      local_var_path = "/words/{name}/{nodePath}/tables/{index}/properties"
	  local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.to_s)
	  local_var_path.sub('{' + downcase_first_letter('Index') + '}', request.index.to_s)

      # query parameters
      query_params = {}
      query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
      query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
      query_params[downcase_first_letter('LoadEncoding')] = request.load_encoding unless request.load_encoding.nil?
      query_params[downcase_first_letter('Password')] = request.password unless request.password.nil?
      query_params[downcase_first_letter('DestFileName')] = request.dest_file_name unless request.dest_file_name.nil?
      query_params[downcase_first_letter('RevisionAuthor')] = request.revision_author unless request.revision_author.nil?
      query_params[downcase_first_letter('RevisionDateTime')] = request.revision_date_time unless request.revision_date_time.nil?
      query_params[downcase_first_letter('NodePath')] = request.node_path unless request.node_path.nil?

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
    def update_table_row_format(request)
      data, _status_code, _headers = update_table_row_format_with_http_info(request)
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
    def update_table_row_format_with_http_info(request)
	  unless request.is_a? UpdateTableRowFormatRequest
	    fail ArgumentError, "Incorrect request type"
	  end
	  
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WordsApi.update_table_row_format ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && request.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling WordsApi.update_table_row_format"
      end
      # verify the required parameter 'table_path' is set
      if @api_client.config.client_side_validation && request.table_path.nil?
        fail ArgumentError, "Missing the required parameter 'table_path' when calling WordsApi.update_table_row_format"
      end
      # verify the required parameter 'index' is set
      if @api_client.config.client_side_validation && request.index.nil?
        fail ArgumentError, "Missing the required parameter 'index' when calling WordsApi.update_table_row_format"
      end
      # resource path
      local_var_path = "/words/{name}/{tablePath}/rows/{index}/rowformat"
	  local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.to_s)
	  local_var_path.sub('{' + downcase_first_letter('TablePath') + '}', request.table_path.to_s)
	  local_var_path.sub('{' + downcase_first_letter('Index') + '}', request.index.to_s)

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