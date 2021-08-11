AsposeWordsCloud.configure do |config|
  config.client_data['ClientId'] = '####-####-####-####-####'
  config.client_data['ClientSecret'] = '##################'
end
@words_api = WordsAPI.new
documents_dir = '...'
request_font_dto = Font.new({:Bold => true})
update_request = UpdateRunFontOnlineRequest.new(File.open(File.join(documents_dir, 'Sample.docx')), 'paragraphs/0', request_font_dto, 0, nil, nil, nil, nil, nil)
@words_api.update_run_font_online(update_request)