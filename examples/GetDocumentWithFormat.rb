AsposeWordsCloud.configure do |config|
  config.client_data['ClientId'] = '####-####-####-####-####'
  config.client_data['ClientSecret'] = '##################'
end
@words_api = WordsAPI.new
request = GetDocumentWithFormatRequest.new('Sample.docx', 'text', nil, nil, nil, nil, '/TestGetDocumentWithFormatAndOutPath.text', nil)
@words_api.get_document_with_format(request)