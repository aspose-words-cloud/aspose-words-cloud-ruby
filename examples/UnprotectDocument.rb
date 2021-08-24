AsposeWordsCloud.configure do |config|
  config.client_data['ClientId'] = '####-####-####-####-####'
  config.client_data['ClientSecret'] = '##################'
end
@words_api = WordsAPI.new
request_protection_request = ProtectionRequest.new({:Password => 'aspose'})
unprotect_request = UnprotectDocumentRequest.new(name: 'Sample.docx', protection_request: request_protection_request)
@words_api.unprotect_document(unprotect_request)