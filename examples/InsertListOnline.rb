AsposeWordsCloud.configure do |config|
  config.client_data['ClientId'] = '####-####-####-####-####'
  config.client_data['ClientSecret'] = '##################'
end
@words_api = WordsAPI.new
request_document = File.open('Sample.doc')
request_list_insert = ListInsert.new({:Template => 'OutlineLegal'})
insert_request = InsertListOnlineRequest.new(document: request_document, list_insert: request_list_insert)
@words_api.insert_list_online(insert_request)