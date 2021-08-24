AsposeWordsCloud.configure do |config|
  config.client_data['ClientId'] = '####-####-####-####-####'
  config.client_data['ClientSecret'] = '##################'
end
@words_api = WordsAPI.new
request_document = File.open('Sample.doc')
delete_request = DeleteParagraphListFormatOnlineRequest.new(document: request_document, index: 0)
@words_api.delete_paragraph_list_format_online(delete_request)