AsposeWordsCloud.configure do |config|
  config.client_data['ClientId'] = '####-####-####-####-####'
  config.client_data['ClientSecret'] = '##################'
end
@words_api = WordsAPI.new
request_document = File.open('Sample.docx')
delete_request = DeleteDocumentPropertyOnlineRequest.new(document: request_document, property_name: 'testProp')
@words_api.delete_document_property_online(delete_request)