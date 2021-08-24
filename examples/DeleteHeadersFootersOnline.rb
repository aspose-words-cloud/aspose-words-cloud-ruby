AsposeWordsCloud.configure do |config|
  config.client_data['ClientId'] = '####-####-####-####-####'
  config.client_data['ClientSecret'] = '##################'
end
@words_api = WordsAPI.new
request_document = File.open('Sample.doc')
delete_request = DeleteHeadersFootersOnlineRequest.new(document: request_document, section_path: '')
@words_api.delete_headers_footers_online(delete_request)