AsposeWordsCloud.configure do |config|
  config.client_data['ClientId'] = '####-####-####-####-####'
  config.client_data['ClientSecret'] = '##################'
end
@words_api = WordsAPI.new
request_document = File.open('Sample.docx')
request = GetDocumentPropertyOnlineRequest.new(document: request_document, property_name: 'Author')
@words_api.get_document_property_online(request)