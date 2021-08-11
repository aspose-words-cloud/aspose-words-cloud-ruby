AsposeWordsCloud.configure do |config|
  config.client_data['ClientId'] = '####-####-####-####-####'
  config.client_data['ClientSecret'] = '##################'
end
@words_api = WordsAPI.new
request_list_update = ListLevelUpdate.new({:Alignment => 'Right'})
update_request = UpdateListLevelRequest.new('TestGetLists.doc', 1, 1, request_list_update, nil, nil, nil, nil, nil, nil, nil)
@words_api.update_list_level(update_request)