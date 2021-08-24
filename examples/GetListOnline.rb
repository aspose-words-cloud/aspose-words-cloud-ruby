AsposeWordsCloud.configure do |config|
  config.client_data['ClientId'] = '####-####-####-####-####'
  config.client_data['ClientSecret'] = '##################'
end
@words_api = WordsAPI.new
request_document = File.open('Sample.doc')
request = GetListOnlineRequest.new(document: request_document, list_id: 1)
@words_api.get_list_online(request)