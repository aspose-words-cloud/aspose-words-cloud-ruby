AsposeWordsCloud.configure do |config|
  config.client_data['ClientId'] = '####-####-####-####-####'
  config.client_data['ClientSecret'] = '##################'
end
@words_api = WordsAPI.new
request_document = File.open('Sample.doc')
request_list_format_dto = ListFormatUpdate.new({:ListId => 2})
update_request = UpdateParagraphListFormatOnlineRequest.new(document: request_document, list_format_dto: request_list_format_dto, index: 0)
@words_api.update_paragraph_list_format_online(update_request)