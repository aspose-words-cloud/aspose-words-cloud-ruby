AsposeWordsCloud.configure do |config|
  config.client_data['ClientId'] = '####-####-####-####-####'
  config.client_data['ClientSecret'] = '##################'
end
@words_api = WordsAPI.new
request_list_format_dto = ListFormatUpdate.new({:ListId => 2})
update_request = UpdateParagraphListFormatRequest.new(name: 'Sample.docx', index: 0, list_format_dto: request_list_format_dto)
@words_api.update_paragraph_list_format(update_request)