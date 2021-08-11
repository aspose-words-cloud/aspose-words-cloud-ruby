AsposeWordsCloud.configure do |config|
  config.client_data['ClientId'] = '####-####-####-####-####'
  config.client_data['ClientSecret'] = '##################'
end
@words_api = WordsAPI.new
documents_dir = '...'
request_field = FieldInsert.new({:FieldCode => '{ NUMPAGES }'})
insert_request = InsertFieldOnlineRequest.new(File.open(File.join(documents_dir, '/GetField.docx')), request_field, 'sections/0/paragraphs/0', nil, nil, nil, nil, nil, nil)
@words_api.insert_field_online(insert_request)