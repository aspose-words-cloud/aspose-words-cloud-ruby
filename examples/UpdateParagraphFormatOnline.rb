AsposeWordsCloud.configure do |config|
  config.client_data['ClientId'] = '####-####-####-####-####'
  config.client_data['ClientSecret'] = '##################'
end
@words_api = WordsAPI.new
documents_dir = '...'
request_paragraph_format_dto = ParagraphFormatUpdate.new({:Alignment => 'Right'})
update_request = UpdateParagraphFormatOnlineRequest.new(File.open(File.join(documents_dir, 'Sample.docx')), request_paragraph_format_dto, 0, nil, nil, nil, nil, nil, nil)
@words_api.update_paragraph_format_online(update_request)