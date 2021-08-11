AsposeWordsCloud.configure do |config|
  config.client_data['ClientId'] = '####-####-####-####-####'
  config.client_data['ClientSecret'] = '##################'
end
@words_api = WordsAPI.new
request = GetCommentsRequest.new('Sample.docx', nil, nil, nil, nil)
@words_api.get_comments(request)