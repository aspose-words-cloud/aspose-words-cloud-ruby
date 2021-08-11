AsposeWordsCloud.configure do |config|
  config.client_data['ClientId'] = '####-####-####-####-####'
  config.client_data['ClientSecret'] = '##################'
end
@words_api = WordsAPI.new
documents_dir = '...'
request_list_insert = ListInsert.new({:Template => 'OutlineLegal'})
insert_request = InsertListOnlineRequest.new(File.open(File.join(documents_dir, 'DocumentElements/Lists/ListsGet.doc')), request_list_insert, nil, nil, nil, nil, nil)
@words_api.insert_list_online(insert_request)