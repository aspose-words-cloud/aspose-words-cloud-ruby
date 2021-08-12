AsposeWordsCloud.configure do |config|
  config.client_data['ClientId'] = '####-####-####-####-####'
  config.client_data['ClientSecret'] = '##################'
end
@words_api = WordsAPI.new
documents_dir = '...'
request_list_update = ListLevelUpdate.new({:Alignment => 'Right'})
update_request = UpdateListLevelOnlineRequest.new(File.open(File.join(documents_dir, 'Sample.doc')), 1, request_list_update, 1, nil, nil, nil, nil, nil)
@words_api.update_list_level_online(update_request)