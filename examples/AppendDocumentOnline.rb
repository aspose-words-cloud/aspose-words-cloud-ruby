AsposeWordsCloud.configure do |config|
  config.client_data['ClientId'] = '####-####-####-####-####'
  config.client_data['ClientSecret'] = '##################'
end
@words_api = WordsAPI.new
request_document = File.open('Sample.docx')
request_document_list_document_entries0 = DocumentEntry.new({:Href => 'Sample.docx', :ImportFormatMode => 'KeepSourceFormatting'})
request_document_list_document_entries = [request_document_list_document_entries0]
request_document_list = DocumentEntryList.new({:DocumentEntries => request_document_list_document_entries})
append_request = AppendDocumentOnlineRequest.new(document: request_document, document_list: request_document_list)
@words_api.append_document_online(append_request)