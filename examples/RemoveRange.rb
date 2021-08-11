AsposeWordsCloud.configure do |config|
  config.client_data['ClientId'] = '####-####-####-####-####'
  config.client_data['ClientSecret'] = '##################'
end
@words_api = WordsAPI.new
remove_request = RemoveRangeRequest.new('Sample.docx', 'id0.0.0', 'id0.0.1', nil, nil, nil, nil, nil)
@words_api.remove_range(remove_request)