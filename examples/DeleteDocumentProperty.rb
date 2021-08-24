AsposeWordsCloud.configure do |config|
  config.client_data['ClientId'] = '####-####-####-####-####'
  config.client_data['ClientSecret'] = '##################'
end
@words_api = WordsAPI.new
delete_request = DeleteDocumentPropertyRequest.new(name: 'Sample.docx', property_name: 'testProp')
@words_api.delete_document_property(delete_request)