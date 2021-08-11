AsposeWordsCloud.configure do |config|
  config.client_data['ClientId'] = '####-####-####-####-####'
  config.client_data['ClientSecret'] = '##################'
end
@words_api = WordsAPI.new
documents_dir = '...'
request = GetBookmarkByNameOnlineRequest.new(File.open(File.join(documents_dir, 'Sample.docx')), 'aspose', nil, nil)
@words_api.get_bookmark_by_name_online(request)