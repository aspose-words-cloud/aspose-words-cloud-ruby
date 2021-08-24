AsposeWordsCloud.configure do |config|
  config.client_data['ClientId'] = '####-####-####-####-####'
  config.client_data['ClientSecret'] = '##################'
end
@words_api = WordsAPI.new
request_document = File.open('Sample.docx')
classify_request = ClassifyDocumentOnlineRequest.new(document: request_document, best_classes_count: '3')
@words_api.classify_document_online(classify_request)