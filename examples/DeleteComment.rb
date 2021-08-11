AsposeWordsCloud.configure do |config|
  config.client_data['ClientId'] = '####-####-####-####-####'
  config.client_data['ClientSecret'] = '##################'
end
@words_api = WordsAPI.new
remote_file_name= 'Sample.docx'

delete_request = DeleteCommentRequest.new(remote_file_name, 0, nil, nil, nil, nil, remote_file_name, nil, nil)
@words_api.delete_comment(delete_request)