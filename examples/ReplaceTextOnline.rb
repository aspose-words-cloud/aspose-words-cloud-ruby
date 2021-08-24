AsposeWordsCloud.configure do |config|
  config.client_data['ClientId'] = '####-####-####-####-####'
  config.client_data['ClientSecret'] = '##################'
end
@words_api = WordsAPI.new
request_document = File.open('Sample.docx')
request_replace_text = ReplaceTextParameters.new({:OldValue => 'aspose', :NewValue => 'aspose new'})
replace_request = ReplaceTextOnlineRequest.new(document: request_document, replace_text: request_replace_text)
@words_api.replace_text_online(replace_request)