AsposeWordsCloud.configure do |config|
  config.client_data['ClientId'] = '####-####-####-####-####'
  config.client_data['ClientSecret'] = '##################'
end
@words_api = WordsAPI.new
search_request = SearchRequest.new(name: 'Sample.docx', pattern: 'aspose')
@words_api.search(search_request)