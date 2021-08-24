AsposeWordsCloud.configure do |config|
  config.client_data['ClientId'] = '####-####-####-####-####'
  config.client_data['ClientSecret'] = '##################'
end
@words_api = WordsAPI.new
request_document = File.open('Sample.docx')
request_protection_request = ProtectionRequest.new({:NewPassword => '123'})
protect_request = ProtectDocumentOnlineRequest.new(document: request_document, protection_request: request_protection_request)
@words_api.protect_document_online(protect_request)