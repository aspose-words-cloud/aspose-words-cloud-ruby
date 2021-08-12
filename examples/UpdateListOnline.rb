AsposeWordsCloud.configure do |config|
  config.client_data['ClientId'] = '####-####-####-####-####'
  config.client_data['ClientSecret'] = '##################'
end
@words_api = WordsAPI.new
documents_dir = '...'
request_list_update = ListUpdate.new({:IsRestartAtEachSection => true})
update_request = UpdateListOnlineRequest.new(File.open(File.join(documents_dir, 'Sample.doc')), 1, request_list_update, nil, nil, nil, nil, nil)
@words_api.update_list_online(update_request)