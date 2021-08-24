AsposeWordsCloud.configure do |config|
  config.client_data['ClientId'] = '####-####-####-####-####'
  config.client_data['ClientSecret'] = '##################'
end
@words_api = WordsAPI.new
request_document = File.open('Sample.docx')
request_field = FieldUpdate.new({:FieldCode => '{ NUMPAGES }'})
update_request = UpdateFieldOnlineRequest.new(document: request_document, field: request_field, index: 0, node_path: 'sections/0/paragraphs/0')
@words_api.update_field_online(update_request)