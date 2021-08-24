AsposeWordsCloud.configure do |config|
  config.client_data['ClientId'] = '####-####-####-####-####'
  config.client_data['ClientSecret'] = '##################'
end
@words_api = WordsAPI.new
request_document = File.open('Sample.docx')
request_property = DocumentPropertyCreateOrUpdate.new({:Value => 'Imran Anwar'})
create_request = CreateOrUpdateDocumentPropertyOnlineRequest.new(document: request_document, property_name: 'AsposeAuthor', property: request_property)
@words_api.create_or_update_document_property_online(create_request)