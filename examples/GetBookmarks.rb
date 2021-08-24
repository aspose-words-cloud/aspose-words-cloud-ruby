AsposeWordsCloud.configure do |config|
  config.client_data['ClientId'] = '####-####-####-####-####'
  config.client_data['ClientSecret'] = '##################'
end
@words_api = WordsAPI.new
request = GetBookmarksRequest.new(name: 'Sample.docx')
@words_api.get_bookmarks(request)