AsposeWordsCloud.configure do |config|
  config.client_data['ClientId'] = '####-####-####-####-####'
  config.client_data['ClientSecret'] = '##################'
end
@words_api = WordsAPI.new
request_range_text = ReplaceRange.new({:Text => 'Replaced header'})
replace_request = ReplaceWithTextRequest.new('Sample.docx', 'id0.0.0', request_range_text, 'id0.0.1', nil, nil, nil, nil, nil)
@words_api.replace_with_text(replace_request)