AsposeWordsCloud.configure do |config|
  config.client_data['ClientId'] = '####-####-####-####-####'
  config.client_data['ClientSecret'] = '##################'
end
@words_api = WordsAPI.new
request_field = FieldUpdate.new({:FieldCode => '{ NUMPAGES }'})
update_request = UpdateFieldRequest.new('Sample.docx', 0, request_field, 'sections/0/paragraphs/0', nil, nil, nil, nil, nil, nil, nil)
@words_api.update_field(update_request)