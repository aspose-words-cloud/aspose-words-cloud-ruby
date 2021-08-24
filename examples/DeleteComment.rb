AsposeWordsCloud.configure do |config|
  config.client_data['ClientId'] = '####-####-####-####-####'
  config.client_data['ClientSecret'] = '##################'
end
@words_api = WordsAPI.new
delete_request = DeleteCommentRequest.new(name: 'Sample.docx', comment_index: 0)
@words_api.delete_comment(delete_request)