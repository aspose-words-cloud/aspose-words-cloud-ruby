AsposeWordsCloud.configure do |config|
  config.client_data['ClientId'] = '####-####-####-####-####'
  config.client_data['ClientSecret'] = '##################'
end
@words_api = WordsAPI.new
documents_dir = '...'
request = GetBorderOnlineRequest.new(File.open(File.join(documents_dir, 'Sample.docx')), 'left', 'tables/1/rows/0/cells/0', nil, nil)
@words_api.get_border_online(request)