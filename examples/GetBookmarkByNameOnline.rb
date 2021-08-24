AsposeWordsCloud.configure do |config|
  config.client_data['ClientId'] = '####-####-####-####-####'
  config.client_data['ClientSecret'] = '##################'
end
@words_api = WordsAPI.new
request_document = File.open('Sample.docx')
request = GetBookmarkByNameOnlineRequest.new(document: request_document, bookmark_name: 'aspose')
@words_api.get_bookmark_by_name_online(request)