AsposeWordsCloud.configure do |config|
  config.client_data['ClientId'] = '####-####-####-####-####'
  config.client_data['ClientSecret'] = '##################'
end
@words_api = WordsAPI.new
create_request = CreateDocumentRequest.new('Sample.docx', nil, nil)
@words_api.create_document(create_request)