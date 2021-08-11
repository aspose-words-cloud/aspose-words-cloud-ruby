AsposeWordsCloud.configure do |config|
  config.client_data['ClientId'] = '####-####-####-####-####'
  config.client_data['ClientSecret'] = '##################'
end
@words_api = WordsAPI.new
remote_file_name= 'Sample.docx'

delete_request = DeleteCommentsRequest.new(remote_file_name, nil, nil, nil, nil, remote_file_name, nil, nil)
@words_api.delete_comments(delete_request)