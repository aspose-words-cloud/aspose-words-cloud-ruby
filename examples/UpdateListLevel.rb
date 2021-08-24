AsposeWordsCloud.configure do |config|
  config.client_data['ClientId'] = '####-####-####-####-####'
  config.client_data['ClientSecret'] = '##################'
end
@words_api = WordsAPI.new
request_list_update = ListLevelUpdate.new({:Alignment => 'Right'})
update_request = UpdateListLevelRequest.new(name: 'TestGetLists.doc', list_id: 1, list_level: 1, list_update: request_list_update)
@words_api.update_list_level(update_request)