AsposeWordsCloud.configure do |config|
  config.client_data['ClientId'] = '####-####-####-####-####'
  config.client_data['ClientSecret'] = '##################'
end
@words_api = WordsAPI.new
documents_dir = '...'
request = GetStyleOnlineRequest.new(File.open(File.join(documents_dir, 'Sample.docx')), 'Heading 1', nil, nil)
@words_api.get_style_online(request)