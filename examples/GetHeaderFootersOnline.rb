AsposeWordsCloud.configure do |config|
  config.client_data['ClientId'] = '####-####-####-####-####'
  config.client_data['ClientSecret'] = '##################'
end
@words_api = WordsAPI.new
documents_dir = '...'
request = GetHeaderFootersOnlineRequest.new(File.open(File.join(documents_dir, 'Sample.doc')), '', nil, nil, nil)
@words_api.get_header_footers_online(request)