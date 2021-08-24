AsposeWordsCloud.configure do |config|
  config.client_data['ClientId'] = '####-####-####-####-####'
  config.client_data['ClientSecret'] = '##################'
end
@words_api = WordsAPI.new
request = GetCommentRequest.new(name: 'Sample.docx', comment_index: 0)
@words_api.get_comment(request)