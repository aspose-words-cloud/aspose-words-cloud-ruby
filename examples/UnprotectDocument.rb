AsposeWordsCloud.configure do |config|
  config.client_data['ClientId'] = '####-####-####-####-####'
  config.client_data['ClientSecret'] = '##################'
end
@words_api = WordsAPI.new
request_protection_request = ProtectionRequest.new({:Password => 'aspose'})
unprotect_request = UnprotectDocumentRequest.new('Sample.docx', request_protection_request, nil, nil, nil, nil, nil)
@words_api.unprotect_document(unprotect_request)