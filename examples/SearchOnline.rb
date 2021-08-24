AsposeWordsCloud.configure do |config|
  config.client_data['ClientId'] = '####-####-####-####-####'
  config.client_data['ClientSecret'] = '##################'
end
@words_api = WordsAPI.new
request_document = File.open('Sample.docx')
search_request = SearchOnlineRequest.new(document: request_document, pattern: 'aspose')
@words_api.search_online(search_request)