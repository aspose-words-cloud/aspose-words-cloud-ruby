AsposeWordsCloud.configure do |config|
  config.client_data['ClientId'] = '####-####-####-####-####'
  config.client_data['ClientSecret'] = '##################'
end
@words_api = WordsAPI.new
request_protection_request = ProtectionRequest.new({:Password => '123', :ProtectionType => 'ReadOnly'})
protect_request = ProtectDocumentRequest.new(name: 'Sample.docx', protection_request: request_protection_request)
@words_api.protect_document(protect_request)