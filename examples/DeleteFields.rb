AsposeWordsCloud.configure do |config|
  config.client_data['ClientId'] = '####-####-####-####-####'
  config.client_data['ClientSecret'] = '##################'
end
@words_api = WordsAPI.new
delete_request = DeleteFieldsRequest.new('Sample.docx', '', nil, nil, nil, nil, nil, nil, nil)
@words_api.delete_fields(delete_request)