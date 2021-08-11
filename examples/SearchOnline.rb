AsposeWordsCloud.configure do |config|
  config.client_data['ClientId'] = '####-####-####-####-####'
  config.client_data['ClientSecret'] = '##################'
end
@words_api = WordsAPI.new
documents_dir = '...'
search_request = SearchOnlineRequest.new(File.open(File.join(documents_dir, 'Sample.docx')), 'aspose', nil, nil)
@words_api.search_online(search_request)