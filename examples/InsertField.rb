AsposeWordsCloud.configure do |config|
  config.client_data['ClientId'] = '####-####-####-####-####'
  config.client_data['ClientSecret'] = '##################'
end
@words_api = WordsAPI.new
request_field = FieldInsert.new({:FieldCode => '{ NUMPAGES }'})
insert_request = InsertFieldRequest.new(name: 'Sample.docx', field: request_field)
@words_api.insert_field(insert_request)