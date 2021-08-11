AsposeWordsCloud.configure do |config|
  config.client_data['ClientId'] = '####-####-####-####-####'
  config.client_data['ClientSecret'] = '##################'
end
@words_api = WordsAPI.new
documents_dir = '...'
request_protection_request = ProtectionRequest.new({:NewPassword => '123'})
protect_request = ProtectDocumentOnlineRequest.new(File.open(File.join(documents_dir, 'Sample.docx')), request_protection_request, nil, nil, nil)
@words_api.protect_document_online(protect_request)