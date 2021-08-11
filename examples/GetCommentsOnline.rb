AsposeWordsCloud.configure do |config|
  config.client_data['ClientId'] = '####-####-####-####-####'
  config.client_data['ClientSecret'] = '##################'
end
@words_api = WordsAPI.new
documents_dir = '...'
request = GetCommentsOnlineRequest.new(File.open(File.join(documents_dir, 'Sample.docx')), nil, nil)
@words_api.get_comments_online(request)