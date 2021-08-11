AsposeWordsCloud.configure do |config|
  config.client_data['ClientId'] = '####-####-####-####-####'
  config.client_data['ClientSecret'] = '##################'
end
@words_api = WordsAPI.new
classify_request = ClassifyDocumentRequest.new('Sample.docx', nil, nil, nil, nil, '3', nil)
@words_api.classify_document(classify_request)