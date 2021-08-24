AsposeWordsCloud.configure do |config|
  config.client_data['ClientId'] = '####-####-####-####-####'
  config.client_data['ClientSecret'] = '##################'
end
@words_api = WordsAPI.new
request_replace_text = ReplaceTextParameters.new({:OldValue => 'Testing', :NewValue => 'Aspose testing'})
replace_request = ReplaceTextRequest.new(name: 'Sample.docx', replace_text: request_replace_text)
@words_api.replace_text(replace_request)