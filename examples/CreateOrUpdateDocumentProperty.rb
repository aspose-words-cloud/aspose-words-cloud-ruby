AsposeWordsCloud.configure do |config|
  config.client_data['ClientId'] = '####-####-####-####-####'
  config.client_data['ClientSecret'] = '##################'
end
@words_api = WordsAPI.new
remote_file_name= 'Sample.docx'

request_property = DocumentPropertyCreateOrUpdate.new({:Value => 'Imran Anwar'})
create_request = CreateOrUpdateDocumentPropertyRequest.new(remote_file_name, 'AsposeAuthor', request_property, nil, nil, nil, nil, remote_file_name, nil, nil)
@words_api.create_or_update_document_property(create_request)