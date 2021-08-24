AsposeWordsCloud.configure do |config|
  config.client_data['ClientId'] = '####-####-####-####-####'
  config.client_data['ClientSecret'] = '##################'
end
@words_api = WordsAPI.new
classify_request = ClassifyDocumentRequest.new(name: 'Sample.docx', best_classes_count: '3')
@words_api.classify_document(classify_request)