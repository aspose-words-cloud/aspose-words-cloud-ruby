AsposeWordsCloud.configure do |config|
  config.client_data['ClientId'] = '####-####-####-####-####'
  config.client_data['ClientSecret'] = '##################'
end
@words_api = WordsAPI.new
request_document = File.open('Sample.docx')
request_font_dto = Font.new({:Bold => true})
update_request = UpdateRunFontOnlineRequest.new(document: request_document, paragraph_path: 'paragraphs/0', font_dto: request_font_dto, index: 0)
@words_api.update_run_font_online(update_request)