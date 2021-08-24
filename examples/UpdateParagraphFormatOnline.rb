AsposeWordsCloud.configure do |config|
  config.client_data['ClientId'] = '####-####-####-####-####'
  config.client_data['ClientSecret'] = '##################'
end
@words_api = WordsAPI.new
request_document = File.open('Sample.docx')
request_paragraph_format_dto = ParagraphFormatUpdate.new({:Alignment => 'Right'})
update_request = UpdateParagraphFormatOnlineRequest.new(document: request_document, paragraph_format_dto: request_paragraph_format_dto, index: 0)
@words_api.update_paragraph_format_online(update_request)