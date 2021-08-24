AsposeWordsCloud.configure do |config|
  config.client_data['ClientId'] = '####-####-####-####-####'
  config.client_data['ClientSecret'] = '##################'
end
@words_api = WordsAPI.new
request_document = File.open('Sample.doc')
request_list_update = ListLevelUpdate.new({:Alignment => 'Right'})
update_request = UpdateListLevelOnlineRequest.new(document: request_document, list_id: 1, list_update: request_list_update, list_level: 1)
@words_api.update_list_level_online(update_request)