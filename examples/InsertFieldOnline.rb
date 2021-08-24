AsposeWordsCloud.configure do |config|
  config.client_data['ClientId'] = '####-####-####-####-####'
  config.client_data['ClientSecret'] = '##################'
end
@words_api = WordsAPI.new
request_document = File.open('Sample.docx')
request_field = FieldInsert.new({:FieldCode => '{ NUMPAGES }'})
insert_request = InsertFieldOnlineRequest.new(document: request_document, field: request_field, node_path: 'sections/0/paragraphs/0')
@words_api.insert_field_online(insert_request)