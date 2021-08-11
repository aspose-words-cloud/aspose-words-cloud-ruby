AsposeWordsCloud.configure do |config|
  config.client_data['ClientId'] = '####-####-####-####-####'
  config.client_data['ClientSecret'] = '##################'
end
@words_api = WordsAPI.new
delete_request = DeleteRunRequest.new('Sample.docx', 'paragraphs/1', 0, nil, nil, nil, nil, nil, nil, nil)
@words_api.delete_run(delete_request)