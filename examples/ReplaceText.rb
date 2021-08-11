AsposeWordsCloud.configure do |config|
  config.client_data['ClientId'] = '####-####-####-####-####'
  config.client_data['ClientSecret'] = '##################'
end
@words_api = WordsAPI.new
remote_file_name= 'Sample.docx'

request_replace_text = ReplaceTextParameters.new({:OldValue => 'Testing', :NewValue => 'Aspose testing'})
replace_request = ReplaceTextRequest.new(remote_file_name, request_replace_text, nil, nil, nil, nil, remote_file_name, nil, nil)
@words_api.replace_text(replace_request)