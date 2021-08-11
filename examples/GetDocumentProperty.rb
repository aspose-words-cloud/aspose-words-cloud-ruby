AsposeWordsCloud.configure do |config|
  config.client_data['ClientId'] = '####-####-####-####-####'
  config.client_data['ClientSecret'] = '##################'
end
@words_api = WordsAPI.new
request = GetDocumentPropertyRequest.new('Sample.docx', 'Author', nil, nil, nil, nil)
@words_api.get_document_property(request)