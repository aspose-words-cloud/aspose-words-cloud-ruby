AsposeWordsCloud.configure do |config|
  config.client_data['ClientId'] = '####-####-####-####-####'
  config.client_data['ClientSecret'] = '##################'
end
@words_api = WordsAPI.new
delete_request = DeleteDocumentPropertyRequest.new('Sample.docx', 'testProp', nil, nil, nil, nil, nil, nil, nil)
@words_api.delete_document_property(delete_request)