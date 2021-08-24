AsposeWordsCloud.configure do |config|
  config.client_data['ClientId'] = '####-####-####-####-####'
  config.client_data['ClientSecret'] = '##################'
end
@words_api = WordsAPI.new
request_document = File.open('Sample.docx')
delete_request = DeleteCommentOnlineRequest.new(document: request_document, comment_index: 0)
@words_api.delete_comment_online(delete_request)