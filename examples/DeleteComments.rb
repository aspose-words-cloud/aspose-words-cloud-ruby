AsposeWordsCloud.configure do |config|
  config.client_data['ClientId'] = '####-####-####-####-####'
  config.client_data['ClientSecret'] = '##################'
end
@words_api = WordsAPI.new
delete_request = DeleteCommentsRequest.new('Sample.docx', nil, nil, nil, nil, nil, nil, nil)
@words_api.delete_comments(delete_request)