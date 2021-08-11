AsposeWordsCloud.configure do |config|
  config.client_data['ClientId'] = '####-####-####-####-####'
  config.client_data['ClientSecret'] = '##################'
end
@words_api = WordsAPI.new
documents_dir = '...'
request_property = DocumentPropertyCreateOrUpdate.new({:Value => 'Imran Anwar'})
create_request = CreateOrUpdateDocumentPropertyOnlineRequest.new(File.open(File.join(documents_dir, 'Sample.docx')), 'AsposeAuthor', request_property, nil, nil, nil, nil, nil)
@words_api.create_or_update_document_property_online(create_request)