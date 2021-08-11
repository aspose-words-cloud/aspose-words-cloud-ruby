AsposeWordsCloud.configure do |config|
  config.client_data['ClientId'] = '####-####-####-####-####'
  config.client_data['ClientSecret'] = '##################'
end
@words_api = WordsAPI.new
request = GetListsRequest.new('TestGetLists.doc', nil, nil, nil, nil)
@words_api.get_lists(request)