AsposeWordsCloud.configure do |config|
  config.client_data['ClientId'] = '####-####-####-####-####'
  config.client_data['ClientSecret'] = '##################'
end
@words_api = WordsAPI.new
request_list_insert = ListInsert.new({:Template => 'OutlineLegal'})
insert_request = InsertListRequest.new(name: 'TestGetLists.doc', list_insert: request_list_insert)
@words_api.insert_list(insert_request)