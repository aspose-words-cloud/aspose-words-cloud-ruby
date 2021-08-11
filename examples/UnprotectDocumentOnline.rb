AsposeWordsCloud.configure do |config|
  config.client_data['ClientId'] = '####-####-####-####-####'
  config.client_data['ClientSecret'] = '##################'
end
@words_api = WordsAPI.new
documents_dir = '...'
request_protection_request = ProtectionRequest.new({:Password => 'aspose'})
unprotect_request = UnprotectDocumentOnlineRequest.new(File.open(File.join(documents_dir, 'Sample.docx')), request_protection_request, nil, nil, nil)
@words_api.unprotect_document_online(unprotect_request)