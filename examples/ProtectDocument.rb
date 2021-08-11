AsposeWordsCloud.configure do |config|
  config.client_data['ClientId'] = '####-####-####-####-####'
  config.client_data['ClientSecret'] = '##################'
end
@words_api = WordsAPI.new
remote_file_name= 'Sample.docx'

request_protection_request = ProtectionRequest.new({:Password => '123', :ProtectionType => 'ReadOnly'})
protect_request = ProtectDocumentRequest.new(remote_file_name, request_protection_request, nil, nil, nil, nil, remote_file_name)
@words_api.protect_document(protect_request)