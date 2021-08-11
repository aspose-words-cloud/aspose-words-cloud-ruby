AsposeWordsCloud.configure do |config|
  config.client_data['ClientId'] = '####-####-####-####-####'
  config.client_data['ClientSecret'] = '##################'
end
@words_api = WordsAPI.new
documents_dir = '...'
request = GetListOnlineRequest.new(File.open(File.join(documents_dir, 'DocumentElements/Lists/ListsGet.doc')), 1, nil, nil)
@words_api.get_list_online(request)