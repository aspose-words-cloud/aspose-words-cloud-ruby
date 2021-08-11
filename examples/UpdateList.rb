AsposeWordsCloud.configure do |config|
  config.client_data['ClientId'] = '####-####-####-####-####'
  config.client_data['ClientSecret'] = '##################'
end
@words_api = WordsAPI.new
request_list_update = ListUpdate.new({:IsRestartAtEachSection => true})
update_request = UpdateListRequest.new('TestGetLists.doc', 1, request_list_update, nil, nil, nil, nil, nil, nil, nil)
@words_api.update_list(update_request)