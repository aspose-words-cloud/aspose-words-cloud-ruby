AsposeWordsCloud.configure do |config|
  config.client_data['ClientId'] = '####-####-####-####-####'
  config.client_data['ClientSecret'] = '##################'
end
@words_api = WordsAPI.new
request = GetListRequest.new(name: 'TestGetLists.doc', list_id: 1)
@words_api.get_list(request)