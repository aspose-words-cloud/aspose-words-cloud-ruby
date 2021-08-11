AsposeWordsCloud.configure do |config|
  config.client_data['ClientId'] = '####-####-####-####-####'
  config.client_data['ClientSecret'] = '##################'
end
@words_api = WordsAPI.new
documents_dir = '...'
request_replace_text = ReplaceTextParameters.new({:OldValue => 'aspose', :NewValue => 'aspose new'})
replace_request = ReplaceTextOnlineRequest.new(File.open(File.join(documents_dir, 'Sample.docx')), request_replace_text, nil, nil, nil, nil, nil)
@words_api.replace_text_online(replace_request)