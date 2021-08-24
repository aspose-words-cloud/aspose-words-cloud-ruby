AsposeWordsCloud.configure do |config|
  config.client_data['ClientId'] = '####-####-####-####-####'
  config.client_data['ClientSecret'] = '##################'
end
@words_api = WordsAPI.new
request_document = File.open('Sample.docx')
request = GetParagraphFormatOnlineRequest.new(document: request_document, index: 0)
@words_api.get_paragraph_format_online(request)