AsposeWordsCloud.configure do |config|
  config.client_data['ClientId'] = '####-####-####-####-####'
  config.client_data['ClientSecret'] = '##################'
end
@words_api = WordsAPI.new
request_field = FieldUpdate.new({:FieldCode => '{ NUMPAGES }'})
update_request = UpdateFieldRequest.new(name: 'Sample.docx', index: 0, field: request_field, node_path: 'sections/0/paragraphs/0')
@words_api.update_field(update_request)