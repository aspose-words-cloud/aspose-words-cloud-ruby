AsposeWordsCloud.configure do |config|
  config.client_data['ClientId'] = '####-####-####-####-####'
  config.client_data['ClientSecret'] = '##################'
end
@words_api = WordsAPI.new
documents_dir = '...'
request = GetBordersOnlineRequest.new(File.open(File.join(documents_dir, 'Sample.docx')), 'tables/1/rows/0/cells/0', nil, nil)
@words_api.get_borders_online(request)