AsposeWordsCloud.configure do |config|
  config.client_data['ClientId'] = '####-####-####-####-####'
  config.client_data['ClientSecret'] = '##################'
end
@words_api = WordsAPI.new
request_paragraph_format_dto = ParagraphFormatUpdate.new({:Alignment => 'Right'})
update_request = UpdateParagraphFormatRequest.new(name: 'Sample.docx', index: 0, paragraph_format_dto: request_paragraph_format_dto)
@words_api.update_paragraph_format(update_request)