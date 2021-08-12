AsposeWordsCloud.configure do |config|
  config.client_data['ClientId'] = '####-####-####-####-####'
  config.client_data['ClientSecret'] = '##################'
end
@words_api = WordsAPI.new
documents_dir = '...'
request_field = FieldUpdate.new({:FieldCode => '{ NUMPAGES }'})
update_request = UpdateFieldOnlineRequest.new(File.open(File.join(documents_dir, 'Sample.docx')), request_field, 0, 'sections/0/paragraphs/0', nil, nil, nil, nil, nil)
@words_api.update_field_online(update_request)