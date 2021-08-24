AsposeWordsCloud.configure do |config|
  config.client_data['ClientId'] = '####-####-####-####-####'
  config.client_data['ClientSecret'] = '##################'
end
@words_api = WordsAPI.new
request_property = DocumentPropertyCreateOrUpdate.new({:Value => 'Imran Anwar'})
create_request = CreateOrUpdateDocumentPropertyRequest.new(name: 'Sample.docx', property_name: 'AsposeAuthor', property: request_property)
@words_api.create_or_update_document_property(create_request)