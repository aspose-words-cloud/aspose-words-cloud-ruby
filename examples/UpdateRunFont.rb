AsposeWordsCloud.configure do |config|
  config.client_data['ClientId'] = '####-####-####-####-####'
  config.client_data['ClientSecret'] = '##################'
end
@words_api = WordsAPI.new
request_font_dto = Font.new({:Bold => true})
update_request = UpdateRunFontRequest.new('Sample.docx', 'paragraphs/0', 0, request_font_dto, nil, nil, nil, nil, nil, nil, nil)
@words_api.update_run_font(update_request)