AsposeWordsCloud.configure do |config|
  config.client_data['ClientId'] = '####-####-####-####-####'
  config.client_data['ClientSecret'] = '##################'
end
@words_api = WordsAPI.new
request_paragraph_format_dto = ParagraphFormatUpdate.new({:Alignment => 'Right'})
update_request = UpdateParagraphFormatRequest.new('Sample.docx', 0, request_paragraph_format_dto, nil, nil, nil, nil, nil, nil, nil, nil)
@words_api.update_paragraph_format(update_request)