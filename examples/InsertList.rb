AsposeWordsCloud.configure do |config|
  config.client_data['ClientId'] = '####-####-####-####-####'
  config.client_data['ClientSecret'] = '##################'
end
@words_api = WordsAPI.new
request_list_insert = ListInsert.new({:Template => 'OutlineLegal'})
insert_request = InsertListRequest.new('TestGetLists.doc', request_list_insert, nil, nil, nil, nil, nil, nil, nil)
@words_api.insert_list(insert_request)