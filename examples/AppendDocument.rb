AsposeWordsCloud.configure do |config|
  config.client_data['ClientId'] = '####-####-####-####-####'
  config.client_data['ClientSecret'] = '##################'
end
@words_api = WordsAPI.new
remote_file_name= 'Sample.docx'

request_document_list_document_entries0 = DocumentEntry.new({:Href => remote_file_name, :ImportFormatMode => 'KeepSourceFormatting'})
request_document_list_document_entries = [request_document_list_document_entries0]
request_document_list = DocumentEntryList.new({:DocumentEntries => request_document_list_document_entries})
append_request = AppendDocumentRequest.new(name: remote_file_name, document_list: request_document_list)
@words_api.append_document(append_request)