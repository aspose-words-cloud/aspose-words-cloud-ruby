AsposeWordsCloud.configure do |config|
  config.client_data['ClientId'] = '####-####-####-####-####'
  config.client_data['ClientSecret'] = '##################'
end
@words_api = WordsAPI.new
request_protection_request = ProtectionRequest.new({:Password => '123', :ProtectionType => 'ReadOnly'})
protect_request = ProtectDocumentRequest.new('Sample.docx', request_protection_request, nil, nil, nil, nil, nil)
@words_api.protect_document(protect_request)