AsposeWordsCloud.configure do |config|
  config.client_data['ClientId'] = '####-####-####-####-####'
  config.client_data['ClientSecret'] = '##################'
end
@words_api = WordsAPI.new
request_font_dto = Font.new({:Bold => true})
update_request = UpdateRunFontRequest.new(name: 'Sample.docx', paragraph_path: 'paragraphs/0', index: 0, font_dto: request_font_dto)
@words_api.update_run_font(update_request)