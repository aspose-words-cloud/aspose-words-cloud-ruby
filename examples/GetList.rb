AsposeWordsCloud.configure do |config|
  config.client_data['ClientId'] = '####-####-####-####-####'
  config.client_data['ClientSecret'] = '##################'
end
@words_api = WordsAPI.new
request = GetListRequest.new('TestGetLists.doc', 1, nil, nil, nil, nil)
@words_api.get_list(request)