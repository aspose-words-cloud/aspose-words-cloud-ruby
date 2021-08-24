AsposeWordsCloud.configure do |config|
  config.client_data['ClientId'] = '####-####-####-####-####'
  config.client_data['ClientSecret'] = '##################'
end
@words_api = WordsAPI.new
request = GetBookmarkByNameRequest.new(name: 'Sample.docx', bookmark_name: 'aspose')
@words_api.get_bookmark_by_name(request)