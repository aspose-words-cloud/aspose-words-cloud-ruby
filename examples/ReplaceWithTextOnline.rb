AsposeWordsCloud.configure do |config|
  config.client_data['ClientId'] = '####-####-####-####-####'
  config.client_data['ClientSecret'] = '##################'
end
@words_api = WordsAPI.new
documents_dir = '...'
request_range_text = ReplaceRange.new({:Text => 'Replaced header'})
replace_request = ReplaceWithTextOnlineRequest.new(File.open(File.join(documents_dir, 'DocumentElements/Range/RangeGet.doc')), 'id0.0.0', request_range_text, 'id0.0.1', nil, nil, nil)
@words_api.replace_with_text_online(replace_request)