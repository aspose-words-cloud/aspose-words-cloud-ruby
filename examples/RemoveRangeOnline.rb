AsposeWordsCloud.configure do |config|
  config.client_data['ClientId'] = '####-####-####-####-####'
  config.client_data['ClientSecret'] = '##################'
end
@words_api = WordsAPI.new
documents_dir = '...'
remove_request = RemoveRangeOnlineRequest.new(File.open(File.join(documents_dir, 'DocumentElements/Range/RangeGet.doc')), 'id0.0.0', 'id0.0.1', nil, nil, nil)
@words_api.remove_range_online(remove_request)